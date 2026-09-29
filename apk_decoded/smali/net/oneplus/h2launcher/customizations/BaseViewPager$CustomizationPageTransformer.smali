.class public Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomizationPageTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .prologue
    .line 215
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 4
    .param p1, "page"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    const/high16 v3, 0x3f000000    # 0.5f

    const/high16 v2, 0x3f800000    # 1.0f

    const/4 v1, 0x0

    .line 219
    const/high16 v0, -0x40800000    # -1.0f

    cmpg-float v0, p2, v0

    if-gez v0, :cond_0

    .line 220
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    .line 230
    :goto_0
    return-void

    .line 221
    :cond_0
    cmpg-float v0, p2, v1

    if-gtz v0, :cond_1

    .line 222
    mul-float v0, v3, p2

    add-float/2addr v0, v2

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->access$000(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Landroid/view/View;F)V

    goto :goto_0

    .line 224
    :cond_1
    cmpg-float v0, p2, v2

    if-gtz v0, :cond_2

    .line 225
    mul-float v0, v3, p2

    sub-float v0, v2, v0

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 226
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$CustomizationPageTransformer;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager;->access$000(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Landroid/view/View;F)V

    goto :goto_0

    .line 228
    :cond_2
    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    goto :goto_0
.end method
