.class Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;
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
    name = "ContactHistoryComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lnet/oneplus/h2launcher/Stats$ContactHistory;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;)V
    .locals 0

    .prologue
    .line 1116
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1118
    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1114
    check-cast p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;

    check-cast p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/Stats$ContactHistoryComparator;->compare(Lnet/oneplus/h2launcher/Stats$ContactHistory;Lnet/oneplus/h2launcher/Stats$ContactHistory;)I

    move-result v0

    return v0
.end method

.method public compare(Lnet/oneplus/h2launcher/Stats$ContactHistory;Lnet/oneplus/h2launcher/Stats$ContactHistory;)I
    .locals 6
    .param p1, "contact1"    # Lnet/oneplus/h2launcher/Stats$ContactHistory;
    .param p2, "contact2"    # Lnet/oneplus/h2launcher/Stats$ContactHistory;

    .prologue
    .line 1122
    const/4 v0, 0x0

    .line 1123
    .local v0, "result":I
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    if-le v1, v2, :cond_1

    .line 1124
    const/4 v0, -0x1

    .line 1134
    :cond_0
    :goto_0
    return v0

    .line 1125
    :cond_1
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    if-ge v1, v2, :cond_2

    .line 1126
    const/4 v0, 0x1

    goto :goto_0

    .line 1127
    :cond_2
    iget v1, p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    iget v2, p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    if-ne v1, v2, :cond_0

    .line 1128
    iget-wide v2, p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mContactsHistoryTime:J

    iget-wide v4, p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mContactsHistoryTime:J

    cmp-long v1, v2, v4

    if-lez v1, :cond_3

    .line 1129
    const/4 v0, -0x1

    goto :goto_0

    .line 1130
    :cond_3
    iget-wide v2, p1, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mContactsHistoryTime:J

    iget-wide v4, p2, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mContactsHistoryTime:J

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 1131
    const/4 v0, 0x1

    goto :goto_0
.end method
