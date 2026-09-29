.class Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$2;
.super Ljava/lang/Object;
.source "QuickPageAdapter.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/DataProvider;Lnet/oneplus/h2launcher/quickpage/rebound/Spring;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    .prologue
    .line 459
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "motionEvent"    # Landroid/view/MotionEvent;

    .prologue
    .line 462
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter$2;->this$0:Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;

    invoke-static {v0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;->access$1200(Lnet/oneplus/h2launcher/quickpage/QuickPageAdapter;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
