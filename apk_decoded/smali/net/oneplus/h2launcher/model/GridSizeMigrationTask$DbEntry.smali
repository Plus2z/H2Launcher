.class Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "GridSizeMigrationTask.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/model/GridSizeMigrationTask;
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
        "Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;",
        ">;"
    }
.end annotation


# instance fields
.field public weight:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 839
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    return-void
.end method


# virtual methods
.method public addToContentValues(Landroid/content/ContentValues;)V
    .locals 4
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 876
    const-string v0, "screen"

    iget-wide v2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 877
    const-string v0, "cellX"

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 878
    const-string v0, "cellY"

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 879
    const-string v0, "spanX"

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 880
    const-string v0, "spanY"

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 881
    return-void
.end method

.method public columnsSame(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)Z
    .locals 4
    .param p1, "org"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .prologue
    .line 871
    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->cellY:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    if-ne v0, v1, :cond_0

    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    if-ne v0, v1, :cond_0

    iget-wide v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

    iget-wide v2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->screenId:J

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
    .line 835
    check-cast p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->compareTo(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;)I
    .locals 3
    .param p1, "another"    # Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    .prologue
    const/4 v1, 0x4

    .line 856
    iget v0, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_1

    .line 857
    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_0

    .line 858
    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    iget v1, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    mul-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanX:I

    iget v2, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->spanY:I

    mul-int/2addr v1, v2

    sub-int/2addr v0, v1

    .line 866
    :goto_0
    return v0

    .line 860
    :cond_0
    const/4 v0, -0x1

    goto :goto_0

    .line 862
    :cond_1
    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->itemType:I

    if-ne v0, v1, :cond_2

    .line 863
    const/4 v0, 0x1

    goto :goto_0

    .line 866
    :cond_2
    iget v0, p1, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    invoke-static {v0, v1}, Ljava/lang/Float;->compare(FF)I

    move-result v0

    goto :goto_0
.end method

.method public copy()Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    .locals 2

    .prologue
    .line 842
    new-instance v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;-><init>()V

    .line 843
    .local v0, "entry":Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->copyFrom(Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 844
    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    iput v1, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->weight:F

    .line 845
    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    iput v1, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanX:I

    .line 846
    iget v1, p0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    iput v1, v0, Lnet/oneplus/h2launcher/model/GridSizeMigrationTask$DbEntry;->minSpanY:I

    .line 847
    return-object v0
.end method
