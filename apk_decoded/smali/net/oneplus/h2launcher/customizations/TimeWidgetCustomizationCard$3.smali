.class Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;
.super Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.source "TimeWidgetCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

.field final synthetic val$homeScreenClockStyleChange:Z

.field final synthetic val$lockScreenClockStyleChange:Z

.field final synthetic val$selectedHomeScreenClockStyle:I

.field final synthetic val$selectedLockScreenClockStyle:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Ljava/lang/String;ZIZI)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;
    .param p2, "tag"    # Ljava/lang/String;

    .prologue
    .line 150
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$lockScreenClockStyleChange:Z

    iput p4, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$selectedLockScreenClockStyle:I

    iput-boolean p5, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$homeScreenClockStyleChange:Z

    iput p6, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$selectedHomeScreenClockStyle:I

    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;-><init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 153
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$lockScreenClockStyleChange:Z

    if-eqz v0, :cond_0

    .line 154
    invoke-static {}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->getInstance()Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$selectedLockScreenClockStyle:I

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/internalwidget/clock/ClockWidget;->setKeyguardClockStyle(I)V

    .line 156
    :cond_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->val$homeScreenClockStyleChange:Z

    if-eqz v0, :cond_1

    .line 157
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3$1;-><init>(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$3;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->post(Ljava/lang/Runnable;)Z

    .line 164
    :cond_1
    return-void
.end method
