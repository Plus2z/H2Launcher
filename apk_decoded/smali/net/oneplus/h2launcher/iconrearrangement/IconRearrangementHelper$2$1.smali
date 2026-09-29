.class Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;

.field final synthetic val$info:Lnet/oneplus/h2launcher/ShortcutInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;

    .prologue
    .line 144
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;

    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;->this$1:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;->this$0:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2$1;->val$info:Lnet/oneplus/h2launcher/ShortcutInfo;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/LauncherModel;->modifyItemToIconRearrangementInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 147
    return-void
.end method
