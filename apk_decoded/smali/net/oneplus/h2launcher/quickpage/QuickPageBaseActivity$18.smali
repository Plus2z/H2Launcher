.class Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;
.super Ljava/lang/Object;
.source "QuickPageBaseActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->addWidgetToWidgetList(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

.field final synthetic val$packageName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    .prologue
    .line 1291
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;->val$packageName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 1295
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$2000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;->val$packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->checkPackageIsWidget(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1296
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity$18;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;->access$2000(Lnet/oneplus/h2launcher/quickpage/QuickPageBaseActivity;)Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/widget/WidgetPicker;->invalidateWidgetList()V

    .line 1298
    :cond_0
    return-void
.end method
