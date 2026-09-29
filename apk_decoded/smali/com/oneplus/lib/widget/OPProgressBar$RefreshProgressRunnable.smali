.class Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;
.super Ljava/lang/Object;
.source "OPProgressBar.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/widget/OPProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RefreshProgressRunnable"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/widget/OPProgressBar;


# direct methods
.method private constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;)V
    .locals 0

    .prologue
    .line 1240
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/oneplus/lib/widget/OPProgressBar;Lcom/oneplus/lib/widget/OPProgressBar$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/oneplus/lib/widget/OPProgressBar;
    .param p2, "x1"    # Lcom/oneplus/lib/widget/OPProgressBar$1;

    .prologue
    .line 1240
    invoke-direct {p0, p1}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;-><init>(Lcom/oneplus/lib/widget/OPProgressBar;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    .line 1242
    iget-object v4, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    monitor-enter v4

    .line 1243
    :try_start_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1244
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 1245
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;

    .line 1246
    .local v2, "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    iget v5, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->id:I

    iget v6, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->progress:I

    iget-boolean v7, v2, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->fromUser:Z

    const/4 v8, 0x1

    invoke-static {v3, v5, v6, v7, v8}, Lcom/oneplus/lib/widget/OPProgressBar;->access$200(Lcom/oneplus/lib/widget/OPProgressBar;IIZZ)V

    .line 1247
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;->recycle()V

    .line 1244
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1249
    .end local v2    # "rd":Lcom/oneplus/lib/widget/OPProgressBar$RefreshData;
    :cond_0
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-static {v3}, Lcom/oneplus/lib/widget/OPProgressBar;->access$100(Lcom/oneplus/lib/widget/OPProgressBar;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 1250
    iget-object v3, p0, Lcom/oneplus/lib/widget/OPProgressBar$RefreshProgressRunnable;->this$0:Lcom/oneplus/lib/widget/OPProgressBar;

    const/4 v5, 0x0

    invoke-static {v3, v5}, Lcom/oneplus/lib/widget/OPProgressBar;->access$302(Lcom/oneplus/lib/widget/OPProgressBar;Z)Z

    .line 1251
    monitor-exit v4

    .line 1252
    return-void

    .line 1251
    .end local v0    # "count":I
    .end local v1    # "i":I
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method
