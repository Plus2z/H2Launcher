.class public Lnet/oneplus/h2launcher/DragLayer$LayoutParams;
.super Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;
.source "DragLayer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/DragLayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public customPosition:Z

.field public x:I

.field public y:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 680
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(II)V

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 681
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 676
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 677
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 1
    .param p1, "lp"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 684
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 673
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->customPosition:Z

    .line 685
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 700
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 692
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 708
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 716
    iget v0, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 696
    iput p1, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->height:I

    .line 697
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 688
    iput p1, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->width:I

    .line 689
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 704
    iput p1, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->x:I

    .line 705
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 712
    iput p1, p0, Lnet/oneplus/h2launcher/DragLayer$LayoutParams;->y:I

    .line 713
    return-void
.end method
