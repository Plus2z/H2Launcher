.class public Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;
.super Landroid/widget/FrameLayout;
.source "AllAppsRecyclerViewContainerView.java"

# interfaces
.implements Lnet/oneplus/h2launcher/BubbleTextView$BubbleTextShadowHandler;


# instance fields
.field private final mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 40
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    move-object v1, p1

    .line 49
    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    .line 50
    .local v1, "launcher":Lnet/oneplus/h2launcher/Launcher;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 52
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    new-instance v3, Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-direct {v3, p1}, Lnet/oneplus/h2launcher/ClickShadowView;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    .line 55
    iget v3, v0, Lnet/oneplus/h2launcher/DeviceProfile;->allAppsIconSizePx:I

    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/ClickShadowView;->getExtraSize()I

    move-result v4

    add-int v2, v3, v4

    .line 56
    .local v2, "size":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {p0, v3, v2, v2}, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->addView(Landroid/view/View;II)V

    .line 57
    return-void
.end method


# virtual methods
.method public setPressedIcon(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "icon"    # Lnet/oneplus/h2launcher/BubbleTextView;
    .param p2, "background"    # Landroid/graphics/Bitmap;

    .prologue
    .line 61
    if-eqz p1, :cond_0

    if-nez p2, :cond_2

    .line 62
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    .line 63
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ClickShadowView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 68
    :cond_1
    :goto_0
    return-void

    .line 64
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0, p2}, Lnet/oneplus/h2launcher/ClickShadowView;->setBitmap(Landroid/graphics/Bitmap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/BubbleTextView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v1, p1, v0}, Lnet/oneplus/h2launcher/ClickShadowView;->alignWithIconView(Lnet/oneplus/h2launcher/BubbleTextView;Landroid/view/ViewGroup;)V

    .line 66
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/AllAppsRecyclerViewContainerView;->mTouchFeedbackView:Lnet/oneplus/h2launcher/ClickShadowView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/ClickShadowView;->animateShadow()V

    goto :goto_0
.end method
