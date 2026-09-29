.class Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;
.super Ljava/lang/Object;
.source "CrashPromptDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/CrashPromptDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "OptInLatch"
.end annotation


# instance fields
.field private final latch:Ljava/util/concurrent/CountDownLatch;

.field private send:Z


# direct methods
.method private constructor <init>()V
    .locals 2

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 26
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    return-void
.end method

.method synthetic constructor <init>(Lcom/crashlytics/android/core/CrashPromptDialog$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/crashlytics/android/core/CrashPromptDialog$1;

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;-><init>()V

    return-void
.end method


# virtual methods
.method await()V
    .locals 1

    .prologue
    .line 39
    :try_start_0
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 43
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method getOptIn()Z
    .locals 1

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    return v0
.end method

.method setOptIn(Z)V
    .locals 1
    .param p1, "optIn"    # Z

    .prologue
    .line 29
    iput-boolean p1, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->send:Z

    .line 30
    iget-object v0, p0, Lcom/crashlytics/android/core/CrashPromptDialog$OptInLatch;->latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 31
    return-void
.end method
