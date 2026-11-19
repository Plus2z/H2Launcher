.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker$WidgetPickerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->showWidgetPickerDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 1194
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onWidgetPicked(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "component"    # Landroid/content/ComponentName;

    .prologue
    .line 1197
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$1000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;->collapse()V

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$2000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->dismiss()V

    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$16;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addBuildinWidget(Landroid/content/ComponentName;I)I

    return-void
.end method
