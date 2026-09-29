package com.google.protobuf.nano;

import android.support.v4.media.TransportMediator;
import io.fabric.sdk.android.services.network.HttpRequest;
import java.io.IOException;
import java.io.UnsupportedEncodingException;

/* loaded from: classes.dex */
public final class CodedOutputByteBufferNano {
    public static final int LITTLE_ENDIAN_32_SIZE = 4;
    public static final int LITTLE_ENDIAN_64_SIZE = 8;
    private final byte[] buffer;
    private final int limit;
    private int position;

    private CodedOutputByteBufferNano(byte[] buffer, int offset, int length) {
        this.buffer = buffer;
        this.position = offset;
        this.limit = offset + length;
    }

    public static CodedOutputByteBufferNano newInstance(byte[] flatArray) {
        return newInstance(flatArray, 0, flatArray.length);
    }

    public static CodedOutputByteBufferNano newInstance(byte[] flatArray, int offset, int length) {
        return new CodedOutputByteBufferNano(flatArray, offset, length);
    }

    public void writeDouble(int fieldNumber, double value) throws IOException {
        writeTag(fieldNumber, 1);
        writeDoubleNoTag(value);
    }

    public void writeFloat(int fieldNumber, float value) throws IOException {
        writeTag(fieldNumber, 5);
        writeFloatNoTag(value);
    }

    public void writeUInt64(int fieldNumber, long value) throws IOException {
        writeTag(fieldNumber, 0);
        writeUInt64NoTag(value);
    }

    public void writeInt64(int fieldNumber, long value) throws IOException {
        writeTag(fieldNumber, 0);
        writeInt64NoTag(value);
    }

