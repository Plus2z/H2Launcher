.class public Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;
.super Landroid/widget/RelativeLayout;
.source "QuickPageItemView.java"


# static fields
.field private static final SWIPE_THRESHOLD:I = 0x14

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mDownX:I

.field private mDownY:I

.field private mEditing:Z

.field private mScrollbarWidth:I

.field private mShouldScroll:Z

.field private mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 17
    const-class v0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 32
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 37
    return-void
.end method


# virtual methods
.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v6, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 53
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mEditing:Z

    if-eqz v2, :cond_0

    .line 54
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->TAG:Ljava/lang/String;

    const-string v3, "leave quick page on tapping the item view"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 103
    :goto_0
    return v4

    .line 57
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_1

    .line 58
    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->TAG:Ljava/lang/String;

    const-string v4, "ignore touch event for disabled touch manager"

    invoke-static {v2, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    move v4, v3

    .line 60
    goto :goto_0

    .line 63
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 103
    :cond_2
    :goto_1
    invoke-super {p0, p1}, Landroid/widget/RelativeLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    goto :goto_0

    .line 65
    :pswitch_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownX:I

    .line 66
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    float-to-int v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownY:I

    .line 71
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/QuickPageItem;->hasScrollableContent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 72
    invoke-virtual {p0, v4}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownX:I

    iget v6, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownY:I

    invoke-static {v2, v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/util/ViewGroupUtils;->isEventOnScrollableView(Landroid/view/View;II)Z

    move-result v2

    if-eqz v2, :cond_3

    move v2, v3

    :goto_2
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mShouldScroll:Z

    .line 73
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mShouldScroll:Z

    if-eqz v2, :cond_2

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getWidth()I

    move-result v2

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownX:I

    sub-int/2addr v2, v4

    iget v4, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mScrollbarWidth:I

    mul-int/lit8 v4, v4, 0x3

    if-lt v2, v4, :cond_2

    .line 74
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_1

    :cond_3
    move v2, v4

    .line 72
    goto :goto_2

    .line 78
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v2

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownX:I

    int-to-float v5, v5

    sub-float v0, v2, v5

    .line 79
    .local v0, "deltaX":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v2

    iget v5, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mDownY:I

    int-to-float v5, v5

    sub-float v1, v2, v5

    .line 80
    .local v1, "deltaY":F
    cmpl-float v2, v0, v6

    if-eqz v2, :cond_2

    cmpl-float v2, v1, v6

    if-eqz v2, :cond_2

    .line 81
    cmpg-float v2, v0, v6

    if-gez v2, :cond_4

    .line 82
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v5, 0x41a00000    # 20.0f

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 83
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v5

    cmpl-float v2, v2, v5

    if-lez v2, :cond_4

    .line 84
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setScrollingEnabled(Z)V

    .line 85
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 89
    :cond_4
    iget-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mShouldScroll:Z

    if-eqz v2, :cond_5

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->hasItemInteractionStarted()Z

    move-result v2

    if-nez v2, :cond_5

    .line 90
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v2

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_5

    .line 91
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v2, v4}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setScrollingEnabled(Z)V

    goto/16 :goto_1

    .line 93
    :cond_5
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto/16 :goto_1

    .line 98
    .end local v0    # "deltaX":F
    .end local v1    # "deltaY":F
    :pswitch_2
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;->setScrollingEnabled(Z)V

    .line 99
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    invoke-interface {v2, v4}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 100
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mShouldScroll:Z

    goto/16 :goto_1

    .line 63
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getDescendantFocusability()I
    .locals 1

    .prologue
    .line 108
    const/high16 v0, 0x20000

    return v0
.end method

.method protected onFinishInflate()V
    .locals 2

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/RelativeLayout;->onFinishInflate()V

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c01e7

    .line 48
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mScrollbarWidth:I

    .line 49
    return-void
.end method

.method public setEditable(Z)V
    .locals 0
    .param p1, "isEditing"    # Z

    .prologue
    .line 112
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mEditing:Z

    .line 113
    return-void
.end method

.method public setTouchGuardManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;)V
    .locals 0
    .param p1, "touchGuardManager"    # Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .prologue
    .line 40
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/QuickPageItemView;->mTouchGuardManager:Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/touchguard/RecyclerViewTouchActionGuardManager;

    .line 41
    return-void
.end method
