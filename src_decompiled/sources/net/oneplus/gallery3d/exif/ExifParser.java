package net.oneplus.gallery3d.exif;

import android.util.Log;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.util.Map;
import java.util.TreeMap;
import net.oneplus.gallery3d.exif.ExifInterface;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ExifParser {
    protected static final short BIG_ENDIAN_TAG = 19789;
    protected static final int DEFAULT_IFD0_OFFSET = 8;
    public static final int EVENT_COMPRESSED_IMAGE = 3;
    public static final int EVENT_END = 5;
    public static final int EVENT_NEW_TAG = 1;
    public static final int EVENT_START_OF_IFD = 0;
    public static final int EVENT_UNCOMPRESSED_STRIP = 4;
    public static final int EVENT_VALUE_OF_REGISTERED_TAG = 2;
    protected static final int EXIF_HEADER = 1165519206;
    protected static final short EXIF_HEADER_TAIL = 0;
    protected static final short LITTLE_ENDIAN_TAG = 18761;
    private static final boolean LOGV = false;
    protected static final int OFFSET_SIZE = 2;
    public static final int OPTION_IFD_0 = 1;
    public static final int OPTION_IFD_1 = 2;
    public static final int OPTION_IFD_EXIF = 4;
    public static final int OPTION_IFD_GPS = 8;
    public static final int OPTION_IFD_INTEROPERABILITY = 16;
    public static final int OPTION_THUMBNAIL = 32;
    private static final String TAG = "ExifParser";
    protected static final int TAG_SIZE = 12;
    protected static final short TIFF_HEADER_TAIL = 42;
    private int mApp1End;
    private boolean mContainExifData;
    private byte[] mDataAboveIfd0;
    private int mIfd0Position;
    private int mIfdType;
    private ImageEvent mImageEvent;
    private final ExifInterface mInterface;
    private ExifTag mJpegSizeTag;
    private boolean mNeedToParseOffsetsInCurrentIfd;
    private final int mOptions;
    private int mStripCount;
    private ExifTag mStripSizeTag;
    private ExifTag mTag;
    private int mTiffStartPosition;
    private final CountedDataInputStream mTiffStream;
    private static final Charset US_ASCII = Charset.forName("US-ASCII");
    private static final short TAG_EXIF_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_EXIF_IFD);
    private static final short TAG_GPS_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_GPS_IFD);
    private static final short TAG_INTEROPERABILITY_IFD = ExifInterface.getTrueTagKey(ExifInterface.TAG_INTEROPERABILITY_IFD);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
    private static final short TAG_JPEG_INTERCHANGE_FORMAT_LENGTH = ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
    private static final short TAG_STRIP_OFFSETS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS);
    private static final short TAG_STRIP_BYTE_COUNTS = ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS);
    private int mIfdStartOffset = 0;
    private int mNumOfTagInIfd = 0;
    private int mOffsetToApp1EndFromSOF = 0;
    private final TreeMap<Integer, Object> mCorrespondingEvent = new TreeMap<>();

    private boolean isIfdRequested(int ifdType) {
        switch (ifdType) {
            case 0:
                return (this.mOptions & 1) != 0;
            case 1:
                return (this.mOptions & 2) != 0;
            case 2:
                return (this.mOptions & 4) != 0;
            case 3:
                return (this.mOptions & 16) != 0;
            case 4:
                return (this.mOptions & 8) != 0;
            default:
                return false;
        }
    }

    private boolean isThumbnailRequested() {
        return (this.mOptions & 32) != 0;
    }

    private ExifParser(InputStream inputStream, int options, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        this.mContainExifData = false;
        if (inputStream == null) {
            throw new IOException("Null argument inputStream to ExifParser");
        }
        this.mInterface = iRef;
        this.mContainExifData = seekTiffData(inputStream);
        this.mTiffStream = new CountedDataInputStream(inputStream);
        this.mOptions = options;
        if (this.mContainExifData) {
            parseTiffHeader();
            long offset = this.mTiffStream.readUnsignedInt();
            if (offset > 2147483647L) {
                throw new ExifInvalidFormatException("Invalid offset " + offset);
            }
            this.mIfd0Position = (int) offset;
            this.mIfdType = 0;
            if (isIfdRequested(0) || needToParseOffsetsInCurrentIfd()) {
                registerIfd(0, offset);
                if (offset != 8) {
                    this.mDataAboveIfd0 = new byte[((int) offset) - 8];
                    read(this.mDataAboveIfd0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ExifParser parse(InputStream inputStream, int options, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        return new ExifParser(inputStream, options, iRef);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static ExifParser parse(InputStream inputStream, ExifInterface iRef) throws IOException, ExifInvalidFormatException {
        return new ExifParser(inputStream, 63, iRef);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int next() throws IOException, ExifInvalidFormatException {
        if (!this.mContainExifData) {
            return 5;
        }
        int offset = this.mTiffStream.getReadByteCount();
        int endOfTags = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        if (offset < endOfTags) {
            this.mTag = readTag();
            if (this.mTag == null) {
                return next();
            }
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                checkOffsetOrImageTag(this.mTag);
            }
            return 1;
        }
        if (offset == endOfTags) {
            if (this.mIfdType == 0) {
                long ifdOffset = readUnsignedLong();
                if ((isIfdRequested(1) || isThumbnailRequested()) && ifdOffset != 0) {
                    registerIfd(1, ifdOffset);
                }
            } else {
                int offsetSize = 4;
                if (this.mCorrespondingEvent.size() > 0) {
                    offsetSize = this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount();
                }
                if (offsetSize < 4) {
                    Log.w(TAG, "Invalid size of link to next IFD: " + offsetSize);
                } else {
                    long ifdOffset2 = readUnsignedLong();
                    if (ifdOffset2 != 0) {
                        Log.w(TAG, "Invalid link to next IFD: " + ifdOffset2);
                    }
                }
            }
        }
        while (this.mCorrespondingEvent.size() != 0) {
            Map.Entry<Integer, Object> entry = this.mCorrespondingEvent.pollFirstEntry();
            Object event = entry.getValue();
            try {
                skipTo(entry.getKey().intValue());
                if (event instanceof IfdEvent) {
                    this.mIfdType = ((IfdEvent) event).ifd;
                    this.mNumOfTagInIfd = this.mTiffStream.readUnsignedShort();
                    this.mIfdStartOffset = entry.getKey().intValue();
                    if ((this.mNumOfTagInIfd * 12) + this.mIfdStartOffset + 2 > this.mApp1End) {
                        Log.w(TAG, "Invalid size of IFD " + this.mIfdType);
                        return 5;
                    }
                    this.mNeedToParseOffsetsInCurrentIfd = needToParseOffsetsInCurrentIfd();
                    if (((IfdEvent) event).isRequested) {
                        return 0;
                    }
                    skipRemainingTagsInCurrentIfd();
                } else {
                    if (event instanceof ImageEvent) {
                        this.mImageEvent = (ImageEvent) event;
                        return this.mImageEvent.type;
                    }
                    ExifTagEvent tagEvent = (ExifTagEvent) event;
                    this.mTag = tagEvent.tag;
                    if (this.mTag.getDataType() != 7) {
                        readFullTagValue(this.mTag);
                        checkOffsetOrImageTag(this.mTag);
                    }
                    if (tagEvent.isRequested) {
                        return 2;
                    }
                }
            } catch (IOException e) {
                Log.w(TAG, "Failed to skip to data at: " + entry.getKey() + " for " + event.getClass().getName() + ", the file may be broken.");
            }
        }
        return 5;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void skipRemainingTagsInCurrentIfd() throws IOException, ExifInvalidFormatException {
        int endOfTags = this.mIfdStartOffset + 2 + (this.mNumOfTagInIfd * 12);
        int offset = this.mTiffStream.getReadByteCount();
        if (offset <= endOfTags) {
            if (this.mNeedToParseOffsetsInCurrentIfd) {
                while (offset < endOfTags) {
                    this.mTag = readTag();
                    offset += 12;
                    if (this.mTag != null) {
                        checkOffsetOrImageTag(this.mTag);
                    }
                }
            } else {
                skipTo(endOfTags);
            }
            long ifdOffset = readUnsignedLong();
            if (this.mIfdType == 0) {
                if ((isIfdRequested(1) || isThumbnailRequested()) && ifdOffset > 0) {
                    registerIfd(1, ifdOffset);
                }
            }
        }
    }

    private boolean needToParseOffsetsInCurrentIfd() {
        switch (this.mIfdType) {
            case 0:
                return isIfdRequested(2) || isIfdRequested(4) || isIfdRequested(3) || isIfdRequested(1);
            case 1:
                return isThumbnailRequested();
            case 2:
                return isIfdRequested(3);
            default:
                return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag getTag() {
        return this.mTag;
    }

    protected int getTagCountInCurrentIfd() {
        return this.mNumOfTagInIfd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCurrentIfd() {
        return this.mIfdType;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripIndex() {
        return this.mImageEvent.stripIndex;
    }

    protected int getStripCount() {
        return this.mStripCount;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripSize() {
        if (this.mStripSizeTag == null) {
            return 0;
        }
        return (int) this.mStripSizeTag.getValueAt(0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getCompressedImageSize() {
        if (this.mJpegSizeTag == null) {
            return 0;
        }
        return (int) this.mJpegSizeTag.getValueAt(0);
    }

    private void skipTo(int offset) throws IOException {
        this.mTiffStream.skipTo(offset);
        while (!this.mCorrespondingEvent.isEmpty() && this.mCorrespondingEvent.firstKey().intValue() < offset) {
            this.mCorrespondingEvent.pollFirstEntry();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerForTagValue(ExifTag tag) {
        if (tag.getOffset() >= this.mTiffStream.getReadByteCount()) {
            this.mCorrespondingEvent.put(Integer.valueOf(tag.getOffset()), new ExifTagEvent(tag, true));
        }
    }

    private void registerIfd(int ifdType, long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new IfdEvent(ifdType, isIfdRequested(ifdType)));
    }

    private void registerCompressedImage(long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new ImageEvent(3));
    }

    private void registerUncompressedStrip(int stripIndex, long offset) {
        this.mCorrespondingEvent.put(Integer.valueOf((int) offset), new ImageEvent(4, stripIndex));
    }

    private ExifTag readTag() throws IOException, ExifInvalidFormatException {
        short tagId = this.mTiffStream.readShort();
        short dataFormat = this.mTiffStream.readShort();
        long numOfComp = this.mTiffStream.readUnsignedInt();
        if (numOfComp > 2147483647L) {
            throw new ExifInvalidFormatException("Number of component is larger then Integer.MAX_VALUE");
        }
        if (!ExifTag.isValidType(dataFormat)) {
            Log.w(TAG, String.format("Tag %04x: Invalid data type %d", Short.valueOf(tagId), Short.valueOf(dataFormat)));
            this.mTiffStream.skip(4L);
            return null;
        }
        ExifTag tag = new ExifTag(tagId, dataFormat, (int) numOfComp, this.mIfdType, ((int) numOfComp) != 0);
        int dataSize = tag.getDataSize();
        if (dataSize > 4) {
            long offset = this.mTiffStream.readUnsignedInt();
            if (offset > 2147483647L) {
                throw new ExifInvalidFormatException("offset is larger then Integer.MAX_VALUE");
            }
            if (offset < this.mIfd0Position && dataFormat == 7) {
                byte[] buf = new byte[(int) numOfComp];
                System.arraycopy(this.mDataAboveIfd0, ((int) offset) - 8, buf, 0, (int) numOfComp);
                tag.setValue(buf);
                return tag;
            }
            tag.setOffset((int) offset);
            return tag;
        }
        boolean defCount = tag.hasDefinedCount();
        tag.setHasDefinedCount(false);
        readFullTagValue(tag);
        tag.setHasDefinedCount(defCount);
        this.mTiffStream.skip(4 - dataSize);
        tag.setOffset(this.mTiffStream.getReadByteCount() - 4);
        return tag;
    }

    private void checkOffsetOrImageTag(ExifTag tag) {
        if (tag.getComponentCount() != 0) {
            short tid = tag.getTagId();
            int ifd = tag.getIfd();
            if (tid == TAG_EXIF_IFD && checkAllowed(ifd, ExifInterface.TAG_EXIF_IFD)) {
                if (isIfdRequested(2) || isIfdRequested(3)) {
                    registerIfd(2, tag.getValueAt(0));
                    return;
                }
                return;
            }
            if (tid == TAG_GPS_IFD && checkAllowed(ifd, ExifInterface.TAG_GPS_IFD)) {
                if (isIfdRequested(4)) {
                    registerIfd(4, tag.getValueAt(0));
                    return;
                }
                return;
            }
            if (tid == TAG_INTEROPERABILITY_IFD && checkAllowed(ifd, ExifInterface.TAG_INTEROPERABILITY_IFD)) {
                if (isIfdRequested(3)) {
                    registerIfd(3, tag.getValueAt(0));
                    return;
                }
                return;
            }
            if (tid == TAG_JPEG_INTERCHANGE_FORMAT && checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)) {
                if (isThumbnailRequested()) {
                    registerCompressedImage(tag.getValueAt(0));
                    return;
                }
                return;
            }
            if (tid == TAG_JPEG_INTERCHANGE_FORMAT_LENGTH && checkAllowed(ifd, ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH)) {
                if (isThumbnailRequested()) {
                    this.mJpegSizeTag = tag;
                    return;
                }
                return;
            }
            if (tid == TAG_STRIP_OFFSETS && checkAllowed(ifd, ExifInterface.TAG_STRIP_OFFSETS)) {
                if (isThumbnailRequested()) {
                    if (tag.hasValue()) {
                        for (int i = 0; i < tag.getComponentCount(); i++) {
                            if (tag.getDataType() == 3) {
                                registerUncompressedStrip(i, tag.getValueAt(i));
                            } else {
                                registerUncompressedStrip(i, tag.getValueAt(i));
                            }
                        }
                        return;
                    }
                    this.mCorrespondingEvent.put(Integer.valueOf(tag.getOffset()), new ExifTagEvent(tag, false));
                    return;
                }
                return;
            }
            if (tid == TAG_STRIP_BYTE_COUNTS && checkAllowed(ifd, ExifInterface.TAG_STRIP_BYTE_COUNTS) && isThumbnailRequested() && tag.hasValue()) {
                this.mStripSizeTag = tag;
            }
        }
    }

    private boolean checkAllowed(int ifd, int tagId) {
        int info = this.mInterface.getTagInfo().get(tagId);
        if (info == 0) {
            return false;
        }
        return ExifInterface.isIfdAllowed(info, ifd);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void readFullTagValue(ExifTag tag) throws IOException {
        short type = tag.getDataType();
        if (type == 2 || type == 7 || type == 1) {
            int size = tag.getComponentCount();
            if (this.mCorrespondingEvent.size() > 0 && this.mCorrespondingEvent.firstEntry().getKey().intValue() < this.mTiffStream.getReadByteCount() + size) {
                Object event = this.mCorrespondingEvent.firstEntry().getValue();
                if (event instanceof ImageEvent) {
                    Log.w(TAG, "Thumbnail overlaps value for tag: \n" + tag.toString());
                    Map.Entry<Integer, Object> entry = this.mCorrespondingEvent.pollFirstEntry();
                    Log.w(TAG, "Invalid thumbnail offset: " + entry.getKey());
                } else {
                    if (event instanceof IfdEvent) {
                        Log.w(TAG, "Ifd " + ((IfdEvent) event).ifd + " overlaps value for tag: \n" + tag.toString());
                    } else if (event instanceof ExifTagEvent) {
                        Log.w(TAG, "Tag value for tag: \n" + ((ExifTagEvent) event).tag.toString() + " overlaps value for tag: \n" + tag.toString());
                    }
                    int size2 = this.mCorrespondingEvent.firstEntry().getKey().intValue() - this.mTiffStream.getReadByteCount();
                    Log.w(TAG, "Invalid size of tag: \n" + tag.toString() + " setting count to: " + size2);
                    tag.forceSetComponentCount(size2);
                }
            }
        }
        switch (tag.getDataType()) {
            case 1:
            case 7:
                byte[] buf = new byte[tag.getComponentCount()];
                read(buf);
                tag.setValue(buf);
                return;
            case 2:
                tag.setValue(readString(tag.getComponentCount()));
                return;
            case 3:
                int[] value = new int[tag.getComponentCount()];
                int n = value.length;
                for (int i = 0; i < n; i++) {
                    value[i] = readUnsignedShort();
                }
                tag.setValue(value);
                return;
            case 4:
                long[] value2 = new long[tag.getComponentCount()];
                int n2 = value2.length;
                for (int i2 = 0; i2 < n2; i2++) {
                    value2[i2] = readUnsignedLong();
                }
                tag.setValue(value2);
                return;
            case 5:
                Rational[] value3 = new Rational[tag.getComponentCount()];
                int n3 = value3.length;
                for (int i3 = 0; i3 < n3; i3++) {
                    value3[i3] = readUnsignedRational();
                }
                tag.setValue(value3);
                return;
            case 6:
            case 8:
            default:
                return;
            case 9:
                int[] value4 = new int[tag.getComponentCount()];
                int n4 = value4.length;
                for (int i4 = 0; i4 < n4; i4++) {
                    value4[i4] = readLong();
                }
                tag.setValue(value4);
                return;
            case 10:
                Rational[] value5 = new Rational[tag.getComponentCount()];
                int n5 = value5.length;
                for (int i5 = 0; i5 < n5; i5++) {
                    value5[i5] = readRational();
                }
                tag.setValue(value5);
                return;
        }
    }

    private void parseTiffHeader() throws IOException, ExifInvalidFormatException {
        short byteOrder = this.mTiffStream.readShort();
        if (18761 == byteOrder) {
            this.mTiffStream.setByteOrder(ByteOrder.LITTLE_ENDIAN);
        } else if (19789 == byteOrder) {
            this.mTiffStream.setByteOrder(ByteOrder.BIG_ENDIAN);
        } else {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
        if (this.mTiffStream.readShort() != 42) {
            throw new ExifInvalidFormatException("Invalid TIFF header");
        }
    }

    private boolean seekTiffData(InputStream inputStream) throws IOException, ExifInvalidFormatException {
        CountedDataInputStream dataStream = new CountedDataInputStream(inputStream);
        if (dataStream.readShort() != -40) {
            throw new ExifInvalidFormatException("Invalid JPEG format");
        }
        for (short marker = dataStream.readShort(); marker != -39 && !JpegHeader.isSofMarker(marker); marker = dataStream.readShort()) {
            int length = dataStream.readUnsignedShort();
            if (marker == -31 && length >= 8) {
                int header = dataStream.readInt();
                short headerTail = dataStream.readShort();
                length -= 6;
                if (header == EXIF_HEADER && headerTail == 0) {
                    this.mTiffStartPosition = dataStream.getReadByteCount();
                    this.mApp1End = length;
                    this.mOffsetToApp1EndFromSOF = this.mTiffStartPosition + this.mApp1End;
                    return true;
                }
            }
            if (length < 2 || length - 2 != dataStream.skip(length - 2)) {
                Log.w(TAG, "Invalid JPEG format.");
                return false;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetToExifEndFromSOF() {
        return this.mOffsetToApp1EndFromSOF;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getTiffStartPosition() {
        return this.mTiffStartPosition;
    }

    protected int read(byte[] buffer, int offset, int length) throws IOException {
        return this.mTiffStream.read(buffer, offset, length);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int read(byte[] buffer) throws IOException {
        return this.mTiffStream.read(buffer);
    }

    protected String readString(int n) throws IOException {
        return readString(n, US_ASCII);
    }

    protected String readString(int n, Charset charset) throws IOException {
        return n > 0 ? this.mTiffStream.readString(n, charset) : "";
    }

    protected int readUnsignedShort() throws IOException {
        return this.mTiffStream.readShort() & ExifInterface.ColorSpace.UNCALIBRATED;
    }

    protected long readUnsignedLong() throws IOException {
        return readLong() & 4294967295L;
    }

    protected Rational readUnsignedRational() throws IOException {
        long nomi = readUnsignedLong();
        long denomi = readUnsignedLong();
        return new Rational(nomi, denomi);
    }

    protected int readLong() throws IOException {
        return this.mTiffStream.readInt();
    }

    protected Rational readRational() throws IOException {
        int nomi = readLong();
        int denomi = readLong();
        return new Rational(nomi, denomi);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ImageEvent {
        int stripIndex;
        int type;

        ImageEvent(int type) {
            this.stripIndex = 0;
            this.type = type;
        }

        ImageEvent(int type, int stripIndex) {
            this.type = type;
            this.stripIndex = stripIndex;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class IfdEvent {
        int ifd;
        boolean isRequested;

        IfdEvent(int ifd, boolean isInterestedIfd) {
            this.ifd = ifd;
            this.isRequested = isInterestedIfd;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class ExifTagEvent {
        boolean isRequested;
        ExifTag tag;

        ExifTagEvent(ExifTag tag, boolean isRequireByUser) {
            this.tag = tag;
            this.isRequested = isRequireByUser;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        return this.mTiffStream.getByteOrder();
    }
}
