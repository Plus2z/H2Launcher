.class Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;
.super Ljava/lang/Object;
.source "WallpapersContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;

.field final synthetic val$color:I

.field final synthetic val$launcher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;Lnet/oneplus/h2launcher/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;

    .prologue
    .line 100
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->val$launcher:Lnet/oneplus/h2launcher/Launcher;

    iput p3, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->val$color:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->val$launcher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWallpapersView()Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->getWallpaperBackground()Lnet/oneplus/h2launcher/customizations/WallpaperBackground;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->val$color:I

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1$1;->this$0:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;

    iget-boolean v2, v2, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView$1;->val$animated:Z

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperBackground;->setColor(IZ)V

    .line 104
    return-void
.end method
