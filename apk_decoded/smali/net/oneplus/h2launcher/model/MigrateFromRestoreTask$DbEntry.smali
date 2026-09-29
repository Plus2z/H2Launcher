.class Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "MigrateFromRestoreTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DbEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/ItemInfo;",
        "Ljava/lang/Comparable",
        "<",
        "Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 687
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 724
    const-string v0, "screen"

    iget-wide v2, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 725
    const-string v0, "cellX"

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 726
    const-string v0, "cellY"

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 727
    const-string v0, "spanX"

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 728
    const-string v0, "spanY"

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 729
    return-void
.end method

.method public columnsSame(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)Z
    .locals 4
    .param p1, "org"    # Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .prologue
    .line 719
    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->cellY:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->screenId:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 683
    check-cast p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->compareTo(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;)I
    .locals 3
    .param p1, "another"    # Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    .prologue
    const/4 v1, 0x4

    .line 704
    iget v0, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_1

    .line 705
    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_0

    .line 706
    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    iget v1, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanX:I

    iget v2, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->spanY:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 714
    :goto_0
    return v0

    .line 708
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 710
    :cond_1
    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_2

    .line 711
    const/4 v0, 0x1

    goto :goto_0

    .line 714
    :cond_2
    iget v0, p1, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public copy()Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    .locals 2

    .prologue
    .line 690
    new-instance v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;-><init>()V

    .line 691
    .local v0, "entry":Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 692
    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    iput v1, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->weight:F

    .line 693
    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    iput v1, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanX:I

    .line 694
    iget v1, p0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    iput v1, v0, Lnet/oneplus/h2launcher/model/MigrateFromRestoreTask$DbEntry;->minSpanY:I

    .line 695
    return-object v0
.end method
