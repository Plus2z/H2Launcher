.class Lnet/oneplus/h2launcher/BaseContainerView$1;
.super Ljava/lang/Object;
.source "BaseContainerView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/BaseContainerView;->setSearchBarBounds(Landroid/graphics/Rect;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/BaseContainerView;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/BaseContainerView;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/BaseContainerView;

    .prologue
    .line 80
    iput-object p1, p0, Lnet/oneplus/h2launcher/BaseContainerView$1;->this$0:Lnet/oneplus/h2launcher/BaseContainerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/BaseContainerView$1;->this$0:Lnet/oneplus/h2launcher/BaseContainerView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/BaseContainerView;->updateBackgroundAndPaddings()V

    .line 84
    return-void
.end method
