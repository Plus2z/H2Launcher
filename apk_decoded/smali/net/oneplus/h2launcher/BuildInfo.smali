.class public Lnet/oneplus/h2launcher/BuildInfo;
.super Ljava/lang/Object;
.source "BuildInfo.java"


# static fields
.field private static final DBG:Z = false

.field private static final TAG:Ljava/lang/String; = "BuildInfo"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static loadByName(Ljava/lang/String;)Lnet/oneplus/h2launcher/BuildInfo;
    .locals 4
    .param p0, "className"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    new-instance v2, Lnet/oneplus/h2launcher/BuildInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/BuildInfo;-><init>()V

    .line 30
    :goto_0
    return-object v2

    .line 19
    :cond_0
    :try_start_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 20
    .local v0, "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/BuildInfo;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_3

    goto :goto_0

    .line 21
    .end local v0    # "cls":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 22
    .local v1, "e":Ljava/lang/ClassNotFoundException;
    const-string v2, "BuildInfo"

    const-string v3, "Bad BuildInfo class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .end local v1    # "e":Ljava/lang/ClassNotFoundException;
    :goto_1
    new-instance v2, Lnet/oneplus/h2launcher/BuildInfo;

    invoke-direct {v2}, Lnet/oneplus/h2launcher/BuildInfo;-><init>()V

    goto :goto_0

    .line 23
    :catch_1
    move-exception v1

    .line 24
    .local v1, "e":Ljava/lang/InstantiationException;
    const-string v2, "BuildInfo"

    const-string v3, "Bad BuildInfo class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 25
    .end local v1    # "e":Ljava/lang/InstantiationException;
    :catch_2
    move-exception v1

    .line 26
    .local v1, "e":Ljava/lang/IllegalAccessException;
    const-string v2, "BuildInfo"

    const-string v3, "Bad BuildInfo class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 27
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_3
    move-exception v1

    .line 28
    .local v1, "e":Ljava/lang/ClassCastException;
    const-string v2, "BuildInfo"

    const-string v3, "Bad BuildInfo class"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method


# virtual methods
.method public isDogfoodBuild()Z
    .locals 1

    .prologue
    .line 11
    const/4 v0, 0x0

    return v0
.end method
