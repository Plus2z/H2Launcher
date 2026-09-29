.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WallpapersContainerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    .prologue
    .line 233
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 243
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$400(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 244
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$400(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    iget-boolean v1, v1, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->mAccessibilityEnabled:Z

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/AlphaUpdateListener;->updateVisibility(Landroid/view/View;Z)V

    .line 247
    :cond_0
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$400(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->access$400(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;)Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setVisibility(I)V

    .line 239
    :cond_0
    return-void
.end method
