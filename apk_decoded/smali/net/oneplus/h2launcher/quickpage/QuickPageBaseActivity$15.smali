.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->showDialog(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$tag:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 1184
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;->val$tag:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1187
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;->val$tag:Ljava/lang/String;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;->newInstance(Ljava/lang/String;)Lnet/oneplus/h2launcher/quickpage/QuickPageDialogFragment;

    move-result-object v0

    .line 1188
    .local v0, "frag":Landroid/app/DialogFragment;
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$15;->val$tag:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->show(Landroid/app/FragmentManager;Ljava/lang/String;)V

    .line 1189
    return-void
.end method
