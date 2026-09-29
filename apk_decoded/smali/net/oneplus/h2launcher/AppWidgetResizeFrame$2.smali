.class Lnet/oneplus/h2launcher/AppWidgetResizeFrame$2;
.super Ljava/lang/Object;
.source "AppWidgetResizeFrame.java"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->snapToWidget(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/AppWidgetResizeFrame;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    .prologue
    .line 449
    iput-object p1, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$2;->this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/ValueAnimator;

    .prologue
    .line 451
    iget-object v0, p0, Lnet/oneplus/h2launcher/AppWidgetResizeFrame$2;->this$0:Lnet/oneplus/h2launcher/AppWidgetResizeFrame;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->requestLayout()V

    .line 452
    return-void
.end method
