package net.oneplus.gallery3d.exif;

import android.util.Log;
import java.io.UnsupportedEncodingException;
import java.nio.ByteOrder;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes.dex */
class ExifData {
    private static final String TAG = "ExifData";
    private static final byte[] USER_COMMENT_ASCII = {65, 83, 67, 73, 73, 0, 0, 0};
    private static final byte[] USER_COMMENT_JIS = {74, 73, 83, 0, 0, 0, 0, 0};
    private static final byte[] USER_COMMENT_UNICODE = {85, 78, 73, 67, 79, 68, 69, 0};
    private final ByteOrder mByteOrder;
    private final IfdData[] mIfdDatas = new IfdData[5];
    private ArrayList<byte[]> mStripBytes = new ArrayList<>();
    private byte[] mThumbnail;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ExifData(ByteOrder order) {
        this.mByteOrder = order;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getCompressedThumbnail() {
        return this.mThumbnail;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setCompressedThumbnail(byte[] thumbnail) {
        this.mThumbnail = thumbnail;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasCompressedThumbnail() {
        return this.mThumbnail != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setStripBytes(int index, byte[] strip) {
        if (index < this.mStripBytes.size()) {
            this.mStripBytes.set(index, strip);
            return;
        }
        for (int i = this.mStripBytes.size(); i < index; i++) {
            this.mStripBytes.add(null);
        }
        this.mStripBytes.add(strip);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getStripCount() {
        return this.mStripBytes.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getStrip(int index) {
        return this.mStripBytes.get(index);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public boolean hasUncompressedStrip() {
        return this.mStripBytes.size() != 0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ByteOrder getByteOrder() {
        return this.mByteOrder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public IfdData getIfdData(int ifdId) {
        if (ExifTag.isValidIfd(ifdId)) {
            return this.mIfdDatas[ifdId];
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void addIfdData(IfdData data) {
        this.mIfdDatas[data.getId()] = data;
    }

    protected IfdData getOrCreateIfdData(int ifdId) {
        IfdData ifdData = this.mIfdDatas[ifdId];
        if (ifdData == null) {
            IfdData ifdData2 = new IfdData(ifdId);
            this.mIfdDatas[ifdId] = ifdData2;
            return ifdData2;
        }
        return ifdData;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag getTag(short tag, int ifd) {
        IfdData ifdData = this.mIfdDatas[ifd];
        if (ifdData == null) {
            return null;
        }
        return ifdData.getTag(tag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag addTag(ExifTag tag) {
        if (tag == null) {
            return null;
        }
        int ifd = tag.getIfd();
        return addTag(tag, ifd);
    }

    protected ExifTag addTag(ExifTag tag, int ifdId) {
        if (tag == null || !ExifTag.isValidIfd(ifdId)) {
            return null;
        }
        IfdData ifdData = getOrCreateIfdData(ifdId);
        return ifdData.setTag(tag);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void clearThumbnailAndStrips() {
        this.mThumbnail = null;
        this.mStripBytes.clear();
    }

    protected void removeThumbnailData() {
        clearThumbnailAndStrips();
        this.mIfdDatas[1] = null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeTag(short tagId, int ifdId) {
        IfdData ifdData = this.mIfdDatas[ifdId];
        if (ifdData != null) {
            ifdData.removeTag(tagId);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getUserComment() {
        ExifTag tag;
        String str = null;
        IfdData ifdData = this.mIfdDatas[0];
        if (ifdData != null && (tag = ifdData.getTag(ExifInterface.getTrueTagKey(ExifInterface.TAG_USER_COMMENT))) != null && tag.getComponentCount() >= 8) {
            byte[] buf = new byte[tag.getComponentCount()];
            tag.getBytes(buf);
            byte[] code = new byte[8];
            System.arraycopy(buf, 0, code, 0, 8);
            try {
                if (Arrays.equals(code, USER_COMMENT_ASCII)) {
                    str = new String(buf, 8, buf.length - 8, "US-ASCII");
                } else if (Arrays.equals(code, USER_COMMENT_JIS)) {
                    str = new String(buf, 8, buf.length - 8, "EUC-JP");
                } else if (Arrays.equals(code, USER_COMMENT_UNICODE)) {
                    str = new String(buf, 8, buf.length - 8, "UTF-16");
                }
            } catch (UnsupportedEncodingException e) {
                Log.w(TAG, "Failed to decode the user comment");
            }
        }
        return str;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<ExifTag> getAllTags() {
        ExifTag[] tags;
        ArrayList<ExifTag> ret = new ArrayList<>();
        for (IfdData d : this.mIfdDatas) {
            if (d != null && (tags = d.getAllTags()) != null) {
                for (ExifTag t : tags) {
                    ret.add(t);
                }
            }
        }
        if (ret.size() == 0) {
            return null;
        }
        return ret;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<ExifTag> getAllTagsForIfd(int ifd) {
        ExifTag[] tags;
        IfdData d = this.mIfdDatas[ifd];
        if (d != null && (tags = d.getAllTags()) != null) {
            ArrayList<ExifTag> ret = new ArrayList<>(tags.length);
            for (ExifTag t : tags) {
                ret.add(t);
            }
            if (ret.size() == 0) {
                return null;
            }
            return ret;
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<ExifTag> getAllTagsForTagId(short tag) {
        ExifTag t;
        ArrayList<ExifTag> ret = new ArrayList<>();
        for (IfdData d : this.mIfdDatas) {
            if (d != null && (t = d.getTag(tag)) != null) {
                ret.add(t);
            }
        }
        if (ret.size() == 0) {
            return null;
        }
        return ret;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && (obj instanceof ExifData)) {
            ExifData data = (ExifData) obj;
            if (data.mByteOrder != this.mByteOrder || data.mStripBytes.size() != this.mStripBytes.size() || !Arrays.equals(data.mThumbnail, this.mThumbnail)) {
                return false;
            }
            for (int i = 0; i < this.mStripBytes.size(); i++) {
                if (!Arrays.equals(data.mStripBytes.get(i), this.mStripBytes.get(i))) {
                    return false;
                }
            }
            for (int i2 = 0; i2 < 5; i2++) {
                IfdData ifd1 = data.getIfdData(i2);
                IfdData ifd2 = getIfdData(i2);
                if (ifd1 != ifd2 && ifd1 != null && !ifd1.equals(ifd2)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
