.class public Lnet/oneplus/h2launcher/LauncherClings;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# static fields
.field private static final DISMISS_CLING_DURATION:I = 0xc8

.field private static final FOLDER_TUTORIAL_DISMISSED_KEY:Ljava/lang/String; = "folder_tutorial_dismissed"

.field private static final MIGRATION_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.migration.dismissed"

.field private static final QUICK_PAGE_RESIZE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.quick_page_2.dismissed"

.field private static final QUICK_PAGE_WELCOME_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.quick_page_1.dismissed"

.field private static final SHOW_CLING_DURATION:I = 0xfa

.field private static final SKIP_FIRST_USE_HINTS:Ljava/lang/String; = "skip_first_use_hints"

.field private static final TAG:Ljava/lang/String;

.field private static final TAG_CROP_TOP_AND_SIDES:Ljava/lang/String; = "crop_bg_top_and_sides"

.field private static final WALLPAPERS_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.wallpapers.dismissed"

.field private static final WORKSPACE_CLING_DISMISSED_KEY:Ljava/lang/String; = "cling_gel.workspace.dismissed"

.field private static mShelfResizeCling:Landroid/view/View;

.field private static mShelfWelcomeCling:Landroid/view/View;


# instance fields
.field private mFolderTutorial:Ljava/lang/Runnable;

.field private mInflater:Landroid/view/LayoutInflater;

.field mIsVisible:Z

.field mIsWallpaperShowing:Z

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mWallpapersCling:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    const-class v0, Lnet/oneplus/h2launcher/LauncherClings;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsWallpaperShowing:Z

    .line 80
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    .line 82
    return-void
.end method

.method static synthetic access$000()Landroid/view/View;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/LauncherClings;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/LauncherClings;)Landroid/view/LayoutInflater;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    return-object v0
.end method

