.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->updateExternalWidget()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

.field final synthetic val$widgetId:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 196
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widgetId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/DataProvider;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->val$widget:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/DataProvider;->addItem(Lnet/oneplus/h2launcher/quickpage/view/util/AbstractDataProvider$Data;)V

    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->invalidateList()V

    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$100(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->smoothScrollToPosition(I)V

    .line 203
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$200(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2$1;-><init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$2;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/view/RecyclerViewWrapper;->post(Ljava/lang/Runnable;)Z

    .line 216
    return-void
.end method
