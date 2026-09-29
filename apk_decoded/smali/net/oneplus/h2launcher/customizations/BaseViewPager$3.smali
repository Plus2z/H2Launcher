.class Lnet/oneplus/h2launcher/customizations/BaseViewPager$3;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifyLeavingCustomizations()V
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
    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$3;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(ILnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 0
    .param p1, "index"    # I
    .param p2, "card"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 78
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->onLeavingCustomization()V

    .line 79
    return-void
.end method
