package net.oneplus.gallery3d.exif;

import java.io.BufferedOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Iterator;

/* loaded from: classes.dex */
class ExifOutputStream extends FilterOutputStream {
    private static final boolean DEBUG = false;
    private static final int EXIF_HEADER = 1165519206;
    private static final int MAX_EXIF_SIZE = 65535;
    private static final int STATE_FRAME_HEADER = 1;
    private static final int STATE_JPEG_DATA = 2;
    private static final int STATE_SOI = 0;
    private static final int STREAMBUFFER_SIZE = 65536;
    private static final String TAG = "ExifOutputStream";
    private static final short TAG_SIZE = 12;
    private static final short TIFF_BIG_ENDIAN = 19789;
    private static final short TIFF_HEADER = 42;
    private static final short TIFF_HEADER_SIZE = 8;
    private static final short TIFF_LITTLE_ENDIAN = 18761;
    private ByteBuffer mBuffer;
    private int mByteToCopy;
    private int mByteToSkip;
    private ExifData mExifData;
    private final ExifInterface mInterface;
    private byte[] mSingleByteArray;
    private int mState;

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifOutputStream(OutputStream ou, ExifInterface iRef) {
        super(new BufferedOutputStream(ou, 65536));
        this.mState = 0;
        this.mSingleByteArray = new byte[1];
        this.mBuffer = ByteBuffer.allocate(4);
        this.mInterface = iRef;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setExifData(ExifData exifData) {
        this.mExifData = exifData;
    }

    protected ExifData getExifData() {
        return this.mExifData;
    }

    private int requestByteToBuffer(int requestByteCount, byte[] buffer, int offset, int length) {
        int byteNeeded = requestByteCount - this.mBuffer.position();
        int byteToRead = length > byteNeeded ? byteNeeded : length;
        this.mBuffer.put(buffer, offset, byteToRead);
        return byteToRead;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x003d, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0104, code lost:
    
        r10.out.write(r11, r12, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0102, code lost:
    
        if (r13 <= 0) goto L23;
     */
    @Override // java.io.FilterOutputStream, java.io.OutputStream
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void write(byte[] r11, int r12, int r13) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 276
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.gallery3d.exif.ExifOutputStream.write(byte[], int, int):void");
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(int oneByte) throws IOException {
        this.mSingleByteArray[0] = (byte) (oneByte & 255);
        write(this.mSingleByteArray);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public void write(byte[] buffer) throws IOException {
        write(buffer, 0, buffer.length);
    }

    private void writeExifData() throws IOException {
        if (this.mExifData != null) {
            ArrayList<ExifTag> nullTags = stripNullValueTags(this.mExifData);
            createRequiredIfdAndTag();
            int exifSize = calculateAllOffset();
            if (exifSize + 8 > 65535) {
                throw new IOException("Exif header is too large (>64Kb)");
            }
            OrderedDataOutputStream dataOutputStream = new OrderedDataOutputStream(this.out);
            dataOutputStream.setByteOrder(ByteOrder.BIG_ENDIAN);
            dataOutputStream.writeShort((short) -31);
            dataOutputStream.writeShort((short) (exifSize + 8));
            dataOutputStream.writeInt(EXIF_HEADER);
            dataOutputStream.writeShort((short) 0);
            if (this.mExifData.getByteOrder() == ByteOrder.BIG_ENDIAN) {
                dataOutputStream.writeShort(TIFF_BIG_ENDIAN);
            } else {
                dataOutputStream.writeShort(TIFF_LITTLE_ENDIAN);
            }
            dataOutputStream.setByteOrder(this.mExifData.getByteOrder());
            dataOutputStream.writeShort(TIFF_HEADER);
            dataOutputStream.writeInt(8);
            writeAllTags(dataOutputStream);
            writeThumbnail(dataOutputStream);
            Iterator<ExifTag> it = nullTags.iterator();
            while (it.hasNext()) {
                ExifTag t = it.next();
                this.mExifData.addTag(t);
            }
        }
    }

    private ArrayList<ExifTag> stripNullValueTags(ExifData data) {
        ArrayList<ExifTag> nullTags = new ArrayList<>();
        for (ExifTag t : data.getAllTags()) {
            if (t.getValue() == null && !ExifInterface.isOffsetTag(t.getTagId())) {
                data.removeTag(t.getTagId(), t.getIfd());
                nullTags.add(t);
            }
        }
        return nullTags;
    }

    private void writeThumbnail(OrderedDataOutputStream dataOutputStream) throws IOException {
        if (this.mExifData.hasCompressedThumbnail()) {
            dataOutputStream.write(this.mExifData.getCompressedThumbnail());
        } else if (this.mExifData.hasUncompressedStrip()) {
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                dataOutputStream.write(this.mExifData.getStrip(i));
            }
        }
    }

    private void writeAllTags(OrderedDataOutputStream dataOutputStream) throws IOException {
        writeIfd(this.mExifData.getIfdData(0), dataOutputStream);
        writeIfd(this.mExifData.getIfdData(2), dataOutputStream);
        IfdData interoperabilityIfd = this.mExifData.getIfdData(3);
        if (interoperabilityIfd != null) {
            writeIfd(interoperabilityIfd, dataOutputStream);
        }
        IfdData gpsIfd = this.mExifData.getIfdData(4);
        if (gpsIfd != null) {
            writeIfd(gpsIfd, dataOutputStream);
        }
        IfdData ifd1 = this.mExifData.getIfdData(1);
        if (ifd1 != null) {
            writeIfd(this.mExifData.getIfdData(1), dataOutputStream);
        }
    }

    private void writeIfd(IfdData ifd, OrderedDataOutputStream dataOutputStream) throws IOException {
        ExifTag[] tags = ifd.getAllTags();
        dataOutputStream.writeShort((short) tags.length);
        for (ExifTag tag : tags) {
            dataOutputStream.writeShort(tag.getTagId());
            dataOutputStream.writeShort(tag.getDataType());
            dataOutputStream.writeInt(tag.getComponentCount());
            if (tag.getDataSize() > 4) {
                dataOutputStream.writeInt(tag.getOffset());
            } else {
                writeTagValue(tag, dataOutputStream);
                int n = 4 - tag.getDataSize();
                for (int i = 0; i < n; i++) {
                    dataOutputStream.write(0);
                }
            }
        }
        dataOutputStream.writeInt(ifd.getOffsetToNextIfd());
        for (ExifTag tag2 : tags) {
            if (tag2.getDataSize() > 4) {
                writeTagValue(tag2, dataOutputStream);
            }
        }
    }

    private int calculateOffsetOfIfd(IfdData ifd, int offset) {
        int offset2 = offset + (ifd.getTagCount() * 12) + 2 + 4;
        ExifTag[] tags = ifd.getAllTags();
        for (ExifTag tag : tags) {
            if (tag.getDataSize() > 4) {
                tag.setOffset(offset2);
                offset2 += tag.getDataSize();
            }
        }
        return offset2;
    }

    private void createRequiredIfdAndTag() throws IOException {
        IfdData ifd0 = this.mExifData.getIfdData(0);
        if (ifd0 == null) {
            ifd0 = new IfdData(0);
            this.mExifData.addIfdData(ifd0);
        }
        ExifTag exifOffsetTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_EXIF_IFD);
        if (exifOffsetTag == null) {
            throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_EXIF_IFD);
        }
        ifd0.setTag(exifOffsetTag);
        IfdData exifIfd = this.mExifData.getIfdData(2);
        if (exifIfd == null) {
            exifIfd = new IfdData(2);
            this.mExifData.addIfdData(exifIfd);
        }
        IfdData gpsIfd = this.mExifData.getIfdData(4);
        if (gpsIfd != null) {
            ExifTag gpsOffsetTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_GPS_IFD);
            if (gpsOffsetTag == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_GPS_IFD);
            }
            ifd0.setTag(gpsOffsetTag);
        }
        IfdData interIfd = this.mExifData.getIfdData(3);
        if (interIfd != null) {
            ExifTag interOffsetTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_INTEROPERABILITY_IFD);
            if (interOffsetTag == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_INTEROPERABILITY_IFD);
            }
            exifIfd.setTag(interOffsetTag);
        }
        IfdData ifd1 = this.mExifData.getIfdData(1);
        if (this.mExifData.hasCompressedThumbnail()) {
            if (ifd1 == null) {
                ifd1 = new IfdData(1);
                this.mExifData.addIfdData(ifd1);
            }
            ExifTag offsetTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            if (offsetTag == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT);
            }
            ifd1.setTag(offsetTag);
            ExifTag lengthTag = this.mInterface.buildUninitializedTag(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            if (lengthTag == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH);
            }
            lengthTag.setValue(this.mExifData.getCompressedThumbnail().length);
            ifd1.setTag(lengthTag);
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS));
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS));
            return;
        }
        if (this.mExifData.hasUncompressedStrip()) {
            if (ifd1 == null) {
                ifd1 = new IfdData(1);
                this.mExifData.addIfdData(ifd1);
            }
            int stripCount = this.mExifData.getStripCount();
            ExifTag offsetTag2 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_STRIP_OFFSETS);
            if (offsetTag2 == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_STRIP_OFFSETS);
            }
            ExifTag lengthTag2 = this.mInterface.buildUninitializedTag(ExifInterface.TAG_STRIP_BYTE_COUNTS);
            if (lengthTag2 == null) {
                throw new IOException("No definition for crucial exif tag: " + ExifInterface.TAG_STRIP_BYTE_COUNTS);
            }
            long[] lengths = new long[stripCount];
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                lengths[i] = this.mExifData.getStrip(i).length;
            }
            lengthTag2.setValue(lengths);
            ifd1.setTag(offsetTag2);
            ifd1.setTag(lengthTag2);
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
            return;
        }
        if (ifd1 != null) {
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS));
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_BYTE_COUNTS));
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT));
            ifd1.removeTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT_LENGTH));
        }
    }

    private int calculateAllOffset() {
        IfdData ifd0 = this.mExifData.getIfdData(0);
        int offset = calculateOffsetOfIfd(ifd0, 8);
        ifd0.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_EXIF_IFD)).setValue(offset);
        IfdData exifIfd = this.mExifData.getIfdData(2);
        int offset2 = calculateOffsetOfIfd(exifIfd, offset);
        IfdData interIfd = this.mExifData.getIfdData(3);
        if (interIfd != null) {
            exifIfd.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_INTEROPERABILITY_IFD)).setValue(offset2);
            offset2 = calculateOffsetOfIfd(interIfd, offset2);
        }
        IfdData gpsIfd = this.mExifData.getIfdData(4);
        if (gpsIfd != null) {
            ifd0.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_GPS_IFD)).setValue(offset2);
            offset2 = calculateOffsetOfIfd(gpsIfd, offset2);
        }
        IfdData ifd1 = this.mExifData.getIfdData(1);
        if (ifd1 != null) {
            ifd0.setOffsetToNextIfd(offset2);
            offset2 = calculateOffsetOfIfd(ifd1, offset2);
        }
        if (this.mExifData.hasCompressedThumbnail()) {
            ifd1.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_JPEG_INTERCHANGE_FORMAT)).setValue(offset2);
            return offset2 + this.mExifData.getCompressedThumbnail().length;
        }
        if (this.mExifData.hasUncompressedStrip()) {
            int stripCount = this.mExifData.getStripCount();
            long[] offsets = new long[stripCount];
            for (int i = 0; i < this.mExifData.getStripCount(); i++) {
                offsets[i] = offset2;
                offset2 += this.mExifData.getStrip(i).length;
            }
            ifd1.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_STRIP_OFFSETS)).setValue(offsets);
            return offset2;
        }
        return offset2;
    }

    static void writeTagValue(ExifTag tag, OrderedDataOutputStream dataOutputStream) throws IOException {
        switch (tag.getDataType()) {
            case 1:
            case 7:
                byte[] buf = new byte[tag.getComponentCount()];
                tag.getBytes(buf);
                dataOutputStream.write(buf);
                return;
            case 2:
                byte[] buf2 = tag.getStringByte();
                if (buf2.length == tag.getComponentCount()) {
                    buf2[buf2.length - 1] = 0;
                    dataOutputStream.write(buf2);
                    return;
                } else {
                    dataOutputStream.write(buf2);
                    dataOutputStream.write(0);
                    return;
                }
            case 3:
                int n = tag.getComponentCount();
                for (int i = 0; i < n; i++) {
                    dataOutputStream.writeShort((short) tag.getValueAt(i));
                }
                return;
            case 4:
            case 9:
                int n2 = tag.getComponentCount();
                for (int i2 = 0; i2 < n2; i2++) {
                    dataOutputStream.writeInt((int) tag.getValueAt(i2));
                }
                return;
            case 5:
            case 10:
                int n3 = tag.getComponentCount();
                for (int i3 = 0; i3 < n3; i3++) {
                    dataOutputStream.writeRational(tag.getRational(i3));
                }
                return;
            case 6:
            case 8:
            default:
                return;
        }
    }
}
