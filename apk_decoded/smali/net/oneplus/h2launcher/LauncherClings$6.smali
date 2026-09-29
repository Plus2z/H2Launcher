.class Lnet/oneplus/h2launcher/LauncherClings$6;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissQuickPageResizeCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 302
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$6;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 304
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherClings;->access$000()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 305
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherClings;->access$000()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 309
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$6;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "cling_gel.quick_page_2.dismissed"

    const/4 v2, 0x1

    .line 310
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 311
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 312
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$6;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 313
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$6;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v1, 0x7f1101a3

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
