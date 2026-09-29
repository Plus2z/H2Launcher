.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;
.super Landroid/animation/AnimatorListenerAdapter;
.source "GlobalSearchView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->selectInputMethod(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 1230
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1237
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->clearAnimation()V

    .line 1238
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->setVisibility(I)V

    .line 1239
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$2300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 1240
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setupIMEInputSearch()V

    .line 1241
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 0
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 1233
    return-void
.end method
