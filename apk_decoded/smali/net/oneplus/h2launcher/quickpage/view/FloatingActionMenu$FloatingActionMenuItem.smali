.class Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;
.super Ljava/lang/Object;
.source "FloatingActionMenu.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FloatingActionMenuItem"
.end annotation


# instance fields
.field buttonText:Landroid/view/View;

.field container:Landroid/view/View;

.field isRemoved:Z

.field offset:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V
    .locals 0

    .prologue
    .line 53
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;->this$0:Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$1;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu$FloatingActionMenuItem;-><init>(Lnet/oneplus/h2launcher/quickpage/view/FloatingActionMenu;)V

    return-void
.end method
