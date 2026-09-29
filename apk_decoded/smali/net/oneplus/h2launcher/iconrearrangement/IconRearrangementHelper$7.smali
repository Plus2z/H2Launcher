.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->dropIconToWorkspace(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

.field final synthetic val$cell:[I

.field final synthetic val$container:J

.field final synthetic val$screenId:J

.field final synthetic val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;JJ[I)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 295
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iput-wide p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$container:J

    iput-wide p5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$screenId:J

    iput-object p7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$cell:[I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v8, 0x1

    .line 297
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$shortcutInfo:Lnet/oneplus/h2launcher/ShortcutInfo;

    iget-wide v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$container:J

    iget-wide v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$screenId:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$cell:[I

    const/4 v7, 0x0

    aget v6, v6, v7

    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;->val$cell:[I

    aget v7, v7, v8

    move v9, v8

    invoke-static/range {v0 .. v9}, Lnet/oneplus/h2launcher/LauncherModel;->modifyItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJIIII)V

    .line 299
    return-void
.end method
