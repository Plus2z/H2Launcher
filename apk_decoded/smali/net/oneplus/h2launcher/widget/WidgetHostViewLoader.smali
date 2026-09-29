.class public Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;
.super Ljava/lang/Object;
.source "WidgetHostViewLoader.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragController$DragListener;


# instance fields
.field private mBindWidgetRunnable:Ljava/lang/Runnable;

.field mHandler:Landroid/os/Handler;

.field mInflateWidgetRunnable:Ljava/lang/Runnable;

.field final mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field final mView:Landroid/view/View;

.field mWidgetLoadingId:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Landroid/view/View;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 26
    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 38
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 41
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 42
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    .line 43
    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mView:Landroid/view/View;

    .line 44
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    .line 45
    return-void
.end method

.method public static getDefaultOptionsForWidget(Landroid/app/Activity;Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "info"    # Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    .prologue
    .line 144
    const/4 v1, 0x0

    .line 145
    .local v1, "options":Landroid/os/Bundle;
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    .line 146
    .local v3, "rect":Landroid/graphics/Rect;
    sget-boolean v6, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR1:Z

    if-eqz v6, :cond_0

    .line 147
    iget v6, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanX:I

    iget v7, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->spanY:I

    invoke-static {p0, v6, v7, v3}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/app/Activity;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    .line 148
    iget-object v6, p1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->componentName:Landroid/content/ComponentName;

    const/4 v7, 0x0

    invoke-static {p0, v6, v7}, Landroid/appwidget/AppWidgetHostView;->getDefaultPaddingForWidget(Landroid/content/Context;Landroid/content/ComponentName;Landroid/graphics/Rect;)Landroid/graphics/Rect;

    move-result-object v2

    .line 151
    .local v2, "padding":Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v0, v6, Landroid/util/DisplayMetrics;->density:F

    .line 152
    .local v0, "density":F
    iget v6, v2, Landroid/graphics/Rect;->left:I

    iget v7, v2, Landroid/graphics/Rect;->right:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v4, v6

    .line 153
    .local v4, "xPaddingDips":I
    iget v6, v2, Landroid/graphics/Rect;->top:I

    iget v7, v2, Landroid/graphics/Rect;->bottom:I

    add-int/2addr v6, v7

    int-to-float v6, v6

    div-float/2addr v6, v0

    float-to-int v5, v6

    .line 155
    .local v5, "yPaddingDips":I
    new-instance v1, Landroid/os/Bundle;

    .end local v1    # "options":Landroid/os/Bundle;
    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 156
    .restart local v1    # "options":Landroid/os/Bundle;
    const-string v6, "appWidgetMinWidth"

    iget v7, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 158
    const-string v6, "appWidgetMinHeight"

    iget v7, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 160
    const-string v6, "appWidgetMaxWidth"

    iget v7, v3, Landroid/graphics/Rect;->right:I

    sub-int/2addr v7, v4

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 162
    const-string v6, "appWidgetMaxHeight"

    iget v7, v3, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v7, v5

    invoke-virtual {v1, v6, v7}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 165
    .end local v0    # "density":F
    .end local v2    # "padding":Landroid/graphics/Rect;
    .end local v4    # "xPaddingDips":I
    .end local v5    # "yPaddingDips":I
    :cond_0
    return-object v1
.end method


# virtual methods
.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, -0x1

    .line 53
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragController;->removeDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 55
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 59
    iget v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    if-eq v0, v2, :cond_0

    .line 60
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 61
    iput v2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mWidgetLoadingId:I

    .line 65
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v0, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    if-eqz v0, :cond_1

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/DragLayer;->removeView(Landroid/view/View;)V

    .line 67
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAppWidgetHost()Lnet/oneplus/h2launcher/LauncherAppWidgetHost;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v1, v1, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 68
    invoke-virtual {v1}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetId()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHost;->deleteAppWidgetId(I)V

    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->boundWidget:Landroid/appwidget/AppWidgetHostView;

    .line 71
    :cond_1
    return-void
.end method

.method public onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 48
    return-void
.end method

.method public preloadWidget()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 77
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v1, v3, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .line 79
    .local v1, "pInfo":Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    iget-boolean v3, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v3, :cond_0

    .line 140
    :goto_0
    return v2

    .line 82
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->getDefaultOptionsForWidget(Landroid/app/Activity;Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;)Landroid/os/Bundle;

    move-result-object v0

    .line 85
    .local v0, "options":Landroid/os/Bundle;
    iget-object v3, v1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->configure:Landroid/content/ComponentName;

    if-eqz v3, :cond_1

    .line 86
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInfo:Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iput-object v0, v3, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;->bindOptions:Landroid/os/Bundle;

    goto :goto_0

    .line 90
    :cond_1
    new-instance v2, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;

    invoke-direct {v2, p0, v1, v0}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$1;-><init>(Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Landroid/os/Bundle;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    .line 104
    new-instance v2, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;

    invoke-direct {v2, p0, v1}, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader$2;-><init>(Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mInflateWidgetRunnable:Ljava/lang/Runnable;

    .line 139
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mHandler:Landroid/os/Handler;

    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetHostViewLoader;->mBindWidgetRunnable:Ljava/lang/Runnable;

    invoke-virtual {v2, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 140
    const/4 v2, 0x1

    goto :goto_0
.end method
