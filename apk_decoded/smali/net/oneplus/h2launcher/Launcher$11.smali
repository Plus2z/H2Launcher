.class Lnet/oneplus/h2launcher/Launcher$11;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->handleActivityResult(IILandroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$appWidgetId:I

.field final synthetic val$dropLayout:Lnet/oneplus/h2launcher/CellLayout;

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;IILnet/oneplus/h2launcher/CellLayout;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 1294
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$11;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput p2, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$resultCode:I

    iput p3, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$appWidgetId:I

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$dropLayout:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1297
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$11;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget v1, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$resultCode:I

    iget v2, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$appWidgetId:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->completeTwoStageWidgetDrop(II)V

    .line 1298
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$11;->val$dropLayout:Lnet/oneplus/h2launcher/CellLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/CellLayout;->setDropPending(Z)V

    .line 1299
    return-void
.end method
