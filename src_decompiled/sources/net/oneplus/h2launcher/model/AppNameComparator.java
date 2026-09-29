package net.oneplus.h2launcher.model;

import android.content.Context;
import java.text.Collator;
import java.util.Comparator;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.ItemInfo;

/* loaded from: classes.dex */
public class AppNameComparator {
    private final AbstractUserComparator<ItemInfo> mAppInfoComparator;
    private final Collator mCollator = Collator.getInstance();
    private final Comparator<String> mSectionNameComparator = new Comparator<String>() { // from class: net.oneplus.h2launcher.model.AppNameComparator.2
        @Override // java.util.Comparator
        public int compare(String o1, String o2) {
            return AppNameComparator.this.compareTitles(o1, o2);
        }
    };

    public AppNameComparator(Context context) {
        this.mAppInfoComparator = new AbstractUserComparator<ItemInfo>(context) { // from class: net.oneplus.h2launcher.model.AppNameComparator.1
            @Override // net.oneplus.h2launcher.model.AbstractUserComparator, java.util.Comparator
            public final int compare(ItemInfo a, ItemInfo b) {
                String firstTitle = a.title != null ? a.title.toString() : "";
                String SecondTitle = b.title != null ? b.title.toString() : "";
                int result = AppNameComparator.this.compareTitles(firstTitle, SecondTitle);
                if (result == 0 && (a instanceof AppInfo) && (b instanceof AppInfo)) {
                    AppInfo aAppInfo = (AppInfo) a;
                    AppInfo bAppInfo = (AppInfo) b;
                    result = aAppInfo.componentName.compareTo(bAppInfo.componentName);
                    if (result == 0) {
                        return super.compare(a, b);
                    }
                }
                return result;
            }
        };
    }

    public Comparator<ItemInfo> getAppInfoComparator() {
        return this.mAppInfoComparator;
    }

    public Comparator<String> getSectionNameComparator() {
        return this.mSectionNameComparator;
    }

    int compareTitles(String titleA, String titleB) {
        boolean aStartsWithLetter = titleA.length() > 0 && Character.isLetterOrDigit(titleA.codePointAt(0));
        boolean bStartsWithLetter = titleB.length() > 0 && Character.isLetterOrDigit(titleB.codePointAt(0));
        if (aStartsWithLetter && !bStartsWithLetter) {
            return -1;
        }
        if (aStartsWithLetter || !bStartsWithLetter) {
            return this.mCollator.compare(titleA, titleB);
        }
        return 1;
    }
}
