.class Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;
.super Ljava/lang/Object;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setupIMEInputSearch()V
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
    .line 1263
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1266
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v0

    if-lez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v1

    if-eq v0, v1, :cond_1

    .line 1267
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1268
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I

    .line 1285
    :cond_0
    :goto_0
    return-void

    .line 1271
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1272
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3502(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I

    .line 1273
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I

    .line 1274
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iget-object v0, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    if-eqz v0, :cond_2

    .line 1275
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$1800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/content/Context;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iget-object v1, v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1276
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    const/4 v1, 0x0

    iput-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1278
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    goto :goto_0

    .line 1280
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 1281
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;->this$0:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-static {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I

    move-result v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->access$3402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I

    goto :goto_0
.end method
