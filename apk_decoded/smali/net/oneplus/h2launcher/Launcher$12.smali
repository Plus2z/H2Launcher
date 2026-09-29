.class Lnet/oneplus/h2launcher/Launcher$12;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->completeTwoStageWidgetDrop(II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$layout:Landroid/appwidget/AppWidgetHostView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;ILandroid/appwidget/AppWidgetHostView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 1572
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$12;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput p2, p0, Lnet/oneplus/h2launcher/Launcher$12;->val$appWidgetId:I

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$12;->val$layout:Landroid/appwidget/AppWidgetHostView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 1575
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$12;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$12;->val$appWidgetId:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$12;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v2, v2, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v2, v2, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$12;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v4, v4, Lnet/oneplus/h2launcher/Launcher;->mPendingAddInfo:Lnet/oneplus/h2launcher/ItemInfo;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/Launcher$12;->val$layout:Landroid/appwidget/AppWidgetHostView;

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Launcher;->completeAddAppWidget(IJJLandroid/appwidget/AppWidgetHostView;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    .line 1577
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$12;->this$0:Lnet/oneplus/h2launcher/Launcher;

    const/4 v1, 0x1

    const/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v7}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 1579
    return-void
.end method
