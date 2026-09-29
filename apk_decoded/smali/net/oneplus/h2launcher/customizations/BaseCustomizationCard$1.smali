.class Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;
.super Ljava/lang/Object;
.source "BaseCustomizationCard.java"

# interfaces
.implements Lnet/oneplus/h2launcher/customizations/ScrollableViewHelper$OnScrollListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    .prologue
    .line 98
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScroll(I)V
    .locals 2
    .param p1, "scrollY"    # I

    .prologue
    .line 101
    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard$1;->this$0:Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;->access$000(Lnet/oneplus/h2launcher/customizations/BaseCustomizationCard;Z)V

    .line 102
    return-void

    .line 101
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
