.class Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BaseIndex"
.end annotation


# static fields
.field private static final BUCKETS:Ljava/lang/String; = "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

.field private static final UNKNOWN_BUCKET_INDEX:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 82
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    sput v0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->UNKNOWN_BUCKET_INDEX:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$1;

    .prologue
    .line 79
    invoke-direct {p0}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>()V

    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 4
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 88
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 89
    sget v0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->UNKNOWN_BUCKET_INDEX:I

    .line 95
    :cond_0
    :goto_0
    return v0

    .line 91
    :cond_1
    const-string v1, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 92
    .local v0, "index":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 95
    sget v0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->UNKNOWN_BUCKET_INDEX:I

    goto :goto_0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .prologue
    .line 102
    const-string v0, "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZ-"

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, p1, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
