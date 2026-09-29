.class Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;
.super Ljava/lang/Object;
.source "WidgetPicker.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

.field final synthetic val$widget:Lnet/oneplus/h2launcher/model/WidgetItem;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;Lnet/oneplus/h2launcher/model/WidgetItem;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    .prologue
    .line 233
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;->val$widget:Lnet/oneplus/h2launcher/model/WidgetItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 236
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->access$200(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 237
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;

    iget-object v0, v0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->access$200(Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetSelectionAdapter$1;->val$widget:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/model/WidgetItem;->componentName:Landroid/content/ComponentName;

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;->onWidgetPicked(Landroid/content/ComponentName;)V

    .line 239
    :cond_0
    return-void
.end method
