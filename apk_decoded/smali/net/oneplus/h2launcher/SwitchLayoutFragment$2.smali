.class Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;
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
    .line 104
    iput-object p1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 108
    iget-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$000(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v2}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$100(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "launcher.layout_style"

    const/4 v4, -0x1

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-ne v1, v2, :cond_0

    .line 109
    iget-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->finish()V

    .line 115
    :goto_0
    return-void

    .line 113
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;

    iget-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;-><init>(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)V

    .line 114
    .local v0, "dialogFragment":Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;
    iget-object v1, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/SwitchLayoutFragment$2;->this$0:Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-static {v2}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;->access$200(Lnet/oneplus/h2launcher/SwitchLayoutFragment;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/SwitchLayoutDialogFragment;->show(Landroid/support/v4/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0
.end method
