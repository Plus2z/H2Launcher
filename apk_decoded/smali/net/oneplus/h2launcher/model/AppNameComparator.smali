.class public Lnet/oneplus/h2launcher/model/AppNameComparator;
.super Ljava/lang/Object;
.source "AppNameComparator.java"


# instance fields
.field private final mAppInfoComparator:Lnet/oneplus/h2launcher/model/AbstractUserComparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lnet/oneplus/h2launcher/model/AbstractUserComparator",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mCollator:Ljava/text/Collator;

.field private final mSectionNameComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    .line 39
    new-instance v0, Lnet/oneplus/h2launcher/model/AppNameComparator$1;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/model/AppNameComparator$1;-><init>(Lnet/oneplus/h2launcher/model/AppNameComparator;Landroid/content/Context;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mAppInfoComparator:Lnet/oneplus/h2launcher/model/AbstractUserComparator;

    .line 62
    new-instance v0, Lnet/oneplus/h2launcher/model/AppNameComparator$2;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/model/AppNameComparator$2;-><init>(Lnet/oneplus/h2launcher/model/AppNameComparator;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    .line 68
    return-void
.end method


# virtual methods
.method compareTitles(Ljava/lang/String;Ljava/lang/String;)I
    .locals 5
    .param p1, "titleA"    # Ljava/lang/String;
    .param p2, "titleB"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 90
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 91
    invoke-virtual {p1, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-eqz v4, :cond_1

    move v0, v2

    .line 92
    .local v0, "aStartsWithLetter":Z
    :goto_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    .line 93
    invoke-virtual {p2, v3}, Ljava/lang/String;->codePointAt(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result v4

    if-eqz v4, :cond_2

    move v1, v2

    .line 94
    .local v1, "bStartsWithLetter":Z
    :goto_1
    if-eqz v0, :cond_3

    if-nez v1, :cond_3

    .line 95
    const/4 v2, -0x1

    .line 101
    :cond_0
    :goto_2
    return v2

    .end local v0    # "aStartsWithLetter":Z
    .end local v1    # "bStartsWithLetter":Z
    :cond_1
    move v0, v3

    .line 91
    goto :goto_0

    .restart local v0    # "aStartsWithLetter":Z
    :cond_2
    move v1, v3

    .line 93
    goto :goto_1

    .line 96
    .restart local v1    # "bStartsWithLetter":Z
    :cond_3
    if-nez v0, :cond_4

    if-nez v1, :cond_0

    .line 101
    :cond_4
    iget-object v2, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mCollator:Ljava/text/Collator;

    invoke-virtual {v2, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    goto :goto_2
.end method

.method public getAppInfoComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Lnet/oneplus/h2launcher/ItemInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mAppInfoComparator:Lnet/oneplus/h2launcher/model/AbstractUserComparator;

    return-object v0
.end method

.method public getSectionNameComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/model/AppNameComparator;->mSectionNameComparator:Ljava/util/Comparator;

    return-object v0
.end method
