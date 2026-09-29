.class Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .prologue
    .line 171
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 174
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->hasReachedLimit()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 175
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$200(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Landroid/widget/Toast;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$200(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->isShown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 176
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    .line 177
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b003b

    .line 176
    invoke-static {v1, v2, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$202(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Landroid/widget/Toast;)Landroid/widget/Toast;

    .line 178
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$200(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 191
    :cond_1
    :goto_0
    return-void

    .line 183
    :cond_2
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$300(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 184
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    .line 190
    :goto_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$502(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)Z

    goto :goto_0

    .line 186
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->access$400(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Z)V

    .line 187
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$3;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->expand()V

    goto :goto_1
.end method
