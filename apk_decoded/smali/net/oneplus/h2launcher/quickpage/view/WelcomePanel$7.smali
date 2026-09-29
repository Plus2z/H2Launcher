.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->animateLoading(Z)V
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
    .line 280
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 288
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$802(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)Z

    .line 289
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 294
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 283
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$7;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$802(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;Z)Z

    .line 284
    return-void
.end method
