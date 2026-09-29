.class Lnet/oneplus/h2launcher/LauncherAnimUtils$2$1;
.super Ljava/lang/Object;
.source "LauncherAnimUtils.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherAnimUtils$2;->onDraw()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherAnimUtils$2;

.field final synthetic val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherAnimUtils$2;Landroid/view/ViewTreeObserver$OnDrawListener;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherAnimUtils$2;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherAnimUtils$2$1;->this$0:Lnet/oneplus/h2launcher/LauncherAnimUtils$2;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherAnimUtils$2$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherAnimUtils$2$1;->this$0:Lnet/oneplus/h2launcher/LauncherAnimUtils$2;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherAnimUtils$2;->val$view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherAnimUtils$2$1;->val$listener:Landroid/view/ViewTreeObserver$OnDrawListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnDrawListener(Landroid/view/ViewTreeObserver$OnDrawListener;)V

    .line 75
    return-void
.end method
