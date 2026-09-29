.class Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;
.super Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;
.source "AlphabeticIndexCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AlphabeticIndexVN"
.end annotation


# instance fields
.field private mAlphabeticIndex:Ljava/lang/Object;

.field private mGetBucketIndexMethod:Ljava/lang/reflect/Method;

.field private mGetBucketMethod:Ljava/lang/reflect/Method;

.field private mGetLabelMethod:Ljava/lang/reflect/Method;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 14
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 168
    const/4 v8, 0x0

    invoke-direct {p0, v8}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;-><init>(Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$1;)V

    .line 170
    const-class v8, Landroid/content/res/Configuration;

    const-string v9, "getLocales"

    new-array v10, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 171
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v9

    new-array v10, v12, [Ljava/lang/Object;

    .line 170
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 172
    .local v6, "locales":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "size"

    new-array v10, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v9, v12, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 173
    .local v4, "localeCount":I
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "get"

    new-array v10, v13, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 174
    .local v5, "localeGetter":Ljava/lang/reflect/Method;
    if-nez v4, :cond_0

    sget-object v7, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 177
    .local v7, "primaryLocale":Ljava/util/Locale;
    :goto_0
    const-string v8, "android.icu.text.AlphabeticIndex"

    invoke-static {v8}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 178
    .local v1, "clazz":Ljava/lang/Class;
    new-array v8, v13, [Ljava/lang/Class;

    const-class v9, Ljava/util/Locale;

    aput-object v9, v8, v12

    invoke-virtual {v1, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v8

    new-array v9, v13, [Ljava/lang/Object;

    aput-object v7, v9, v12

    invoke-virtual {v8, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    .line 180
    const-string v8, "addLabels"

    new-array v9, v13, [Ljava/lang/Class;

    const-class v10, [Ljava/util/Locale;

    aput-object v10, v9, v12

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 181
    .local v0, "addLocales":Ljava/lang/reflect/Method;
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_1
    if-ge v2, v4, :cond_1

    .line 182
    new-array v8, v13, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    .line 183
    .local v3, "l":Ljava/util/Locale;
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v9, v13, [Ljava/lang/Object;

    new-array v10, v13, [Ljava/util/Locale;

    aput-object v3, v10, v12

    aput-object v10, v9, v12

    invoke-virtual {v0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 174
    .end local v0    # "addLocales":Ljava/lang/reflect/Method;
    .end local v1    # "clazz":Ljava/lang/Class;
    .end local v2    # "i":I
    .end local v3    # "l":Ljava/util/Locale;
    .end local v7    # "primaryLocale":Ljava/util/Locale;
    :cond_0
    new-array v8, v13, [Ljava/lang/Object;

    .line 175
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v8, v12

    invoke-virtual {v5, v6, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Locale;

    move-object v7, v8

    goto :goto_0

    .line 185
    .restart local v0    # "addLocales":Ljava/lang/reflect/Method;
    .restart local v1    # "clazz":Ljava/lang/Class;
    .restart local v2    # "i":I
    .restart local v7    # "primaryLocale":Ljava/util/Locale;
    :cond_1
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v9, v13, [Ljava/lang/Object;

    new-array v10, v13, [Ljava/util/Locale;

    sget-object v11, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    aput-object v11, v10, v12

    aput-object v10, v9, v12

    invoke-virtual {v0, v8, v9}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 187
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "buildImmutableIndex"

    new-array v10, v12, [Ljava/lang/Class;

    .line 188
    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    new-array v10, v12, [Ljava/lang/Object;

    .line 189
    invoke-virtual {v8, v9, v10}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    .line 191
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getBucketIndex"

    new-array v10, v13, [Ljava/lang/Class;

    const-class v11, Ljava/lang/CharSequence;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    .line 193
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getBucket"

    new-array v10, v13, [Ljava/lang/Class;

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v11, v10, v12

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    .line 194
    iget-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    invoke-virtual {v8}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "getLabel"

    new-array v10, v12, [Ljava/lang/Class;

    invoke-virtual {v8, v9, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    iput-object v8, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetLabelMethod:Ljava/lang/reflect/Method;

    .line 195
    return-void
.end method


# virtual methods
.method protected getBucketIndex(Ljava/lang/String;)I
    .locals 5
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 202
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketIndexMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 206
    :goto_0
    return v1

    .line 203
    :catch_0
    move-exception v0

    .line 204
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 206
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketIndex(Ljava/lang/String;)I

    move-result v1

    goto :goto_0
.end method

.method protected getBucketLabel(I)Ljava/lang/String;
    .locals 7
    .param p1, "index"    # I

    .prologue
    .line 214
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetLabelMethod:Ljava/lang/reflect/Method;

    iget-object v2, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mGetBucketMethod:Ljava/lang/reflect/Method;

    iget-object v3, p0, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$AlphabeticIndexVN;->mAlphabeticIndex:Ljava/lang/Object;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 215
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    .line 214
    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    :goto_0
    return-object v1

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/compat/AlphabeticIndexCompat$BaseIndex;->getBucketLabel(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method
