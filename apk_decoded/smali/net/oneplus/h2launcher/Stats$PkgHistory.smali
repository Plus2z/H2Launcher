.class Lnet/oneplus/h2launcher/Stats$PkgHistory;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PkgHistory"
.end annotation


# instance fields
.field mAppsHistoryTime:J

.field mComponentName:Landroid/content/ComponentName;

.field mLaunchCount:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;Landroid/content/ComponentName;JI)V
    .locals 1
    .param p2, "componentName"    # Landroid/content/ComponentName;
    .param p3, "historyTime"    # J
    .param p5, "launchCount"    # I

    .prologue
    .line 1072
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$PkgHistory;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1073
    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mComponentName:Landroid/content/ComponentName;

    .line 1074
    iput-wide p3, p0, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mAppsHistoryTime:J

    .line 1075
    iput p5, p0, Lnet/oneplus/h2launcher/Stats$PkgHistory;->mLaunchCount:I

    .line 1076
    return-void
.end method
