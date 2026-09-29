.class public Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;
.super Landroid/appwidget/AppWidgetHostView;
.source "LauncherAppWidgetHostView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

.field mInflater:Landroid/view/LayoutInflater;

.field private mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

.field private mPreviousOrientation:I

.field private mSlop:F

.field private mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 48
    invoke-direct {p0, p1}, Landroid/appwidget/AppWidgetHostView;-><init>(Landroid/content/Context;)V

    .line 49
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    .line 50
    new-instance v0, Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    .line 51
    new-instance v0, Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 52
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    .line 53
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 55
    instance-of v0, p1, Lnet/oneplus/h2launcher/Launcher;

    if-eqz v0, :cond_0

    .line 56
    check-cast p1, Lnet/oneplus/h2launcher/Launcher;

    .end local p1    # "context":Landroid/content/Context;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    .line 58
    :cond_0
    return-void
.end method

.method private isDisableClick()Z
    .locals 2

    .prologue
    .line 199
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    .line 200
    .local v0, "launcher":Lnet/oneplus/h2launcher/Launcher;
    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v1

    .line 203
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method


# virtual methods
.method public cancelLongPress()V
    .locals 1

    .prologue
    .line 166
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->cancelLongPress()V

    .line 167
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 168
    return-void
.end method

.method public getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .locals 3

    .prologue
    .line 172
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    .line 173
    .local v0, "info":Landroid/appwidget/AppWidgetProviderInfo;
    if-eqz v0, :cond_0

    instance-of v1, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-nez v1, :cond_0

    .line 174
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Launcher widget must have LauncherAppWidgetProviderInfo"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 177
    :cond_0
    return-object v0
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 195
    const/high16 v0, 0x60000

    return v0
.end method

.method protected getErrorView()Landroid/view/View;
    .locals 3

    .prologue
    .line 62
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mInflater:Landroid/view/LayoutInflater;

    const v1, 0x7f04002c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getLauncherAppWidgetProviderInfo()Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .locals 1

    .prologue
    .line 181
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    return-object v0
.end method

.method public isReinflateRequired()Z
    .locals 2

    .prologue
    .line 83
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v0, v1, Landroid/content/res/Configuration;->orientation:I

    .line 84
    .local v0, "orientation":I
    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mPreviousOrientation:I

    if-eq v1, v0, :cond_0

    .line 85
    const/4 v1, 0x1

    .line 87
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 160
    invoke-super {p0}, Landroid/appwidget/AppWidgetHostView;->onAttachedToWindow()V

    .line 161
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v0

    int-to-float v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mSlop:F

    .line 162
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v0, 0x1

    .line 93
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    if-nez v1, :cond_0

    .line 94
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 98
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 99
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 138
    :goto_0
    return v0

    .line 105
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 106
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 109
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 138
    :cond_3
    :goto_1
    const/4 v0, 0x0

    goto :goto_0

    .line 111
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/StylusEventHelper;->inStylusButtonPressed()Z

    move-result v0

    if-nez v0, :cond_4

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->postCheckForLongPress()V

    .line 115
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    if-eqz v0, :cond_3

    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mDragLayer:Lnet/oneplus/h2launcher/DragLayer;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragLayer;->setTouchCompleteListener(Lnet/oneplus/h2launcher/DragLayer$TouchCompleteListener;)V

    goto :goto_1

    .line 123
    :pswitch_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 125
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->isDisableClick()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 126
    sget-object v1, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v2, "disable click, ignore ACTION_UP event"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 131
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_3

    .line 132
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_1

    .line 109
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 2
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 217
    :try_start_0
    invoke-super/range {p0 .. p5}, Landroid/appwidget/AppWidgetHostView;->onLayout(ZIIII)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 227
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v0

    .line 219
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView$1;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method public onTouchComplete()V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->hasPerformedLongPress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 189
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    .line 191
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 144
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 155
    :cond_0
    :goto_0
    const/4 v0, 0x0

    return v0

    .line 147
    :pswitch_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 150
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mSlop:F

    invoke-static {p0, v0, v1, v2}, Lnet/oneplus/h2launcher/Utilities;->pointInView(Landroid/view/View;FFF)Z

    move-result v0

    if-nez v0, :cond_0

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mLongPressHelper:Lnet/oneplus/h2launcher/CheckLongPressHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CheckLongPressHelper;->cancelLongPress()V

    goto :goto_0

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "info"    # Landroid/appwidget/AppWidgetProviderInfo;

    .prologue
    const/4 v1, 0x0

    .line 208
    invoke-super {p0, p1, p2}, Landroid/appwidget/AppWidgetHostView;->setAppWidget(ILandroid/appwidget/AppWidgetProviderInfo;)V

    .line 209
    instance-of v0, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v0, :cond_0

    check-cast p2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    .end local p2    # "info":Landroid/appwidget/AppWidgetProviderInfo;
    iget-boolean v0, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->isCustomWidget:Z

    if-eqz v0, :cond_0

    .line 210
    invoke-virtual {p0, v1, v1, v1, v1}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->setPadding(IIII)V

    .line 212
    :cond_0
    return-void
.end method

.method public updateAppWidget(Landroid/widget/RemoteViews;)V
    .locals 3
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    .line 72
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAppWidget:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getPackage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/widget/RemoteViews;->getLayoutId()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 77
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->updateLastInflationOrientation()V

    .line 78
    invoke-super {p0, p1}, Landroid/appwidget/AppWidgetHostView;->updateAppWidget(Landroid/widget/RemoteViews;)V

    .line 79
    return-void

    .line 74
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->TAG:Ljava/lang/String;

    const-string v1, "updateAppWidget: remoteViews is null."

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public updateLastInflationOrientation()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->mPreviousOrientation:I

    .line 67
    return-void
.end method
