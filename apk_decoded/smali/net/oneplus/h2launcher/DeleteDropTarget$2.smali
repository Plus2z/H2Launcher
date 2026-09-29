.class Lnet/oneplus/h2launcher/DeleteDropTarget$2;
.super Ljava/lang/Object;
.source "DeleteDropTarget.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/DeleteDropTarget;->onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private mCount:I

.field private mOffset:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

.field final synthetic val$duration:I

.field final synthetic val$startTime:J


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/DeleteDropTarget;JI)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/DeleteDropTarget;

    .prologue
    .line 147
    iput-object p1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->this$0:Lnet/oneplus/h2launcher/DeleteDropTarget;

    iput-wide p2, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->val$startTime:J

    iput p4, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->val$duration:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 148
    const/4 v0, -0x1

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    .line 149
    const/4 v0, 0x0

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mOffset:F

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 6
    .param p1, "t"    # F

    .prologue
    .line 153
    iget v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    if-gez v0, :cond_1

    .line 154
    iget v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    .line 160
    :cond_0
    :goto_0
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mOffset:F

    add-float/2addr v1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    return v0

    .line 155
    :cond_1
    iget v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    if-nez v0, :cond_0

    .line 156
    const/high16 v0, 0x3f000000    # 0.5f

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->val$startTime:J

    sub-long/2addr v2, v4

    long-to-float v1, v2

    iget v2, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->val$duration:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mOffset:F

    .line 158
    iget v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lnet/oneplus/h2launcher/DeleteDropTarget$2;->mCount:I

    goto :goto_0
.end method
