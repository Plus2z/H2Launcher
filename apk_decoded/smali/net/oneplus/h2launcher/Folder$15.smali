.class Lnet/oneplus/h2launcher/Folder$15;
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

.field final synthetic val$folderHeight:I

.field final synthetic val$folderWidth:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;IILandroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 1362
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$15;->this$0:Lnet/oneplus/h2launcher/Folder;

    iput p2, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderWidth:I

    iput p3, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderHeight:I

    iput-object p4, p0, Lnet/oneplus/h2launcher/Folder$15;->val$background:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 9
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    const/high16 v8, 0x40000000    # 2.0f

    const/high16 v7, 0x3f800000    # 1.0f

    .line 1365
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v1

    .line 1366
    .local v1, "scale":F
    sub-float v5, v7, v1

    iget v6, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderWidth:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v3, v5

    .line 1367
    .local v3, "x":I
    sub-float v5, v7, v1

    iget v6, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderHeight:I

    int-to-float v6, v6

    mul-float/2addr v5, v6

    div-float/2addr v5, v8

    float-to-int v4, v5

    .line 1368
    .local v4, "y":I
    iget v5, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderWidth:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v2, v5

    .line 1369
    .local v2, "width":I
    iget v5, p0, Lnet/oneplus/h2launcher/Folder$15;->val$folderHeight:I

    int-to-float v5, v5

    mul-float/2addr v5, v1

    float-to-int v0, v5

    .line 1370
    .local v0, "height":I
    iget-object v5, p0, Lnet/oneplus/h2launcher/Folder$15;->val$background:Landroid/graphics/drawable/Drawable;

    add-int v6, v3, v2

    add-int v7, v4, v0

    invoke-virtual {v5, v3, v4, v6, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1371
    return-void
.end method
