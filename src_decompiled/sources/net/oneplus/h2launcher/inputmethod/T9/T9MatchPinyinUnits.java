package net.oneplus.h2launcher.inputmethod.T9;

import java.util.List;

/* loaded from: classes.dex */
public class T9MatchPinyinUnits {
    public static boolean matchPinyinUnits(List<PinyinUnit> pinyinUnits, String baseData, String search, StringBuffer chineseKeyWord) {
        if (pinyinUnits == null || search == null || chineseKeyWord == null) {
            return false;
        }
        StringBuffer matchSearch = new StringBuffer();
        matchSearch.delete(0, matchSearch.length());
        chineseKeyWord.delete(0, chineseKeyWord.length());
        int pinyinUnitsLength = pinyinUnits.size();
        StringBuffer searchBuffer = new StringBuffer();
        for (int i = 0; i < pinyinUnitsLength; i++) {
            chineseKeyWord.delete(0, chineseKeyWord.length());
            searchBuffer.delete(0, searchBuffer.length());
            searchBuffer.append(search);
            boolean found = findPinyinUnits(pinyinUnits, i, 0, baseData, searchBuffer, chineseKeyWord);
            if (true == found) {
                return true;
            }
        }
        return false;
    }

    private static boolean findPinyinUnits(List<PinyinUnit> pinyinUnits, int pinyinUnitIndex, int t9PinyinUnitIndex, String baseData, StringBuffer searchBuffer, StringBuffer chineseKeyWord) {
        if (pinyinUnits == null || baseData == null || searchBuffer == null || chineseKeyWord == null) {
            return false;
        }
        String search = searchBuffer.toString();
        if (search.length() <= 0) {
            return true;
        }
        if (pinyinUnitIndex >= pinyinUnits.size()) {
            return false;
        }
        PinyinUnit pyUnit = pinyinUnits.get(pinyinUnitIndex);
        if (t9PinyinUnitIndex >= pyUnit.getPinyinBaseUnitIndex().size()) {
            return false;
        }
        PinyinBaseUnit pinyinBaseUnit = pyUnit.getPinyinBaseUnitIndex().get(t9PinyinUnitIndex);
        if (pyUnit.isPinyin()) {
            if (search.startsWith(String.valueOf(pinyinBaseUnit.getNumber().charAt(0)))) {
                searchBuffer.delete(0, 1);
                chineseKeyWord.append(baseData.charAt(pyUnit.getStartPosition()));
                boolean found = findPinyinUnits(pinyinUnits, pinyinUnitIndex + 1, 0, baseData, searchBuffer, chineseKeyWord);
                if (true == found) {
                    return true;
                }
                searchBuffer.insert(0, pinyinBaseUnit.getNumber().charAt(0));
                chineseKeyWord.deleteCharAt(chineseKeyWord.length() - 1);
            }
            if (pinyinBaseUnit.getNumber().startsWith(search)) {
                chineseKeyWord.append(baseData.charAt(pyUnit.getStartPosition()));
                searchBuffer.delete(0, searchBuffer.length());
                return true;
            }
            if (search.startsWith(pinyinBaseUnit.getNumber())) {
                searchBuffer.delete(0, pinyinBaseUnit.getNumber().length());
                chineseKeyWord.append(baseData.charAt(pyUnit.getStartPosition()));
                boolean found2 = findPinyinUnits(pinyinUnits, pinyinUnitIndex + 1, 0, baseData, searchBuffer, chineseKeyWord);
                if (true == found2) {
                    return true;
                }
                searchBuffer.insert(0, pinyinBaseUnit.getNumber());
                chineseKeyWord.deleteCharAt(chineseKeyWord.length() - 1);
            } else {
                boolean found3 = findPinyinUnits(pinyinUnits, pinyinUnitIndex, t9PinyinUnitIndex + 1, baseData, searchBuffer, chineseKeyWord);
                if (found3) {
                    return true;
                }
            }
        } else {
            if (pinyinBaseUnit.getNumber().startsWith(search)) {
                chineseKeyWord.append(baseData.substring(pyUnit.getStartPosition() + 0, pyUnit.getStartPosition() + 0 + search.length()));
                searchBuffer.delete(0, searchBuffer.length());
                return true;
            }
            if (search.startsWith(pinyinBaseUnit.getNumber())) {
                searchBuffer.delete(0, pinyinBaseUnit.getNumber().length());
                chineseKeyWord.append(baseData.substring(pyUnit.getStartPosition() + 0, pyUnit.getStartPosition() + 0 + pinyinBaseUnit.getNumber().length()));
                boolean found4 = findPinyinUnits(pinyinUnits, pinyinUnitIndex + 1, 0, baseData, searchBuffer, chineseKeyWord);
                if (true == found4) {
                    return true;
                }
                searchBuffer.insert(0, pinyinBaseUnit.getNumber());
                chineseKeyWord.delete(chineseKeyWord.length() - pinyinBaseUnit.getNumber().length(), chineseKeyWord.length());
            } else if (chineseKeyWord.length() <= 0) {
                if (pinyinBaseUnit.getNumber().contains(search)) {
                    int index = pinyinBaseUnit.getNumber().indexOf(search);
                    chineseKeyWord.append(baseData.substring(pyUnit.getStartPosition() + index, pyUnit.getStartPosition() + index + search.length()));
                    searchBuffer.delete(0, searchBuffer.length());
                    return true;
                }
                int numLength = pinyinBaseUnit.getNumber().length();
                for (int i = 0; i < numLength; i++) {
                    String subStr = pinyinBaseUnit.getNumber().substring(i);
                    if (search.startsWith(subStr)) {
                        searchBuffer.delete(0, subStr.length());
                        chineseKeyWord.append(baseData.substring(pyUnit.getStartPosition() + i, pyUnit.getStartPosition() + i + subStr.length()));
                        boolean found5 = findPinyinUnits(pinyinUnits, pinyinUnitIndex + 1, 0, baseData, searchBuffer, chineseKeyWord);
                        if (true == found5) {
                            return true;
                        }
                        searchBuffer.insert(0, pinyinBaseUnit.getNumber().substring(i));
                        chineseKeyWord.delete(chineseKeyWord.length() - subStr.length(), chineseKeyWord.length());
                    }
                }
                boolean found6 = findPinyinUnits(pinyinUnits, pinyinUnitIndex, t9PinyinUnitIndex + 1, baseData, searchBuffer, chineseKeyWord);
                if (true == found6) {
                    return true;
                }
            } else {
                boolean found7 = findPinyinUnits(pinyinUnits, pinyinUnitIndex, t9PinyinUnitIndex + 1, baseData, searchBuffer, chineseKeyWord);
                if (true == found7) {
                    return true;
                }
            }
        }
        return false;
    }
}