.method private areClingsEnabled()Z
    .locals 7
    .annotation build Landroid/annotation/TargetApi;
        value = 0x12
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 416
    invoke-static {}, Landroid/app/ActivityManager;->isRunningInTestHarness()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 438
    :cond_0
    :goto_0
    return v3

    .line 419
    :cond_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v6, "accessibility"

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/accessibility/AccessibilityManager;

    .line 421
    .local v0, "a11yManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isTouchExplorationEnabled()Z

    move-result v5

    if-nez v5, :cond_0

    .line 427
    sget-boolean v5, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_JB_MR2:Z

    if-eqz v5, :cond_2

    .line 428
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v6, "user"

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/UserManager;

    .line 429
    .local v2, "um":Landroid/os/UserManager;
    invoke-virtual {v2}, Landroid/os/UserManager;->getUserRestrictions()Landroid/os/Bundle;

    move-result-object v1

    .line 430
    .local v1, "restrictions":Landroid/os/Bundle;
    const-string v5, "no_modify_accounts"

    invoke-virtual {v1, v5, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    if-nez v5, :cond_0

    .line 434
    .end local v1    # "restrictions":Landroid/os/Bundle;
    .end local v2    # "um":Landroid/os/UserManager;
    :cond_2
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "skip_first_use_hints"

    invoke-static {v5, v6, v3}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v5

    if-eq v5, v4, :cond_0

    move v3, v4

    .line 438
    goto :goto_0
.end method

.method private dismissMigrationCling()V
    .locals 2

    .prologue
    .line 156
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->showWorkspaceSearchAndHotseat()V

    .line 157
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$1;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    .line 169
    .local v0, "dismissCb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 170
    return-void
.end method

.method private dismissQuickPageResizeCling()V
    .locals 6

    .prologue
    const-wide/16 v4, 0xc8

    const/4 v3, 0x0

    .line 299
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v2, "Resetting resize cling"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->setScrollingDisabled(Z)V

    .line 302
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$6;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$6;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    .line 315
    .local v0, "cleanUpClingCb":Ljava/lang/Runnable;
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 316
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    .line 321
    :goto_0
    return-void

    .line 318
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v2, 0x7f1101a3

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 319
    invoke-virtual {v1, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method private dismissQuickPageWelcomeCling()V
    .locals 2

    .prologue
    .line 262
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$5;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$5;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    .line 275
    .local v0, "dismissCb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 276
    return-void
.end method

.method public static markFirstRunClingDismissed(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    .line 463
    .line 464
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 463
    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 465
    .local v1, "prefs":Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 466
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v2, "cling_gel.workspace.dismissed"

    const/4 v3, 0x1

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 467
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 468
    return-void
.end method


# virtual methods
.method dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V
    .locals 6
    .param p1, "cling"    # Landroid/view/View;
    .param p2, "postAnimationCb"    # Ljava/lang/Runnable;
    .param p3, "flag"    # Ljava/lang/String;
    .param p4, "duration"    # I

    .prologue
    .line 376
    const/4 v5, 0x1

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;IZ)V

    .line 377
    return-void
.end method

.method dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;IZ)V
    .locals 6
    .param p1, "cling"    # Landroid/view/View;
    .param p2, "postAnimationCb"    # Ljava/lang/Runnable;
    .param p3, "flag"    # Ljava/lang/String;
    .param p4, "duration"    # I
    .param p5, "updateDismissFlag"    # Z

    .prologue
    .line 385
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/view/View;->getVisibility()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    .line 386
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$9;

    move-object v1, p0

    move-object v2, p1

    move v3, p5

    move-object v4, p3

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherClings$9;-><init>(Lnet/oneplus/h2launcher/LauncherClings;Landroid/view/View;ZLjava/lang/String;Ljava/lang/Runnable;)V

    .line 400
    .local v0, "cleanUpClingCb":Ljava/lang/Runnable;
    if-gtz p4, :cond_1

    .line 401
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 406
    .end local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_0
    :goto_0
    return-void

    .line 403
    .restart local v0    # "cleanUpClingCb":Ljava/lang/Runnable;
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    int-to-long v2, p4

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    goto :goto_0
.end method

.method dismissFolderTutorial()V
    .locals 3

    .prologue
    .line 506
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    if-nez v1, :cond_1

    .line 524
    :cond_0
    :goto_0
    return-void

    .line 509
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mFolderTutorial:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 511
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 514
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$11;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$11;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    .line 523
    .local v0, "dismissTutorial":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method dismissLongPressCling()V
    .locals 2

    .prologue
    .line 230
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$4;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$4;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    .line 237
    .local v0, "dismissCb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 238
    return-void
.end method

.method public dismissWallpapersCling()V
    .locals 1

    .prologue
    .line 355
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissWallpapersCling(Z)V

    .line 356
    return-void
.end method

.method public dismissWallpapersCling(Z)V
    .locals 2
    .param p1, "updateDismissFlag"    # Z

    .prologue
    .line 359
    const/4 v1, 0x0

    iput-boolean v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsWallpaperShowing:Z

    .line 360
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$8;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/LauncherClings$8;-><init>(Lnet/oneplus/h2launcher/LauncherClings;Z)V

    .line 367
    .local v0, "dismissCb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/Workspace;->post(Ljava/lang/Runnable;)Z

    .line 368
    return-void
.end method

.method public isVisible()Z
    .locals 1

    .prologue
    .line 409
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    return v0
.end method

.method public isWallpaperShowing()Z
    .locals 1

    .prologue
    .line 371
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsWallpaperShowing:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v7, 0x1

    const/4 v9, 0x0

    .line 86
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    .line 87
    .local v1, "id":I
    const v5, 0x7f110161

    if-ne v1, v5, :cond_0

    .line 89
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing migration default cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissMigrationCling()V

    .line 136
    :goto_0
    return-void

    .line 92
    :cond_0
    const v5, 0x7f110160

    if-ne v1, v5, :cond_1

    .line 94
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing migration apps cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    .line 96
    .local v2, "model":Lnet/oneplus/h2launcher/LauncherModel;
    invoke-virtual {v2, v9, v7}, Lnet/oneplus/h2launcher/LauncherModel;->resetLoadedState(ZZ)V

    .line 97
    const/16 v5, -0x3e9

    const/4 v6, 0x3

    invoke-virtual {v2, v5, v6}, Lnet/oneplus/h2launcher/LauncherModel;->startLoader(II)V

    .line 101
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getSharedPreferencesKey()Ljava/lang/String;

    move-result-object v4

    .line 102
    .local v4, "spKey":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5, v4, v9}, Lnet/oneplus/h2launcher/Launcher;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 103
    .local v3, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 104
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    const-string v5, "launcher.user_migrated_from_old_data"

    invoke-interface {v0, v5, v7}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 105
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 107
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissMigrationCling()V

    goto :goto_0

    .line 109
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    .end local v2    # "model":Lnet/oneplus/h2launcher/LauncherModel;
    .end local v3    # "sp":Landroid/content/SharedPreferences;
    .end local v4    # "spKey":Ljava/lang/String;
    :cond_1
    const v5, 0x7f11015d

    if-ne v1, v5, :cond_2

    .line 110
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing long press cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissLongPressCling()V

    goto :goto_0

    .line 113
    :cond_2
    const v5, 0x7f1101ba

    if-ne v1, v5, :cond_3

    .line 114
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing shelf welcome cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissQuickPageWelcomeCling()V

    goto :goto_0

    .line 117
    :cond_3
    const v5, 0x7f1101b9

    if-ne v1, v5, :cond_4

    .line 118
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing shelf resize cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v6, 0x7f1101a3

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const/4 v6, 0x0

    const-string v7, "cling_gel.quick_page_2.dismissed"

    const/16 v8, 0xc8

    invoke-virtual {p0, v5, v6, v7, v8}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 121
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissQuickPageResizeCling()V

    .line 122
    iget-object v5, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v5

    invoke-virtual {v5, v9}, Lnet/oneplus/h2launcher/Workspace;->setScrollingDisabled(Z)V

    goto :goto_0

    .line 125
    :cond_4
    const v5, 0x7f1101e7

    if-ne v1, v5, :cond_5

    .line 126
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing customizations cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissWallpapersCling()V

    goto/16 :goto_0

    .line 129
    :cond_5
    const v5, 0x7f11011c

    if-ne v1, v5, :cond_6

    .line 130
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissFolderTutorial()V

    goto/16 :goto_0

    .line 134
    :cond_6
    sget-object v5, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v6, "Dismissing shelf default cling"

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->dismissQuickPageResizeCling()V

    goto/16 :goto_0
