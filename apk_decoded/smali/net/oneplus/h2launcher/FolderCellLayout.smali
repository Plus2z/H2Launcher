.class public Lnet/oneplus/h2launcher/FolderCellLayout;
.super Lnet/oneplus/h2launcher/CellLayout;
.source "FolderCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;
    }
.end annotation


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mIsRtl:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 16
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FolderCellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 24
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/CellLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 25
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderCellLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/Utilities;->isRtl(Landroid/content/res/Resources;)Z

    move-result v0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/FolderCellLayout;->mIsRtl:Z

    .line 26
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderCellLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;

    const/4 v3, 0x0

    invoke-direct {v2, p0, v3}, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;-><init>(Lnet/oneplus/h2launcher/FolderCellLayout;Lnet/oneplus/h2launcher/FolderCellLayout$1;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderCellLayout;->mGestureDetector:Landroid/view/GestureDetector;

    .line 27
    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/FolderCellLayout;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderCellLayout;

    .prologue
    .line 11
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/FolderCellLayout;->mIsRtl:Z

    return v0
.end method


# virtual methods
.method getLastItem()Landroid/view/View;
    .locals 5

    .prologue
    .line 41
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderCellLayout;->getShortcutsAndWidgets()Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;

    move-result-object v1

    .line 42
    .local v1, "currContainer":Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildCount()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .line 43
    .local v2, "lastRank":I
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderCellLayout;->getCountX()I

    move-result v0

    .line 44
    .local v0, "countX":I
    if-lez v0, :cond_0

    .line 45
    rem-int v3, v2, v0

    div-int v4, v2, v0

    invoke-virtual {v1, v3, v4}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(II)Landroid/view/View;

    move-result-object v3

    .line 47
    :goto_0
    return-object v3

    :cond_0
    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/ShortcutAndWidgetContainer;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderCellLayout;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 37
    const/4 v0, 0x1

    return v0
.end method
