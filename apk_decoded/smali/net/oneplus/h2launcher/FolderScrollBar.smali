.class public Lnet/oneplus/h2launcher/FolderScrollBar;
.super Landroid/view/View;
.source "FolderScrollBar.java"

# interfaces
.implements Landroid/view/View$OnScrollChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FolderScrollBar$State;
    }
.end annotation


# static fields
.field private static final AUTO_HIDE_DELAY:I = 0x5dc

.field private static final ENABLE_AUTO_HIDE:Z = false

.field private static final FADE_DURATION:I = 0xe1

.field private static final SHOW_SCROLL_BAR_DELAY:J = 0x12cL


# instance fields
.field private mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

.field private final mHideRunnable:Ljava/lang/Runnable;

.field private mPendingRunnable:Ljava/lang/Runnable;

.field private mShowScrollBarRunnable:Ljava/lang/Runnable;

.field private mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

.field private mThumb:Landroid/graphics/Paint;

.field private mThumbHeight:I

.field private mThumbPosition:Landroid/graphics/Point;

.field private mTrack:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 50
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 55
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 58
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2, v3, v3}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbPosition:Landroid/graphics/Point;

    .line 41
    const/4 v2, 0x0

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mPendingRunnable:Ljava/lang/Runnable;

    .line 43
    sget-object v2, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 155
    new-instance v2, Lnet/oneplus/h2launcher/FolderScrollBar$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/FolderScrollBar$2;-><init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mShowScrollBarRunnable:Ljava/lang/Runnable;

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 60
    .local v0, "resources":Landroid/content/res/Resources;
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 62
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    const v2, 0x7f0c025c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbHeight:I

    .line 63
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumb:Landroid/graphics/Paint;

    .line 64
    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mTrack:Landroid/graphics/Paint;

    .line 65
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mTrack:Landroid/graphics/Paint;

    const v3, 0x7f0e012f

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 66
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumb:Landroid/graphics/Paint;

    const v3, 0x7f0e012e

    invoke-virtual {v0, v3, v1}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 68
    new-instance v2, Lnet/oneplus/h2launcher/FolderScrollBar$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/FolderScrollBar$1;-><init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    .line 92
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/FolderScrollBar;)Lnet/oneplus/h2launcher/FolderScrollBar$State;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 29
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    return-object v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/FolderScrollBar;Lnet/oneplus/h2launcher/FolderScrollBar$State;)Lnet/oneplus/h2launcher/FolderScrollBar$State;
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;
    .param p1, "x1"    # Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .prologue
    .line 29
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    return-object p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/FolderScrollBar;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->shouldShowScrollBar()Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->playShowAnimation()V

    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->postAutoHideDelayed()V

    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/FolderScrollBar;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollBar;

    .prologue
    .line 29
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->updateThumbPosition()V

    return-void
.end method

