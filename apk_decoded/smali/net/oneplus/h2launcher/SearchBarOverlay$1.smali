.class Lnet/oneplus/h2launcher/SearchBarOverlay$1;
.super Ljava/lang/Object;
.source "SearchBarOverlay.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/SearchBarOverlay;->onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/SearchBarOverlay;

.field final synthetic val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/SearchBarOverlay;Landroid/graphics/drawable/RippleDrawable;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/SearchBarOverlay;

    .prologue
    .line 53
    iput-object p1, p0, Lnet/oneplus/h2launcher/SearchBarOverlay$1;->this$0:Lnet/oneplus/h2launcher/SearchBarOverlay;

    iput-object p2, p0, Lnet/oneplus/h2launcher/SearchBarOverlay$1;->val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/SearchBarOverlay$1;->val$rippleDrawable:Landroid/graphics/drawable/RippleDrawable;

    invoke-static {}, Lnet/oneplus/h2launcher/SearchBarOverlay;->access$000()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/RippleDrawable;->setState([I)Z

    .line 57
    return-void
.end method
