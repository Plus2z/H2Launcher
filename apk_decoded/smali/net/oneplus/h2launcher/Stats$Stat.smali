.class public Lnet/oneplus/h2launcher/Stats$Stat;
.super Ljava/lang/Object;
.source "Stats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/Stats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Stat"
.end annotation


# instance fields
.field public componentName:Landroid/content/ComponentName;

.field public id:J

.field public intentStr:Ljava/lang/String;

.field public itemType:I

.field launchCount:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/Stats;

.field public user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Stats;Ljava/lang/String;IIJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Stats;
    .param p2, "intentStr"    # Ljava/lang/String;
    .param p3, "launchCount"    # I
    .param p4, "itemType"    # I
    .param p5, "id"    # J
    .param p7, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .prologue
    .line 734
    iput-object p1, p0, Lnet/oneplus/h2launcher/Stats$Stat;->this$0:Lnet/oneplus/h2launcher/Stats;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 729
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/Stats$Stat;->launchCount:I

    .line 735
    iput-object p2, p0, Lnet/oneplus/h2launcher/Stats$Stat;->intentStr:Ljava/lang/String;

    .line 736
    invoke-virtual {p1, p2}, Lnet/oneplus/h2launcher/Stats;->getComponentFromIntentString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    .line 737
    iput p3, p0, Lnet/oneplus/h2launcher/Stats$Stat;->launchCount:I

    .line 738
    iput p4, p0, Lnet/oneplus/h2launcher/Stats$Stat;->itemType:I

    .line 739
    iput-wide p5, p0, Lnet/oneplus/h2launcher/Stats$Stat;->id:J

    .line 740
    iput-object p7, p0, Lnet/oneplus/h2launcher/Stats$Stat;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 741
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 745
    if-ne p0, p1, :cond_1

    .line 751
    :cond_0
    :goto_0
    return v1

    .line 746
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_3

    :cond_2
    move v1, v2

    goto :goto_0

    :cond_3
    move-object v0, p1

    .line 748
    check-cast v0, Lnet/oneplus/h2launcher/Stats$Stat;

    .line 750
    .local v0, "stat":Lnet/oneplus/h2launcher/Stats$Stat;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    if-eqz v3, :cond_5

    iget-object v3, p0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    iget-object v4, v0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    .line 751
    invoke-virtual {v3, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_4
    move v1, v2

    goto :goto_0

    :cond_5
    iget-object v3, v0, Lnet/oneplus/h2launcher/Stats$Stat;->componentName:Landroid/content/ComponentName;

    if-nez v3, :cond_4

    goto :goto_0
.end method
