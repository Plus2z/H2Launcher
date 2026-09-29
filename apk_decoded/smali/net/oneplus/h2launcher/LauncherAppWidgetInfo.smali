.class public Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "LauncherAppWidgetInfo.java"


# static fields
.field static final CUSTOM_WIDGET_ID:I = -0x64

.field public static final FLAG_ID_NOT_VALID:I = 0x1

.field public static final FLAG_PROVIDER_NOT_READY:I = 0x2

.field public static final FLAG_RESTORE_STARTED:I = 0x8

.field public static final FLAG_UI_NOT_READY:I = 0x4

.field static final NO_ID:I = -0x1

.field public static final RESTORE_COMPLETED:I


# instance fields
.field public appWidgetId:I

.field hostView:Landroid/appwidget/AppWidgetHostView;

.field installProgress:I

.field private mHasNotifiedInitialWidgetSizeChanged:Z

.field providerName:Landroid/content/ComponentName;

.field restoreStatus:I


# direct methods
.method constructor <init>(ILandroid/content/ComponentName;)V
    .locals 2
    .param p1, "appWidgetId"    # I
    .param p2, "providerName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v1, -0x1

    .line 89
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 67
    iput v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 79
    iput v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->installProgress:I

    .line 87
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 90
    const/16 v0, -0x64

    if-ne p1, v0, :cond_0

    .line 91
    const/4 v0, 0x5

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->itemType:I

    .line 96
    :goto_0
    iput p1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    .line 97
    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    .line 101
    iput v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 102
    iput v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 104
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 105
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    .line 106
    return-void

    .line 93
    :cond_0
    const/4 v0, 0x4

    iput v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->itemType:I

    goto :goto_0
.end method


# virtual methods
.method public final hasRestoreFlag(I)Z
    .locals 1
    .param p1, "flag"    # I

    .prologue
    .line 154
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCustomWidget()Z
    .locals 2

    .prologue
    .line 109
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    const/16 v1, -0x64

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isWidgetIdValid()Z
    .locals 1

    .prologue
    .line 150
    iget v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    and-int/lit8 v0, v0, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method notifyWidgetSizeChanged(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 3
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    iget v2, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, p1, v1, v2}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->updateWidgetSizeRanges(Landroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/Launcher;II)V

    .line 135
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    .line 136
    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 114
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 115
    const-string v0, "appWidgetId"

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 116
    const-string v0, "appWidgetProvider"

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->providerName:Landroid/content/ComponentName;

    invoke-virtual {v1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 117
    const-string v0, "restored"

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->restoreStatus:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 118
    return-void
.end method

.method onBindAppWidget(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 125
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->mHasNotifiedInitialWidgetSizeChanged:Z

    if-nez v0, :cond_0

    .line 126
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->notifyWidgetSizeChanged(Lnet/oneplus/h2launcher/Launcher;)V

    .line 128
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 140
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "AppWidget(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->appWidgetId:I

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 145
    invoke-super {p0}, Lnet/oneplus/h2launcher/ItemInfo;->unbind()V

    .line 146
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->hostView:Landroid/appwidget/AppWidgetHostView;

    .line 147
    return-void
.end method
