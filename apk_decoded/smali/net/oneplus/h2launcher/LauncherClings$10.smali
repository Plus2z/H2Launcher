.class Lnet/oneplus/h2launcher/LauncherClings$10;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->showFolderTutorial()V
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
    .line 477
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 480
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v5}, Lnet/oneplus/h2launcher/Utilities;->getPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 481
    .local v3, "sharedPreferences":Landroid/content/SharedPreferences;
    const-string v5, "folder_tutorial_dismissed"

    invoke-interface {v3, v5, v7}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 482
    .local v1, "dismiss":Z
    if-nez v1, :cond_0

    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 499
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->isFoldersViewVisible()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 488
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iput-boolean v8, v5, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 489
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v5, v5, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v6, 0x7f110149

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 490
    .local v2, "rootView":Landroid/view/ViewGroup;
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-static {v5}, Lnet/oneplus/h2launcher/LauncherClings;->access$200(Lnet/oneplus/h2launcher/LauncherClings;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005b

    invoke-virtual {v5, v6, v2, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/FrameLayout;

    .line 492
    .local v4, "tutorialView":Landroid/widget/FrameLayout;
    invoke-virtual {v4, v8}, Landroid/widget/FrameLayout;->setClickable(Z)V

    .line 493
    invoke-virtual {v2, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 495
    const v5, 0x7f11011b

    invoke-virtual {v4, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    .line 496
    .local v0, "contentView":Landroid/widget/FrameLayout;
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-static {v5}, Lnet/oneplus/h2launcher/LauncherClings;->access$200(Lnet/oneplus/h2launcher/LauncherClings;)Landroid/view/LayoutInflater;

    move-result-object v5

    const v6, 0x7f04005c

    invoke-virtual {v5, v6, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 498
    const v5, 0x7f11011c

    invoke-virtual {v0, v5}, Landroid/widget/FrameLayout;->findViewById(I)Landroid/view/View;

    move-result-object v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/LauncherClings$10;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v5, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method
