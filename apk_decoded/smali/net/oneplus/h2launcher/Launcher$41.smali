.class Lnet/oneplus/h2launcher/Launcher$41;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->hideFoldersView(Z)V
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
    .line 5446
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$41;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 5449
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$41;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v0, v0, Lnet/oneplus/h2launcher/Launcher;->mFoldersView:Lnet/oneplus/h2launcher/FoldersContainerView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$41;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/FoldersContainerView;->adjustMarginForIconRearrangeMode(Landroid/content/Context;)V

    .line 5450
    return-void
.end method
