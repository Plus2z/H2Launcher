.class Lnet/oneplus/h2launcher/customizations/WallpaperPreview$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "WallpaperPreview.java"


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
    .line 249
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 252
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$4;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->access$202(Lnet/oneplus/h2launcher/customizations/WallpaperPreview;Z)Z

    .line 253
    return-void
.end method
