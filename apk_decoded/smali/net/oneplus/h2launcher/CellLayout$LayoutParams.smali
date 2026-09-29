.class public Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
.super Landroid/view/ViewGroup$MarginLayoutParams;
.source "CellLayout.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CellLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public canReorder:Z

.field public cellHSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellVSpan:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellX:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field public cellY:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field dropped:Z

.field public isFullscreen:Z

.field public isLockedToGrid:Z

.field public tmpCellX:I

.field public tmpCellY:I

.field public useTmpCoords:Z

.field x:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field

.field y:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
    .end annotation
.end field


# direct methods
.method public constructor <init>(IIII)V
    .locals 2
    .param p1, "cellX"    # I
    .param p2, "cellY"    # I
    .param p3, "cellHSpan"    # I
    .param p4, "cellVSpan"    # I

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 3179
    invoke-direct {p0, v0, v0}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(II)V

    .line 3136
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3147
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 3180
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 3181
    iput p2, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 3182
    iput p3, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3183
    iput p4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3184
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x1

    .line 3159
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 3136
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3147
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 3160
    iput v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3161
    iput v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3162
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 3165
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 3136
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3147
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 3166
    iput v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3167
    iput v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3168
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/CellLayout$LayoutParams;)V
    .locals 2
    .param p1, "source"    # Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .prologue
    const/4 v1, 0x1

    .line 3171
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$MarginLayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 3136
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    .line 3141
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isFullscreen:Z

    .line 3147
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->canReorder:Z

    .line 3172
    iget v0, p1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 3173
    iget v0, p1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 3174
    iget v0, p1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3175
    iget v0, p1, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    iput v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3176
    return-void
.end method


# virtual methods
.method public getHeight()I
    .locals 1

    .prologue
    .line 3224
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    .prologue
    .line 3216
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    return v0
.end method

.method public getX()I
    .locals 1

    .prologue
    .line 3232
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    return v0
.end method

.method public getY()I
    .locals 1

    .prologue
    .line 3240
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    return v0
.end method

.method public setHeight(I)V
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 3220
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    .line 3221
    return-void
.end method

.method public setWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 3212
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    .line 3213
    return-void
.end method

.method public setX(I)V
    .locals 0
    .param p1, "x"    # I

    .prologue
    .line 3228
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 3229
    return-void
.end method

.method public setY(I)V
    .locals 0
    .param p1, "y"    # I

    .prologue
    .line 3236
    iput p1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 3237
    return-void
.end method

.method public setup(IIIIZI)V
    .locals 6
    .param p1, "cellWidth"    # I
    .param p2, "cellHeight"    # I
    .param p3, "widthGap"    # I
    .param p4, "heightGap"    # I
    .param p5, "invertHorizontally"    # Z
    .param p6, "colCount"    # I

    .prologue
    .line 3188
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->isLockedToGrid:Z

    if-eqz v4, :cond_1

    .line 3189
    iget v0, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 3190
    .local v0, "myCellHSpan":I
    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 3191
    .local v1, "myCellVSpan":I
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_2

    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellX:I

    .line 3192
    .local v2, "myCellX":I
    :goto_0
    iget-boolean v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->useTmpCoords:Z

    if-eqz v4, :cond_3

    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->tmpCellY:I

    .line 3194
    .local v3, "myCellY":I
    :goto_1
    if-eqz p5, :cond_0

    .line 3195
    sub-int v4, p6, v2

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    sub-int v2, v4, v5

    .line 3198
    :cond_0
    mul-int v4, v0, p1

    add-int/lit8 v5, v0, -0x1

    mul-int/2addr v5, p3

    add-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->leftMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->rightMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->width:I

    .line 3200
    mul-int v4, v1, p2

    add-int/lit8 v5, v1, -0x1

    mul-int/2addr v5, p4

    add-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->topMargin:I

    sub-int/2addr v4, v5

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->bottomMargin:I

    sub-int/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->height:I

    .line 3202
    add-int v4, p1, p3

    mul-int/2addr v4, v2

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->leftMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->x:I

    .line 3203
    add-int v4, p2, p4

    mul-int/2addr v4, v3

    iget v5, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->topMargin:I

    add-int/2addr v4, v5

    iput v4, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->y:I

    .line 3205
    .end local v0    # "myCellHSpan":I
    .end local v1    # "myCellVSpan":I
    .end local v2    # "myCellX":I
    .end local v3    # "myCellY":I
    :cond_1
    return-void

    .line 3191
    .restart local v0    # "myCellHSpan":I
    .restart local v1    # "myCellVSpan":I
    :cond_2
    iget v2, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    goto :goto_0

    .line 3192
    .restart local v2    # "myCellX":I
    :cond_3
    iget v3, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 3208
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
