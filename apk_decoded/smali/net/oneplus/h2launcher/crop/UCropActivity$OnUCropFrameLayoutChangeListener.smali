.class Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;
.super Ljava/lang/Object;
.source "UCropActivity.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/crop/UCropActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OnUCropFrameLayoutChangeListener"
.end annotation


# instance fields
.field private final mCropPreviewItemHeight:I

.field private final mCropPreviewItemWidth:I

.field private mIntent:Landroid/content/Intent;

.field final synthetic this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/content/Intent;)V
    .locals 3
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 555
    iput-object p1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 556
    iput-object p2, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mIntent:Landroid/content/Intent;

    .line 557
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/crop/UCropActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 558
    .local v0, "res":Landroid/content/res/Resources;
    const v1, 0x7f0c002a

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mCropPreviewItemWidth:I

    .line 559
    iget v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mCropPreviewItemWidth:I

    int-to-float v1, v1

    sget v2, Lnet/oneplus/h2launcher/crop/view/CropImageView;->PORTRAIT_IMAGE_ASPECT_RATIO:F

    div-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mCropPreviewItemHeight:I

    .line 560
    return-void
.end method

.method private setPaddings(Landroid/view/View;II)V
    .locals 2
    .param p1, "target"    # Landroid/view/View;
    .param p2, "horizontal"    # I
    .param p3, "vertical"    # I

    .prologue
    .line 588
    if-nez p1, :cond_0

    .line 589
    invoke-static {}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1800()Ljava/lang/String;

    move-result-object v0

    const-string v1, "failed to set paddings of target view"

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 593
    :goto_0
    return-void

    .line 592
    :cond_0
    invoke-virtual {p1, p2, p3, p2, p3}, Landroid/view/View;->setPadding(IIII)V

    goto :goto_0
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 9
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 565
    sub-int v5, p4, p2

    .line 566
    .local v5, "width":I
    sub-int v0, p5, p3

    .line 567
    .local v0, "height":I
    iget v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mCropPreviewItemWidth:I

    sub-int v6, v5, v6

    div-int/lit8 v1, v6, 0x2

    .line 568
    .local v1, "paddingHorizontal":I
    iget v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mCropPreviewItemHeight:I

    sub-int v6, v0, v6

    div-int/lit8 v2, v6, 0x2

    .line 571
    .local v2, "paddingVertical":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$600(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->setPaddings(Landroid/view/View;II)V

    .line 572
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$400(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/GestureCropImageView;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->setPaddings(Landroid/view/View;II)V

    .line 573
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$700(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->setPaddings(Landroid/view/View;II)V

    .line 574
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-static {v6}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1000(Lnet/oneplus/h2launcher/crop/UCropActivity;)Lnet/oneplus/h2launcher/crop/view/OverlayView;

    move-result-object v6

    invoke-direct {p0, v6, v1, v2}, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->setPaddings(Landroid/view/View;II)V

    .line 576
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 578
    const-string v3, "android.permission.READ_EXTERNAL_STORAGE"

    .line 579
    .local v3, "permission":Ljava/lang/String;
    const/16 v4, 0x64

    .line 580
    .local v4, "request":I
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 581
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    const-string v7, "android.permission.READ_EXTERNAL_STORAGE"

    const/16 v8, 0x64

    invoke-static {v6, v7, v8}, Lnet/oneplus/h2launcher/util/PermissionUtils;->requestPermission(Landroid/app/Activity;Ljava/lang/String;I)V

    .line 585
    :goto_0
    return-void

    .line 583
    :cond_0
    iget-object v6, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->this$0:Lnet/oneplus/h2launcher/crop/UCropActivity;

    iget-object v7, p0, Lnet/oneplus/h2launcher/crop/UCropActivity$OnUCropFrameLayoutChangeListener;->mIntent:Landroid/content/Intent;

    invoke-static {v6, v7}, Lnet/oneplus/h2launcher/crop/UCropActivity;->access$1700(Lnet/oneplus/h2launcher/crop/UCropActivity;Landroid/content/Intent;)V

    goto :goto_0
.end method
