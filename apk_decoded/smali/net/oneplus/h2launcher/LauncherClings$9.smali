.class Lnet/oneplus/h2launcher/LauncherClings$9;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;

.field final synthetic val$cling:Landroid/view/View;

.field final synthetic val$flag:Ljava/lang/String;

.field final synthetic val$postAnimationCb:Ljava/lang/Runnable;

.field final synthetic val$updateDismissFlag:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;Landroid/view/View;ZLjava/lang/String;Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 386
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$cling:Landroid/view/View;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$updateDismissFlag:Z

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$flag:Ljava/lang/String;

    iput-object p5, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$postAnimationCb:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 388
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$cling:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 390
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$updateDismissFlag:Z

    if-eqz v0, :cond_0

    .line 391
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$flag:Ljava/lang/String;

    const/4 v2, 0x1

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 394
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 395
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$postAnimationCb:Ljava/lang/Runnable;

    if-eqz v0, :cond_1

    .line 396
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings$9;->val$postAnimationCb:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 398
    :cond_1
    return-void
.end method
