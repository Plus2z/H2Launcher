.class Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->preloadWidget()Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

.field final synthetic val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    .prologue
    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x1

    const/4 v8, -0x1

    const/4 v7, 0x0

    .line 107
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-ne v3, v8, :cond_0

    .line 136
    :goto_0
    return-void

    .line 110
    :cond_0
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v4, v4, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v5, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget v5, v5, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    iget-object v6, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->val$pInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 111
    invoke-virtual {v3, v4, v5, v6}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->createView(Landroid/content/Context;ILnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Landroid/appwidget/AppWidgetHostView;

    move-result-object v0

    .line 112
    .local v0, "hostView":Landroid/appwidget/AppWidgetHostView;
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iput-object v0, v3, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 115
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iput v8, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 117
    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Landroid/appwidget/AppWidgetHostView;->setVisibility(I)V

    .line 118
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v4, v4, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v3, v4, v7}, Lnet/oneplus/h2launcher/Workspace;->estimateItemSize(Lnet/oneplus/h2launcher/ItemInfo;Z)[I

    move-result-object v2

    .line 127
    .local v2, "unScaledSize":[I
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 128
    new-instance v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;

    aget v3, v2, v7

    aget v4, v2, v9

    invoke-direct {v1, v3, v4}, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;-><init>(II)V

    .line 130
    .local v1, "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    iput v7, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    iput v7, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    .line 131
    iput-boolean v9, v1, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 132
    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetHostView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 133
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v3

    invoke-virtual {v3, v0}, Lnet/oneplus/h2launcher/DragLayer;->addView(Landroid/view/View;)V

    .line 135
    .end local v1    # "lp":Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v3, v3, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;

    iget-object v4, v4, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-virtual {v3, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method
