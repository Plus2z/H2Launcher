.class Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;->notifySystemOnLowMemory(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

.field final synthetic val$level:I


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;I)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .prologue
    .line 115
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    iput p2, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;->val$level:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(ILnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 1
    .param p1, "index"    # I
    .param p2, "card"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 118
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$6;->val$level:I

    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->trimMemory(I)V

    .line 119
    return-void
.end method
