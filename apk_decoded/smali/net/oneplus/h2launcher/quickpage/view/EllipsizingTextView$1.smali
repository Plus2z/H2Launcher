.class Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;
.super Ljava/lang/Object;
.source "EllipsizingTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->updateTextSize(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

.field final synthetic val$text:Ljava/lang/String;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    .prologue
    .line 134
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->val$text:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const v3, 0x7f0c010f

    .line 137
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->val$text:Ljava/lang/String;

    iget-object v5, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    invoke-virtual {v5}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getWidth()I

    move-result v6

    invoke-static {v2, v4, v5, v6}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->access$000(Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;Ljava/lang/String;II)I

    move-result v0

    .line 138
    .local v0, "lineCount":I
    if-lez v0, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->val$text:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 139
    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    .line 140
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/4 v2, 0x1

    if-le v0, v2, :cond_1

    move v2, v3

    :goto_0
    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v2

    .line 139
    invoke-virtual {v4, v7, v2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setTextSize(IF)V

    .line 143
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v2

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->val$text:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 144
    .local v1, "textWidth":F
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getWidth()I

    move-result v2

    int-to-float v2, v2

    cmpl-float v2, v1, v2

    if-lez v2, :cond_0

    .line 145
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;->this$0:Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;

    .line 146
    invoke-virtual {v4}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v3

    .line 145
    invoke-virtual {v2, v7, v3}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setTextSize(IF)V

    .line 149
    .end local v1    # "textWidth":F
    :cond_0
    return-void

    .line 140
    :cond_1
    const v2, 0x7f0c0110

    goto :goto_0
.end method
