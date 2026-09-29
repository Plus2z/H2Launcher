.class final enum Lnet/oneplus/h2launcher/Workspace$State;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4018
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/Workspace$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

.field public static final enum WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;


# instance fields
.field private final mBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 204
    new-instance v1, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v2, "NORMAL"

    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    :goto_0
    invoke-direct {v1, v2, v4, v0}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    .line 207
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "NORMAL_HIDDEN"

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v5, v2}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    .line 208
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "SPRING_LOADED"

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->DROP_TARGET:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v6, v2}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    .line 209
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "OVERVIEW"

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v7, v2}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    .line 210
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "OVERVIEW_HIDDEN"

    sget-object v2, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v8, v2}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    .line 211
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "CUSTOMIZATIONS"

    const/4 v2, 0x5

    sget-object v3, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 212
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "SHRUNKEN_ALL_APPS"

    const/4 v2, 0x6

    sget-object v3, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 213
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "WALLPAPERS"

    const/4 v2, 0x7

    sget-object v3, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    .line 214
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$State;

    const-string v1, "ICON_REARRANGEMENT"

    const/16 v2, 0x8

    sget-object v3, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/Workspace$State;-><init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    .line 203
    const/16 v0, 0x9

    new-array v0, v0, [Lnet/oneplus/h2launcher/Workspace$State;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->SPRING_LOADED:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v1, v0, v6

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v1, v0, v7

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$State;->OVERVIEW_HIDDEN:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->CUSTOMIZATIONS:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->SHRUNKEN_ALL_APPS:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->WALLPAPERS:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lnet/oneplus/h2launcher/Workspace$State;->ICON_REARRANGEMENT:Lnet/oneplus/h2launcher/Workspace$State;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$State;->$VALUES:[Lnet/oneplus/h2launcher/Workspace$State;

    return-void

    .line 204
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    goto/16 :goto_0
.end method

.method private constructor <init>(Ljava/lang/String;ILnet/oneplus/h2launcher/SearchDropTargetBar$State;)V
    .locals 0
    .param p3, "searchBarState"    # Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lnet/oneplus/h2launcher/SearchDropTargetBar$State;",
            ")V"
        }
    .end annotation

    .prologue
    .line 218
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 219
    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$State;->mBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 220
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/Workspace$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Lnet/oneplus/h2launcher/Workspace$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Workspace$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/Workspace$State;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->$VALUES:[Lnet/oneplus/h2launcher/Workspace$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/Workspace$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/Workspace$State;

    return-object v0
.end method


# virtual methods
.method public getSearchDropTargetBarState()Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    .locals 1

    .prologue
    .line 223
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$State;->NORMAL:Lnet/oneplus/h2launcher/Workspace$State;

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/Workspace$State;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 229
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showSearchBar()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 234
    :goto_0
    return-object v0

    .line 229
    :cond_0
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    goto :goto_0

    .line 234
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$State;->mBarState:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    goto :goto_0
.end method
