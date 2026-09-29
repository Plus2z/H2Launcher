.class public final enum Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
.super Ljava/lang/Enum;
.source "BaseCardContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/customizations/BaseCardContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

.field public static final enum INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

.field public static final enum VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 376
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    const-string v1, "VISIBLE"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 377
    new-instance v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    .line 375
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->VISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->INVISIBLE:Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    aput-object v1, v0, v3

    sput-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->$VALUES:[Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

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
    .line 375
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 375
    const-class v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;
    .locals 1

    .prologue
    .line 375
    sget-object v0, Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->$VALUES:[Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/customizations/BaseCardContainer$State;

    return-object v0
.end method
