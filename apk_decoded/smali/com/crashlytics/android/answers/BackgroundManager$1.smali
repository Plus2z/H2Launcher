.class Lcom/crashlytics/android/answers/BackgroundManager$1;
.super Ljava/lang/Object;
.source "BackgroundManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/crashlytics/android/answers/BackgroundManager;->onActivityPaused()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/crashlytics/android/answers/BackgroundManager;


# direct methods
.method constructor <init>(Lcom/crashlytics/android/answers/BackgroundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/crashlytics/android/answers/BackgroundManager;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/crashlytics/android/answers/BackgroundManager$1;->this$0:Lcom/crashlytics/android/answers/BackgroundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager$1;->this$0:Lcom/crashlytics/android/answers/BackgroundManager;

    iget-object v0, v0, Lcom/crashlytics/android/answers/BackgroundManager;->backgroundFutureRef:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/crashlytics/android/answers/BackgroundManager$1;->this$0:Lcom/crashlytics/android/answers/BackgroundManager;

    invoke-static {v0}, Lcom/crashlytics/android/answers/BackgroundManager;->access$000(Lcom/crashlytics/android/answers/BackgroundManager;)V

    .line 70
    return-void
.end method
