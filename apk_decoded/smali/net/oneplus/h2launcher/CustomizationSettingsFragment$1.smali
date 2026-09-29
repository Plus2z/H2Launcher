.class Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;
.super Ljava/lang/Object;
.source "CustomizationSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    .prologue
    .line 109
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 113
    return-void
.end method
