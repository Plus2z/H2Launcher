package net.oneplus.gallery3d.exif;

import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Arrays;
import java.util.Date;
import java.util.Locale;
import net.oneplus.gallery3d.exif.ExifInterface;

/* loaded from: classes.dex */
public class ExifTag {
    private static final long LONG_MAX = 2147483647L;
    private static final long LONG_MIN = -2147483648L;
    static final int SIZE_UNDEFINED = 0;
    private static final SimpleDateFormat TIME_FORMAT;
    public static final short TYPE_ASCII = 2;
    public static final short TYPE_LONG = 9;
    public static final short TYPE_RATIONAL = 10;
    public static final short TYPE_UNDEFINED = 7;
    public static final short TYPE_UNSIGNED_BYTE = 1;
    public static final short TYPE_UNSIGNED_LONG = 4;
    public static final short TYPE_UNSIGNED_RATIONAL = 5;
    public static final short TYPE_UNSIGNED_SHORT = 3;
    private static final long UNSIGNED_LONG_MAX = 4294967295L;
    private static final int UNSIGNED_SHORT_MAX = 65535;
    private int mComponentCountActual;
    private final short mDataType;
    private boolean mHasDefinedDefaultComponentCount;
    private int mIfd;
    private int mOffset;
    private final short mTagId;
    private Object mValue = null;
    private static Charset US_ASCII = Charset.forName("US-ASCII");
    private static final int[] TYPE_TO_SIZE_MAP = new int[11];

    static {
        TYPE_TO_SIZE_MAP[1] = 1;
        TYPE_TO_SIZE_MAP[2] = 1;
        TYPE_TO_SIZE_MAP[3] = 2;
        TYPE_TO_SIZE_MAP[4] = 4;
        TYPE_TO_SIZE_MAP[5] = 8;
        TYPE_TO_SIZE_MAP[7] = 1;
        TYPE_TO_SIZE_MAP[9] = 4;
        TYPE_TO_SIZE_MAP[10] = 8;
        TIME_FORMAT = new SimpleDateFormat("yyyy:MM:dd kk:mm:ss", Locale.getDefault());
    }

    public static boolean isValidIfd(int ifdId) {
        return ifdId == 0 || ifdId == 1 || ifdId == 2 || ifdId == 3 || ifdId == 4;
    }

