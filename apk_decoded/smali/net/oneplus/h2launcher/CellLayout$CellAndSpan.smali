.class Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CellAndSpan"
.end annotation


# instance fields
.field spanX:I

.field spanY:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;

.field x:I

.field y:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;)V
    .locals 0

    .prologue
    .line 2800
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2801
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;IIII)V
    .locals 0
    .param p2, "x"    # I
    .param p3, "y"    # I
    .param p4, "spanX"    # I
    .param p5, "spanY"    # I

    .prologue
    .line 2810
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2811
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 2812
    iput p3, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .line 2813
    iput p4, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    .line 2814
    iput p5, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    .line 2815
    return-void
.end method


# virtual methods
.method public copy(Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;)V
    .locals 1
    .param p1, "copy"    # Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;

    .prologue
    .line 2804
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    iput v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    .line 2805
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    iput v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    .line 2806
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    iput v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    .line 2807
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    iput v0, p1, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    .line 2808
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 2818
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->x:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->y:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$CellAndSpan;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
