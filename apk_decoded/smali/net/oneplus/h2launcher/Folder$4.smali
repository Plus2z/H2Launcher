.class Lnet/oneplus/h2launcher/Folder$4;
.super Ljava/lang/Object;
.source "Folder.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Folder;->beginExternalDrag()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Folder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Folder;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Folder;

    .prologue
    .line 540
    iput-object p1, p0, Lnet/oneplus/h2launcher/Folder$4;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 544
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$4;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/Folder;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 545
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$4;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Folder;->access$200(Lnet/oneplus/h2launcher/Folder;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 546
    iget-object v0, p0, Lnet/oneplus/h2launcher/Folder$4;->this$0:Lnet/oneplus/h2launcher/Folder;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->enterIconRearrangeMode()V

    .line 548
    :cond_0
    return-void
.end method
