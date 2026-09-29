.class public final enum Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
.super Ljava/lang/Enum;
.source "SearchDropTargetBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/SearchDropTargetBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/SearchDropTargetBar$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

.field public static final enum DROP_TARGET:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

.field public static final enum INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

.field public static final enum SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;


# instance fields
.field private final mDropTargetBarAlpha:F

.field private final mSearchBarAlpha:F


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 41
    new-instance v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const-string v1, "INVISIBLE"

    invoke-direct {v0, v1, v4, v2, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 42
    new-instance v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const-string v1, "SEARCH_BAR"

    invoke-direct {v0, v1, v5, v3, v2}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 43
    new-instance v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    const-string v1, "DROP_TARGET"

    invoke-direct {v0, v1, v6, v2, v3}, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;-><init>(Ljava/lang/String;IFF)V

    sput-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->DROP_TARGET:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    .line 40
    const/4 v0, 0x3

    new-array v0, v0, [Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->INVISIBLE:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->SEARCH_BAR:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->DROP_TARGET:Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    aput-object v1, v0, v6

    sput-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->$VALUES:[Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IFF)V
    .locals 0
    .param p3, "sbAlpha"    # F
    .param p4, "dtbAlpha"    # F
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(FF)V"
        }
    .end annotation

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 49
    iput p3, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->mSearchBarAlpha:F

    .line 50
    iput p4, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->mDropTargetBarAlpha:F

    .line 51
    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 40
    const-class v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/SearchDropTargetBar$State;
    .locals 1

    .prologue
    .line 40
    sget-object v0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->$VALUES:[Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/SearchDropTargetBar$State;

    return-object v0
.end method


# virtual methods
.method getDropTargetBarAlpha()F
    .locals 1

    .prologue
    .line 58
    iget v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->mDropTargetBarAlpha:F

    return v0
.end method

.method getSearchBarAlpha()F
    .locals 1

    .prologue
    .line 54
    iget v0, p0, Lnet/oneplus/h2launcher/SearchDropTargetBar$State;->mSearchBarAlpha:F

    return v0
.end method
