.class Lnet/oneplus/h2launcher/SwitchLayoutFragment$1;
.super Ljava/lang/Object;
.source "SwitchLayoutFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SwitchLayoutFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    .prologue
    .line 89
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$1;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$1;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 93
    return-void
.end method
