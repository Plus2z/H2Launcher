.class public final enum Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
.super Ljava/lang/Enum;
.source "StyleConfigurationInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OptionCards"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

.field public static final enum SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

.field public static final enum STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

.field public static final enum UNDEFINED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;


# instance fields
.field private mCardType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 27
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    const-string v1, "SIMPLIFIED"

    const-string v2, "Simplified"

    invoke-direct {v0, v1, v3, v2}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    .line 28
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    const-string v1, "STANDARD"

    const-string v2, "Standard"

    invoke-direct {v0, v1, v4, v2}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    .line 29
    new-instance v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    const-string v1, "UNDEFINED"

    const-string v2, "Undefined"

    invoke-direct {v0, v1, v5, v2}, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->UNDEFINED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    .line 26
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->SIMPLIFIED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->STANDARD:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->UNDEFINED:Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    aput-object v1, v0, v5

    sput-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->$VALUES:[Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p3, "cardType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 34
    iput-object p3, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->mCardType:Ljava/lang/String;

    .line 35
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->$VALUES:[Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;

    return-object v0
.end method


# virtual methods
.method public getType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleConfigurationInfo$OptionCards;->mCardType:Ljava/lang/String;

    return-object v0
.end method
