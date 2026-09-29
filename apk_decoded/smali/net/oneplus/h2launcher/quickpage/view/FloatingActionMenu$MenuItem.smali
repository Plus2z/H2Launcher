.class public final enum Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;
.super Ljava/lang/Enum;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "MenuItem"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum APPS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum CONTACTS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum MEMO:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

.field public static final enum WIDGETS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;


# instance fields
.field index:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 39
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "WIDGETS"

    invoke-direct {v0, v1, v4, v4}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->WIDGETS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "NOTE"

    invoke-direct {v0, v1, v5, v5}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "CALENDAR"

    invoke-direct {v0, v1, v6, v6}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "CARD"

    invoke-direct {v0, v1, v7, v7}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "APPS"

    invoke-direct {v0, v1, v8, v8}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->APPS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "CONTACTS"

    const/4 v2, 0x5

    const/4 v3, 0x5

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CONTACTS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    const-string v1, "MEMO"

    const/4 v2, 0x6

    const/4 v3, 0x6

    invoke-direct {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->MEMO:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    .line 38
    const/4 v0, 0x7

    new-array v0, v0, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    sget-object v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->WIDGETS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v1, v0, v4

    sget-object v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->NOTE:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v1, v0, v5

    sget-object v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CALENDAR:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v1, v0, v6

    sget-object v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CARD:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v1, v0, v7

    sget-object v1, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->APPS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->CONTACTS:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->MEMO:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    aput-object v2, v0, v1

    sput-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->$VALUES:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 43
    iput p3, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->index:I

    .line 44
    return-void
.end method

.method public static size()I
    .locals 1

    .prologue
    .line 47
    invoke-static {}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->values()[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 38
    const-class v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;
    .locals 1

    .prologue
    .line 38
    sget-object v0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->$VALUES:[Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$MenuItem;

    return-object v0
.end method
