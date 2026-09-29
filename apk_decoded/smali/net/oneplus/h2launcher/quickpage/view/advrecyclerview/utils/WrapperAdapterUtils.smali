.class public Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;
.super Ljava/lang/Object;
.source "WrapperAdapterUtils.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    return-void
.end method

.method public static findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p1, p0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 28
    invoke-virtual {p1, p0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 34
    .end local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :goto_0
    return-object v1

    .line 29
    .restart local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :cond_0
    instance-of v1, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    if-eqz v1, :cond_1

    .line 30
    check-cast p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 31
    .end local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 32
    .local v0, "wrappedAdapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    invoke-static {v0, p1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->findWrappedAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0

    .line 34
    .end local v0    # "wrappedAdapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .restart local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static releaseAll(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 1
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    .line 39
    invoke-static {p0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->releaseCyclically(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    return-object v0
.end method

.method private static releaseCyclically(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    .locals 3
    .param p0, "adapter"    # Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    .prologue
    .line 43
    instance-of v2, p0, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    if-nez v2, :cond_0

    .line 52
    .end local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :goto_0
    return-object p0

    .restart local p0    # "adapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    :cond_0
    move-object v1, p0

    .line 47
    check-cast v1, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;

    .line 48
    .local v1, "wrapperAdapter":Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->getWrappedAdapter()Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object v0

    .line 50
    .local v0, "wrappedAdapter":Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/BaseWrapperAdapter;->release()V

    .line 52
    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/view/advrecyclerview/utils/WrapperAdapterUtils;->releaseCyclically(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;

    move-result-object p0

    goto :goto_0
.end method
