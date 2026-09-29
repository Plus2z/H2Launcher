.class public Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "DoubleTapSleepGestureListener.java"


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mPowerManager:Landroid/os/PowerManager;

.field private mWorkspace:Lnet/oneplus/h2launcher/Workspace;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 10
    const-class v0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 1
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 16
    iput-object p1, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 17
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 18
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/Workspace;)V
    .locals 0
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "workspace"    # Lnet/oneplus/h2launcher/Workspace;

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 21
    iput-object p1, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 22
    iput-object p2, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    .line 23
    return-void
.end method

.method private getPowerManager()Landroid/os/PowerManager;
    .locals 2

    .prologue
    .line 26
    iget-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 27
    iget-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-string v1, "power"

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mPowerManager:Landroid/os/PowerManager;

    .line 29
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method


# virtual methods
.method public onDoubleTap(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 34
    iget-object v3, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getDoubleTapEnabled()Z

    move-result v0

    .line 35
    .local v0, "doubleTagEnabled":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->isInWorkspaceMode()Z

    move-result v2

    .line 36
    .local v2, "normal":Z
    iget-object v3, p0, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->mWorkspace:Lnet/oneplus/h2launcher/Workspace;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->isSwitchingState()Z

    move-result v1

    .line 37
    .local v1, "isSwitchingState":Z
    sget-object v3, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onDoubleTap# doubleTapEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", normal: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", isSwitchingState: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    if-eqz v0, :cond_0

    if-eqz v2, :cond_0

    if-nez v1, :cond_0

    .line 40
    invoke-direct {p0}, Lnet/oneplus/h2launcher/DoubleTapSleepGestureListener;->getPowerManager()Landroid/os/PowerManager;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->goToSleep(Landroid/os/PowerManager;)V

    .line 42
    :cond_0
    const/4 v3, 0x1

    return v3
.end method
