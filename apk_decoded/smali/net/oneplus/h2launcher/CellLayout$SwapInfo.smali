.class public Lnet/oneplus/h2launcher/CellLayout$SwapInfo;
.super Ljava/lang/Object;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SwapInfo"
.end annotation


# instance fields
.field newX:I

.field newY:I

.field oldX:I

.field oldY:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/CellLayout;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout;IIII)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CellLayout;
    .param p2, "oldX"    # I
    .param p3, "oldY"    # I
    .param p4, "newX"    # I
    .param p5, "newY"    # I

    .prologue
    .line 3258
    iput-object p1, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->this$0:Lnet/oneplus/h2launcher/CellLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3259
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldX:I

    .line 3260
    iput p3, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldY:I

    .line 3261
    iput p4, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newX:I

    .line 3262
    iput p5, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newY:I

    .line 3263
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3267
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{oldX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", oldY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->oldY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newX: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", newY: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$SwapInfo;->newY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
