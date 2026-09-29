.class Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;
.super Ljava/lang/Object;
.source "Stats.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgHistoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/Stats$PkgHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;)V
    .locals 0

    .prologue
    .line 1092
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1094
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1090
    check-cast p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;

    check-cast p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Stats$PkgHistoryComparator;->compare(Lnet/oneplus/h2launcher/Stats$PkgHistory;Lnet/oneplus/h2launcher/Stats$PkgHistory;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/Stats$PkgHistory;Lnet/oneplus/h2launcher/Stats$PkgHistory;)I
    .locals 6
    .param p1, "pkg1"    # Lnet/oneplus/h2launcher/Stats$PkgHistory;
    .param p2, "pkg2"    # Lnet/oneplus/h2launcher/Stats$PkgHistory;

    .prologue
    .line 1098
    const/4 v0, 0x0

    .line 1099
    .local v0, "result":I
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    if-le v1, v2, :cond_1

    .line 1100
    const/4 v0, -0x1

    .line 1110
    :cond_0
    :goto_0
    return v0

    .line 1101
    :cond_1
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    if-ge v1, v2, :cond_2

    .line 1102
    const/4 v0, 0x1

    goto :goto_0

    .line 1103
    :cond_2
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    if-ne v1, v2, :cond_0

    .line 1104
    iget-wide v2, p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mAppsHistoryTime:J

    iget-wide v4, p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mAppsHistoryTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1105
    const/4 v0, -0x1

    goto :goto_0

    .line 1106
    :cond_3
    iget-wide v2, p1, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mAppsHistoryTime:J

    iget-wide v4, p2, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mAppsHistoryTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1107
    const/4 v0, 0x1

    goto :goto_0
.end method
