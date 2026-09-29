.class Lnet/oneplus/h2launcher/Launcher$9;
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

.field final synthetic val$resultCode:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 1186
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$9;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput p2, p0, Lnet/oneplus/h2launcher/Launcher$9;->val$resultCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1189
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$9;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget v0, p0, Lnet/oneplus/h2launcher/Launcher$9;->val$resultCode:I

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    const/16 v2, 0x12c

    const/4 v3, 0x0

    invoke-virtual {v1, v0, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->exitSpringLoadedDragModeDelayed(ZILjava/lang/Runnable;)V

    .line 1191
    return-void

    .line 1189
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
