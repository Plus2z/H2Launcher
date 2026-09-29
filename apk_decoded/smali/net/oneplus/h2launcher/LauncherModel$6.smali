.class final Lnet/oneplus/h2launcher/LauncherModel$6;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfo(Lnet/oneplus/h2launcher/ItemInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$item:Lnet/oneplus/h2launcher/ItemInfo;

.field final synthetic val$itemId:J

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;


# direct methods
.method constructor <init>(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V
    .locals 1

    .prologue
    .line 726
    iput-wide p1, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$itemId:J

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 728
    sget-object v1, Lnet/oneplus/h2launcher/LauncherModel;->sBgLock:Ljava/lang/Object;

    monitor-enter v1

    .line 729
    :try_start_0
    iget-wide v2, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$itemId:J

    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$item:Lnet/oneplus/h2launcher/ItemInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/LauncherModel$6;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v2, v3, v0, v4}, Lnet/oneplus/h2launcher/LauncherModel;->checkItemInfoLocked(JLnet/oneplus/h2launcher/ItemInfo;[Ljava/lang/StackTraceElement;)V

    .line 730
    monitor-exit v1

    .line 731
    return-void

    .line 730
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
