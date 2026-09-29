.class Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;
.super Ljava/lang/Object;
.source "BaseViewPager.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/BaseViewPager$CardOperation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;->gatherSaveCustomizationTasks()Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

.field final synthetic val$tasks:Ljava/util/List;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseViewPager;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    .prologue
    .line 59
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;->this$0:Lnet/oneplus/h2launcher/customizations/BaseViewPager;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;->val$tasks:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public perform(ILnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "card"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 62
    invoke-virtual {p2}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->getSaveCustomizationTask()Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;

    move-result-object v0

    .line 63
    .local v0, "task":Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$SaveCustomizationTask;
    if-eqz v0, :cond_0

    .line 64
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$2;->val$tasks:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    :cond_0
    return-void
.end method
