package net.oneplus.gallery3d.exif;

import io.fabric.sdk.android.services.network.UrlUtils;
import java.io.EOFException;
import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import net.oneplus.gallery3d.exif.ExifInterface;

/* loaded from: classes.dex */
class CountedDataInputStream extends FilterInputStream {
    static final /* synthetic */ boolean $assertionsDisabled;
    private final byte[] mByteArray;
    private final ByteBuffer mByteBuffer;
    private int mCount;

    static {
        $assertionsDisabled = !CountedDataInputStream.class.desiredAssertionStatus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public CountedDataInputStream(InputStream in) {
        super(in);
        this.mCount = 0;
        this.mByteArray = new byte[8];
        this.mByteBuffer = ByteBuffer.wrap(this.mByteArray);
    }

    public int getReadByteCount() {
        return this.mCount;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b) throws IOException {
        int r = this.in.read(b);
        this.mCount = (r >= 0 ? r : 0) + this.mCount;
        return r;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] b, int off, int len) throws IOException {
        int r = this.in.read(b, off, len);
        this.mCount = (r >= 0 ? r : 0) + this.mCount;
        return r;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int r = this.in.read();
        this.mCount = (r >= 0 ? 1 : 0) + this.mCount;
        return r;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long length) throws IOException {
        long skip = this.in.skip(length);
        this.mCount = (int) (this.mCount + skip);
        return skip;
    }

    public void skipOrThrow(long length) throws IOException {
        if (skip(length) != length) {
            throw new EOFException();
        }
    }

    public void skipTo(long target) throws IOException {
        long cur = this.mCount;
        long diff = target - cur;
        if (!$assertionsDisabled && diff < 0) {
            throw new AssertionError();
        }
        skipOrThrow(diff);
    }

    public void readOrThrow(byte[] b, int off, int len) throws IOException {
        int r = read(b, off, len);
        if (r != len) {
            throw new EOFException();
        }
    }

    public void readOrThrow(byte[] b) throws IOException {
        readOrThrow(b, 0, b.length);
    }

    public void setByteOrder(ByteOrder order) {
        this.mByteBuffer.order(order);
    }

    public ByteOrder getByteOrder() {
        return this.mByteBuffer.order();
    }

    public short readShort() throws IOException {
        readOrThrow(this.mByteArray, 0, 2);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getShort();
    }

    public int readUnsignedShort() throws IOException {
        return readShort() & ExifInterface.ColorSpace.UNCALIBRATED;
    }

    public int readInt() throws IOException {
        readOrThrow(this.mByteArray, 0, 4);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getInt();
    }

    public long readUnsignedInt() throws IOException {
        return readInt() & 4294967295L;
    }

    public long readLong() throws IOException {
        readOrThrow(this.mByteArray, 0, 8);
        this.mByteBuffer.rewind();
        return this.mByteBuffer.getLong();
    }

    public String readString(int n) throws IOException {
        byte[] buf = new byte[n];
        readOrThrow(buf);
        return new String(buf, UrlUtils.UTF8);
    }

    public String readString(int n, Charset charset) throws IOException {
        byte[] buf = new byte[n];
        readOrThrow(buf);
        return new String(buf, charset);
    }
}
