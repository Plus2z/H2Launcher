package net.oneplus.h2launcher.inputmethod.T9;

import android.content.Context;
import java.io.BufferedInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

/* loaded from: classes.dex */
public class HanyuPinyinHelper {
    private static final String txtName = "hanyu_pinyin.txt";
    private StringBuffer buffer = new StringBuffer();
    private List<String> list = new ArrayList();
    private Properties p = new Properties();
    private boolean isSimple = false;

    public HanyuPinyinHelper(Context context) {
        init(context);
    }

    public void init(Context context) {
        try {
            InputStream is = context.getAssets().open(txtName);
            this.p.load(new BufferedInputStream(is));
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    public String[] getHanyuPinyins(char c) {
        String codepointHexStr = Integer.toHexString(c).toUpperCase();
        String str = (String) this.p.get(codepointHexStr);
        if (str != null) {
            return str.split(",");
        }
        return null;
    }

    public List<String> hanyuPinYinConvert(String str, boolean isSimple) {
        if (str == null || "".equals(str)) {
            return null;
        }
        this.isSimple = isSimple;
        this.list.clear();
        this.buffer.delete(0, this.buffer.length());
        convert(0, str);
        return this.list;
    }

    public List<String> hanyuPinYinConvert(String str) {
        if (str == null || "".equals(str)) {
            return null;
        }
        this.list.clear();
        this.buffer.delete(0, this.buffer.length());
        this.isSimple = true;
        convert(0, str);
        this.buffer.delete(0, this.buffer.length());
        this.isSimple = false;
        convert(0, str);
        return this.list;
    }

    private void convert(int n, String str) {
        if (n == str.length()) {
            String temp = this.buffer.toString();
            if (!this.list.contains(temp)) {
                this.list.add(this.buffer.toString());
                return;
            }
            return;
        }
        char c = str.charAt(n);
        if (12295 == c || (19968 <= c && c <= 40869)) {
            String[] arrayStrings = getHanyuPinyins(c);
            if (arrayStrings == null) {
                this.buffer.append(c);
                convert(n + 1, str);
                return;
            }
            if (arrayStrings.length == 0) {
                this.buffer.append(c);
                convert(n + 1, str);
                return;
            }
            if (arrayStrings.length == 1) {
                if (this.isSimple) {
                    if (!"".equals(arrayStrings[0])) {
                        this.buffer.append(arrayStrings[0].charAt(0));
                    }
                } else {
                    this.buffer.append(arrayStrings[0]);
                }
                convert(n + 1, str);
                return;
            }
            for (int i = 0; i < arrayStrings.length; i++) {
                int len = this.buffer.length();
                if (this.isSimple) {
                    if (!"".equals(arrayStrings[i])) {
                        this.buffer.append(arrayStrings[i].charAt(0));
                    }
                } else {
                    this.buffer.append(arrayStrings[i]);
                }
                convert(n + 1, str);
                this.buffer.delete(len, this.buffer.length());
            }
            return;
        }
        this.buffer.append(c);
        convert(n + 1, str);
    }
}
