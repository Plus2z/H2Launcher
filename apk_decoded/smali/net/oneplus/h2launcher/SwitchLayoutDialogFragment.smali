.class public Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;
.super Landroid/support/v4/app/DialogFragment;
.source "SwitchLayoutDialogFragment.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ValidFragment"
    }
.end annotation


# instance fields
.field public mSwitchLayoutFragment:Lnet/oneplus/h2launcher/SwitchLayoutFragment;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V
    .locals 1
    .param p1, "switchLayoutFragment"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ValidFragment"
        }
    .end annotation

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/support/v4/app/DialogFragment;-><init>()V

    .line 16
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->mSwitchLayoutFragment:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .line 20
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->mSwitchLayoutFragment:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .line 21
    return-void
.end method


# virtual methods
.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 26
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 27
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v1, 0x7f0b00b9

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b00c6

    .line 28
    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const v2, 0x7f0b001c

    new-instance v3, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$2;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$2;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;)V

    .line 29
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v1

    const/high16 v2, 0x1040000

    new-instance v3, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$1;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment$1;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;)V

    .line 34
    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 40
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v1

    return-object v1
.end method
