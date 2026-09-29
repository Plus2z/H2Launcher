.class Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;
.super Ljava/lang/Object;
.source "WidgetPanel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->onItemViewAttached()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

.field final synthetic val$defaultHeight:I

.field final synthetic val$parent:Landroid/view/ViewGroup;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;Landroid/view/ViewGroup;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    .prologue
    .line 212
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$parent:Landroid/view/ViewGroup;

    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$defaultHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 215
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    iget v2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$defaultHeight:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$parent:Landroid/view/ViewGroup;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getMeasuredHeight()I

    move-result v0

    :goto_0
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;->access$002(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel;I)I

    .line 216
    return-void

    .line 215
    :cond_0
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPanel$1;->val$defaultHeight:I

    goto :goto_0
.end method
