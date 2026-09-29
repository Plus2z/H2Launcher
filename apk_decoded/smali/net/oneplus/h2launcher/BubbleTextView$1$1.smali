.class Lnet/oneplus/h2launcher/BubbleTextView$1$1;
.super Ljava/lang/Object;
.source "BubbleTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/BubbleTextView$1;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/BubbleTextView$1;

.field final synthetic val$drawable:Lnet/oneplus/h2launcher/FastBitmapDrawable;

.field final synthetic val$label:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/BubbleTextView$1;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/BubbleTextView$1;

    .prologue
    .line 257
    iput-object p1, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->this$1:Lnet/oneplus/h2launcher/BubbleTextView$1;

    iput-object p2, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->val$drawable:Lnet/oneplus/h2launcher/FastBitmapDrawable;

    iput-object p3, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->val$label:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 260
    iget-object v0, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->this$1:Lnet/oneplus/h2launcher/BubbleTextView$1;

    iget-object v0, v0, Lnet/oneplus/h2launcher/BubbleTextView$1;->this$0:Lnet/oneplus/h2launcher/BubbleTextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->this$1:Lnet/oneplus/h2launcher/BubbleTextView$1;

    iget-object v1, v1, Lnet/oneplus/h2launcher/BubbleTextView$1;->val$info:Lnet/oneplus/h2launcher/AppInfo;

    iget-object v2, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->val$drawable:Lnet/oneplus/h2launcher/FastBitmapDrawable;

    iget-object v3, p0, Lnet/oneplus/h2launcher/BubbleTextView$1$1;->val$label:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lnet/oneplus/h2launcher/BubbleTextView;->access$000(Lnet/oneplus/h2launcher/BubbleTextView;Lnet/oneplus/h2launcher/AppInfo;Lnet/oneplus/h2launcher/FastBitmapDrawable;Ljava/lang/String;)V

    .line 261
    return-void
.end method
