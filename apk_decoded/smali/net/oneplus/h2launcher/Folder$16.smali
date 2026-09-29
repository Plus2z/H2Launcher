.class Lnet/oneplus/h2launcher/Folder$16;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->playIconRearrangeAnimation(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;

.field final synthetic val$background:Landroid/graphics/drawable/Drawable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 1382
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$16;->this$0:Lnet/oneplus/h2launcher/Folder;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Folder$16;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 1385
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 1386
    .local v0, "alpha":I
    iget-object v1, p0, Lnet/oneplus/h2launcher/Folder$16;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 1387
    return-void
.end method
