package net.oneplus.h2launcher.inputmethod.T9;

import android.content.Context;
import java.util.ArrayList;
import java.util.List;
import net.oneplus.h2launcher.inputmethod.T9.HanziToPinyin;

/* loaded from: classes.dex */
public class PinyinUtil {
    public static synchronized void chineseStringToPinyinUnit(Context context, String chineseString, List<PinyinUnit> pinyinUnit, HanyuPinyinHelper helper) {
        synchronized (PinyinUtil.class) {
            if (chineseString != null && pinyinUnit != null) {
                String chineseStr = chineseString.toLowerCase();
                int chineseStringLength = chineseStr.length();
                StringBuffer nonPinyinString = new StringBuffer();
                PinyinUnit pyUnit = null;
                String[] pinyinStr = null;
                boolean lastChineseCharacters = true;
                int startPosition = -1;
                for (int i = 0; i < chineseStringLength; i++) {
                    char ch = chineseStr.charAt(i);
                    List<String> tokens = helper.hanyuPinYinConvert(String.valueOf(ch), false);
                    if (tokens.size() > 0) {
                        pinyinStr = new String[tokens.size()];
                        for (int j = 0; j < tokens.size(); j++) {
                            pinyinStr[j] = tokens.get(j);
                        }
                    }
                    if (pinyinStr == null) {
                        if (true == lastChineseCharacters) {
                            pyUnit = new PinyinUnit();
                            lastChineseCharacters = false;
                            startPosition = i;
                            nonPinyinString.delete(0, nonPinyinString.length());
                        }
                        nonPinyinString.append(ch);
                    } else {
                        if (!lastChineseCharacters) {
                            String originalString = nonPinyinString.toString();
                            String[] str = {nonPinyinString.toString()};
                            addPinyinUnit(pinyinUnit, pyUnit, false, originalString, str, startPosition);
                            nonPinyinString.delete(0, nonPinyinString.length());
                            lastChineseCharacters = true;
                        }
                        pyUnit = new PinyinUnit();
                        startPosition = i;
                        String originalString2 = String.valueOf(ch);
                        addPinyinUnit(pinyinUnit, pyUnit, true, originalString2, pinyinStr, startPosition);
                    }
                }
                if (!lastChineseCharacters) {
                    String originalString3 = nonPinyinString.toString();
                    String[] str2 = {nonPinyinString.toString()};
                    addPinyinUnit(pinyinUnit, pyUnit, false, originalString3, str2, startPosition);
                    nonPinyinString.delete(0, nonPinyinString.length());
                }
            }
        }
    }

    public static String getFirstLetter(List<PinyinUnit> pinyinUnit) {
        List<PinyinBaseUnit> pinyinBaseUnit;
        String pinyin;
        if (pinyinUnit != null && pinyinUnit.size() > 0 && (pinyinBaseUnit = pinyinUnit.get(0).getPinyinBaseUnitIndex()) != null && pinyinBaseUnit.size() > 0 && (pinyin = pinyinBaseUnit.get(0).getPinyin()) != null && pinyin.length() > 0) {
            return String.valueOf(pinyin.charAt(0));
        }
        return null;
    }

    public static String getFirstCharacter(List<PinyinUnit> pinyinUnit) {
        List<PinyinBaseUnit> pinyinBaseUnit;
        String originalString;
        if (pinyinUnit != null && pinyinUnit.size() > 0 && (pinyinBaseUnit = pinyinUnit.get(0).getPinyinBaseUnitIndex()) != null && pinyinBaseUnit.size() > 0 && (originalString = pinyinBaseUnit.get(0).getOriginalString()) != null && originalString.length() > 0) {
            return String.valueOf(originalString.charAt(0));
        }
        return null;
    }

