.class Lcom/crashlytics/android/core/MiddleOutStrategy;
.super Ljava/lang/Object;
.source "MiddleOutStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final trimmedSize:I


# direct methods
.method public constructor <init>(I)V
    .locals 0
    .param p1, "trimmedSize"    # I

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    iput p1, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    .line 17
    return-void
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 6
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    const/4 v5, 0x0

    .line 21
    array-length v3, p1

    iget v4, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    if-gt v3, v4, :cond_0

    .line 32
    .end local p1    # "stacktrace":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object p1

    .line 26
    .restart local p1    # "stacktrace":[Ljava/lang/StackTraceElement;
    :cond_0
    iget v3, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    div-int/lit8 v0, v3, 0x2

    .line 27
    .local v0, "backHalf":I
    iget v3, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    sub-int v1, v3, v0

    .line 29
    .local v1, "frontHalf":I
    iget v3, p0, Lcom/crashlytics/android/core/MiddleOutStrategy;->trimmedSize:I

    new-array v2, v3, [Ljava/lang/StackTraceElement;

    .line 30
    .local v2, "trimmed":[Ljava/lang/StackTraceElement;
    invoke-static {p1, v5, v2, v5, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 31
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, v3, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object p1, v2

    .line 32
    goto :goto_0
.end method
