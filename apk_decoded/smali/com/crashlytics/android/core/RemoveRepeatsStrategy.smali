.class Lcom/crashlytics/android/core/RemoveRepeatsStrategy;
.super Ljava/lang/Object;
.source "RemoveRepeatsStrategy.java"

# interfaces
.implements Lcom/crashlytics/android/core/StackTraceTrimmingStrategy;


# instance fields
.field private final maxRepetitions:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 14
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;-><init>(I)V

    .line 15
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maxRepetitions"    # I

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p1, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    .line 25
    return-void
.end method

.method private static isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z
    .locals 5
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "prevIndex"    # I
    .param p2, "currentIndex"    # I

    .prologue
    const/4 v2, 0x0

    .line 84
    sub-int v1, p2, p1

    .line 86
    .local v1, "windowSize":I
    add-int v3, p2, v1

    array-length v4, p0

    if-le v3, v4, :cond_1

    .line 95
    :cond_0
    :goto_0
    return v2

    .line 90
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_2

    .line 91
    add-int v3, p1, v0

    aget-object v3, p0, v3

    add-int v4, p2, v0

    aget-object v4, p0, v4

    invoke-virtual {v3, v4}, Ljava/lang/StackTraceElement;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 95
    :cond_2
    const/4 v2, 0x1

    goto :goto_0
.end method

.method private static trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;
    .locals 12
    .param p0, "stacktrace"    # [Ljava/lang/StackTraceElement;
    .param p1, "maxRepetitions"    # I

    .prologue
    const/4 v11, 0x0

    .line 47
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    .line 50
    .local v4, "mostRecentIndices":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/StackTraceElement;Ljava/lang/Integer;>;"
    array-length v10, p0

    new-array v0, v10, [Ljava/lang/StackTraceElement;

    .line 52
    .local v0, "buffer":[Ljava/lang/StackTraceElement;
    const/4 v8, 0x0

    .line 53
    .local v8, "trimmedLength":I
    const/4 v5, 0x1

    .line 54
    .local v5, "numRepeats":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v10, p0

    if-ge v3, v10, :cond_3

    .line 55
    move v2, v3

    .line 56
    .local v2, "currentIndex":I
    aget-object v1, p0, v3

    .line 57
    .local v1, "currentFrame":Ljava/lang/StackTraceElement;
    invoke-interface {v4, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    .line 58
    .local v6, "previousIndex":Ljava/lang/Integer;
    if-eqz v6, :cond_0

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    invoke-static {p0, v10, v3}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->isRepeatingSequence([Ljava/lang/StackTraceElement;II)Z

    move-result v10

    if-nez v10, :cond_1

    .line 60
    :cond_0
    const/4 v5, 0x1

    .line 61
    aget-object v10, p0, v3

    aput-object v10, v0, v8

    .line 62
    add-int/lit8 v8, v8, 0x1

    .line 73
    :goto_1
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v4, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 54
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 65
    :cond_1
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v10

    sub-int v9, v3, v10

    .line 66
    .local v9, "windowSize":I
    if-ge v5, p1, :cond_2

    .line 67
    invoke-static {p0, v3, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 68
    add-int/2addr v8, v9

    .line 69
    add-int/lit8 v5, v5, 0x1

    .line 71
    :cond_2
    add-int/lit8 v10, v9, -0x1

    add-int/2addr v3, v10

    goto :goto_1

    .line 77
    .end local v1    # "currentFrame":Ljava/lang/StackTraceElement;
    .end local v2    # "currentIndex":I
    .end local v6    # "previousIndex":Ljava/lang/Integer;
    .end local v9    # "windowSize":I
    :cond_3
    new-array v7, v8, [Ljava/lang/StackTraceElement;

    .line 78
    .local v7, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v10, v7

    invoke-static {v0, v11, v7, v11, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 79
    return-object v7
.end method


# virtual methods
.method public getTrimmedStackTrace([Ljava/lang/StackTraceElement;)[Ljava/lang/StackTraceElement;
    .locals 3
    .param p1, "stacktrace"    # [Ljava/lang/StackTraceElement;

    .prologue
    .line 29
    iget v1, p0, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->maxRepetitions:I

    invoke-static {p1, v1}, Lcom/crashlytics/android/core/RemoveRepeatsStrategy;->trimRepeats([Ljava/lang/StackTraceElement;I)[Ljava/lang/StackTraceElement;

    move-result-object v0

    .line 30
    .local v0, "trimmed":[Ljava/lang/StackTraceElement;
    array-length v1, v0

    array-length v2, p1

    if-ge v1, v2, :cond_0

    .line 33
    .end local v0    # "trimmed":[Ljava/lang/StackTraceElement;
    :goto_0
    return-object v0

    .restart local v0    # "trimmed":[Ljava/lang/StackTraceElement;
    :cond_0
    move-object v0, p1

    goto :goto_0
.end method
