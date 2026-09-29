.class final enum Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
.super Ljava/lang/Enum;
.source "WallpaperColorCustomizationCard.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "Component"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

.field public static final enum BLUR_SWITCH:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

.field public static final enum CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

.field public static final enum CHANGE_COLOR_BUTTON:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 364
    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    const-string v1, "CHANGE_COLOR_BUTTON"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CHANGE_COLOR_BUTTON:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    new-instance v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    const-string v1, "BLUR_SWITCH"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->BLUR_SWITCH:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CHANGE_COLOR_BUTTON:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->CARD:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->BLUR_SWITCH:Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->$VALUES:[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 364
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 364
    const-class v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->$VALUES:[Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/customizations/WallpaperColorCustomizationCard$Component;

    return-object v0
.end method
