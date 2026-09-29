.class Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;
.super Ljava/lang/Object;
.source "TimeWidgetCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    .prologue
    .line 28
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x1

    .line 31
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$000(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)Lnet/oneplus/h2launcher/customizations/WallpaperPreview;

    move-result-object v2

    .line 32
    .local v2, "wallpaperPreview":Lnet/oneplus/h2launcher/customizations/WallpaperPreview;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview;->getCurrentPage()I

    move-result v1

    .line 33
    .local v1, "currentPage":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v3}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)[Landroid/view/View;

    move-result-object v3

    aget-object v3, v3, v1

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 46
    :cond_0
    :goto_0
    return-void

    .line 37
    :cond_1
    if-ne v1, v5, :cond_0

    .line 38
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v0

    .line 39
    .local v0, "clockWidget":Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->previewingClockStyle()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 40
    invoke-static {}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$200()Ljava/lang/String;

    move-result-object v3

    const-string v4, "skip select time widget tile for ongoing clock style"

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 42
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v3, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/view/View;)V

    .line 43
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v4, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$400(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/view/View;)Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;

    move-result-object v4

    iget v4, v4, Lnet/oneplus/h2launcher/customizations/timewidget/TimeWidgetTileInfo;->clockStyle:I

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->previewClockStyle(IZ)V

    goto :goto_0
.end method
