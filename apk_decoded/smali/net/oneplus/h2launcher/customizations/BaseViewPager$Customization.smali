.class public final enum Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
.super Ljava/lang/Enum;
.source "BaseViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401c
    name = "Customization"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum APP_DRAWER:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum COLOR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum SEARCH_BAR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum TIME_WIDGET:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

.field public static final enum WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;


# instance fields
.field private mTitleResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 196
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "SEARCH_BAR"

    const v2, 0x7f0b002c

    invoke-direct {v0, v1, v4, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->SEARCH_BAR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 197
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "ICONS"

    const v2, 0x7f0b0045

    invoke-direct {v0, v1, v5, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 198
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "APP_DRAWER"

    const v2, 0x7f0b0042

    invoke-direct {v0, v1, v6, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->APP_DRAWER:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 199
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "WALLPAPERS"

    const v2, 0x7f0b0047

    invoke-direct {v0, v1, v7, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 200
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "COLOR"

    const v2, 0x7f0b0043

    invoke-direct {v0, v1, v8, v2}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->COLOR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 201
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "TIME_WIDGET"

    const/4 v2, 0x5

    const v3, 0x7f0b0046

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->TIME_WIDGET:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 202
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    const-string v1, "ICON_REARRANGEMENT"

    const/4 v2, 0x6

    const v3, 0x7f0b0044

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    .line 195
    const/4 v0, 0x7

    new-array v0, v0, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->SEARCH_BAR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICONS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->APP_DRAWER:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v1, v0, v6

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->WALLPAPERS:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v1, v0, v7

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->COLOR:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->TIME_WIDGET:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->$VALUES:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "titleResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 206
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 207
    iput p3, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->mTitleResId:I

    .line 208
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 195
    const-class v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;
    .locals 1

    .prologue
    .line 195
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->$VALUES:[Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;

    return-object v0
.end method


# virtual methods
.method public getTitleResId()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lnet/oneplus/h2launcher/customizations/BaseViewPager$Customization;->mTitleResId:I

    return v0
.end method
