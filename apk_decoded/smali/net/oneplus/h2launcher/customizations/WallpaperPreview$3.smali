.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$3;
.super Ljava/lang/Object;
.source "WallpaperPreview.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->selectPage(IZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    .prologue
    .line 241
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v0

    .line 246
    .local v0, "value":F
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$3;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-static {v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$100(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$WallpaperPreviewAdapter;->changeSelection(F)V

    .line 247
    return-void
.end method
