.class Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3$1;
.super Ljava/lang/Object;
.source "TimeWidgetCustomizationCard.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3$1;->this$1:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 160
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3$1;->this$1:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;

    iget v1, v1, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$selectedHomeScreenClockStyle:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->setClockStyle(I)V

    .line 161
    return-void
.end method
