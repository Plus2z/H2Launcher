.class Lnet/oneplus/h2launcher/FolderScrollView$2;
.super Landroid/view/GestureDetector$SimpleOnGestureListener;
.source "FolderScrollView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/FolderScrollView;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderScrollView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderScrollView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderScrollView;

    .prologue
    .line 46
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderScrollView$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-direct {p0}, Landroid/view/GestureDetector$SimpleOnGestureListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "e"    # Landroid/view/MotionEvent;

    .prologue
    .line 49
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView$2;->this$0:Lnet/oneplus/h2launcher/FolderScrollView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/FolderScrollView;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    .line 50
    const/4 v0, 0x1

    return v0
.end method
