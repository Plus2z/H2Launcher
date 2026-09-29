.class Lnet/oneplus/h2launcher/widget/WidgetCell$1;
.super Ljava/lang/Object;
.source "WidgetCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/widget/WidgetCell;->applyFromAppWidgetProviderInfo(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Lnet/oneplus/h2launcher/WidgetPreviewLoader;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

.field final synthetic val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/widget/WidgetCell;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 181
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$1;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 184
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$1;->val$info:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/compat/AppWidgetManagerCompat;->loadLabel(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)Ljava/lang/String;

    move-result-object v0

    .line 185
    .local v0, "text":Ljava/lang/String;
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$1;->this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

    invoke-static {v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->access$000(Lnet/oneplus/h2launcher/widget/WidgetCell;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void
.end method
