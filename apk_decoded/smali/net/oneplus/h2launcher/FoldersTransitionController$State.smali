.class public final enum Lnet/oneplus/h2launcher/FoldersTransitionController$State;
.super Ljava/lang/Enum;
.source "FoldersTransitionController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FoldersTransitionController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lnet/oneplus/h2launcher/FoldersTransitionController$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/oneplus/h2launcher/FoldersTransitionController$State;

.field public static final enum FOLDER:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

.field public static final enum WORKSPACE:Lnet/oneplus/h2launcher/FoldersTransitionController$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 307
    new-instance v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    const-string v1, "FOLDER"

    invoke-direct {v0, v1, v2}, Lnet/oneplus/h2launcher/FoldersTransitionController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->FOLDER:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    new-instance v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    const-string v1, "WORKSPACE"

    invoke-direct {v0, v1, v3}, Lnet/oneplus/h2launcher/FoldersTransitionController$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->WORKSPACE:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    .line 306
    const/4 v0, 0x2

    new-array v0, v0, [Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    sget-object v1, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->FOLDER:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    aput-object v1, v0, v2

    sget-object v1, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->WORKSPACE:Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    aput-object v1, v0, v3

    sput-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->$VALUES:[Lnet/oneplus/h2launcher/FoldersTransitionController$State;

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
    .line 306
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/oneplus/h2launcher/FoldersTransitionController$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 306
    const-class v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    return-object v0
.end method

.method public static values()[Lnet/oneplus/h2launcher/FoldersTransitionController$State;
    .locals 1

    .prologue
    .line 306
    sget-object v0, Lnet/oneplus/h2launcher/FoldersTransitionController$State;->$VALUES:[Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    invoke-virtual {v0}, [Lnet/oneplus/h2launcher/FoldersTransitionController$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/oneplus/h2launcher/FoldersTransitionController$State;

    return-object v0
.end method
