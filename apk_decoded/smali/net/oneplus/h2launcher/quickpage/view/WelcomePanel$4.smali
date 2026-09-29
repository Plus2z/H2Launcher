.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->configurePanel(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

.field final synthetic val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 137
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;->val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$4;->val$parent:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const-string v1, "dialog_tag_setting"

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->showDialog(Ljava/lang/String;)V

    .line 141
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->performHapticFeedback(I)Z

    .line 142
    const/4 v0, 0x1

    return v0
.end method
