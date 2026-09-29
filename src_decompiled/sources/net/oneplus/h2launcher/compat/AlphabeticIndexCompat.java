package net.oneplus.h2launcher.compat;

import android.content.Context;
import android.content.res.Configuration;
import java.lang.reflect.Method;
import java.util.Locale;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Utilities;

/* loaded from: classes.dex */
public class AlphabeticIndexCompat {
    private static final String MID_DOT = "∙";
    private static final String TAG = "AlphabeticIndexCompat";
    private final BaseIndex mBaseIndex;
    private final String mDefaultMiscLabel;

    /* JADX WARN: Removed duplicated region for block: B:12:0x0018  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0053  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public AlphabeticIndexCompat(android.content.Context r6) {
        /*
            r5 = this;
            r5.<init>()
            r1 = 0
            boolean r3 = net.oneplus.h2launcher.Utilities.ATLEAST_ANDROID_N     // Catch: java.lang.Exception -> L3f
            if (r3 == 0) goto Le
            net.oneplus.h2launcher.compat.AlphabeticIndexCompat$AlphabeticIndexVN r2 = new net.oneplus.h2launcher.compat.AlphabeticIndexCompat$AlphabeticIndexVN     // Catch: java.lang.Exception -> L3f
            r2.<init>(r6)     // Catch: java.lang.Exception -> L3f
            r1 = r2
        Le:
            r2 = r1
        Lf:
            if (r2 != 0) goto L51
            net.oneplus.h2launcher.compat.AlphabeticIndexCompat$AlphabeticIndexV16 r1 = new net.oneplus.h2launcher.compat.AlphabeticIndexCompat$AlphabeticIndexV16     // Catch: java.lang.Exception -> L49
            r1.<init>(r6)     // Catch: java.lang.Exception -> L49
        L16:
            if (r1 != 0) goto L1e
            net.oneplus.h2launcher.compat.AlphabeticIndexCompat$BaseIndex r1 = new net.oneplus.h2launcher.compat.AlphabeticIndexCompat$BaseIndex
            r3 = 0
            r1.<init>()
        L1e:
            r5.mBaseIndex = r1
            android.content.res.Resources r3 = r6.getResources()
            android.content.res.Configuration r3 = r3.getConfiguration()
            java.util.Locale r3 = r3.locale
            java.lang.String r3 = r3.getLanguage()
            java.util.Locale r4 = java.util.Locale.JAPANESE
            java.lang.String r4 = r4.getLanguage()
            boolean r3 = r3.equals(r4)
            if (r3 == 0) goto L53
            java.lang.String r3 = "他"
            r5.mDefaultMiscLabel = r3
        L3e:
            return
        L3f:
            r0 = move-exception
            java.lang.String r3 = "AlphabeticIndexCompat"
            java.lang.String r4 = "Unable to load the system index"
            net.oneplus.h2launcher.util.Logger.d(r3, r4, r0)
            r2 = r1
            goto Lf
        L49:
            r0 = move-exception
            java.lang.String r3 = "AlphabeticIndexCompat"
            java.lang.String r4 = "Unable to load the system index"
            net.oneplus.h2launcher.util.Logger.d(r3, r4, r0)
        L51:
            r1 = r2
            goto L16
        L53:
            java.lang.String r3 = "∙"
            r5.mDefaultMiscLabel = r3
            goto L3e
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.compat.AlphabeticIndexCompat.<init>(android.content.Context):void");
    }

    public String computeSectionName(CharSequence cs) {
        String s = Utilities.trim(cs);
        String sectionName = this.mBaseIndex.getBucketLabel(this.mBaseIndex.getBucketIndex(s));
        if (Utilities.trim(sectionName).isEmpty() && s.length() > 0) {
            int c = s.codePointAt(0);
            boolean startsWithDigit = Character.isDigit(c);
            if (startsWithDigit) {
                return "#";
            }
            boolean startsWithLetter = Character.isLetter(c);
            if (startsWithLetter) {
                return this.mDefaultMiscLabel;
            }
            return MID_DOT;
        }
        return sectionName;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class BaseIndex {
        private static final String BUCKETS = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-";
        private static final int UNKNOWN_BUCKET_INDEX = BUCKETS.length() - 1;

        private BaseIndex() {
        }

        protected int getBucketIndex(String s) {
            if (s.isEmpty()) {
                return UNKNOWN_BUCKET_INDEX;
            }
            int index = BUCKETS.indexOf(s.substring(0, 1).toUpperCase());
            return index == -1 ? UNKNOWN_BUCKET_INDEX : index;
        }

        protected String getBucketLabel(int index) {
            return BUCKETS.substring(index, index + 1);
        }
    }

    /* loaded from: classes.dex */
    private static class AlphabeticIndexV16 extends BaseIndex {
        private Object mAlphabeticIndex;
        private Method mGetBucketIndexMethod;
        private Method mGetBucketLabelMethod;

