package net.oneplus.h2launcher.allapps;

import android.os.Handler;
import java.util.ArrayList;
import java.util.List;
import java.util.regex.Pattern;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.allapps.AllAppsSearchBarController;
import net.oneplus.h2launcher.util.ComponentKey;

/* loaded from: classes.dex */
public class DefaultAppSearchAlgorithm {
    private static final Pattern SPLIT_PATTERN = Pattern.compile("[\\s|\\p{javaSpaceChar}]+");
    private final List<AppInfo> mApps;
    protected final Handler mResultHandler = new Handler();

    public DefaultAppSearchAlgorithm(List<AppInfo> apps) {
        this.mApps = apps;
    }

    public void cancel(boolean interruptActiveRequests) {
        if (interruptActiveRequests) {
            this.mResultHandler.removeCallbacksAndMessages(null);
        }
    }

    public void doSearch(final String query, final AllAppsSearchBarController.Callbacks callback) {
        final ArrayList<ComponentKey> result = getTitleMatchResult(query);
        this.mResultHandler.post(new Runnable() { // from class: net.oneplus.h2launcher.allapps.DefaultAppSearchAlgorithm.1
            @Override // java.lang.Runnable
            public void run() {
                callback.onSearchResult(query, result);
            }
        });
    }

    protected ArrayList<ComponentKey> getTitleMatchResult(String query) {
        String queryTextLower = query.toLowerCase();
        String[] queryWords = SPLIT_PATTERN.split(queryTextLower);
        ArrayList<ComponentKey> result = new ArrayList<>();
        for (AppInfo info : this.mApps) {
            if (matches(info, queryWords)) {
                result.add(info.toComponentKey());
            }
        }
        return result;
    }

    protected boolean matches(AppInfo info, String[] queryWords) {
        String title = info.title.toString();
        String[] words = SPLIT_PATTERN.split(title.toLowerCase());
        for (String str : queryWords) {
            boolean foundMatch = false;
            int i = 0;
            while (true) {
                if (i >= words.length) {
                    break;
                }
                if (!words[i].contains(str)) {
                    i++;
                } else {
                    foundMatch = true;
                    break;
                }
            }
            if (!foundMatch) {
                return false;
            }
        }
        return true;
    }
}
