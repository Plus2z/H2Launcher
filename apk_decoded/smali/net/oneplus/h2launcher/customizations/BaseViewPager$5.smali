.class Lnet/oneplus/h2launcher/customizations/BaseViewPager$5;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyShowCustomizations()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .prologue
    .line 99
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$5;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(ILnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "card"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$5;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->getCurrentItem()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->setEnabled(Z)V

    .line 106
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onShowCustomization()V

    .line 107
    return-void

    .line 103
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
