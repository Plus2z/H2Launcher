.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;
.super Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;
.source "RefactoredDefaultItemAnimator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemRemoveAnimationManager;,
        Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemAddAnimationManager;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/GeneralItemAnimator;-><init>()V

    return-void
.end method


# virtual methods
.method protected onSchedulePendingAnimations()V
    .locals 0

    .prologue
    .line 45
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;->schedulePendingAnimationsByDefaultRule()V

    .line 46
    return-void
.end method

.method protected onSetup()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemAddAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemAddAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;->setItemAddAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemAddAnimationManager;)V

    .line 38
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemRemoveAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemRemoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;->setItemRemoveAnimationManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemRemoveAnimationManager;)V

    .line 39
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemChangeAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;->setItemChangeAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemChangeAnimationManager;)V

    .line 40
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator$DefaultItemMoveAnimationManager;-><init>(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/BaseItemAnimator;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/RefactoredDefaultItemAnimator;->setItemMoveAnimationsManager(Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/animator/impl/ItemMoveAnimationManager;)V

    .line 41
    return-void
.end method
