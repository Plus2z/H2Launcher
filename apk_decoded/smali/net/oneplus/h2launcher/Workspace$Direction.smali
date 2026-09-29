.class public final enum Lnet/oneplus/h2launcher/Workspace$Direction;
.super Ljava/lang/Enum;
.source "Workspace.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Workspace;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Direction"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/Workspace$Direction;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/Workspace$Direction;

.field public static final enum X:Lnet/oneplus/h2launcher/Workspace$Direction;

.field public static final enum Y:Lnet/oneplus/h2launcher/Workspace$Direction;


# instance fields
.field private final viewProperty:Landroid/util/Property;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5396
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$Direction;

    const-string v1, "X"

    sget-object v2, Landroid/view/View;->TRANSLATION_X:Landroid/util/Property;

    invoke-direct {v0, v1, v3, v2}, Lnet/oneplus/h2launcher/Workspace$Direction;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$Direction;->X:Lnet/oneplus/h2launcher/Workspace$Direction;

    .line 5397
    new-instance v0, Lnet/oneplus/h2launcher/Workspace$Direction;

    const-string v1, "Y"

    sget-object v2, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    invoke-direct {v0, v1, v4, v2}, Lnet/oneplus/h2launcher/Workspace$Direction;-><init>(Ljava/lang/String;ILandroid/util/Property;)V

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$Direction;->Y:Lnet/oneplus/h2launcher/Workspace$Direction;

    .line 5395
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/oneplus/h2launcher/Workspace$Direction;

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$Direction;->X:Lnet/oneplus/h2launcher/Workspace$Direction;

    aput-object v1, v0, v3

    sget-object v1, Lnet/oneplus/h2launcher/Workspace$Direction;->Y:Lnet/oneplus/h2launcher/Workspace$Direction;

    aput-object v1, v0, v4

    sput-object v0, Lnet/oneplus/h2launcher/Workspace$Direction;->$VALUES:[Lnet/oneplus/h2launcher/Workspace$Direction;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILandroid/util/Property;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/Property",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Float;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5401
    .local p3, "viewProperty":Landroid/util/Property;, "Landroid/util/Property<Landroid/view/View;Ljava/lang/Float;>;"
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 5402
    iput-object p3, p0, Lnet/oneplus/h2launcher/Workspace$Direction;->viewProperty:Landroid/util/Property;

    .line 5403
    return-void
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/Workspace$Direction;)Landroid/util/Property;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/Workspace$Direction;

    .prologue
    .line 5395
    iget-object v0, p0, Lnet/oneplus/h2launcher/Workspace$Direction;->viewProperty:Landroid/util/Property;

    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/Workspace$Direction;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 5395
    const-class v0, Lnet/oneplus/h2launcher/Workspace$Direction;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Workspace$Direction;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/Workspace$Direction;
    .locals 1

    .prologue
    .line 5395
    sget-object v0, Lnet/oneplus/h2launcher/Workspace$Direction;->$VALUES:[Lnet/oneplus/h2launcher/Workspace$Direction;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/Workspace$Direction;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/Workspace$Direction;

    return-object v0
.end method
