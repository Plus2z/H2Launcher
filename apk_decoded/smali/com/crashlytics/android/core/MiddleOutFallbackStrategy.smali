.class Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;
.super Ljava/lang/Object;
.source "MiddleOutFallbackStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maximumStackSize:I

.field private final middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

.field private final trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# direct methods
.method public varargs constructor <init>(I[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;)V
    .locals 1
    .param p1, "maximumStackSize"    # I
    .param p2, "strategies"    # [Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput p1, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    .line 16
    iput-object p2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    .line 17
    new-instance v0, Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-direct {v0, p1}, Lcom/crashlytics/android/core/MiddleOutStrategy;-><init>(I)V

    iput-object v0, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    .line 18
    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 7
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 22
    array-length v2, p1

    iget v3, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v2, v3, :cond_0

    .line 39
    .end local p1    # "stacktrace":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object p1

    .line 26
    .restart local p1    # "stacktrace":[Ljava/lang/StackTraceElement;
    :cond_0
    move-object v1, p1

    .line 27
    .local v1, "trimmed":[Ljava/lang/StackTraceElement;
    iget-object v3, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->trimmingStrategies:[Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;

    array-length v4, v3

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v4, :cond_1

    aget-object v0, v3, v2

    .line 28
    .local v0, "strategy":Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    array-length v5, v1

    iget v6, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-gt v5, v6, :cond_3

    .line 35
    .end local v0    # "strategy":Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    :cond_1
    array-length v2, v1

    iget v3, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->maximumStackSize:I

    if-le v2, v3, :cond_2

    .line 36
    iget-object v2, p0, Lcom/crashlytics/android/core/MiddleOutFallbackStrategy;->middleOutStrategy:Lcom/crashlytics/android/core/MiddleOutStrategy;

    invoke-virtual {v2, v1}, Lcom/crashlytics/android/core/MiddleOutStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    :cond_2
    move-object p1, v1

    .line 39
    goto :goto_0

    .line 32
    .restart local v0    # "strategy":Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;
    :cond_3
    invoke-interface {v0, p1}, Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;->getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;

    move-result-object v1

    .line 27
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method