    public static boolean isValidType(short type) {
        return type == 1 || type == 2 || type == 3 || type == 4 || type == 5 || type == 7 || type == 9 || type == 10;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExifTag(short tagId, short type, int componentCount, int ifd, boolean hasDefinedComponentCount) {
        this.mTagId = tagId;
        this.mDataType = type;
        this.mComponentCountActual = componentCount;
        this.mHasDefinedDefaultComponentCount = hasDefinedComponentCount;
        this.mIfd = ifd;
    }

    public static int getElementSize(short type) {
        return TYPE_TO_SIZE_MAP[type];
    }

    public int getIfd() {
        return this.mIfd;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setIfd(int ifdId) {
        this.mIfd = ifdId;
    }

    public short getTagId() {
        return this.mTagId;
    }

    public short getDataType() {
        return this.mDataType;
    }

    public int getDataSize() {
        return getComponentCount() * getElementSize(getDataType());
    }

    public int getComponentCount() {
        return this.mComponentCountActual;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void forceSetComponentCount(int count) {
        this.mComponentCountActual = count;
    }

    public boolean hasValue() {
        return this.mValue != null;
    }

    public boolean setValue(int[] value) {
        if (checkBadComponentCount(value.length)) {
            return false;
        }
        if (this.mDataType != 3 && this.mDataType != 9 && this.mDataType != 4) {
            return false;
        }
        if (this.mDataType == 3 && checkOverflowForUnsignedShort(value)) {
            return false;
        }
        if (this.mDataType == 4 && checkOverflowForUnsignedLong(value)) {
            return false;
        }
        long[] data = new long[value.length];
        for (int i = 0; i < value.length; i++) {
            data[i] = value[i];
        }
        this.mValue = data;
        this.mComponentCountActual = value.length;
        return true;
    }

    public boolean setValue(int value) {
        return setValue(new int[]{value});
    }

    public boolean setValue(long[] value) {
        if (checkBadComponentCount(value.length) || this.mDataType != 4 || checkOverflowForUnsignedLong(value)) {
            return false;
        }
        this.mValue = value;
        this.mComponentCountActual = value.length;
        return true;
    }

    public boolean setValue(long value) {
        return setValue(new long[]{value});
    }

    public boolean setValue(String value) {
        if (this.mDataType != 2 && this.mDataType != 7) {
            return false;
        }
        byte[] buf = value.getBytes(US_ASCII);
        byte[] finalBuf = buf;
        if (buf.length > 0) {
            finalBuf = (buf[buf.length + (-1)] == 0 || this.mDataType == 7) ? buf : Arrays.copyOf(buf, buf.length + 1);
        } else if (this.mDataType == 2 && this.mComponentCountActual == 1) {
            finalBuf = new byte[]{0};
        }
        int count = finalBuf.length;
        if (checkBadComponentCount(count)) {
            return false;
        }
        this.mComponentCountActual = count;
        this.mValue = finalBuf;
        return true;
    }

    public boolean setValue(Rational[] value) {
        if (checkBadComponentCount(value.length)) {
            return false;
        }
        if (this.mDataType != 5 && this.mDataType != 10) {
            return false;
        }
        if (this.mDataType == 5 && checkOverflowForUnsignedRational(value)) {
            return false;
        }
        if (this.mDataType == 10 && checkOverflowForRational(value)) {
            return false;
        }
        this.mValue = value;
        this.mComponentCountActual = value.length;
        return true;
    }

    public boolean setValue(Rational value) {
        return setValue(new Rational[]{value});
    }

    public boolean setValue(byte[] value, int offset, int length) {
        if (checkBadComponentCount(length)) {
            return false;
        }
        if (this.mDataType != 1 && this.mDataType != 7) {
            return false;
        }
        this.mValue = new byte[length];
        System.arraycopy(value, offset, this.mValue, 0, length);
        this.mComponentCountActual = length;
        return true;
    }

    public boolean setValue(byte[] value) {
        return setValue(value, 0, value.length);
    }

    public boolean setValue(byte value) {
        return setValue(new byte[]{value});
    }

    public boolean setValue(Object obj) {
        if (obj == null) {
            return false;
        }
        if (obj instanceof Short) {
            return setValue(((Short) obj).shortValue() & ExifInterface.ColorSpace.UNCALIBRATED);
        }
        if (obj instanceof String) {
            return setValue((String) obj);
        }
        if (obj instanceof int[]) {
            return setValue((int[]) obj);
        }
        if (obj instanceof long[]) {
            return setValue((long[]) obj);
        }
        if (obj instanceof Rational) {
            return setValue((Rational) obj);
        }
        if (obj instanceof Rational[]) {
            return setValue((Rational[]) obj);
        }
        if (obj instanceof byte[]) {
            return setValue((byte[]) obj);
        }
        if (obj instanceof Integer) {
            return setValue(((Integer) obj).intValue());
        }
        if (obj instanceof Long) {
            return setValue(((Long) obj).longValue());
        }
        if (obj instanceof Byte) {
            return setValue(((Byte) obj).byteValue());
        }
        if (obj instanceof Short[]) {
            Short[] arr = (Short[]) obj;
            int[] fin = new int[arr.length];
            for (int i = 0; i < arr.length; i++) {
                fin[i] = arr[i] == null ? 0 : arr[i].shortValue() & ExifInterface.ColorSpace.UNCALIBRATED;
            }
            return setValue(fin);
        }
        if (obj instanceof Integer[]) {
            Integer[] arr2 = (Integer[]) obj;
            int[] fin2 = new int[arr2.length];
            for (int i2 = 0; i2 < arr2.length; i2++) {
                fin2[i2] = arr2[i2] == null ? 0 : arr2[i2].intValue();
            }
            return setValue(fin2);
        }
        if (obj instanceof Long[]) {
            Long[] arr3 = (Long[]) obj;
            long[] fin3 = new long[arr3.length];
            for (int i3 = 0; i3 < arr3.length; i3++) {
                fin3[i3] = arr3[i3] == null ? 0L : arr3[i3].longValue();
            }
            return setValue(fin3);
        }
        if (!(obj instanceof Byte[])) {
            return false;
        }
        Byte[] arr4 = (Byte[]) obj;
        byte[] fin4 = new byte[arr4.length];
        for (int i4 = 0; i4 < arr4.length; i4++) {
            fin4[i4] = arr4[i4] == null ? (byte) 0 : arr4[i4].byteValue();
        }
        return setValue(fin4);
    }

    public boolean setTimeValue(long time) {
        boolean value;
        synchronized (TIME_FORMAT) {
            value = setValue(TIME_FORMAT.format(new Date(time)));
        }
        return value;
    }

    public String getValueAsString() {
        if (this.mValue == null) {
            return null;
        }
        if (this.mValue instanceof String) {
            return (String) this.mValue;
        }
        if (this.mValue instanceof byte[]) {
            return new String((byte[]) this.mValue, US_ASCII);
        }
        return null;
    }

    public String getValueAsString(String defaultValue) {
        String s = getValueAsString();
        return s == null ? defaultValue : s;
    }

    public byte[] getValueAsBytes() {
        if (this.mValue instanceof byte[]) {
            return (byte[]) this.mValue;
        }
        return null;
    }

    public byte getValueAsByte(byte defaultValue) {
        byte[] b = getValueAsBytes();
        return (b == null || b.length < 1) ? defaultValue : b[0];
    }

    public Rational[] getValueAsRationals() {
        if (this.mValue instanceof Rational[]) {
            return (Rational[]) this.mValue;
        }
        return null;
    }

    public Rational getValueAsRational(Rational defaultValue) {
        Rational[] r = getValueAsRationals();
        return (r == null || r.length < 1) ? defaultValue : r[0];
    }

    public Rational getValueAsRational(long defaultValue) {
        Rational defaultVal = new Rational(defaultValue, 1L);
        return getValueAsRational(defaultVal);
    }

    public int[] getValueAsInts() {
        int[] arr = null;
        if (this.mValue != null && (this.mValue instanceof long[])) {
            long[] val = (long[]) this.mValue;
            arr = new int[val.length];
            for (int i = 0; i < val.length; i++) {
                arr[i] = (int) val[i];
            }
        }
        return arr;
    }

    public int getValueAsInt(int defaultValue) {
        int[] i = getValueAsInts();
        return (i == null || i.length < 1) ? defaultValue : i[0];
    }

    public long[] getValueAsLongs() {
        if (this.mValue instanceof long[]) {
            return (long[]) this.mValue;
        }
        return null;
    }

    public long getValueAsLong(long defaultValue) {
        long[] l = getValueAsLongs();
        return (l == null || l.length < 1) ? defaultValue : l[0];
    }

    public Object getValue() {
        return this.mValue;
    }

    public long forceGetValueAsLong(long defaultValue) {
        long[] l = getValueAsLongs();
        if (l != null && l.length >= 1) {
            return l[0];
        }
        byte[] b = getValueAsBytes();
        if (b != null && b.length >= 1) {
            return b[0];
        }
        Rational[] r = getValueAsRationals();
        if (r != null && r.length >= 1 && r[0].getDenominator() != 0) {
            return (long) r[0].toDouble();
        }
        return defaultValue;
    }

    public String forceGetValueAsString() {
        if (this.mValue == null) {
            return "";
        }
        if (this.mValue instanceof byte[]) {
            if (this.mDataType == 2) {
                return new String((byte[]) this.mValue, US_ASCII);
            }
            return Arrays.toString((byte[]) this.mValue);
        }
        if (this.mValue instanceof long[]) {
            if (((long[]) this.mValue).length == 1) {
                return String.valueOf(((long[]) this.mValue)[0]);
            }
            return Arrays.toString((long[]) this.mValue);
        }
        if (this.mValue instanceof Object[]) {
            if (((Object[]) this.mValue).length == 1) {
                Object val = ((Object[]) this.mValue)[0];
                if (val == null) {
                    return "";
                }
                return val.toString();
            }
            return Arrays.toString((Object[]) this.mValue);
        }
        return this.mValue.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getValueAt(int index) {
        if (this.mValue instanceof long[]) {
            return ((long[]) this.mValue)[index];
        }
        if (this.mValue instanceof byte[]) {
            return ((byte[]) this.mValue)[index];
        }
        throw new IllegalArgumentException("Cannot get integer value from " + convertTypeToString(this.mDataType));
    }

    protected String getString() {
        if (this.mDataType != 2) {
            throw new IllegalArgumentException("Cannot get ASCII value from " + convertTypeToString(this.mDataType));
        }
        return new String((byte[]) this.mValue, US_ASCII);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getStringByte() {
        return (byte[]) this.mValue;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Rational getRational(int index) {
        if (this.mDataType != 10 && this.mDataType != 5) {
            throw new IllegalArgumentException("Cannot get RATIONAL value from " + convertTypeToString(this.mDataType));
        }
        return ((Rational[]) this.mValue)[index];
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void getBytes(byte[] buf) {
        getBytes(buf, 0, buf.length);
    }

    protected void getBytes(byte[] buf, int offset, int length) {
        if (this.mDataType != 7 && this.mDataType != 1) {
            throw new IllegalArgumentException("Cannot get BYTE value from " + convertTypeToString(this.mDataType));
        }
        Object obj = this.mValue;
        if (length > this.mComponentCountActual) {
            length = this.mComponentCountActual;
        }
        System.arraycopy(obj, 0, buf, offset, length);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffset() {
        return this.mOffset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOffset(int offset) {
        this.mOffset = offset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setHasDefinedCount(boolean d) {
        this.mHasDefinedDefaultComponentCount = d;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasDefinedCount() {
        return this.mHasDefinedDefaultComponentCount;
    }

    private boolean checkBadComponentCount(int count) {
        return this.mHasDefinedDefaultComponentCount && this.mComponentCountActual != count;
    }

    private static String convertTypeToString(short type) {
        switch (type) {
            case 1:
                return "UNSIGNED_BYTE";
            case 2:
                return "ASCII";
            case 3:
                return "UNSIGNED_SHORT";
            case 4:
                return "UNSIGNED_LONG";
            case 5:
                return "UNSIGNED_RATIONAL";
            case 6:
            case 8:
            default:
                return "";
            case 7:
                return "UNDEFINED";
            case 9:
                return "LONG";
            case 10:
                return "RATIONAL";
        }
    }

    private boolean checkOverflowForUnsignedShort(int[] value) {
        for (int v : value) {
            if (v > 65535 || v < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(long[] value) {
        for (long v : value) {
            if (v < 0 || v > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedLong(int[] value) {
        for (int v : value) {
            if (v < 0) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForUnsignedRational(Rational[] value) {
        for (Rational v : value) {
            if (v.getNumerator() < 0 || v.getDenominator() < 0 || v.getNumerator() > UNSIGNED_LONG_MAX || v.getDenominator() > UNSIGNED_LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    private boolean checkOverflowForRational(Rational[] value) {
        for (Rational v : value) {
            if (v.getNumerator() < LONG_MIN || v.getDenominator() < LONG_MIN || v.getNumerator() > LONG_MAX || v.getDenominator() > LONG_MAX) {
                return true;
            }
        }
        return false;
    }

    public boolean equals(Object obj) {
        if (obj == null || !(obj instanceof ExifTag)) {
            return false;
        }
        ExifTag tag = (ExifTag) obj;
        if (tag.mTagId != this.mTagId || tag.mComponentCountActual != this.mComponentCountActual || tag.mDataType != this.mDataType) {
            return false;
        }
        if (this.mValue == null) {
            return tag.mValue == null;
        }
        if (tag.mValue == null) {
            return false;
        }
        if (this.mValue instanceof long[]) {
            if (tag.mValue instanceof long[]) {
                return Arrays.equals((long[]) this.mValue, (long[]) tag.mValue);
            }
            return false;
        }
        if (this.mValue instanceof Rational[]) {
            if (tag.mValue instanceof Rational[]) {
                return Arrays.equals((Rational[]) this.mValue, (Rational[]) tag.mValue);
            }
            return false;
        }
        if (this.mValue instanceof byte[]) {
            if (tag.mValue instanceof byte[]) {
                return Arrays.equals((byte[]) this.mValue, (byte[]) tag.mValue);
            }
            return false;
        }
        return this.mValue.equals(tag.mValue);
    }

    public String toString() {
        return String.format("tag id: %04X\n", Short.valueOf(this.mTagId)) + "ifd id: " + this.mIfd + "\ntype: " + convertTypeToString(this.mDataType) + "\ncount: " + this.mComponentCountActual + "\noffset: " + this.mOffset + "\nvalue: " + forceGetValueAsString() + "\n";
    }
}
