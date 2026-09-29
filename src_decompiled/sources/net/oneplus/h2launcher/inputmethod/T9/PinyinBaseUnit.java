package net.oneplus.h2launcher.inputmethod.T9;

/* loaded from: classes.dex */
public class PinyinBaseUnit {
    private String mNumber;
    private String mOriginalString;
    private String mPinyin;

    public PinyinBaseUnit() {
    }

    public PinyinBaseUnit(String originalString, String pinyin, String number) {
        this.mOriginalString = originalString;
        this.mPinyin = pinyin;
        this.mNumber = number;
    }

    public String getOriginalString() {
        return this.mOriginalString;
    }

    public void setOriginalString(String originalString) {
        this.mOriginalString = originalString;
    }

    public String getPinyin() {
        return this.mPinyin;
    }

    public void setPinyin(String pinyin) {
        this.mPinyin = pinyin;
    }

    public String getNumber() {
        return this.mNumber;
    }

    public void setNumber(String number) {
        this.mNumber = number;
    }
}
