package net.oneplus.h2launcher;

import android.content.ContentValues;
import android.content.Context;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.compat.UserHandleCompat;

/* loaded from: classes.dex */
public class FolderInfo extends ItemInfo {
    public static final int FLAG_ITEMS_SORTED = 1;
    public static final int FLAG_MULTI_PAGE_ANIMATION = 4;
    public static final int FLAG_WORK_FOLDER = 2;
    public static final int NO_FLAGS = 0;
    private List<ShortcutInfo> contents = new CopyOnWriteArrayList();
    ArrayList<FolderListener> listeners = new ArrayList<>();
    boolean opened;
    public int options;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface FolderListener {
        void onAdd(ShortcutInfo shortcutInfo);

        void onCreateWithContents(List<ShortcutInfo> list);

        void onItemsChanged();

        void onRemove(ShortcutInfo shortcutInfo);

        void onTitleChanged(CharSequence charSequence);
    }

    public FolderInfo() {
        this.itemType = 2;
        this.user = UserHandleCompat.myUserHandle();
    }

    public void add(ShortcutInfo item) {
        this.contents.add(item);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onAdd(item);
        }
        itemsChanged();
    }

    public void remove(ShortcutInfo item) {
        this.contents.remove(item);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onRemove(item);
        }
        itemsChanged();
    }

    public void createWithContents(ArrayList<ShortcutInfo> newContents) {
        this.contents.clear();
        this.contents.addAll(newContents);
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onCreateWithContents(this.contents);
        }
        itemsChanged();
    }

    public boolean contains(ShortcutInfo item) {
        return this.contents.contains(item);
    }

    public void setTitle(CharSequence title) {
        this.title = title;
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onTitleChanged(title);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.ItemInfo
    public void onAddToDatabase(Context context, ContentValues values) {
        super.onAddToDatabase(context, values);
        values.put("title", this.title.toString());
        values.put(LauncherSettings.Favorites.OPTIONS, Integer.valueOf(this.options));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addListener(FolderListener listener) {
        this.listeners.add(listener);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void removeListener(FolderListener listener) {
        if (this.listeners.contains(listener)) {
            this.listeners.remove(listener);
        }
    }

    void itemsChanged() {
        for (int i = 0; i < this.listeners.size(); i++) {
            this.listeners.get(i).onItemsChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // net.oneplus.h2launcher.ItemInfo
    public void unbind() {
        super.unbind();
        this.listeners.clear();
    }

    @Override // net.oneplus.h2launcher.ItemInfo
    public String toString() {
        return "FolderInfo(id=" + this.id + " type=" + this.itemType + " container=" + this.container + " screen=" + this.screenId + " cellX=" + this.cellX + " cellY=" + this.cellY + " spanX=" + this.spanX + " spanY=" + this.spanY + " dropPos=" + Arrays.toString(this.dropPos) + ")";
    }

    public boolean hasOption(int optionFlag) {
        return (this.options & optionFlag) != 0;
    }

    public void setOption(int option, boolean isEnabled, Context context) {
        int oldOptions = this.options;
        if (isEnabled) {
            this.options |= option;
        } else {
            this.options &= option ^ (-1);
        }
        if (context != null && oldOptions != this.options) {
            LauncherModel.updateItemInDatabase(context, this);
        }
    }

    public List<ShortcutInfo> getContents() {
        return this.contents;
    }
}
