.class public Lnet/oneplus/h2launcher/crop/view/UCropView;
.super Landroid/widget/FrameLayout;
.source "UCropView.java"


# instance fields
.field private final mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

.field private final mViewOverlay:Lnet/oneplus/h2launcher/crop/view/OverlayView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 18
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/view/UCropView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 19
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 22
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 24
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0400cd

    const/4 v3, 0x1

    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 25
    const v1, 0x7f1101d1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    .line 26
    const v1, 0x7f1101d2

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/crop/view/UCropView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/crop/view/OverlayView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mViewOverlay:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    .line 28
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    new-instance v2, Lnet/oneplus/h2launcher/crop/view/UCropView$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/crop/view/UCropView$1;-><init>(Lnet/oneplus/h2launcher/crop/view/UCropView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->setCropBoundsChangeListener(Lnet/oneplus/h2launcher/crop/view/CropImageView$CropBoundsChangeListener;)V

    .line 38
    sget-object v1, Lnet/oneplus/h2launcher/R$styleable;->ucrop_UCropView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mViewOverlay:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/crop/view/OverlayView;->processStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 40
    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;->processStyledAttributes(Landroid/content/res/TypedArray;)V

    .line 41
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/crop/view/UCropView;)Lnet/oneplus/h2launcher/crop/view/OverlayView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/crop/view/UCropView;

    .prologue
    .line 12
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mViewOverlay:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    return-object v0
.end method


# virtual methods
.method public getCropImageView()Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 51
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mGestureCropImageView:Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    return-object v0
.end method

.method public getOverlayView()Lnet/oneplus/h2launcher/crop/view/OverlayView;
    .locals 1
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/view/UCropView;->mViewOverlay:Lnet/oneplus/h2launcher/crop/view/OverlayView;

    return-object v0
.end method

.method public shouldDelayChildPressedState()Z
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    return v0
.end method
