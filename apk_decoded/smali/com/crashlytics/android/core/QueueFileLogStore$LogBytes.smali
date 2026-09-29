.class public Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;
.super Ljava/lang/Object;
.source "QueueFileLogStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/crashlytics/android/core/QueueFileLogStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "LogBytes"
.end annotation


# instance fields
.field public final bytes:[B

.field public final offset:I

.field final synthetic this$0:Lcom/crashlytics/android/core/QueueFileLogStore;


# direct methods
.method public constructor <init>(Lcom/crashlytics/android/core/QueueFileLogStore;[BI)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/core/QueueFileLogStore;
    .param p2, "bytes"    # [B
    .param p3, "offset"    # I

    .prologue
    .line 42
    iput-object p1, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->this$0:Lcom/crashlytics/android/core/QueueFileLogStore;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p2, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->bytes:[B

    .line 44
    iput p3, p0, Lcom/crashlytics/android/core/QueueFileLogStore$LogBytes;->offset:I

    .line 45
    return-void
.end method
