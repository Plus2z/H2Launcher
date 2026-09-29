.class public final enum Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
.super Ljava/lang/Enum;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/config/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SearchBarStyle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

.field public static final enum DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

.field public static final enum HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

.field public static final enum TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 93
    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    const-string v1, "TRANSPARENT"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    const-string v1, "HIDDEN"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->$VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

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
    .line 93
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 93
    const-class v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->$VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    return-object v0
.end method
