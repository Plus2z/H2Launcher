package net.oneplus.h2launcher.quickpage;

import android.content.ComponentName;
import android.content.Context;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.LauncherAppWidgetHost;
import net.oneplus.h2launcher.LauncherModel;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.quickpage.QuickPageItem;
import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;
import net.oneplus.h2launcher.quickpage.widget.WidgetPanel;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class DataProvider extends AbstractDataProvider {
    public static final int PANEL_COUNT_LIMIT = 16;
    private static final String TAG = DataProvider.class.getSimpleName();
    private AssetCache mAssetCache;
    private QuickPageItem.ActivityCallback mCallback;
    private Context mContext;
    private List<AbstractDataProvider.Data> mData;
    private SchemeHelper mSchemeHelper;
    private Stats mStats;
    private LauncherAppWidgetHost mWidgetHost;

    /* JADX WARN: Multi-variable type inference failed */
    public DataProvider(Context context, LauncherAppWidgetHost host, Stats stats, AssetCache assetCache, SchemeHelper helper) {
        this.mContext = context;
        this.mWidgetHost = host;
        this.mStats = stats;
        this.mAssetCache = assetCache;
        this.mSchemeHelper = helper;
        this.mCallback = (QuickPageItem.ActivityCallback) context;
        loadFromDatabase();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0023 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0041 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void loadFromDatabase() {
        /*
            Method dump skipped, instructions count: 274
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.quickpage.DataProvider.loadFromDatabase():void");
    }

    public AbstractDataProvider.Data createWidgetPanel(int id, int widgetId, String component, int size) {
        return new WidgetPanel(this.mContext, this.mWidgetHost, ComponentName.unflattenFromString(component), widgetId, size, id);
    }

    private void addToDatabase(QuickPageItem item, int index) {
        String str = null;
        int type = item.getViewType();
        int size = item.getSize();
        String content = item.getContent();
        Context context = this.mContext;
        int widgetId = type == 2 ? ((WidgetPanel) item).getWidgetId() : -1;
        if (type == 2 && ((WidgetPanel) item).getWidgetInfo() != null) {
            str = ((WidgetPanel) item).getWidgetInfo().provider.flattenToString();
        }
        LauncherModel.addQuickPageItem(context, index, type, size, content, widgetId, str, type == 4 ? ((NotePanel) item).getReminderTime() : -1L, type == 4 ? ((NotePanel) item).getReminderId() : -1L);
    }

    private void removeFromDatabase(int index) {
        LauncherModel.removeQuickPageItem(this.mContext, index - 1);
        for (int i = index; i < getCount() - 1; i++) {
            LauncherModel.updateQuickPageItemId(this.mContext, i, i - 1);
        }
    }

    public void recreateDatabase() {
        ArrayList<AbstractDataProvider.Data> removedData = new ArrayList<>();
        LauncherModel.clearQuickPageDb(this.mContext);
        for (int i = 1; i < getCount() - 1; i++) {
            QuickPageItem item = (QuickPageItem) this.mData.get(i);
            if (item.getViewType() != 2 || ((WidgetPanel) item).isValid()) {
                addToDatabase(item, i - 1);
            } else {
                removedData.add(item);
            }
        }
        Iterator<AbstractDataProvider.Data> it = removedData.iterator();
        while (it.hasNext()) {
            this.mData.remove(it.next());
        }
    }

    public void updateItemContent(QuickPageItem item) {
        LauncherModel.updateQuickPageItemContent(this.mContext, item.getIndex(), item.getContent());
    }

    public void updateItemWidgetId(QuickPageItem item, int widgetId) {
        LauncherModel.updateQuickPageItemWidgetId(this.mContext, item.getIndex(), widgetId);
    }

    public void validateContent() {
        clear();
        loadFromDatabase();
    }

    public boolean contains(int type) {
        for (AbstractDataProvider.Data data : this.mData) {
            if (type == data.getViewType()) {
                return true;
            }
        }
        return false;
    }

    public boolean containsWidget(String packageName) {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data != null && data.getViewType() == 2 && ((WidgetPanel) data).getWidgetInfo() != null && ((WidgetPanel) data).getWidgetInfo().provider != null && ((WidgetPanel) data).getWidgetInfo().provider.getPackageName() != null && ((WidgetPanel) data).getWidgetInfo().provider.getPackageName().equals(packageName)) {
                return true;
            }
        }
        return false;
    }

    public boolean containsWidget(String packageName, String className) {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data != null && data.getViewType() == 2 && ((WidgetPanel) data).getWidgetInfo() != null && ((WidgetPanel) data).getWidgetInfo().provider != null && ((WidgetPanel) data).getWidgetInfo().provider.getPackageName() != null && ((WidgetPanel) data).getWidgetInfo().provider.getPackageName().equals(packageName) && ((WidgetPanel) data).getWidgetInfo().provider.getClassName().equals(className)) {
                return true;
            }
        }
        return false;
    }

    public int getNextAvailableId() {
        int id;
        int nextId = 0;
        for (int i = 0; i < this.mData.size(); i++) {
            if ((this.mData.get(i) instanceof QuickPageItem) && (id = this.mData.get(i).getIndex()) > nextId) {
                nextId = id;
            }
        }
        return nextId + 1;
    }

    public int getCreateNotePanelIndex() {
        for (int i = 0; i < this.mData.size(); i++) {
            AbstractDataProvider.Data data = this.mData.get(i);
            if (4 == data.getViewType() && ((QuickPageItem) data).isEmpty()) {
                return i;
            }
        }
        return -1;
    }

    public void notifyContainerVisibilityChanged(boolean visible) {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data instanceof QuickPageItem) {
                ((QuickPageItem) data).onContainerVisibilityChanged(visible);
            }
        }
    }

    public void notifyUiComponentChanged() {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data instanceof QuickPageItem) {
                ((QuickPageItem) data).onUiComponentChanged();
            }
        }
    }

    public void notifyUiComponentChanged(int i) {
        ((QuickPageItem) this.mData.get(i)).onUiComponentChanged();
    }

    public void notifyPermissionsChanged() {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data instanceof QuickPageItem) {
                ((QuickPageItem) data).onPermissionsChanged();
            }
        }
    }

    public void clear() {
        for (AbstractDataProvider.Data data : this.mData) {
            if (data instanceof QuickPageItem) {
                ((QuickPageItem) data).onRemove();
            }
        }
        this.mData.clear();
    }

    public int getCountExcludingNotes() {
        int i = 0;
        for (AbstractDataProvider.Data data : this.mData) {
            if (!(data instanceof NotePanel)) {
                i++;
            }
        }
        return i;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider
    public int getCount() {
        return this.mData.size();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider
    public AbstractDataProvider.Data getItem(int index) {
        if (index < 0 || index >= getCount()) {
            throw new IndexOutOfBoundsException("index = " + index);
        }
        return this.mData.get(index);
    }

    public void addItemToPosition(AbstractDataProvider.Data item, int index) {
        if (getCountExcludingNotes() != 16 || (item instanceof NotePanel)) {
            this.mData.add(index, item);
            recreateDatabase();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider
    public void addItem(AbstractDataProvider.Data item) {
        if (getCountExcludingNotes() != 16 || (item instanceof NotePanel)) {
            addToDatabase((QuickPageItem) item, this.mData.size() - 2);
            this.mData.add(getCount() - 1, item);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider
    public void moveItem(int fromPosition, int toPosition) {
        if (fromPosition != toPosition) {
            AbstractDataProvider.Data item = this.mData.remove(fromPosition);
            this.mData.add(toPosition, item);
            recreateDatabase();
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider
    public void removeItem(int position) {
        removeFromDatabase(position);
        AbstractDataProvider.Data removedItem = this.mData.remove(position);
        if (removedItem != null) {
            ((QuickPageItem) removedItem).onRemove();
            Logger.d(TAG, "removed quick page item = " + removedItem);
            if (removedItem instanceof WidgetPanel) {
                int widgetId = ((WidgetPanel) removedItem).getWidgetId();
                Logger.d(TAG, "removed widget id = %d ", Integer.valueOf(widgetId));
                this.mWidgetHost.deleteAppWidgetId(widgetId);
            }
        }
    }
}
