.class Lnet/oneplus/h2launcher/BubbleTextView$1;
.super Ljava/lang/Object;
.source "BubbleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/BubbleTextView;->applyFromApplicationInfo(Lnet/oneplus/h2launcher/AppInfo;ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/BubbleTextView;

.field final synthetic val$info:Lnet/oneplus/h2launcher/AppInfo;

.field final synthetic val$promiseStateChanged:Z


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/AppInfo;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/BubbleTextView;

    .prologue
    .line 252
    iput-object p1, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->this$0:Lnet/oneplus/h2launcher/BubbleTextView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$info:Lnet/oneplus/h2launcher/AppInfo;

    iput-boolean p3, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$promiseStateChanged:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 255
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->this$0:Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v2, v2, Lnet/oneplus/h2launcher/BubbleTextView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget-object v3, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$info:Lnet/oneplus/h2launcher/AppInfo;

    iget-object v4, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->this$0:Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v4, v4, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-boolean v5, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$promiseStateChanged:Z

    invoke-virtual {v3, v4, v5}, Lnet/oneplus/h2launcher/AppInfo;->getIcon(Lnet/oneplus/h2launcher/AssetCache;Z)Landroid/graphics/Bitmap;

    move-result-object v3

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->createIconDrawable(Landroid/graphics/Bitmap;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    .line 256
    .local v0, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$info:Lnet/oneplus/h2launcher/AppInfo;

    iget-object v3, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->this$0:Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v3, v3, Lnet/oneplus/h2launcher/BubbleTextView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    iget-boolean v4, p0, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$promiseStateChanged:Z

    invoke-virtual {v2, v3, v4}, Lnet/oneplus/h2launcher/AppInfo;->getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;

    move-result-object v1

    .line 257
    .local v1, "label":Ljava/lang/String;
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v2

    new-instance v3, Lnet/oneplus/h2launcher/BubbleTextView$1$1;

    invoke-direct {v3, p0, v0, v1}, Lnet/oneplus/h2launcher/BubbleTextView$1$1;-><init>(Lnet/oneplus/h2launcher/BubbleTextView$1;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 263
    return-void
.end method
