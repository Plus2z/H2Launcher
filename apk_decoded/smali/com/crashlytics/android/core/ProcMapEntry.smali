.class Lcom/crashlytics/android/core/ProcMapEntry;
.super Ljava/lang/Object;
.source "ProcMapEntry.java"


# instance fields
.field public final address:J

.field public final path:Ljava/lang/String;

.field public final perms:Ljava/lang/String;

.field public final size:J


# direct methods
.method public constructor <init>(JJLjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "address"    # J
    .param p3, "size"    # J
    .param p5, "perms"    # Ljava/lang/String;
    .param p6, "path"    # Ljava/lang/String;

    .prologue
    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput-wide p1, p0, Lcom/crashlytics/android/core/ProcMapEntry;->address:J

    .line 30
    iput-wide p3, p0, Lcom/crashlytics/android/core/ProcMapEntry;->size:J

    .line 31
    iput-object p5, p0, Lcom/crashlytics/android/core/ProcMapEntry;->perms:Ljava/lang/String;

    .line 32
    iput-object p6, p0, Lcom/crashlytics/android/core/ProcMapEntry;->path:Ljava/lang/String;

    .line 33
    return-void
.end method
