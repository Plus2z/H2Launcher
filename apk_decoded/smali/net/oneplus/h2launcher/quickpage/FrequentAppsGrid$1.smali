.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;
.super Ljava/lang/Object;
.source "FrequentAppsGrid.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->onStatsAdded(Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

.field final synthetic val$componentName:Landroid/content/ComponentName;

.field final synthetic val$id:J

.field final synthetic val$intentStr:Ljava/lang/String;

.field final synthetic val$itemType:I

.field final synthetic val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    .prologue
    .line 217
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$componentName:Landroid/content/ComponentName;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$intentStr:Ljava/lang/String;

    iput p4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$itemType:I

    iput-wide p5, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$id:J

    iput-object p7, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .prologue
    .line 220
    const-string v0, "FrequentAppsGrid"

    const-string v1, "App icon adds to Shelf: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$componentName:Landroid/content/ComponentName;

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 222
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$componentName:Landroid/content/ComponentName;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$intentStr:Ljava/lang/String;

    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$itemType:I

    iget-wide v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$id:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->val$user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-static/range {v0 .. v6}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/content/ComponentName;Ljava/lang/String;IJLnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 223
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$300(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->notifyDataSetChanged()V

    .line 224
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->notifyItemAdapterChanged()V

    .line 225
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v0}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$400(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 226
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$300(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItemAdapter;->getValidCount()I

    move-result v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$1;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$600(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)I

    move-result v2

    div-int/2addr v1, v2

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$502(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;I)I

    .line 228
    :cond_0
    return-void
.end method
