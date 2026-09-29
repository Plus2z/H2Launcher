.class Lnet/oneplus/h2launcher/Launcher$13;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onStop()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 1633
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$13;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1636
    const-string v0, "Launcher"

    const-string v1, "onStop#wallpaperView saveCustomizations"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 1637
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$13;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mWallpapersView:Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/WallpapersContainerView;->saveCustomizations()V

    .line 1638
    return-void
.end method