    public static String getSortKey(List<PinyinUnit> pinyinUnit) {
        StringBuffer sortKeyBuffer = new StringBuffer();
        sortKeyBuffer.delete(0, sortKeyBuffer.length());
        if (pinyinUnit != null && pinyinUnit.size() > 0) {
            for (PinyinUnit pu : pinyinUnit) {
                if (pu.isPinyin()) {
                    sortKeyBuffer.append(pu.getPinyinBaseUnitIndex().get(0).getPinyin()).append(HanziToPinyin.Token.SEPARATOR);
                    sortKeyBuffer.append(pu.getPinyinBaseUnitIndex().get(0).getOriginalString()).append(HanziToPinyin.Token.SEPARATOR);
                } else {
                    sortKeyBuffer.append(pu.getPinyinBaseUnitIndex().get(0).getOriginalString()).append(HanziToPinyin.Token.SEPARATOR);
                }
            }
            return sortKeyBuffer.toString();
        }
        return null;
    }

    public static boolean isKanji(char chr) {
        String[] pinyinStr = null;
        ArrayList<HanziToPinyin.Token> tokens = HanziToPinyin.getInstance().get(String.valueOf(chr));
        if (tokens.size() > 0) {
            pinyinStr = new String[tokens.size()];
            for (int j = 0; j < tokens.size(); j++) {
                pinyinStr[j] = tokens.get(j).target;
            }
        }
        return pinyinStr != null;
    }

    private static void addPinyinUnit(List<PinyinUnit> pinyinUnit, PinyinUnit pyUnit, boolean pinyin, String originalString, String[] string, int startPosition) {
        if (pinyinUnit != null && pyUnit != null && originalString != null && string != null) {
            initPinyinUnit(pyUnit, pinyin, originalString, string, startPosition);
            pinyinUnit.add(pyUnit);
        }
    }

    private static void initPinyinUnit(PinyinUnit pinyinUnit, boolean pinyin, String originalString, String[] string, int startPosition) {
        if (pinyinUnit != null && originalString != null && string != null) {
            int strLength = string.length;
            pinyinUnit.setPinyin(pinyin);
            pinyinUnit.setStartPosition(startPosition);
            if (!pinyin || strLength <= 1) {
                for (String str : string) {
                    PinyinBaseUnit pinyinBaseUnit = new PinyinBaseUnit();
                    initT9PinyinUnit(pinyinBaseUnit, originalString, str);
                    pinyinUnit.getPinyinBaseUnitIndex().add(pinyinBaseUnit);
                }
                return;
            }
            PinyinBaseUnit pinyinBaseUnit2 = new PinyinBaseUnit();
            initT9PinyinUnit(pinyinBaseUnit2, originalString, string[0]);
            pinyinUnit.getPinyinBaseUnitIndex().add(pinyinBaseUnit2);
            for (int j = 1; j < strLength; j++) {
                int curStringIndexlength = pinyinUnit.getPinyinBaseUnitIndex().size();
                int k = 0;
                while (k < curStringIndexlength && !pinyinUnit.getPinyinBaseUnitIndex().get(k).getPinyin().equals(string[j])) {
                    k++;
                }
                if (k == curStringIndexlength) {
                    PinyinBaseUnit pinyinBaseUnit3 = new PinyinBaseUnit();
                    initT9PinyinUnit(pinyinBaseUnit3, originalString, string[j]);
                    pinyinUnit.getPinyinBaseUnitIndex().add(pinyinBaseUnit3);
                }
            }
        }
    }

    private static void initT9PinyinUnit(PinyinBaseUnit pinyinBaseUnit, String originalString, String pinyin) {
        if (pinyinBaseUnit != null && originalString != null && pinyin != null) {
            pinyinBaseUnit.setOriginalString(new String(originalString));
            pinyinBaseUnit.setPinyin(new String(pinyin));
            int pinyinLength = pinyin.length();
            StringBuffer numBuffer = new StringBuffer();
            numBuffer.delete(0, numBuffer.length());
            for (int i = 0; i < pinyinLength; i++) {
                char ch = T9Util.getT9Number(pinyin.charAt(i));
                numBuffer.append(ch);
            }
            pinyinBaseUnit.setNumber(new String(numBuffer.toString()));
            numBuffer.delete(0, numBuffer.length());
        }
    }
}
