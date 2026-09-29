.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;
.source "SwipeDismissItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemMoveAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemChangeAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissRemoveAnimationInfo;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$DefaultItemAddAnimationManager;
    }
.end annotation


# static fields
.field public static final MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 40
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->MOVE_INTERPOLATOR:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected cancelAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V
    .locals 0
    .param p1, "item"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;

    .prologue
    .line 60
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;->cancelAnimations(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;)V

    .line 61
    return-void
.end method

.method protected onSchedulePendingAnimations()V
    .locals 0

    .prologue
    .line 55
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->schedulePendingAnimationsByDefaultRule()V

    .line 56
    return-void
.end method

.method protected onSetup()V
    .locals 4

    .prologue
    const-wide/16 v2, 0x96

    .line 44
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$DefaultItemAddAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$DefaultItemAddAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setItemAddAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;)V

    .line 45
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemRemoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setItemRemoveAnimationManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;)V

    .line 46
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemChangeAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemChangeAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setItemChangeAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;)V

    .line 47
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemMoveAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator$SwipeDismissItemMoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setItemMoveAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;)V

    .line 49
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setRemoveDuration(J)V

    .line 50
    invoke-virtual {p0, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/SwipeDismissItemAnimator;->setMoveDuration(J)V

    .line 51
    return-void
.end method
