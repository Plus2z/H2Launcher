.class public final enum Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
.super Ljava/lang/Enum;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/config/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AppDrawerSizeCatalog"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

.field public static final enum LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

.field public static final enum SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

.field public static final enum STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;


# instance fields
.field private size:I


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 59
    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    const-string v1, "SMALL"

    invoke-direct {v0, v1, v3, v6}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 60
    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    const-string v1, "STANDARD"

    const/4 v2, 0x4

    invoke-direct {v0, v1, v4, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    const-string v1, "LARGE"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v5, v2}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    .line 58
    new-array v0, v6, [Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    aput-object v1, v0, v5

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->$VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 65
    iput p3, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->size:I

    .line 66
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 58
    const-class v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;
    .locals 1

    .prologue
    .line 58
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->$VALUES:[Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    return-object v0
.end method


# virtual methods
.method public getAppDrawerSize()I
    .locals 1

    .prologue
    .line 69
    iget v0, p0, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->size:I

    return v0
.end method
