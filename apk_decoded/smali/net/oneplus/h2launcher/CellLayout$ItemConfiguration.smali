.class Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemConfiguration"
.end annotation


# instance fields
.field dragViewSpanX:I

.field dragViewSpanY:I

.field dragViewX:I

.field dragViewY:I

.field intersectingViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field isSolution:Z

.field map:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field private savedMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;",
            ">;"
        }
    .end annotation
.end field

.field sortedViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CellLayout;

    .prologue
    .line 2763
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2764
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    .line 2765
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    .line 2766
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    .line 2768
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->isSolution:Z

    return-void
.end method


# virtual methods
.method add(Landroid/view/View;Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "cs"    # Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .prologue
    .line 2786
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2787
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    new-instance v1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;-><init>(Lnet/oneplus/h2launcher/CellLayout;)V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2788
    iget-object v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->sortedViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2789
    return-void
.end method

.method area()I
    .locals 2

    .prologue
    .line 2792
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanX:I

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->dragViewSpanY:I

    mul-int/2addr v0, v1

    return v0
.end method

.method restore()V
    .locals 4

    .prologue
    .line 2780
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2781
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->copy(Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;)V

    goto :goto_0

    .line 2783
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method

.method save()V
    .locals 4

    .prologue
    .line 2773
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2774
    .local v0, "v":Landroid/view/View;
    iget-object v1, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->map:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    iget-object v2, p0, Lnet/oneplus/h2launcher/CellLayout$ItemConfiguration;->savedMap:Ljava/util/HashMap;

    invoke-virtual {v2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->copy(Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;)V

    goto :goto_0

    .line 2776
    .end local v0    # "v":Landroid/view/View;
    :cond_0
    return-void
.end method
