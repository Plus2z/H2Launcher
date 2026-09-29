.class Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;
.super Ljava/lang/Object;
.source "WallpaperColorCustomizationCard.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->setupContentView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    .prologue
    .line 177
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 180
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$800(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Landroid/widget/Switch;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$6;->this$0:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;

    invoke-static {v0}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;->access$800(Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;)Landroid/widget/Switch;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Switch;->toggle()V

    .line 183
    :cond_0
    return-void
.end method
