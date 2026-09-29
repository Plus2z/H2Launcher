.class Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;->sortWorkspaceItemsSpatially(Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

.field final synthetic val$profile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;Lnet/oneplus/h2launcher/InvariantDeviceProfile;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    .prologue
    .line 3466
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;->this$1:Lnet/oneplus/h2launcher/LauncherModel$LoaderTask;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;->val$profile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 3466
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 16
    .param p1, "lhs"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "rhs"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 3469
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;->val$profile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v2, v10, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    .line 3470
    .local v2, "cellCountX":I
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/LauncherModel$LoaderTask$6;->val$profile:Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    iget v3, v10, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    .line 3471
    .local v3, "cellCountY":I
    mul-int v5, v2, v3

    .line 3472
    .local v5, "screenOffset":I
    mul-int/lit8 v4, v5, 0x6

    .line 3473
    .local v4, "containerOffset":I
    move-object/from16 v0, p1

    iget-wide v10, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    int-to-long v12, v4

    mul-long/2addr v10, v12

    move-object/from16 v0, p1

    iget-wide v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    int-to-long v14, v5

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-object/from16 v0, p1

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    mul-int/2addr v12, v2

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-object/from16 v0, p1

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    int-to-long v12, v12

    add-long v6, v10, v12

    .line 3475
    .local v6, "lr":J
    move-object/from16 v0, p2

    iget-wide v10, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    int-to-long v12, v4

    mul-long/2addr v10, v12

    move-object/from16 v0, p2

    iget-wide v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->screenId:J

    int-to-long v14, v5

    mul-long/2addr v12, v14

    add-long/2addr v10, v12

    move-object/from16 v0, p2

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellY:I

    mul-int/2addr v12, v2

    int-to-long v12, v12

    add-long/2addr v10, v12

    move-object/from16 v0, p2

    iget v12, v0, Lnet/oneplus/h2launcher/ItemInfo;->cellX:I

    int-to-long v12, v12

    add-long v8, v10, v12

    .line 3477
    .local v8, "rr":J
    sub-long v10, v6, v8

    long-to-int v10, v10

    return v10
.end method
