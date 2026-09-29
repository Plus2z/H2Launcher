.class Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;
.super Ljava/lang/Object;
.source "FrequentAppsGrid.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    .prologue
    .line 673
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x0

    .line 676
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :cond_0
    :goto_0
    :pswitch_0
    move v1, v8

    .line 693
    :goto_1
    return v1

    .line 681
    :pswitch_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    if-eqz v1, :cond_0

    .line 683
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$mConvertView:Landroid/view/View;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v3, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v3, v3, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->intent:Landroid/content/Intent;

    iget-object v4, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v4, v4, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-wide v4, v4, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->id:J

    iget-object v6, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v6, v6, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget v6, v6, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->itemType:I

    iget-object v7, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v7, v7, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->val$item:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;

    iget-object v7, v7, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$AppItem;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    invoke-static/range {v1 .. v7}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$2100(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;Landroid/view/View;Landroid/content/Intent;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 685
    :catch_0
    move-exception v0

    .line 686
    .local v0, "e":Ljava/lang/RuntimeException;
    :goto_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid$2;->this$0:Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FrequentAppsGrid;)Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b002e

    invoke-static {v1, v2, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v1

    .line 687
    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    .line 688
    const/4 v1, 0x1

    goto :goto_1

    .line 685
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :catch_1
    move-exception v0

    goto :goto_2

    .line 676
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
