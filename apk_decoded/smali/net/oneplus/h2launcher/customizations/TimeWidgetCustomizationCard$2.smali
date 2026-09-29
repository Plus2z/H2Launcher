.class Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;
.super Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;
.source "TimeWidgetCustomizationCard.java"


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
    .line 49
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-direct {p0}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v0, 0x1

    .line 52
    iget v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->mCurrentPosition:I

    if-eq p1, v1, :cond_2

    .line 53
    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    .line 55
    .local v0, "oldPosition":I
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$500(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;I)V

    .line 56
    if-eqz p1, :cond_1

    .line 57
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-static {v2}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$100(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;)[Landroid/view/View;

    move-result-object v2

    aget-object v2, v2, p1

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->access$300(Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;Landroid/view/View;)V

    .line 59
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard$2;->this$0:Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/customizations/TimeWidgetCustomizationCard;->toggleLockScreenTimeWidgetTiles(I)V

    .line 61
    .end local v0    # "oldPosition":I
    :cond_2
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/customizations/WallpaperPreview$OnPageChangeListenerAdapter;->onPageSelected(I)V

    .line 62
    return-void
.end method
