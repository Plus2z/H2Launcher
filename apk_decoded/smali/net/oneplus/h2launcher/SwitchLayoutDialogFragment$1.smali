.class Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$1;
.super Ljava/lang/Object;
.source "SwitchLayoutDialogFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;

    .prologue
    .line 34
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$1;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 36
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$1;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->dismiss()V

    .line 37
    return-void
.end method
