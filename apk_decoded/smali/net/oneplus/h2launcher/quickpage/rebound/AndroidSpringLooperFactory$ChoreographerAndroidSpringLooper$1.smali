.class Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;
.super Ljava/lang/Object;
.source "AndroidSpringLooperFactory.java"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;-><init>(Landroid/view/Choreographer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    .prologue
    .line 111
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 6
    .param p1, "frameTimeNanos"    # J

    .prologue
    .line 114
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$400(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/BaseSpringSystem;

    if-nez v2, :cond_1

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 118
    .local v0, "currentTime":J
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->mSpringSystem:Lnet/oneplus/h2launcher/quickpage/rebound/BaseSpringSystem;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$500(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)J

    move-result-wide v4

    sub-long v4, v0, v4

    long-to-double v4, v4

    invoke-virtual {v2, v4, v5}, Lnet/oneplus/h2launcher/quickpage/rebound/BaseSpringSystem;->loop(D)V

    .line 119
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v2, v0, v1}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$502(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;J)J

    .line 120
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$700(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer;

    move-result-object v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper$1;->this$0:Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;

    invoke-static {v3}, Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;->access$600(Lnet/oneplus/h2launcher/quickpage/rebound/AndroidSpringLooperFactory$ChoreographerAndroidSpringLooper;)Landroid/view/Choreographer$FrameCallback;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/Choreographer;->postFrameCallback(Landroid/view/Choreographer$FrameCallback;)V

    goto :goto_0
.end method
