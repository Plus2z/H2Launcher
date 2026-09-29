.class Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;
.super Ljava/lang/Object;
.source "TimeWidgetCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->populateWidgetsFromAdapter(Landroid/widget/BaseAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

.field final synthetic val$adapter:Landroid/widget/BaseAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/widget/BaseAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 246
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 249
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->getCount()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 250
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->val$adapter:Landroid/widget/BaseAdapter;

    const/4 v4, 0x0

    iget-object v5, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v5}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v5

    invoke-virtual {v3, v0, v4, v5}, Landroid/widget/BaseAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/FrameLayout;

    .line 251
    .local v2, "thumbnail":Landroid/widget/FrameLayout;
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$600(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Lnet/oneplus/h2launcher/widget/OneplusFlowLayout;->addView(Landroid/view/View;)V

    .line 252
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->val$adapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/BaseAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    .line 253
    .local v1, "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V

    .line 254
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$700(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Landroid/view/View$OnClickListener;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 256
    .end local v1    # "info":Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;
    .end local v2    # "thumbnail":Landroid/widget/FrameLayout;
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$4;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->reloadCustomizationSettings()V

    .line 257
    return-void
.end method
