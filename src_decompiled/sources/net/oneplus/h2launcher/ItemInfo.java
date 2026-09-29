package net.oneplus.h2launcher;

import android.content.ContentValues;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import java.util.Arrays;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;

/* loaded from: classes.dex */
public class ItemInfo {
    public static final String EXTRA_PROFILE = "profile";
    public static final int NO_ID = -1;
    public int cellX;
    public int cellY;
    public long container;
    public CharSequence contentDescription;
    public int[] dropPos;
    public long id;
    public int itemType;
    public int minSpanX;
    public int minSpanY;
    public int rank;
    public boolean requiresDbUpdate;
    public long screenId;
    public int spanX;
    public int spanY;
    public CharSequence title;
    public UserHandleCompat user;

    public ItemInfo() {
        this.id = -1L;
        this.container = -1L;
        this.screenId = -1L;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.requiresDbUpdate = false;
        this.dropPos = null;
        this.user = UserHandleCompat.myUserHandle();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ItemInfo(ItemInfo info) {
        this.id = -1L;
        this.container = -1L;
        this.screenId = -1L;
        this.cellX = -1;
        this.cellY = -1;
        this.spanX = 1;
        this.spanY = 1;
        this.minSpanX = 1;
        this.minSpanY = 1;
        this.rank = 0;
        this.requiresDbUpdate = false;
        this.dropPos = null;
        copyFrom(info);
        LauncherModel.checkItemInfo(this);
    }

    public void copyFrom(ItemInfo info) {
        this.id = info.id;
        this.cellX = info.cellX;
        this.cellY = info.cellY;
        this.spanX = info.spanX;
        this.spanY = info.spanY;
        this.rank = info.rank;
        this.screenId = info.screenId;
        this.itemType = info.itemType;
        this.container = info.container;
        this.user = info.user;
        this.contentDescription = info.contentDescription;
    }

    public Intent getIntent() {
        throw new RuntimeException("Unexpected Intent");
    }

    public void writeToValues(ContentValues values) {
        values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(this.itemType));
        values.put("container", Long.valueOf(this.container));
        values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(this.screenId));
        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX));
        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY));
        values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX));
        values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY));
        values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(this.rank));
    }

    public void readFromValues(ContentValues values) {
        this.itemType = values.getAsInteger(LauncherSettings.BaseLauncherColumns.ITEM_TYPE).intValue();
        this.container = values.getAsLong("container").longValue();
        this.screenId = values.getAsLong(LauncherSettings.Favorites.SCREEN).longValue();
        this.cellX = values.getAsInteger(LauncherSettings.Favorites.CELLX).intValue();
        this.cellY = values.getAsInteger(LauncherSettings.Favorites.CELLY).intValue();
        this.spanX = values.getAsInteger(LauncherSettings.Favorites.SPANX).intValue();
        this.spanY = values.getAsInteger(LauncherSettings.Favorites.SPANY).intValue();
        this.rank = values.getAsInteger(LauncherSettings.Favorites.RANK).intValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onAddToDatabase(Context context, ContentValues values) {
        values.put(LauncherSettings.BaseLauncherColumns.ITEM_TYPE, Integer.valueOf(this.itemType));
        values.put("container", Long.valueOf(this.container));
        values.put(LauncherSettings.Favorites.SCREEN, Long.valueOf(this.screenId));
        values.put(LauncherSettings.Favorites.CELLX, Integer.valueOf(this.cellX));
        values.put(LauncherSettings.Favorites.CELLY, Integer.valueOf(this.cellY));
        values.put(LauncherSettings.Favorites.SPANX, Integer.valueOf(this.spanX));
        values.put(LauncherSettings.Favorites.SPANY, Integer.valueOf(this.spanY));
        values.put(LauncherSettings.Favorites.RANK, Integer.valueOf(this.rank));
        long serialNumber = UserManagerCompat.getInstance(context).getSerialNumberForUser(this.user);
        values.put("profileId", Long.valueOf(serialNumber));
        if (this.screenId == -201) {
            throw new RuntimeException("Screen id should not be EXTRA_EMPTY_SCREEN_ID");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeBitmap(ContentValues values, Bitmap bitmap) {
        if (bitmap != null) {
            byte[] data = Utilities.flattenBitmap(bitmap);
            values.put("icon", data);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void unbind() {
    }

    public String toString() {
        return "Item(id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screenId + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + Arrays.toString(this.dropPos) + " user=" + this.user + ")";
    }

    public boolean isDisabled() {
        return false;
    }
}
