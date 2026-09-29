.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    .prologue
    .line 120
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$600(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/ImageView;

    move-result-object v0

    const v1, 0x7f0200e9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$700(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)Landroid/widget/TextView;

    move-result-object v0

    const v1, 0x7f0b0080

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 128
    :cond_0
    return-void
.end method