.method private playShowAnimation()V
    .locals 4

    .prologue
    .line 168
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 169
    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollBar$3;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/FolderScrollBar$3;-><init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mPendingRunnable:Ljava/lang/Runnable;

    .line 198
    :goto_0
    return-void

    .line 176
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_SHOW_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 177
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->postInvalidateOnAnimation()V

    .line 178
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const-wide/16 v2, 0xe1

    invoke-virtual {v0, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/FolderScrollBar$4;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/FolderScrollBar$4;-><init>(Lnet/oneplus/h2launcher/FolderScrollBar;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    goto :goto_0
.end method

.method private postAutoHideDelayed()V
    .locals 0

    .prologue
    .line 118
    return-void
.end method

.method private shouldShowScrollBar()Z
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollView;->getVerticalScrollExtent()I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    .line 146
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollView;->getVerticalScrollExtent()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderScrollView;->getVerticalScrollRange()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showScrollBarDelay(J)V
    .locals 1
    .param p1, "delay"    # J

    .prologue
    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mShowScrollBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mShowScrollBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0, p1, p2}, Lnet/oneplus/h2launcher/FolderScrollBar;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 152
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->postAutoHideDelayed()V

    .line 153
    return-void
.end method

.method private updateThumbPosition()V
    .locals 4

    .prologue
    .line 131
    const/4 v0, 0x0

    .line 132
    .local v0, "y":I
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->shouldShowScrollBar()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 133
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/FolderScrollView;->getScrollY()I

    move-result v1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->getHeight()I

    move-result v2

    iget v3, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbHeight:I

    sub-int/2addr v2, v3

    mul-int/2addr v1, v2

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FolderScrollView;->getVerticalScrollRange()I

    move-result v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/FolderScrollView;->getVerticalScrollExtent()I

    move-result v3

    sub-int/2addr v2, v3

    div-int v0, v1, v2

    .line 135
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbPosition:Landroid/graphics/Point;

    iget v1, v1, Landroid/graphics/Point;->y:I

    if-ne v1, v0, :cond_2

    .line 142
    :cond_1
    :goto_0
    return-void

    .line 138
    :cond_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbPosition:Landroid/graphics/Point;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Landroid/graphics/Point;->set(II)V

    .line 139
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v2, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-eq v1, v2, :cond_1

    .line 140
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->invalidate()V

    goto :goto_0
.end method


# virtual methods
.method cancelShowScrollbarAnimation()V
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mShowScrollBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 224
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 225
    return-void
.end method

.method public dismissScrollBar()V
    .locals 1

    .prologue
    .line 215
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mHideRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 216
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mShowScrollBarRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 217
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 218
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->setAlpha(F)V

    .line 219
    sget-object v0, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    .line 220
    return-void
.end method

.method public isShown()Z
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->SHOW:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public notifyFolderItemChanged()V
    .locals 2

    .prologue
    .line 210
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->dismissScrollBar()V

    .line 211
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->showScrollBarDelay(J)V

    .line 212
    return-void
.end method

.method public notifyFolderOpen()V
    .locals 2

    .prologue
    .line 201
    const-wide/16 v0, 0x12c

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->showScrollBarDelay(J)V

    .line 202
    return-void
.end method

.method public notifyFolderRearrange(Z)V
    .locals 2
    .param p1, "isRearrange"    # Z

    .prologue
    .line 205
    if-eqz p1, :cond_0

    .line 206
    const-wide/16 v0, 0x0

    invoke-direct {p0, v0, v1}, Lnet/oneplus/h2launcher/FolderScrollBar;->showScrollBarDelay(J)V

    .line 207
    :cond_0
    return-void
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 229
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 230
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mPendingRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mPendingRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollBar;->post(Ljava/lang/Runnable;)Z

    .line 232
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mPendingRunnable:Ljava/lang/Runnable;

    .line 234
    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 6
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v2, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-eq v0, v2, :cond_0

    .line 124
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->getHeight()I

    move-result v0

    int-to-float v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mTrack:Landroid/graphics/Paint;

    move-object v0, p1

    move v2, v1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    int-to-float v2, v0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->getWidth()I

    move-result v0

    int-to-float v3, v0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbPosition:Landroid/graphics/Point;

    iget v0, v0, Landroid/graphics/Point;->y:I

    iget v4, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumbHeight:I

    add-int/2addr v0, v4

    int-to-float v4, v0

    iget-object v5, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mThumb:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 128
    :cond_0
    return-void
.end method

.method public onScrollChange(Landroid/view/View;IIII)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "scrollX"    # I
    .param p3, "scrollY"    # I
    .param p4, "oldScrollX"    # I
    .param p5, "oldScrollY"    # I

    .prologue
    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->HIDE:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mState:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    sget-object v1, Lnet/oneplus/h2launcher/FolderScrollBar$State;->PLAY_HIDE_ANIMATION:Lnet/oneplus/h2launcher/FolderScrollBar$State;

    if-ne v0, v1, :cond_1

    .line 105
    :cond_0
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->shouldShowScrollBar()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 106
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->playShowAnimation()V

    .line 108
    :cond_1
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->updateThumbPosition()V

    .line 109
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollBar;->postAutoHideDelayed()V

    .line 111
    return-void
.end method

.method public setFolderScrollView(Lnet/oneplus/h2launcher/FolderScrollView;)V
    .locals 1
    .param p1, "scrollView"    # Lnet/oneplus/h2launcher/FolderScrollView;

    .prologue
    .line 97
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollBar;->mFolderScrollView:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/FolderScrollView;->addOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 99
    return-void
.end method
