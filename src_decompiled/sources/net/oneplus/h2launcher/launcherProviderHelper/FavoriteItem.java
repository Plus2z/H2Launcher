package net.oneplus.h2launcher.launcherProviderHelper;

/* loaded from: classes.dex */
public class FavoriteItem {
    private String appWidgetProvider;
    private int id;
    private String intent;
    private int itemType;

    public void setId(int nId) {
        this.id = nId;
    }

    public void setIntent(String strIntent) {
        this.intent = strIntent;
    }

    public void setItemType(int nItemType) {
        this.itemType = nItemType;
    }

    public void setAppWidgetProvider(String strAppWidgetProvider) {
        this.appWidgetProvider = strAppWidgetProvider;
    }

    public int getId() {
        return this.id;
    }

    public String getIntent() {
        return this.intent;
    }

    public int getItemType() {
        return this.itemType;
    }

    public String getAppWidgetProvider() {
        return this.appWidgetProvider;
    }

    public String toString() {
        return "FavoriteItem(id=" + this.id + " type=" + this.itemType + " intent=" + this.intent + ")";
    }
}
