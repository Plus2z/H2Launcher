package net.oneplus.gallery3d.exif;

import java.util.HashMap;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class IfdData {
    private static final int[] sIfds = {0, 1, 2, 3, 4};
    private final int mIfdId;
    private final Map<Short, ExifTag> mExifTags = new HashMap();
    private int mOffsetToNextIfd = 0;

    /* JADX INFO: Access modifiers changed from: package-private */
    public IfdData(int ifdId) {
        this.mIfdId = ifdId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static int[] getIfds() {
        return sIfds;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag[] getAllTags() {
        return (ExifTag[]) this.mExifTags.values().toArray(new ExifTag[this.mExifTags.size()]);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getId() {
        return this.mIfdId;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag getTag(short tagId) {
        return this.mExifTags.get(Short.valueOf(tagId));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public ExifTag setTag(ExifTag tag) {
        tag.setIfd(this.mIfdId);
        return this.mExifTags.put(Short.valueOf(tag.getTagId()), tag);
    }

    protected boolean checkCollision(short tagId) {
        return this.mExifTags.get(Short.valueOf(tagId)) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void removeTag(short tagId) {
        this.mExifTags.remove(Short.valueOf(tagId));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getTagCount() {
        return this.mExifTags.size();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setOffsetToNextIfd(int offset) {
        this.mOffsetToNextIfd = offset;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOffsetToNextIfd() {
        return this.mOffsetToNextIfd;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null) {
            return false;
        }
        if (obj instanceof IfdData) {
            IfdData data = (IfdData) obj;
            if (data.getId() == this.mIfdId && data.getTagCount() == getTagCount()) {
                ExifTag[] tags = data.getAllTags();
                for (ExifTag tag : tags) {
                    if (!ExifInterface.isOffsetTag(tag.getTagId())) {
                        ExifTag tag2 = this.mExifTags.get(Short.valueOf(tag.getTagId()));
                        if (!tag.equals(tag2)) {
                            return false;
                        }
                    }
                }
                return true;
            }
        }
        return false;
    }
}
