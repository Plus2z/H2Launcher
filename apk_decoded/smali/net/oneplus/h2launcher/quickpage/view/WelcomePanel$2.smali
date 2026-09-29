.class Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$2;
.super Ljava/lang/Object;
.source "WelcomePanel.java"

# interfaces
.implements Landroid/view/View$OnAttachStateChangeListener;


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
    .line 107
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewAttachedToWindow(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel$2;->this$0:Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;->access$500(Lnet/oneplus/h2launcher/quickpage/view/WelcomePanel;)V

    .line 112
    return-void
.end method

.method public onViewDetachedFromWindow(Landroid/view/View;)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 116
    return-void
.end method
