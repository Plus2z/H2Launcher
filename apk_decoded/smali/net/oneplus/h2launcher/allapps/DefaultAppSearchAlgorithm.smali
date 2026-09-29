.class public Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;
.super Ljava/lang/Object;
.source "DefaultAppSearchAlgorithm.java"


# static fields
.field private static final SPLIT_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private final mApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field protected final mResultHandler:Landroid/os/Handler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 32
    const-string v0, "[\\s|\\p{javaSpaceChar}]+"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 37
    .local p1, "apps":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/AppInfo;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    iput-object p1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    .line 39
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    .line 40
    return-void
.end method


# virtual methods
.method public cancel(Z)V
    .locals 2
    .param p1, "interruptActiveRequests"    # Z

    .prologue
    .line 43
    if-eqz p1, :cond_0

    .line 44
    iget-object v0, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 46
    :cond_0
    return-void
.end method

.method public doSearch(Ljava/lang/String;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;)V
    .locals 3
    .param p1, "query"    # Ljava/lang/String;
    .param p2, "callback"    # Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;

    .prologue
    .line 50
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 51
    .local v0, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->mResultHandler:Landroid/os/Handler;

    new-instance v2, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;

    invoke-direct {v2, p0, p2, p1, v0}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm$1;-><init>(Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;Lnet/oneplus/h2launcher/allapps/AllAppsSearchBarController$Callbacks;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 58
    return-void
.end method

.method protected getTitleMatchResult(Ljava/lang/String;)Ljava/util/ArrayList;
    .locals 6
    .param p1, "query"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/util/ComponentKey;",
            ">;"
        }
    .end annotation

    .prologue
    .line 63
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 64
    .local v1, "queryTextLower":Ljava/lang/String;
    sget-object v4, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v2

    .line 66
    .local v2, "queryWords":[Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 67
    .local v3, "result":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/util/ComponentKey;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->mApps:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 68
    .local v0, "info":Lnet/oneplus/h2launcher/AppInfo;
    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->matches(Lnet/oneplus/h2launcher/AppInfo;[Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 69
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppInfo;->toComponentKey()Lnet/oneplus/h2launcher/util/ComponentKey;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 72
    .end local v0    # "info":Lnet/oneplus/h2launcher/AppInfo;
    :cond_1
    return-object v3
.end method

.method protected matches(Lnet/oneplus/h2launcher/AppInfo;[Ljava/lang/String;)Z
    .locals 7
    .param p1, "info"    # Lnet/oneplus/h2launcher/AppInfo;
    .param p2, "queryWords"    # [Ljava/lang/String;

    .prologue
    .line 76
    iget-object v5, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, "title":Ljava/lang/String;
    sget-object v5, Lnet/oneplus/h2launcher/allapps/DefaultAppSearchAlgorithm;->SPLIT_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v3}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/regex/Pattern;->split(Ljava/lang/CharSequence;)[Ljava/lang/String;

    move-result-object v4

    .line 78
    .local v4, "words":[Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "qi":I
    :goto_0
    array-length v5, p2

    if-ge v2, v5, :cond_3

    .line 79
    const/4 v0, 0x0

    .line 80
    .local v0, "foundMatch":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    array-length v5, v4

    if-ge v1, v5, :cond_0

    .line 81
    aget-object v5, v4, v1

    aget-object v6, p2, v2

    invoke-virtual {v5, v6}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 82
    const/4 v0, 0x1

    .line 86
    :cond_0
    if-nez v0, :cond_2

    .line 89
    const/4 v5, 0x0

    .line 92
    .end local v0    # "foundMatch":Z
    .end local v1    # "i":I
    :goto_2
    return v5

    .line 80
    .restart local v0    # "foundMatch":Z
    .restart local v1    # "i":I
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 78
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 92
    .end local v0    # "foundMatch":Z
    .end local v1    # "i":I
    :cond_3
    const/4 v5, 0x1

    goto :goto_2
.end method
