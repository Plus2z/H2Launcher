.class final enum Lnet/oneplus/h2launcher/Launcher$State;
.super Ljava/lang/Enum;
.source "Launcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Launcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/Launcher$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum APPS:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum FOLDER:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum NONE:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

.field public static final enum WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 299
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->NONE:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "WORKSPACE"

    invoke-direct {v0, v1, v4}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v5}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "APPS_SPRING_LOADED"

    invoke-direct {v0, v1, v6}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "WIDGETS"

    invoke-direct {v0, v1, v7}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "WIDGETS_SPRING_LOADED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    .line 300
    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "CUSTOMIZATIONS"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "SHRUNKEN_ALLAPPS"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "WALLPAPER"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "SEARCH"

    const/16 v2, 0x9

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "ICON_REARRANGEMENT"

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    new-instance v0, Lnet/oneplus/h2launcher/Launcher$State;

    const-string v1, "FOLDER"

    const/16 v2, 0xb

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->FOLDER:Lnet/oneplus/h2launcher/Launcher$State;

    .line 299
    const/16 v0, 0xc

    new-array v0, v0, [Lnet/oneplus/h2launcher/Launcher$State;

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->NONE:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WORKSPACE:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->APPS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v1, v0, v6

    sget-object v1, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->WIDGETS_SPRING_LOADED:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->SHRUNKEN_ALLAPPS:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->WALLPAPER:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->SEARCH:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lnet/oneplus/h2launcher/Launcher$State;->FOLDER:Lnet/oneplus/h2launcher/Launcher$State;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/Launcher$State;->$VALUES:[Lnet/oneplus/h2launcher/Launcher$State;

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
    .line 299
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/Launcher$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 299
    const-class v0, Lnet/oneplus/h2launcher/Launcher$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Launcher$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/Launcher$State;
    .locals 1

    .prologue
    .line 299
    sget-object v0, Lnet/oneplus/h2launcher/Launcher$State;->$VALUES:[Lnet/oneplus/h2launcher/Launcher$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/Launcher$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/Launcher$State;

    return-object v0
.end method
