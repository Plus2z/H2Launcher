.class final Lcom/crashlytics/android/core/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# static fields
.field private static final ALL_FILES_FILTER:Ljava/io/FilenameFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 13
    new-instance v0, Lcom/crashlytics/android/core/Utils$1;

    invoke-direct {v0}, Lcom/crashlytics/android/core/Utils$1;-><init>()V

    sput-object v0, Lcom/crashlytics/android/core/Utils;->ALL_FILES_FILTER:Ljava/io/FilenameFilter;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static capFileCount(Ljava/io/File;ILjava/util/Comparator;)I
    .locals 1
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .line 23
    .local p2, "sortComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    sget-object v0, Lcom/crashlytics/android/core/Utils;->ALL_FILES_FILTER:Ljava/io/FilenameFilter;

    invoke-static {p0, v0, p1, p2}, Lcom/crashlytics/android/core/Utils;->capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I

    move-result v0

    return v0
.end method

.method static capFileCount(Ljava/io/File;Ljava/io/FilenameFilter;ILjava/util/Comparator;)I
    .locals 5
    .param p0, "directory"    # Ljava/io/File;
    .param p1, "filter"    # Ljava/io/FilenameFilter;
    .param p2, "maxAllowed"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/FilenameFilter;",
            "I",
            "Ljava/util/Comparator",
            "<",
            "Ljava/io/File;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p3, "sortComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<Ljava/io/File;>;"
    const/4 v3, 0x0

    .line 34
    invoke-virtual {p0, p1}, Ljava/io/File;->listFiles(Ljava/io/FilenameFilter;)[Ljava/io/File;

    move-result-object v2

    .line 36
    .local v2, "sessionFiles":[Ljava/io/File;
    if-nez v2, :cond_1

    move v1, v3

    .line 54
    :cond_0
    return v1

    .line 40
    :cond_1
    array-length v1, v2

    .line 43
    .local v1, "numRetained":I
    invoke-static {v2, p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 45
    array-length v4, v2

    :goto_0
    if-ge v3, v4, :cond_0

    aget-object v0, v2, v3

    .line 47
    .local v0, "file":Ljava/io/File;
    if-le v1, p2, :cond_0

    .line 50
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 51
    add-int/lit8 v1, v1, -0x1

    .line 45
    add-int/lit8 v3, v3, 0x1

    goto :goto_0
.end method
