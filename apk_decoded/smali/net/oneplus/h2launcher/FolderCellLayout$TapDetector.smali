.class Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FolderCellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderCellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "TapDetector"
.end annotation


# instance fields
.field private final mLastItemRect:Landroid/graphics/Rect;

.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderCellLayout;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/FolderCellLayout;)V
    .locals 1

    .prologue
    .line 51
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->this$0:Lnet/oneplus/h2launcher/FolderCellLayout;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    .line 52
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/FolderCellLayout;Lnet/oneplus/h2launcher/FolderCellLayout$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/FolderCellLayout;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/FolderCellLayout$1;

    .prologue
    .line 51
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;-><init>(Lnet/oneplus/h2launcher/FolderCellLayout;)V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 6
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v4, 0x1

    .line 56
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v1, v3

    .local v1, "x":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    float-to-int v2, v3

    .line 57
    .local v2, "y":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->this$0:Lnet/oneplus/h2launcher/FolderCellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderCellLayout;->getLastItem()Landroid/view/View;

    move-result-object v3

    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    invoke-virtual {v3, v5}, Landroid/view/View;->getHitRect(Landroid/graphics/Rect;)V

    .line 58
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    if-le v2, v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ge v2, v3, :cond_3

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->this$0:Lnet/oneplus/h2launcher/FolderCellLayout;

    .line 59
    invoke-static {v3}, Lnet/oneplus/h2launcher/FolderCellLayout;->access$100(Lnet/oneplus/h2launcher/FolderCellLayout;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->left:I

    if-ge v1, v3, :cond_3

    :cond_0
    move v0, v4

    .line 60
    .local v0, "tappingEmptyCell":Z
    :goto_0
    if-eqz v0, :cond_1

    .line 61
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->this$0:Lnet/oneplus/h2launcher/FolderCellLayout;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderCellLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 63
    :cond_1
    return v4

    .line 59
    .end local v0    # "tappingEmptyCell":Z
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderCellLayout$TapDetector;->mLastItemRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->right:I

    if-gt v1, v3, :cond_0

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method
