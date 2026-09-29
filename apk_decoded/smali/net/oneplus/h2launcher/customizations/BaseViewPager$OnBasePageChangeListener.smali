.class public Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$OnPageChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "OnBasePageChangeListener"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .prologue
    .line 233
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageScrollStateChanged(I)V
    .locals 2
    .param p1, "state"    # I

    .prologue
    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    new-instance v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener$1;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener$1;-><init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager$OnBasePageChangeListener;)V

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->access$100(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;)V

    .line 258
    :cond_0
    return-void
.end method

.method public onPageScrolled(IFI)V
    .locals 0
    .param p1, "position"    # I
    .param p2, "positionOffset"    # F
    .param p3, "positionOffsetPixels"    # I

    .prologue
    .line 238
    return-void
.end method

.method public onPageSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 243
    return-void
.end method
