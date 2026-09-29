.class Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "IconCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ViewHolder"
.end annotation


# instance fields
.field icon:Landroid/widget/ImageView;

.field selection:Lnet/oneplus/h2launcher/customizations/Selection;

.field final synthetic this$1:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

.field title:Landroid/widget/TextView;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 455
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->this$1:Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 456
    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->selection:Lnet/oneplus/h2launcher/customizations/Selection;

    .line 457
    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 458
    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;->title:Landroid/widget/TextView;

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$1;

    .prologue
    .line 455
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter$ViewHolder;-><init>(Lnet/oneplus/h2launcher/customizations/IconCustomizationCard$IconPackAdapter;)V

    return-void
.end method
