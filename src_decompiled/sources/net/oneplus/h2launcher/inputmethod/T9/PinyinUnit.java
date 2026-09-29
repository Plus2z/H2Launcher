package net.oneplus.h2launcher.inputmethod.T9;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class PinyinUnit {
    private boolean mPinyin = false;
    private int mStartPosition = -1;
    private List<PinyinBaseUnit> mPinyinBaseUnitIndex = new ArrayList();

    public boolean isPinyin() {
        return this.mPinyin;
    }

    public void setPinyin(boolean pinyin) {
        this.mPinyin = pinyin;
    }

    public int getStartPosition() {
        return this.mStartPosition;
    }

    public void setStartPosition(int startPosition) {
        this.mStartPosition = startPosition;
    }

    public List<PinyinBaseUnit> getPinyinBaseUnitIndex() {
        return this.mPinyinBaseUnitIndex;
    }

    public void setStringIndex(List<PinyinBaseUnit> stringIndex) {
        this.mPinyinBaseUnitIndex = stringIndex;
    }
}
