.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->showWidgetPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 1194
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetPicked(Landroid/content/ComponentName;)V
    .locals 8
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, -0x1

    .line 1197
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->getNextAvailableId()I

    move-result v6

    .line 1200
    .local v6, "id":I
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v2

    .line 1201
    .local v2, "widgetHost":Lnet/oneplus/h2launcher/LauncherAppWidgetHost;
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    move-object v3, p1

    move v5, v4

    invoke-direct/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;Landroid/content/ComponentName;III)V

    .line 1203
    .local v0, "widget":Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->setCallback(Lnet/oneplus/h2launcher/quickpage/QuickPageItem$ActivityCallback;)V

    .line 1204
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V

    .line 1205
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 1206
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v1

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v3

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 1208
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 1210
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$2000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->dismiss()V

    .line 1214
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v1

    new-instance v3, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16$1;

    invoke-direct {v3, p0, v0, v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;Lnet/oneplus/h2launcher/LauncherAppWidgetHost;)V

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->post(Ljava/lang/Runnable;)Z

    .line 1227
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 1228
    .local v7, "mdmData":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "widget_add"

    invoke-virtual {p1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1229
    const-string v1, "widget_count"

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .line 1230
    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$300(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->getWidgetCount()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 1229
    invoke-interface {v7, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1231
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v3, "launcher.shelf"

    invoke-virtual {v1, v3, v7}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/util/Map;)V

    .line 1232
    return-void
.end method
