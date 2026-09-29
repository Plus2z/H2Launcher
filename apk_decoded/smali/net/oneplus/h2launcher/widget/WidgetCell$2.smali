.class Lnet/oneplus/h2launcher/widget/WidgetCell$2;
.super Ljava/lang/Object;
.source "WidgetCell.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/widget/WidgetCell;->applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

.field final synthetic val$info:Landroid/content/pm/ResolveInfo;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/widget/WidgetCell;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 199
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->val$info:Landroid/content/pm/ResolveInfo;

    iput-object p3, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 202
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->val$info:Landroid/content/pm/ResolveInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 203
    .local v0, "label":Ljava/lang/CharSequence;
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell$2;->this$0:Lnet/oneplus/h2launcher/widget/WidgetCell;

    invoke-static {v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->access$000(Lnet/oneplus/h2launcher/widget/WidgetCell;)Landroid/widget/TextView;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 204
    return-void
.end method