    public void writeInt32(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 0);
        writeInt32NoTag(value);
    }

    public void writeFixed64(int fieldNumber, long value) throws IOException {
        writeTag(fieldNumber, 1);
        writeFixed64NoTag(value);
    }

    public void writeFixed32(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 5);
        writeFixed32NoTag(value);
    }

    public void writeBool(int fieldNumber, boolean value) throws IOException {
        writeTag(fieldNumber, 0);
        writeBoolNoTag(value);
    }

    public void writeString(int fieldNumber, String value) throws IOException {
        writeTag(fieldNumber, 2);
        writeStringNoTag(value);
    }

    public void writeGroup(int fieldNumber, MessageNano value) throws IOException {
        writeTag(fieldNumber, 3);
        writeGroupNoTag(value);
        writeTag(fieldNumber, 4);
    }

    public void writeMessage(int fieldNumber, MessageNano value) throws IOException {
        writeTag(fieldNumber, 2);
        writeMessageNoTag(value);
    }

    public void writeBytes(int fieldNumber, byte[] value) throws IOException {
        writeTag(fieldNumber, 2);
        writeBytesNoTag(value);
    }

    public void writeUInt32(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 0);
        writeUInt32NoTag(value);
    }

    public void writeEnum(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 0);
        writeEnumNoTag(value);
    }

    public void writeSFixed32(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 5);
        writeSFixed32NoTag(value);
    }

    public void writeSFixed64(int fieldNumber, long value) throws IOException {
        writeTag(fieldNumber, 1);
        writeSFixed64NoTag(value);
    }

    public void writeSInt32(int fieldNumber, int value) throws IOException {
        writeTag(fieldNumber, 0);
        writeSInt32NoTag(value);
    }

    public void writeSInt64(int fieldNumber, long value) throws IOException {
        writeTag(fieldNumber, 0);
        writeSInt64NoTag(value);
    }

    public void writeDoubleNoTag(double value) throws IOException {
        writeRawLittleEndian64(Double.doubleToLongBits(value));
    }

    public void writeFloatNoTag(float value) throws IOException {
        writeRawLittleEndian32(Float.floatToIntBits(value));
    }

    public void writeUInt64NoTag(long value) throws IOException {
        writeRawVarint64(value);
    }

    public void writeInt64NoTag(long value) throws IOException {
        writeRawVarint64(value);
    }

    public void writeInt32NoTag(int value) throws IOException {
        if (value >= 0) {
            writeRawVarint32(value);
        } else {
            writeRawVarint64(value);
        }
    }

    public void writeFixed64NoTag(long value) throws IOException {
        writeRawLittleEndian64(value);
    }

    public void writeFixed32NoTag(int value) throws IOException {
        writeRawLittleEndian32(value);
    }

    public void writeBoolNoTag(boolean value) throws IOException {
        writeRawByte(value ? 1 : 0);
    }

    public void writeStringNoTag(String value) throws IOException {
        byte[] bytes = value.getBytes(HttpRequest.CHARSET_UTF8);
        writeRawVarint32(bytes.length);
        writeRawBytes(bytes);
    }

    public void writeGroupNoTag(MessageNano value) throws IOException {
        value.writeTo(this);
    }

    public void writeMessageNoTag(MessageNano value) throws IOException {
        writeRawVarint32(value.getCachedSize());
        value.writeTo(this);
    }

    public void writeBytesNoTag(byte[] value) throws IOException {
        writeRawVarint32(value.length);
        writeRawBytes(value);
    }

    public void writeUInt32NoTag(int value) throws IOException {
        writeRawVarint32(value);
    }

    public void writeEnumNoTag(int value) throws IOException {
        writeRawVarint32(value);
    }

    public void writeSFixed32NoTag(int value) throws IOException {
        writeRawLittleEndian32(value);
    }

    public void writeSFixed64NoTag(long value) throws IOException {
        writeRawLittleEndian64(value);
    }

    public void writeSInt32NoTag(int value) throws IOException {
        writeRawVarint32(encodeZigZag32(value));
    }

    public void writeSInt64NoTag(long value) throws IOException {
        writeRawVarint64(encodeZigZag64(value));
    }

    public static int computeDoubleSize(int fieldNumber, double value) {
        return computeTagSize(fieldNumber) + computeDoubleSizeNoTag(value);
    }

    public static int computeFloatSize(int fieldNumber, float value) {
        return computeTagSize(fieldNumber) + computeFloatSizeNoTag(value);
    }

    public static int computeUInt64Size(int fieldNumber, long value) {
        return computeTagSize(fieldNumber) + computeUInt64SizeNoTag(value);
    }

    public static int computeInt64Size(int fieldNumber, long value) {
        return computeTagSize(fieldNumber) + computeInt64SizeNoTag(value);
    }

    public static int computeInt32Size(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeInt32SizeNoTag(value);
    }

    public static int computeFixed64Size(int fieldNumber, long value) {
        return computeTagSize(fieldNumber) + computeFixed64SizeNoTag(value);
    }

    public static int computeFixed32Size(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeFixed32SizeNoTag(value);
    }

    public static int computeBoolSize(int fieldNumber, boolean value) {
        return computeTagSize(fieldNumber) + computeBoolSizeNoTag(value);
    }

    public static int computeStringSize(int fieldNumber, String value) {
        return computeTagSize(fieldNumber) + computeStringSizeNoTag(value);
    }

    public static int computeGroupSize(int fieldNumber, MessageNano value) {
        return (computeTagSize(fieldNumber) * 2) + computeGroupSizeNoTag(value);
    }

    public static int computeMessageSize(int fieldNumber, MessageNano value) {
        return computeTagSize(fieldNumber) + computeMessageSizeNoTag(value);
    }

    public static int computeBytesSize(int fieldNumber, byte[] value) {
        return computeTagSize(fieldNumber) + computeBytesSizeNoTag(value);
    }

    public static int computeUInt32Size(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeUInt32SizeNoTag(value);
    }

    public static int computeEnumSize(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeEnumSizeNoTag(value);
    }

    public static int computeSFixed32Size(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeSFixed32SizeNoTag(value);
    }

    public static int computeSFixed64Size(int fieldNumber, long value) {
        return computeTagSize(fieldNumber) + computeSFixed64SizeNoTag(value);
    }

    public static int computeSInt32Size(int fieldNumber, int value) {
        return computeTagSize(fieldNumber) + computeSInt32SizeNoTag(value);
    }

    public static int computeSInt64Size(int fieldNumber, long value) {
        return computeTagSize(fieldNumber) + computeSInt64SizeNoTag(value);
    }

    public static int computeDoubleSizeNoTag(double value) {
        return 8;
    }

    public static int computeFloatSizeNoTag(float value) {
        return 4;
    }

    public static int computeUInt64SizeNoTag(long value) {
        return computeRawVarint64Size(value);
    }

    public static int computeInt64SizeNoTag(long value) {
        return computeRawVarint64Size(value);
    }

    public static int computeInt32SizeNoTag(int value) {
        if (value >= 0) {
            return computeRawVarint32Size(value);
        }
        return 10;
    }

    public static int computeFixed64SizeNoTag(long value) {
        return 8;
    }

    public static int computeFixed32SizeNoTag(int value) {
        return 4;
    }

    public static int computeBoolSizeNoTag(boolean value) {
        return 1;
    }

    public static int computeStringSizeNoTag(String value) {
        try {
            byte[] bytes = value.getBytes(HttpRequest.CHARSET_UTF8);
            return computeRawVarint32Size(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.");
        }
    }

    public static int computeGroupSizeNoTag(MessageNano value) {
        return value.getSerializedSize();
    }

    public static int computeMessageSizeNoTag(MessageNano value) {
        int size = value.getSerializedSize();
        return computeRawVarint32Size(size) + size;
    }

    public static int computeBytesSizeNoTag(byte[] value) {
        return computeRawVarint32Size(value.length) + value.length;
    }

    public static int computeUInt32SizeNoTag(int value) {
        return computeRawVarint32Size(value);
    }

    public static int computeEnumSizeNoTag(int value) {
        return computeRawVarint32Size(value);
    }

    public static int computeSFixed32SizeNoTag(int value) {
        return 4;
    }

    public static int computeSFixed64SizeNoTag(long value) {
        return 8;
    }

    public static int computeSInt32SizeNoTag(int value) {
        return computeRawVarint32Size(encodeZigZag32(value));
    }

    public static int computeSInt64SizeNoTag(long value) {
        return computeRawVarint64Size(encodeZigZag64(value));
    }

    public int spaceLeft() {
        return this.limit - this.position;
    }

    public void checkNoSpaceLeft() {
        if (spaceLeft() != 0) {
            throw new IllegalStateException("Did not write as much data as expected.");
        }
    }

    /* loaded from: classes.dex */
    public static class OutOfSpaceException extends IOException {
        private static final long serialVersionUID = -6947486886997889499L;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        OutOfSpaceException(int r4, int r5) {
            /*
                r3 = this;
                java.lang.String r0 = "CodedOutputStream was writing to a flat byte array and ran out of space (pos "
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.String r0 = java.lang.String.valueOf(r0)
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                int r2 = r0.length()
                int r2 = r2 + 31
                r1.<init>(r2)
                java.lang.StringBuilder r0 = r1.append(r0)
                java.lang.StringBuilder r0 = r0.append(r4)
                java.lang.String r1 = " limit "
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.StringBuilder r0 = r0.append(r5)
                java.lang.String r1 = ")."
                java.lang.StringBuilder r0 = r0.append(r1)
                java.lang.String r0 = r0.toString()
                r3.<init>(r0)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.nano.CodedOutputByteBufferNano.OutOfSpaceException.<init>(int, int):void");
        }
    }

    public void writeRawByte(byte value) throws IOException {
        if (this.position == this.limit) {
            throw new OutOfSpaceException(this.position, this.limit);
        }
        byte[] bArr = this.buffer;
        int i = this.position;
        this.position = i + 1;
        bArr[i] = value;
    }

    public void writeRawByte(int value) throws IOException {
        writeRawByte((byte) value);
    }

    public void writeRawBytes(byte[] value) throws IOException {
        writeRawBytes(value, 0, value.length);
    }

    public void writeRawBytes(byte[] value, int offset, int length) throws IOException {
        if (this.limit - this.position >= length) {
            System.arraycopy(value, offset, this.buffer, this.position, length);
            this.position += length;
            return;
        }
        throw new OutOfSpaceException(this.position, this.limit);
    }

    public void writeTag(int fieldNumber, int wireType) throws IOException {
        writeRawVarint32(WireFormatNano.makeTag(fieldNumber, wireType));
    }

    public static int computeTagSize(int fieldNumber) {
        return computeRawVarint32Size(WireFormatNano.makeTag(fieldNumber, 0));
    }

    public void writeRawVarint32(int value) throws IOException {
        while ((value & (-128)) != 0) {
            writeRawByte((value & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            value >>>= 7;
        }
        writeRawByte(value);
    }

    public static int computeRawVarint32Size(int value) {
        if ((value & (-128)) == 0) {
            return 1;
        }
        if ((value & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & value) == 0) {
            return 3;
        }
        return ((-268435456) & value) == 0 ? 4 : 5;
    }

    public void writeRawVarint64(long value) throws IOException {
        while (((-128) & value) != 0) {
            writeRawByte((((int) value) & TransportMediator.KEYCODE_MEDIA_PAUSE) | 128);
            value >>>= 7;
        }
        writeRawByte((int) value);
    }

    public static int computeRawVarint64Size(long value) {
        if (((-128) & value) == 0) {
            return 1;
        }
        if (((-16384) & value) == 0) {
            return 2;
        }
        if (((-2097152) & value) == 0) {
            return 3;
        }
        if (((-268435456) & value) == 0) {
            return 4;
        }
        if (((-34359738368L) & value) == 0) {
            return 5;
        }
        if (((-4398046511104L) & value) == 0) {
            return 6;
        }
        if (((-562949953421312L) & value) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & value) == 0) {
            return 8;
        }
        return (Long.MIN_VALUE & value) == 0 ? 9 : 10;
    }

    public void writeRawLittleEndian32(int value) throws IOException {
        writeRawByte(value & 255);
        writeRawByte((value >> 8) & 255);
        writeRawByte((value >> 16) & 255);
        writeRawByte((value >> 24) & 255);
    }

    public void writeRawLittleEndian64(long value) throws IOException {
        writeRawByte(((int) value) & 255);
        writeRawByte(((int) (value >> 8)) & 255);
        writeRawByte(((int) (value >> 16)) & 255);
        writeRawByte(((int) (value >> 24)) & 255);
        writeRawByte(((int) (value >> 32)) & 255);
        writeRawByte(((int) (value >> 40)) & 255);
        writeRawByte(((int) (value >> 48)) & 255);
        writeRawByte(((int) (value >> 56)) & 255);
    }

    public static int encodeZigZag32(int n) {
        return (n << 1) ^ (n >> 31);
    }

    public static long encodeZigZag64(long n) {
        return (n << 1) ^ (n >> 63);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int computeFieldSize(int number, int type, Object object) {
        switch (type) {
            case 1:
                return computeDoubleSize(number, ((Double) object).doubleValue());
            case 2:
                return computeFloatSize(number, ((Float) object).floatValue());
            case 3:
                return computeInt64Size(number, ((Long) object).longValue());
            case 4:
                return computeUInt64Size(number, ((Long) object).longValue());
            case 5:
                return computeInt32Size(number, ((Integer) object).intValue());
            case 6:
                return computeFixed64Size(number, ((Long) object).longValue());
            case 7:
                return computeFixed32Size(number, ((Integer) object).intValue());
            case 8:
                return computeBoolSize(number, ((Boolean) object).booleanValue());
            case 9:
                return computeStringSize(number, (String) object);
            case 10:
                return computeGroupSize(number, (MessageNano) object);
            case 11:
                return computeMessageSize(number, (MessageNano) object);
            case 12:
                return computeBytesSize(number, (byte[]) object);
            case 13:
                return computeUInt32Size(number, ((Integer) object).intValue());
            case 14:
                return computeEnumSize(number, ((Integer) object).intValue());
            case 15:
                return computeSFixed32Size(number, ((Integer) object).intValue());
            case 16:
                return computeSFixed64Size(number, ((Long) object).longValue());
            case 17:
                return computeSInt32Size(number, ((Integer) object).intValue());
            case 18:
                return computeSInt64Size(number, ((Long) object).longValue());
            default:
                throw new IllegalArgumentException(new StringBuilder(25).append("Unknown type: ").append(type).toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void writeField(int number, int type, Object value) throws IOException {
        switch (type) {
            case 1:
                Double doubleValue = (Double) value;
                writeDouble(number, doubleValue.doubleValue());
                return;
            case 2:
                Float floatValue = (Float) value;
                writeFloat(number, floatValue.floatValue());
                return;
            case 3:
                Long int64Value = (Long) value;
                writeInt64(number, int64Value.longValue());
                return;
            case 4:
                Long uint64Value = (Long) value;
                writeUInt64(number, uint64Value.longValue());
                return;
            case 5:
                Integer int32Value = (Integer) value;
                writeInt32(number, int32Value.intValue());
                return;
            case 6:
                Long fixed64Value = (Long) value;
                writeFixed64(number, fixed64Value.longValue());
                return;
            case 7:
                Integer fixed32Value = (Integer) value;
                writeFixed32(number, fixed32Value.intValue());
                return;
            case 8:
                Boolean boolValue = (Boolean) value;
                writeBool(number, boolValue.booleanValue());
                return;
            case 9:
                String stringValue = (String) value;
                writeString(number, stringValue);
                return;
            case 10:
                MessageNano groupValue = (MessageNano) value;
                writeGroup(number, groupValue);
                return;
            case 11:
                MessageNano messageValue = (MessageNano) value;
                writeMessage(number, messageValue);
                return;
            case 12:
                byte[] bytesValue = (byte[]) value;
                writeBytes(number, bytesValue);
                return;
            case 13:
                Integer uint32Value = (Integer) value;
                writeUInt32(number, uint32Value.intValue());
                return;
            case 14:
                Integer enumValue = (Integer) value;
                writeEnum(number, enumValue.intValue());
                return;
            case 15:
                Integer sfixed32Value = (Integer) value;
                writeSFixed32(number, sfixed32Value.intValue());
                return;
            case 16:
                Long sfixed64Value = (Long) value;
                writeSFixed64(number, sfixed64Value.longValue());
                return;
            case 17:
                Integer sint32Value = (Integer) value;
                writeSInt32(number, sint32Value.intValue());
                return;
            case 18:
                Long sint64Value = (Long) value;
                writeSInt64(number, sint64Value.longValue());
                return;
            default:
                throw new IOException(new StringBuilder(25).append("Unknown type: ").append(type).toString());
        }
    }
}
