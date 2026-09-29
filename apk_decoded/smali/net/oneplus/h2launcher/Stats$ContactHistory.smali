.class Lnet/oneplus/h2launcher/Stats$ContactHistory;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactHistory"
.end annotation


# instance fields
.field mContactsHistoryTime:J

.field mDisplayName:Ljava/lang/String;

.field mLaunchCount:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;JI)V
    .locals 1
    .param p2, "displayName"    # Ljava/lang/String;
    .param p3, "historyTime"    # J
    .param p5, "launchCount"    # I

    .prologue
    .line 1083
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$ContactHistory;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1084
    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mDisplayName:Ljava/lang/String;

    .line 1085
    iput-wide p3, p0, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mContactsHistoryTime:J

    .line 1086
    iput p5, p0, Lnet/oneplus/h2launcher/Stats$ContactHistory;->mLaunchCount:I

    .line 1087
    return-void
.end method
