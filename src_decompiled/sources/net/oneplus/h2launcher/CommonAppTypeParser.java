package net.oneplus.h2launcher;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.content.res.XmlResourceParser;
import android.database.sqlite.SQLiteDatabase;
import android.util.Log;
import java.io.IOException;
import net.oneplus.h2launcher.AutoInstallsLayout;
import net.oneplus.h2launcher.DefaultLayoutParser;
import net.oneplus.h2launcher.LauncherSettings;
import org.xmlpull.v1.XmlPullParserException;

/* loaded from: classes.dex */
public class CommonAppTypeParser implements AutoInstallsLayout.LayoutParserCallback {
    private static final int RESTORE_FLAG_BIT_SHIFT = 4;
    public static final int SUPPORTED_TYPE_COUNT = 7;
    private static final String TAG = "CommonAppTypeParser";
    final Context mContext;
    private final long mItemId;
    final int mResId;
    Intent parsedIntent;
    String parsedTitle;
    ContentValues parsedValues;

    public CommonAppTypeParser(long itemId, int itemType, Context context) {
        this.mItemId = itemId;
        this.mContext = context;
        this.mResId = getResourceForItemType(itemType);
    }

    @Override // net.oneplus.h2launcher.AutoInstallsLayout.LayoutParserCallback
    public long generateNewItemId() {
        return this.mItemId;
    }

    @Override // net.oneplus.h2launcher.AutoInstallsLayout.LayoutParserCallback
    public long insertAndCheck(SQLiteDatabase db, ContentValues values) {
        this.parsedValues = values;
        values.put("iconType", (Integer) null);
        values.put(LauncherSettings.BaseLauncherColumns.ICON_PACKAGE, (String) null);
        values.put(LauncherSettings.BaseLauncherColumns.ICON_RESOURCE, (String) null);
        values.put("icon", (byte[]) null);
        return 1L;
    }

    public boolean findDefaultApp() {
        if (this.mResId == 0) {
            return false;
        }
        this.parsedIntent = null;
        this.parsedValues = null;
        new MyLayoutParser().parseValues();
        return (this.parsedValues == null || this.parsedIntent == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class MyLayoutParser extends DefaultLayoutParser {
        public MyLayoutParser() {
            super(CommonAppTypeParser.this.mContext, null, CommonAppTypeParser.this, CommonAppTypeParser.this.mContext.getResources(), CommonAppTypeParser.this.mResId, "resolve", 0);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.AutoInstallsLayout
        public long addShortcut(String title, Intent intent, int type) {
            if (type == 0) {
                CommonAppTypeParser.this.parsedIntent = intent;
                CommonAppTypeParser.this.parsedTitle = title;
            }
            return super.addShortcut(title, intent, type);
        }

        public void parseValues() {
            XmlResourceParser parser = this.mSourceRes.getXml(this.mLayoutId);
            try {
                beginDocument(parser, this.mRootTag);
                new DefaultLayoutParser.ResolveParser().parseAndAdd(parser);
            } catch (IOException | XmlPullParserException e) {
                Log.e(CommonAppTypeParser.TAG, "Unable to parse default app info", e);
            }
            parser.close();
        }
    }

    public static int getResourceForItemType(int type) {
        switch (type) {
            case 1:
                return R.xml.app_target_phone;
            case 2:
                return R.xml.app_target_messenger;
            case 3:
                return R.xml.app_target_email;
            case 4:
                return R.xml.app_target_browser;
            case 5:
                return R.xml.app_target_gallery;
            case 6:
                return R.xml.app_target_camera;
            default:
                return 0;
        }
    }

    public static int encodeItemTypeToFlag(int itemType) {
        return itemType << 4;
    }

    public static int decodeItemTypeFromFlag(int flag) {
        return (flag & ShortcutInfo.FLAG_RESTORED_APP_TYPE) >> 4;
    }
}
