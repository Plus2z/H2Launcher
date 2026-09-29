.class public Lnet/oneplus/h2launcher/oos/StyleResourceInfo;
.super Ljava/lang/Object;
.source "StyleResourceInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/oos/StyleResourceInfo$ResourceIdNotFoundException;
    }
.end annotation


# instance fields
.field private mResourceMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->mResourceMap:Ljava/util/HashMap;

    .line 10
    return-void
.end method


# virtual methods
.method public fillStyleResourceInfo(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p1, "resourceMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/Integer;>;"
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->mResourceMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 23
    iget-object v0, p0, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->mResourceMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 24
    return-void
.end method

.method public getResourceId(Ljava/lang/String;)I
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lnet/oneplus/h2launcher/oos/StyleResourceInfo$ResourceIdNotFoundException;
        }
    .end annotation

    .prologue
    .line 13
    iget-object v1, p0, Lnet/oneplus/h2launcher/oos/StyleResourceInfo;->mResourceMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 14
    .local v0, "resourceId":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 15
    new-instance v1, Lnet/oneplus/h2launcher/oos/StyleResourceInfo$ResourceIdNotFoundException;

    invoke-direct {v1, p1}, Lnet/oneplus/h2launcher/oos/StyleResourceInfo$ResourceIdNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 17
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    return v1
.end method
