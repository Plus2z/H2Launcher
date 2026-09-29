.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
.super Ljava/lang/Object;
.source "IconRearrangementHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;,
        Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    }
.end annotation


# static fields
.field private static final ANIMATION_DELAY_DURATION:I = 0x32

.field private static final ANIMATION_DURATION:I = 0x190

.field private static final MOVING_PIXEL_PER_MICRO_SECOND:F = 1.4f

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mFolderIconPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/FolderIcon;",
            "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mIconWidth:I

.field private mInFolderRunningAnimators:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsRunningTask:Ljava/lang/Boolean;

.field mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mListViewItemWidth:I

.field private mMergeFolderItemInterpolator:Landroid/view/animation/Interpolator;

.field mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

.field private mRunningAnimators:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningTask:Ljava/lang/Runnable;

.field private mSourceIconPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTargetIconPositionMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskQueue:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

.field mView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 48
    const-class v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;)V
    .locals 5
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;
    .param p2, "containverView"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    .prologue
    .line 89
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    .line 55
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTargetIconPositionMap:Ljava/util/HashMap;

    .line 56
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mFolderIconPositionMap:Ljava/util/HashMap;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    .line 58
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInFolderRunningAnimators:Ljava/util/HashSet;

    .line 63
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    .line 67
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    .line 68
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    .line 87
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3f333333    # 0.7f

    const/4 v2, 0x0

    const v3, 0x3f666666    # 0.9f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mMergeFolderItemInterpolator:Landroid/view/animation/Interpolator;

    .line 90
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 91
    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mView:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;

    .line 92
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementContainerView;->getIconRearrangementPanel()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    .line 93
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setIconRearrangementHelper(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 94
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInflater:Landroid/view/LayoutInflater;

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0095

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIconWidth:I

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mListViewItemWidth:I

    .line 98
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/lang/Runnable;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningTask:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Runnable;)Ljava/lang/Runnable;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningTask:Ljava/lang/Runnable;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    return-object v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;
    .param p2, "x2"    # Ljava/util/ArrayList;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->generateMergeFolderRecyclerViewItemAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;)I

    move-result v0

    return v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Ljava/lang/Boolean;

    .prologue
    .line 47
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    return-object p1
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Ljava/util/ArrayList;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->processLeftShortcuts(Ljava/util/ArrayList;)V

    return-void
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addEmptyScreen()V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashMap;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    return-object v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "x3"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p4, "x4"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcutFromWorkspace(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "x3"    # Lnet/oneplus/h2launcher/Folder;
    .param p4, "x4"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p5, "x5"    # Ljava/lang/Runnable;

    .prologue
    .line 47
    invoke-direct/range {p0 .. p5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addShortcutFromFolder(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeLastEmptyScreenIfLayoutIsNotExtra()V

    return-void
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)Ljava/util/HashSet;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;

    .prologue
    .line 47
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInFolderRunningAnimators:Ljava/util/HashSet;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->processAddScreenIfLayoutIsExtra(Lnet/oneplus/h2launcher/CellLayout;)V

    return-void
.end method

.method private addEmptyScreen()V
    .locals 4

    .prologue
    .line 740
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 741
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncherProvider()Lnet/oneplus/h2launcher/LauncherProvider;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherProvider;->generateNewScreenId()J

    move-result-wide v0

    .line 742
    .local v0, "newId":J
    invoke-virtual {v2, v0, v1}, Lnet/oneplus/h2launcher/Workspace;->insertNewWorkspaceScreen(J)J

    .line 743
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->updateWorkspaceScreenOrder()V

    .line 744
    return-void
.end method

.method private addShortcutFromFolder(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)Z
    .locals 9
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "folder"    # Lnet/oneplus/h2launcher/Folder;
    .param p4, "parentLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p5, "task"    # Ljava/lang/Runnable;

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 179
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    invoke-virtual {v7, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 180
    .local v3, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    iput-boolean v5, v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->fromWorkspace:Z

    .line 181
    iput-object p4, v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 182
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/Folder;->getFolderIcon()Lnet/oneplus/h2launcher/FolderIcon;

    move-result-object v7

    iput-object v7, v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 183
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mFolderIconPositionMap:Ljava/util/HashMap;

    iget-object v8, v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 184
    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 185
    .local v1, "folderIconPosition":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    iput-boolean v6, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->fromWorkspace:Z

    .line 186
    iput-object p4, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 187
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v2

    .line 188
    .local v2, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    iget v7, v2, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    iput v7, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellX:I

    .line 189
    iget v7, v2, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    iput v7, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellY:I

    .line 190
    const/4 v7, 0x0

    iput-object v7, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 191
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mFolderIconPositionMap:Ljava/util/HashMap;

    iget-object v8, v3, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .end local v1    # "folderIconPosition":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    .end local v2    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_0
    new-instance v4, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;

    invoke-direct {v4, p0, p3, p2, p5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$4;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/Folder;Lnet/oneplus/h2launcher/ShortcutInfo;Ljava/lang/Runnable;)V

    .line 209
    .local v4, "runnable":Ljava/lang/Runnable;
    invoke-virtual {p3}, Lnet/oneplus/h2launcher/Folder;->isDestroyed()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 216
    :goto_0
    return v5

    .line 212
    :cond_1
    invoke-direct {p0, p1, v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->getViewAlphaAnimator(Landroid/view/View;Ljava/lang/Runnable;)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 213
    .local v0, "animator":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInFolderRunningAnimators:Ljava/util/HashSet;

    invoke-virtual {v5, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 215
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    move v5, v6

    .line 216
    goto :goto_0
.end method

.method private addShortcutFromWorkspace(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;Ljava/lang/Runnable;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "parentLayout"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p4, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 157
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    invoke-virtual {v3, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 158
    .local v1, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    const/4 v3, 0x1

    iput-boolean v3, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->fromWorkspace:Z

    .line 159
    iput-object p3, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    .line 160
    iget v3, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellX:I

    iput v3, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellX:I

    .line 161
    iget v3, p2, Lnet/oneplus/h2launcher/ShortcutInfo;->cellY:I

    iput v3, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellY:I

    .line 162
    const/4 v3, 0x0

    iput-object v3, v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    .line 164
    new-instance v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;

    invoke-direct {v2, p0, p3, p1, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$3;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/CellLayout;Landroid/view/View;Ljava/lang/Runnable;)V

    .line 173
    .local v2, "runnable":Ljava/lang/Runnable;
    invoke-direct {p0, p1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->getViewAlphaAnimator(Landroid/view/View;Ljava/lang/Runnable;)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-result-object v0

    .line 174
    .local v0, "animator":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    invoke-virtual {v3, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 175
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    .line 176
    return-void
.end method

.method private generateMergeFolderRecyclerViewItemAnimator(Ljava/util/ArrayList;Ljava/util/ArrayList;)I
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 507
    .local p1, "animatorList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/animation/Animator;>;"
    .local p2, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getFolderButton()Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;

    move-result-object v6

    .line 508
    .local v6, "folderButton":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getVisibleViews()Ljava/util/ArrayList;

    move-result-object v13

    .line 509
    .local v13, "itemViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v20, v0

    .line 510
    .local v20, "targetLoc":[I
    move-object/from16 v0, v20

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getLocationOnScreen([I)V

    .line 511
    const/4 v2, 0x0

    aget v2, v20, v2

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;->getPaddingLeft()I

    move-result v3

    add-int v21, v2, v3

    .line 512
    .local v21, "targetX":I
    const/4 v15, 0x0

    .line 513
    .local v15, "longestDuration":I
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v16, v0

    .line 514
    .local v16, "panelLoc":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getLocationOnScreen([I)V

    .line 515
    const/4 v2, 0x2

    new-array v0, v2, [I

    move-object/from16 v18, v0

    .line 516
    .local v18, "recyclerViewLoc":[I
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getRecyclerView()Landroid/view/View;

    move-result-object v17

    .line 517
    .local v17, "recyclerView":Landroid/view/View;
    invoke-virtual/range {v17 .. v18}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 518
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getRecyclerViewContainer()Landroid/widget/RelativeLayout;

    move-result-object v7

    .line 519
    .local v7, "recyclerViewContainer":Landroid/widget/RelativeLayout;
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v12

    .line 520
    .local v12, "isRtl":Z
    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v23

    :cond_0
    :goto_0
    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface/range {v23 .. v23}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Landroid/view/View;

    .line 521
    .local v22, "v":Landroid/view/View;
    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 522
    .local v5, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    move-object/from16 v19, v22

    .line 523
    .local v19, "sourceView":Landroid/view/View;
    move-object/from16 v0, p2

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v11

    .line 524
    .local v11, "index":I
    if-ltz v11, :cond_0

    .line 525
    const/4 v2, 0x2

    new-array v14, v2, [I

    .line 526
    .local v14, "loc":[I
    move-object/from16 v0, v22

    invoke-virtual {v0, v14}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 527
    if-eqz v12, :cond_5

    .line 528
    const/4 v2, 0x0

    aget v3, v14, v2

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mListViewItemWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v4, v4, v24

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v24

    sub-int v4, v4, v24

    sub-int/2addr v3, v4

    aput v3, v14, v2

    .line 532
    :goto_1
    const/4 v2, 0x0

    aget v2, v14, v2

    move/from16 v0, v21

    if-le v2, v0, :cond_1

    if-eqz v12, :cond_2

    :cond_1
    const/4 v2, 0x0

    aget v2, v14, v2

    move/from16 v0, v21

    if-ge v2, v0, :cond_0

    if-eqz v12, :cond_0

    .line 533
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040027

    const/4 v4, 0x0

    const/16 v24, 0x0

    move/from16 v0, v24

    invoke-virtual {v2, v3, v4, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 535
    .local v8, "movingView":Lnet/oneplus/h2launcher/BubbleTextView;
    move-object/from16 v0, p0

    iget v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mListViewItemWidth:I

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setWidth(I)V

    .line 536
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x1

    invoke-virtual {v8, v5, v2, v3, v4}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZZ)V

    .line 537
    invoke-virtual {v7, v8}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V

    .line 538
    if-eqz v12, :cond_6

    .line 539
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x0

    aget v3, v18, v3

    sub-int/2addr v2, v3

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setX(F)V

    .line 543
    :goto_2
    const/4 v2, 0x0

    aget v2, v14, v2

    sub-int v2, v2, v21

    int-to-float v2, v2

    const v3, 0x3fb33333    # 1.4f

    div-float/2addr v2, v3

    float-to-int v10, v2

    .line 544
    .local v10, "duration":I
    if-eqz v12, :cond_3

    .line 545
    neg-int v10, v10

    .line 547
    :cond_3
    if-le v10, v15, :cond_4

    .line 548
    move v15, v10

    .line 551
    :cond_4
    new-instance v9, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v9, v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 552
    .local v9, "anim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    if-eqz v12, :cond_7

    .line 553
    const/4 v2, 0x0

    aget v2, v18, v2

    sub-int v2, v21, v2

    invoke-virtual/range {v17 .. v17}, Landroid/view/View;->getWidth()I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->translationX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 557
    :goto_3
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mMergeFolderItemInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 558
    int-to-long v2, v10

    invoke-virtual {v9, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 559
    new-instance v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;

    move-object/from16 v3, p0

    move-object/from16 v4, p2

    invoke-direct/range {v2 .. v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$13;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAddFolderIcon;Landroid/widget/RelativeLayout;Lnet/oneplus/h2launcher/BubbleTextView;)V

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 603
    move-object/from16 v0, p1

    invoke-virtual {v0, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 530
    .end local v8    # "movingView":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v9    # "anim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v10    # "duration":I
    :cond_5
    const/4 v2, 0x0

    aget v3, v14, v2

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getPaddingLeft()I

    move-result v4

    invoke-virtual/range {v22 .. v22}, Landroid/view/View;->getWidth()I

    move-result v24

    move-object/from16 v0, p0

    iget v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mListViewItemWidth:I

    move/from16 v25, v0

    sub-int v24, v24, v25

    div-int/lit8 v24, v24, 0x2

    add-int v4, v4, v24

    add-int/2addr v3, v4

    aput v3, v14, v2

    goto/16 :goto_1

    .line 541
    .restart local v8    # "movingView":Lnet/oneplus/h2launcher/BubbleTextView;
    :cond_6
    const/4 v2, 0x0

    aget v2, v14, v2

    const/4 v3, 0x0

    aget v3, v18, v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    invoke-virtual {v8, v2}, Lnet/oneplus/h2launcher/BubbleTextView;->setX(F)V

    goto :goto_2

    .line 555
    .restart local v9    # "anim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .restart local v10    # "duration":I
    :cond_7
    const/4 v2, 0x0

    aget v2, v18, v2

    sub-int v2, v21, v2

    int-to-float v2, v2

    invoke-virtual {v9, v2}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->translationX(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    goto :goto_3

    .line 607
    .end local v5    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v8    # "movingView":Lnet/oneplus/h2launcher/BubbleTextView;
    .end local v9    # "anim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v10    # "duration":I
    .end local v11    # "index":I
    .end local v14    # "loc":[I
    .end local v19    # "sourceView":Landroid/view/View;
    .end local v22    # "v":Landroid/view/View;
    :cond_8
    move-object/from16 v0, p0

    iget-object v2, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getRecyclerView()Landroid/view/View;

    move-result-object v2

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/view/View;->setVisibility(I)V

    .line 608
    return v15
.end method

.method private getViewAlphaAnimator(Landroid/view/View;Ljava/lang/Runnable;)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .locals 4
    .param p1, "v"    # Landroid/view/View;
    .param p2, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 221
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v0, p1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 222
    .local v0, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 223
    const-wide/16 v2, 0x190

    invoke-virtual {v0, v2, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 224
    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;

    invoke-direct {v1, p0, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$5;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/lang/Runnable;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 244
    return-object v0
.end method

.method private processAddScreenIfLayoutIsExtra(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 2
    .param p1, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 717
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v0

    .line 718
    .local v0, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-ne p1, v1, :cond_0

    .line 719
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addEmptyScreen()V

    .line 721
    :cond_0
    return-void
.end method

.method private processLeftShortcuts(Ljava/util/ArrayList;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 619
    .local p1, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v4

    .line 620
    .local v4, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 621
    .local v1, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->putBackToSourcePlace(Lnet/oneplus/h2launcher/ShortcutInfo;)Z

    move-result v2

    .line 622
    .local v2, "success":Z
    if-nez v2, :cond_1

    .line 623
    const/4 v7, 0x2

    new-array v3, v7, [I

    .line 624
    .local v3, "vacant":[I
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v5

    .line 626
    .local v5, "workspaceChildCount":I
    add-int/lit8 v7, v5, -0x2

    invoke-virtual {v4, v7}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 627
    .local v0, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-direct {p0, v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->putIconToLayout(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;)Z

    move-result v2

    .line 628
    if-nez v2, :cond_0

    .line 629
    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v4, v7}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 630
    .restart local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-direct {p0, v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->putIconToLayout(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;)Z

    move-result v2

    .line 633
    :cond_0
    if-nez v2, :cond_1

    .line 634
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addEmptyScreen()V

    .line 635
    invoke-virtual {v4, v5}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .end local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v0, Lnet/oneplus/h2launcher/CellLayout;

    .line 636
    .restart local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-direct {p0, v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->putIconToLayout(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;)Z

    move-result v2

    .line 639
    .end local v0    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v3    # "vacant":[I
    .end local v5    # "workspaceChildCount":I
    :cond_1
    if-eqz v2, :cond_2

    .line 640
    iget-object v7, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    invoke-virtual {v7, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 642
    :cond_2
    sget-object v7, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->TAG:Ljava/lang/String;

    const-string v8, "put icon error"

    invoke-static {v7, v8}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 645
    .end local v1    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v2    # "success":Z
    :cond_3
    iget-object v6, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->clearAllItem()V

    .line 646
    return-void
.end method

.method private putBackToSourcePlace(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 21
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 649
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 650
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 651
    .local v16, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    move-object/from16 v0, v16

    iget-boolean v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->fromWorkspace:Z

    if-eqz v8, :cond_2

    .line 652
    move-object/from16 v0, v16

    iget-object v0, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->parentLayout:Lnet/oneplus/h2launcher/CellLayout;

    move-object/from16 v19, v0

    .line 653
    .local v19, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual/range {v19 .. v19}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v8

    if-eqz v8, :cond_0

    .line 654
    const/4 v8, 0x0

    .line 683
    .end local v19    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :goto_0
    return v8

    .line 656
    .restart local v19    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    move-object/from16 v0, v16

    iget v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellY:I

    move-object/from16 v0, v19

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/CellLayout;->getChildAt(II)Landroid/view/View;

    move-result-object v20

    .line 657
    .local v20, "view":Landroid/view/View;
    if-nez v20, :cond_3

    .line 658
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    .line 660
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v19

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_1

    const-wide/16 v4, -0x65

    .line 663
    .local v4, "container":J
    :goto_1
    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    .line 665
    .local v6, "screenId":J
    move-object/from16 v0, v16

    iget v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellX:I

    move-object/from16 v0, v16

    iget v9, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->cellY:I

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 667
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v8

    new-instance v9, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$14;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v16}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$14;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;JJLnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 673
    const/4 v8, 0x1

    goto :goto_0

    .line 660
    .end local v4    # "container":J
    .end local v6    # "screenId":J
    :cond_1
    const-wide/16 v4, -0x64

    goto :goto_1

    .line 676
    .end local v3    # "child":Landroid/view/View;
    .end local v19    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    .end local v20    # "view":Landroid/view/View;
    :cond_2
    move-object/from16 v0, v16

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;->inFolderIcon:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/FolderIcon;->getFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v17

    .line 677
    .local v17, "folder":Lnet/oneplus/h2launcher/Folder;
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v18

    .line 678
    .local v18, "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    if-eqz v17, :cond_3

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/Folder;->getItemCount()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_3

    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/Folder;->isDestroyed()Z

    move-result v8

    if-nez v8, :cond_3

    .line 679
    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 680
    const/4 v8, 0x1

    goto :goto_0

    .line 683
    .end local v17    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v18    # "folderInfo":Lnet/oneplus/h2launcher/FolderInfo;
    :cond_3
    const/4 v8, 0x0

    goto :goto_0
.end method

.method private putIconToLayout(Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/CellLayout;)Z
    .locals 19
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "layout"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 690
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 691
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    const/4 v8, 0x2

    new-array v0, v8, [I

    move-object/from16 v18, v0

    .line 692
    .local v18, "cell":[I
    invoke-virtual/range {p2 .. p2}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_1

    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, p2

    move-object/from16 v1, v18

    invoke-virtual {v0, v1, v8, v9}, Lnet/oneplus/h2launcher/CellLayout;->getVacantCell([III)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 693
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    .line 695
    .local v3, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_0

    const-wide/16 v4, -0x65

    .line 698
    .local v4, "container":J
    :goto_0
    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    .line 700
    .local v6, "screenId":J
    const/4 v8, 0x0

    aget v8, v18, v8

    const/4 v9, 0x1

    aget v9, v18, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 702
    const/4 v8, 0x0

    aget v16, v18, v8

    .line 703
    .local v16, "cellX":I
    const/4 v8, 0x1

    aget v17, v18, v8

    .line 704
    .local v17, "cellY":I
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v8

    new-instance v9, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$15;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v17}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$15;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;JJII)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 710
    const/4 v8, 0x1

    .line 712
    .end local v3    # "child":Landroid/view/View;
    .end local v4    # "container":J
    .end local v6    # "screenId":J
    .end local v16    # "cellX":I
    .end local v17    # "cellY":I
    :goto_1
    return v8

    .line 695
    .restart local v3    # "child":Landroid/view/View;
    :cond_0
    const-wide/16 v4, -0x64

    goto :goto_0

    .line 712
    .end local v3    # "child":Landroid/view/View;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1
.end method

.method private removeLastEmptyScreenIfLayoutIsNotExtra()V
    .locals 4

    .prologue
    .line 727
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 728
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x2

    .line 729
    .local v0, "index":I
    :goto_0
    if-ltz v0, :cond_0

    .line 730
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 731
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 732
    const/4 v3, 0x1

    invoke-virtual {v2, v1, v3}, Lnet/oneplus/h2launcher/Workspace;->removeWorkspaceScreen(Lnet/oneplus/h2launcher/CellLayout;Z)V

    .line 729
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 737
    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return-void
.end method


# virtual methods
.method public addShortcut(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$2;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;)V

    .line 152
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 153
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 154
    return-void
.end method

.method public consumeQueue()Z
    .locals 4

    .prologue
    .line 806
    const/4 v0, 0x0

    .line 807
    .local v0, "needExecuteTask":Z
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    monitor-enter v2

    .line 808
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningTask:Ljava/lang/Runnable;

    if-nez v1, :cond_0

    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 809
    const/4 v0, 0x1

    .line 810
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mIsRunningTask:Ljava/lang/Boolean;

    .line 811
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Runnable;

    iput-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningTask:Ljava/lang/Runnable;

    .line 813
    :cond_0
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 814
    if-eqz v0, :cond_1

    .line 815
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningTask:Ljava/lang/Runnable;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 817
    :cond_1
    return v0

    .line 813
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public dropIcon(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;)V
    .locals 2
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "selectView"    # Landroid/view/View;

    .prologue
    .line 252
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$6;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;)V

    .line 262
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 263
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 264
    return-void
.end method

.method public dropIconToFolder(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 12
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "selectView"    # Landroid/view/View;
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 342
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v9

    .line 343
    .local v9, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v11

    .line 344
    .local v11, "workspace":Lnet/oneplus/h2launcher/Workspace;
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 345
    .local v10, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    if-nez v10, :cond_1

    .line 346
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 406
    :cond_0
    :goto_0
    return-void

    .line 350
    :cond_1
    invoke-virtual {v11}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v8

    .line 351
    .local v8, "folder":Lnet/oneplus/h2launcher/Folder;
    if-nez v8, :cond_2

    .line 352
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 356
    :cond_2
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FolderInfo;->contains(Lnet/oneplus/h2launcher/ShortcutInfo;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 357
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    invoke-interface {v0, p3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    goto :goto_0

    .line 361
    :cond_3
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/FolderInfo;->add(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 362
    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Folder;->resizeView()V

    .line 364
    invoke-virtual {v8, p1}, Lnet/oneplus/h2launcher/Folder;->getViewForInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v7

    .line 366
    .local v7, "child":Landroid/view/View;
    const/4 v0, 0x0

    invoke-virtual {p2, v0}, Landroid/view/View;->setPressed(Z)V

    .line 367
    new-instance v5, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$10;

    invoke-direct {v5, p0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$10;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 372
    .local v5, "r":Ljava/lang/Runnable;
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-object v1, p1

    move-object v2, p2

    move-object v4, p3

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->removeShortcutInfoAnimated(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 374
    if-eqz v7, :cond_0

    .line 375
    const/4 v0, 0x0

    invoke-virtual {v7, v0}, Landroid/view/View;->setAlpha(F)V

    .line 376
    new-instance v6, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v6, v7}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 377
    .local v6, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 378
    const-wide/16 v0, 0x190

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 379
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 380
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mInFolderRunningAnimators:Ljava/util/HashSet;

    invoke-virtual {v0, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 381
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;

    invoke-direct {v0, p0, v7, v6, v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$11;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;Lnet/oneplus/h2launcher/Folder;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 404
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method public dropIconToWorkspace(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Ljava/lang/Runnable;)V
    .locals 25
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "selectView"    # Landroid/view/View;
    .param p3, "task"    # Ljava/lang/Runnable;

    .prologue
    .line 267
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 268
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getNextPage()I

    move-result v20

    .line 269
    .local v20, "currentPage":I
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;

    .line 270
    .local v23, "positionInfo":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$IconPositionInfo;
    if-nez v23, :cond_1

    .line 271
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-object/from16 v0, p3

    invoke-interface {v8, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 275
    :cond_1
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v18

    .line 276
    .local v18, "childCount":I
    const/16 v24, 0x0

    .line 278
    .local v24, "targetCellLayout":Lnet/oneplus/h2launcher/CellLayout;
    move/from16 v21, v20

    .local v21, "i":I
    :goto_1
    move/from16 v0, v21

    move/from16 v1, v18

    if-ge v0, v1, :cond_0

    .line 279
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v22

    check-cast v22, Lnet/oneplus/h2launcher/CellLayout;

    .line 280
    .local v22, "layout":Lnet/oneplus/h2launcher/CellLayout;
    const/4 v8, 0x2

    new-array v0, v8, [I

    move-object/from16 v16, v0

    .line 281
    .local v16, "cell":[I
    const/4 v8, 0x1

    const/4 v9, 0x1

    move-object/from16 v0, v22

    move-object/from16 v1, v16

    invoke-virtual {v0, v1, v8, v9}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-virtual/range {v22 .. v22}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v8

    if-nez v8, :cond_3

    .line 282
    move-object/from16 v24, v22

    .line 283
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->processAddScreenIfLayoutIsExtra(Lnet/oneplus/h2launcher/CellLayout;)V

    .line 284
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    invoke-virtual {v8, v0, v1}, Lnet/oneplus/h2launcher/Launcher;->createShortcut(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/ShortcutInfo;)Landroid/view/View;

    move-result-object v3

    .line 285
    .local v3, "child":Landroid/view/View;
    const/4 v8, 0x0

    invoke-virtual {v3, v8}, Landroid/view/View;->setAlpha(F)V

    .line 286
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, v22

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/Launcher;->isHotseatLayout(Landroid/view/View;)Z

    move-result v8

    if-eqz v8, :cond_2

    const-wide/16 v4, -0x65

    .line 289
    .local v4, "container":J
    :goto_2
    move-object/from16 v0, v22

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getIdForScreen(Lnet/oneplus/h2launcher/CellLayout;)J

    move-result-wide v6

    .line 291
    .local v6, "screenId":J
    const/4 v8, 0x0

    aget v8, v16, v8

    const/4 v9, 0x1

    aget v9, v16, v9

    const/4 v10, 0x1

    const/4 v11, 0x1

    invoke-virtual/range {v2 .. v11}, Lnet/oneplus/h2launcher/Workspace;->addInScreen(Landroid/view/View;JJIIII)V

    .line 293
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p1

    invoke-virtual {v8, v0}, Lnet/oneplus/h2launcher/Launcher;->getViewIdForItem(Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v19

    .line 295
    .local v19, "childId":I
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v8

    new-instance v9, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;

    move-object/from16 v10, p0

    move-object/from16 v11, p1

    move-wide v12, v4

    move-wide v14, v6

    invoke-direct/range {v9 .. v16}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$7;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;JJ[I)V

    invoke-virtual {v8, v9}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 302
    const/4 v8, 0x0

    move-object/from16 v0, p2

    invoke-virtual {v0, v8}, Landroid/view/View;->setPressed(Z)V

    .line 303
    move/from16 v0, v21

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->snapToPage(I)V

    .line 304
    new-instance v13, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$8;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v13, v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$8;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 310
    .local v13, "r":Ljava/lang/Runnable;
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    move-object/from16 v0, p0

    iget-object v11, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskStageCallback:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v12, p3

    invoke-virtual/range {v8 .. v13}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->removeShortcutInfoAnimated(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z

    .line 311
    new-instance v17, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    move-object/from16 v0, v17

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 312
    .local v17, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    const/high16 v8, 0x3f800000    # 1.0f

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 313
    const-wide/16 v8, 0x190

    move-object/from16 v0, v17

    invoke-virtual {v0, v8, v9}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 314
    move-object/from16 v0, p0

    iget-object v8, v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mRunningAnimators:Ljava/util/HashSet;

    move-object/from16 v0, v17

    invoke-virtual {v8, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 315
    new-instance v8, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$9;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v8, v0, v3, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$9;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;)V

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 334
    invoke-virtual/range {v17 .. v17}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    goto/16 :goto_0

    .line 286
    .end local v4    # "container":J
    .end local v6    # "screenId":J
    .end local v13    # "r":Ljava/lang/Runnable;
    .end local v17    # "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    .end local v19    # "childId":I
    :cond_2
    const-wide/16 v4, -0x64

    goto/16 :goto_2

    .line 278
    .end local v3    # "child":Landroid/view/View;
    :cond_3
    add-int/lit8 v21, v21, 0x1

    goto/16 :goto_1
.end method

.method public enterIconRearrangement()V
    .locals 5

    .prologue
    .line 767
    invoke-static {}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->get()Lnet/oneplus/h2launcher/util/AnalyticHelper;

    move-result-object v1

    const-string v2, "launcher.actions"

    const-string v3, "icon_rearrange"

    const-string v4, "1"

    invoke-virtual {v1, v2, v3, v4}, Lnet/oneplus/h2launcher/util/AnalyticHelper;->putAnalytics(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 769
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$17;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$17;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 775
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 776
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 777
    return-void
.end method

.method public exitIconRearrangement()V
    .locals 2

    .prologue
    .line 747
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$16;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 758
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 759
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 760
    return-void
.end method

.method public hasLeftShortcut()Z
    .locals 1

    .prologue
    .line 763
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getShortcutInfoCount()I

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInIconRearrangementPanel(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 919
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->containsShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z

    move-result v0

    return v0
.end method

.method public mergeFolder()V
    .locals 2

    .prologue
    .line 415
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$12;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 502
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 503
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 504
    return-void
.end method

.method public onFolderClosed()V
    .locals 2

    .prologue
    .line 786
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$18;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;)V

    .line 797
    .local v0, "r":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mTaskQueue:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 798
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->consumeQueue()Z

    .line 799
    return-void
.end method

.method public onFolderOpen()V
    .locals 2

    .prologue
    .line 781
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->setFolderButtonForceDisable(Z)V

    .line 782
    return-void
.end method

.method public processPackagedUpdateScreenChanged()V
    .locals 4

    .prologue
    .line 904
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeLastEmptyScreenIfLayoutIsNotExtra()V

    .line 905
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v2

    .line 906
    .local v2, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Workspace;->getChildCount()I

    move-result v3

    add-int/lit8 v0, v3, -0x1

    .line 907
    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 908
    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/Workspace;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 909
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->isDeleted()Z

    move-result v3

    if-nez v3, :cond_1

    .line 910
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/CellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    if-lez v3, :cond_0

    .line 911
    invoke-direct {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->addEmptyScreen()V

    .line 916
    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_0
    return-void

    .line 907
    .restart local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method public removeItemsByApplicationInfo(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 6
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 852
    .local p1, "appInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 868
    :goto_0
    return-void

    .line 855
    :cond_0
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 856
    .local v0, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    .line 857
    .local v2, "info":Lnet/oneplus/h2launcher/AppInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/AppInfo;->getIntent()Landroid/content/Intent;

    move-result-object v3

    .line 858
    .local v3, "intent":Landroid/content/Intent;
    if-eqz v3, :cond_1

    .line 859
    invoke-virtual {v3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    .line 860
    .local v1, "componentName":Landroid/content/ComponentName;
    if-eqz v1, :cond_1

    .line 861
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 867
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "info":Lnet/oneplus/h2launcher/AppInfo;
    .end local v3    # "intent":Landroid/content/Intent;
    :cond_2
    invoke-virtual {p0, v0, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method

.method public removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 6
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Landroid/content/ComponentName;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 873
    .local p1, "componentNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v4

    if-nez v4, :cond_0

    .line 901
    :goto_0
    return-void

    .line 876
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 877
    .local v3, "shortcutInfos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getShortcutInfos()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 878
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 880
    .local v1, "removeShortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$20;

    invoke-direct {v0, p0, p1, p2, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$20;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/ArrayList;)V

    .line 893
    .local v0, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 894
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 895
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 896
    .local v2, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mSourceIconPositionMap:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 898
    .end local v2    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->removeShortcutInfosAnimated(Ljava/util/ArrayList;)V

    .line 900
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->processPackagedUpdateScreenChanged()V

    goto :goto_0
.end method

.method public removeItemsByPackageName(Ljava/util/ArrayList;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 6
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lnet/oneplus/h2launcher/compat/UserHandleCompat;",
            ")V"
        }
    .end annotation

    .prologue
    .line 822
    .local p1, "packages":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/Launcher;->isIconRearrangementMode()Z

    move-result v5

    if-nez v5, :cond_0

    .line 847
    :goto_0
    return-void

    .line 825
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 826
    .local v3, "packageNames":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-virtual {v3, p1}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 828
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 829
    .local v2, "infos":Ljava/util/HashSet;, "Ljava/util/HashSet<Lnet/oneplus/h2launcher/ItemInfo;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 830
    .local v0, "cns":Ljava/util/HashSet;, "Ljava/util/HashSet<Landroid/content/ComponentName;>;"
    iget-object v5, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->mPanel:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementPanel;->getShortcutInfos()Ljava/util/ArrayList;

    move-result-object v4

    .line 831
    .local v4, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    invoke-virtual {v2, v4}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    .line 833
    new-instance v1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;

    invoke-direct {v1, p0, v3, p2, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$19;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Ljava/util/HashSet;)V

    .line 845
    .local v1, "filter":Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;
    invoke-static {v2, v1}, Lnet/oneplus/h2launcher/LauncherModel;->filterItemInfos(Ljava/lang/Iterable;Lnet/oneplus/h2launcher/LauncherModel$ItemInfoFilter;)Ljava/util/ArrayList;

    .line 846
    invoke-virtual {p0, v0, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper;->removeItemsByComponentName(Ljava/util/HashSet;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    goto :goto_0
.end method