        public AlphabeticIndexV16(Context context) throws Exception {
            super();
            Locale curLocale = context.getResources().getConfiguration().locale;
            Class clazz = Class.forName("libcore.icu.AlphabeticIndex");
            this.mGetBucketIndexMethod = clazz.getDeclaredMethod("getBucketIndex", String.class);
            this.mGetBucketLabelMethod = clazz.getDeclaredMethod("getBucketLabel", Integer.TYPE);
            this.mAlphabeticIndex = clazz.getConstructor(Locale.class).newInstance(curLocale);
            if (!curLocale.getLanguage().equals(Locale.ENGLISH.getLanguage())) {
                clazz.getDeclaredMethod("addLabels", Locale.class).invoke(this.mAlphabeticIndex, Locale.ENGLISH);
            }
        }

        @Override // net.oneplus.h2launcher.compat.AlphabeticIndexCompat.BaseIndex
        protected int getBucketIndex(String s) {
            try {
                return ((Integer) this.mGetBucketIndexMethod.invoke(this.mAlphabeticIndex, s)).intValue();
            } catch (Exception e) {
                e.printStackTrace();
                return super.getBucketIndex(s);
            }
        }

        @Override // net.oneplus.h2launcher.compat.AlphabeticIndexCompat.BaseIndex
        protected String getBucketLabel(int index) {
            try {
                return (String) this.mGetBucketLabelMethod.invoke(this.mAlphabeticIndex, Integer.valueOf(index));
            } catch (Exception e) {
                e.printStackTrace();
                return super.getBucketLabel(index);
            }
        }
    }

    /* loaded from: classes.dex */
    private static class AlphabeticIndexVN extends BaseIndex {
        private Object mAlphabeticIndex;
        private Method mGetBucketIndexMethod;
        private Method mGetBucketMethod;
        private Method mGetLabelMethod;

        public AlphabeticIndexVN(Context context) throws Exception {
            super();
            Object locales = Configuration.class.getDeclaredMethod("getLocales", new Class[0]).invoke(context.getResources().getConfiguration(), new Object[0]);
            int localeCount = ((Integer) locales.getClass().getDeclaredMethod(LauncherSettings.QuickPage.SIZE, new Class[0]).invoke(locales, new Object[0])).intValue();
            Method localeGetter = locales.getClass().getDeclaredMethod("get", Integer.TYPE);
            Locale primaryLocale = localeCount == 0 ? Locale.ENGLISH : (Locale) localeGetter.invoke(locales, 0);
            Class clazz = Class.forName("android.icu.text.AlphabeticIndex");
            this.mAlphabeticIndex = clazz.getConstructor(Locale.class).newInstance(primaryLocale);
            Method addLocales = clazz.getDeclaredMethod("addLabels", Locale[].class);
            for (int i = 1; i < localeCount; i++) {
                Locale l = (Locale) localeGetter.invoke(locales, Integer.valueOf(i));
                addLocales.invoke(this.mAlphabeticIndex, new Locale[]{l});
            }
            addLocales.invoke(this.mAlphabeticIndex, new Locale[]{Locale.ENGLISH});
            this.mAlphabeticIndex = this.mAlphabeticIndex.getClass().getDeclaredMethod("buildImmutableIndex", new Class[0]).invoke(this.mAlphabeticIndex, new Object[0]);
            this.mGetBucketIndexMethod = this.mAlphabeticIndex.getClass().getDeclaredMethod("getBucketIndex", CharSequence.class);
            this.mGetBucketMethod = this.mAlphabeticIndex.getClass().getDeclaredMethod("getBucket", Integer.TYPE);
            this.mGetLabelMethod = this.mGetBucketMethod.getReturnType().getDeclaredMethod("getLabel", new Class[0]);
        }

        @Override // net.oneplus.h2launcher.compat.AlphabeticIndexCompat.BaseIndex
        protected int getBucketIndex(String s) {
            try {
                return ((Integer) this.mGetBucketIndexMethod.invoke(this.mAlphabeticIndex, s)).intValue();
            } catch (Exception e) {
                e.printStackTrace();
                return super.getBucketIndex(s);
            }
        }

        @Override // net.oneplus.h2launcher.compat.AlphabeticIndexCompat.BaseIndex
        protected String getBucketLabel(int index) {
            try {
                return (String) this.mGetLabelMethod.invoke(this.mGetBucketMethod.invoke(this.mAlphabeticIndex, Integer.valueOf(index)), new Object[0]);
            } catch (Exception e) {
                e.printStackTrace();
                return super.getBucketLabel(index);
            }
        }
    }
}