.end method

.method public shouldShowFirstRunOrMigrationClings()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 442
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 443
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->areClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cling_gel.workspace.dismissed"

    .line 444
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const-string v2, "cling_gel.migration.dismissed"

    .line 445
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public shouldShowQuickPageWelcomeCling()Z
    .locals 1

    .prologue
    .line 449
    const/4 v0, 0x0

    return v0
.end method

.method shouldShowWallpapersCling()Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 457
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getSharedPrefs()Landroid/content/SharedPreferences;

    move-result-object v0

    .line 458
    .local v0, "sharedPrefs":Landroid/content/SharedPreferences;
    invoke-direct {p0}, Lnet/oneplus/h2launcher/LauncherClings;->areClingsEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "cling_gel.wallpapers.dismissed"

    .line 459
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method showFolderTutorial()V
    .locals 4

    .prologue
    .line 472
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mFolderTutorial:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 474
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/LauncherClings;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 502
    :goto_0
    return-void

    .line 477
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$10;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$10;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mFolderTutorial:Ljava/lang/Runnable;

    .line 501
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mFolderTutorial:Ljava/lang/Runnable;

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0
.end method

.method public showLongPressCling(Z)V
    .locals 6
    .param p1, "showWelcome"    # Z

    .prologue
    .line 173
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 174
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v4, 0x7f110149

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 175
    .local v2, "root":Landroid/view/ViewGroup;
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f040075

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 177
    .local v0, "cling":Landroid/view/View;
    new-instance v3, Lnet/oneplus/h2launcher/LauncherClings$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/LauncherClings$2;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    invoke-virtual {v0, v3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 187
    const v3, 0x7f11015c

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 188
    .local v1, "content":Landroid/view/ViewGroup;
    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    if-eqz p1, :cond_1

    const v3, 0x7f040077

    :goto_0
    invoke-virtual {v4, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 190
    const v3, 0x7f11015d

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 192
    const-string v3, "crop_bg_top_and_sides"

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 193
    iget-object v3, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0e00a4

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 196
    :cond_0
    invoke-virtual {v2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 198
    if-eqz p1, :cond_2

    .line 227
    :goto_1
    return-void

    .line 188
    :cond_1
    const v3, 0x7f040076

    goto :goto_0

    .line 204
    :cond_2
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/LauncherClings$3;

    invoke-direct {v4, p0, v1}, Lnet/oneplus/h2launcher/LauncherClings$3;-><init>(Lnet/oneplus/h2launcher/LauncherClings;Landroid/view/ViewGroup;)V

    invoke-virtual {v3, v4}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    goto :goto_1
.end method

.method public showMigrationCling()V
    .locals 4

    .prologue
    .line 146
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 147
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->hideWorkspaceSearchAndHotseat()V

    .line 149
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f110149

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 150
    .local v1, "root":Landroid/view/ViewGroup;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040078

    invoke-virtual {v2, v3, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 151
    .local v0, "inflated":Landroid/view/View;
    const v2, 0x7f110160

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 152
    const v2, 0x7f110161

    invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    return-void
.end method

.method public showQuickPageResizeCling()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 279
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 280
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v4, 0x7f110149

    invoke-virtual {v1, v4}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 281
    .local v7, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400b7

    invoke-virtual {v1, v4, v7, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    .line 283
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 285
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    const v4, 0x7f11015c

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 286
    .local v6, "content":Landroid/view/ViewGroup;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f0400c6

    invoke-virtual {v1, v4, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 287
    const v1, 0x7f1101b9

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 289
    const-string v1, "crop_bg_top_and_sides"

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 290
    new-instance v0, Lnet/oneplus/h2launcher/BorderCropDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 291
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0200a8

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v4, v2

    move v5, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/BorderCropDrawable;-><init>(Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 292
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 295
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfResizeCling:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 296
    return-void
.end method

.method public showQuickPageWelcomeCling()V
    .locals 8

    .prologue
    const/4 v5, 0x0

    const/4 v2, 0x1

    .line 241
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 242
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/Workspace;->setScrollingDisabled(Z)V

    .line 243
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f110149

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    .line 244
    .local v7, "root":Landroid/view/ViewGroup;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400b8

    invoke-virtual {v1, v3, v7, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    sput-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfWelcomeCling:Landroid/view/View;

    .line 246
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfWelcomeCling:Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 248
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfWelcomeCling:Landroid/view/View;

    const v3, 0x7f11015c

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 249
    .local v6, "content":Landroid/view/ViewGroup;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400c7

    invoke-virtual {v1, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 250
    const v1, 0x7f1101ba

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 252
    const-string v1, "crop_bg_top_and_sides"

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 253
    new-instance v0, Lnet/oneplus/h2launcher/BorderCropDrawable;

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 254
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0200a7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move v3, v2

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/BorderCropDrawable;-><init>(Landroid/graphics/drawable/Drawable;ZZZZ)V

    .line 255
    .local v0, "bg":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 258
    .end local v0    # "bg":Landroid/graphics/drawable/Drawable;
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/LauncherClings;->mShelfWelcomeCling:Landroid/view/View;

    invoke-virtual {v7, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 259
    return-void
.end method

.method showWallpapersCling()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 324
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsVisible:Z

    .line 325
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mIsWallpaperShowing:Z

    .line 326
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f110149

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 328
    .local v1, "root":Landroid/view/ViewGroup;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 329
    sget-object v2, Lnet/oneplus/h2launcher/LauncherClings;->TAG:Ljava/lang/String;

    const-string v3, "[showWallpapersCling] mWallpapersCling != null, remove view."

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 330
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 331
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    .line 334
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400d8

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    .line 336
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    new-instance v3, Lnet/oneplus/h2launcher/LauncherClings$7;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/LauncherClings$7;-><init>(Lnet/oneplus/h2launcher/LauncherClings;)V

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 345
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    const v3, 0x7f11015c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 346
    .local v0, "content":Landroid/view/ViewGroup;
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f0400d9

    invoke-virtual {v2, v3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 347
    const v2, 0x7f1101e7

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 348
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout$LayoutParams;

    .line 349
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getCollapsedHeight(Landroid/content/Context;)I

    move-result v3

    iput v3, v2, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 351
    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings;->mWallpapersCling:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 352
    return-void
.end method
