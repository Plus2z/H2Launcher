.class public Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;
.super Ljava/lang/Object;
.source "FolderIcon.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderIcon;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "PreviewItemDrawingParams"
.end annotation


# instance fields
.field public drawable:Landroid/graphics/drawable/Drawable;

.field overlayAlpha:I

.field scale:F

.field final synthetic this$0:Lnet/oneplus/h2launcher/FolderIcon;

.field transX:F

.field transY:F


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/FolderIcon;FFFI)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/FolderIcon;
    .param p2, "transX"    # F
    .param p3, "transY"    # F
    .param p4, "scale"    # F
    .param p5, "overlayAlpha"    # I

    .prologue
    .line 607
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->this$0:Lnet/oneplus/h2launcher/FolderIcon;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 608
    iput p2, p0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transX:F

    .line 609
    iput p3, p0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->transY:F

    .line 610
    iput p4, p0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->scale:F

    .line 611
    iput p5, p0, Lnet/oneplus/h2launcher/FolderIcon$PreviewItemDrawingParams;->overlayAlpha:I

    .line 612
    return-void
.end method
