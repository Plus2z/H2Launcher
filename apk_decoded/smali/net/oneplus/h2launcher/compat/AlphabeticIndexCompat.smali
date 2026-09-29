.class public Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;
.super Ljava/lang/Object;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;,
        Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;,
        Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    }
.end annotation


# static fields
.field private static final MID_DOT:Ljava/lang/String; = "\u2219"

.field private static final TAG:Ljava/lang/String; = "AlphabeticIndexCompat"


# instance fields
.field private final mBaseIndex:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;

.field private final mDefaultMiscLabel:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    const/4 v1, 0x0

    .line 23
    .local v1, "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :try_start_0
    sget-boolean v3, Lnet/oneplus/h2launcher/Utilities;->ATLEAST_ANDROID_N:Z

    if-eqz v3, :cond_0

    .line 24
    new-instance v2, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;

    invoke-direct {v2, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .local v2, "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    move-object v1, v2

    .end local v2    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .restart local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :cond_0
    move-object v2, v1

    .line 29
    .end local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .restart local v2    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :goto_0
    if-nez v2, :cond_2

    .line 31
    :try_start_1
    new-instance v1, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;

    invoke-direct {v1, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexV16;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 36
    .end local v2    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .restart local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :goto_1
    if-nez v1, :cond_1

    new-instance v1, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;

    .end local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    const/4 v3, 0x0

    invoke-direct {v1, v3}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$1;)V

    :cond_1
    iput-object v1, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mBaseIndex:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;

    .line 37
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v3

    iget-object v3, v3, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 38
    invoke-virtual {v3}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v3

    sget-object v4, Ljava/util/Locale;->JAPANESE:Ljava/util/Locale;

    invoke-virtual {v4}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 40
    const-string v3, "\u4ed6"

    iput-object v3, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    .line 46
    :goto_2
    return-void

    .line 26
    .restart local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :catch_0
    move-exception v0

    .line 27
    .local v0, "e":Ljava/lang/Exception;
    const-string v3, "AlphabeticIndexCompat"

    const-string v4, "Unable to load the system index"

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v2, v1

    .end local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .restart local v2    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    goto :goto_0

    .line 32
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 33
    .restart local v0    # "e":Ljava/lang/Exception;
    const-string v3, "AlphabeticIndexCompat"

    const-string v4, "Unable to load the system index"

    invoke-static {v3, v4, v0}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    move-object v1, v2

    .end local v2    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    .restart local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    goto :goto_1

    .line 44
    .end local v1    # "index":Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
    :cond_3
    const-string v3, "\u2219"

    iput-object v3, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_2
.end method


# virtual methods
.method public computeSectionName(Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 7
    .param p1, "cs"    # Ljava/lang/CharSequence;

    .prologue
    .line 52
    invoke-static {p1}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, "s":Ljava/lang/String;
    iget-object v5, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mBaseIndex:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;

    iget-object v6, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mBaseIndex:Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;

    invoke-virtual {v6, v1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v6

    invoke-virtual {v5, v6}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v2

    .line 54
    .local v2, "sectionName":Ljava/lang/String;
    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->trim(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_0

    .line 55
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/lang/String;->codePointAt(I)I

    move-result v0

    .line 56
    .local v0, "c":I
    invoke-static {v0}, Ljava/lang/Character;->isDigit(I)Z

    move-result v3

    .line 57
    .local v3, "startsWithDigit":Z
    if-eqz v3, :cond_1

    .line 59
    const-string v2, "#"

    .line 72
    .end local v0    # "c":I
    .end local v2    # "sectionName":Ljava/lang/String;
    .end local v3    # "startsWithDigit":Z
    :cond_0
    :goto_0
    return-object v2

    .line 61
    .restart local v0    # "c":I
    .restart local v2    # "sectionName":Ljava/lang/String;
    .restart local v3    # "startsWithDigit":Z
    :cond_1
    invoke-static {v0}, Ljava/lang/Character;->isLetter(I)Z

    move-result v4

    .line 62
    .local v4, "startsWithLetter":Z
    if-eqz v4, :cond_2

    .line 63
    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;->mDefaultMiscLabel:Ljava/lang/String;

    goto :goto_0

    .line 68
    :cond_2
    const-string v2, "\u2219"

    goto :goto_0
.end method
