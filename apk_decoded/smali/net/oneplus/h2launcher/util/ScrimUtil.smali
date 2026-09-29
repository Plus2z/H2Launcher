.class public Lnet/oneplus/h2launcher/util/ScrimUtil;
.super Ljava/lang/Object;
.source "ScrimUtil.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static makeCubicGradientScrimDrawable(III)Landroid/graphics/drawable/Drawable;
    .locals 22
    .param p0, "baseColor"    # I
    .param p1, "numStops"    # I
    .param p2, "gravity"    # I

    .prologue
    .line 41
    const/4 v2, 0x2

    move/from16 v0, p1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 43
    new-instance v13, Landroid/graphics/drawable/PaintDrawable;

    invoke-direct {v13}, Landroid/graphics/drawable/PaintDrawable;-><init>()V

    .line 44
    .local v13, "paintDrawable":Landroid/graphics/drawable/PaintDrawable;
    new-instance v2, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v2}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/PaintDrawable;->setShape(Landroid/graphics/drawable/shapes/Shape;)V

    .line 46
    move/from16 v0, p1

    new-array v7, v0, [I

    .line 48
    .local v7, "stopColors":[I
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->red(I)I

    move-result v14

    .line 49
    .local v14, "red":I
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->green(I)I

    move-result v10

    .line 50
    .local v10, "green":I
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->blue(I)I

    move-result v9

    .line 51
    .local v9, "blue":I
    invoke-static/range {p0 .. p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v8

    .line 53
    .local v8, "alpha":I
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_0
    move/from16 v0, p1

    if-ge v11, v0, :cond_0

    .line 54
    int-to-float v2, v11

    add-int/lit8 v16, p1, -0x1

    move/from16 v0, v16

    int-to-float v0, v0

    move/from16 v16, v0

    div-float v15, v2, v16

    .line 55
    .local v15, "x":F
    const/4 v2, 0x0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    float-to-double v0, v15

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4008000000000000L    # 3.0

    invoke-static/range {v18 .. v21}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-static {v2, v0}, Ljava/lang/Math;->max(FF)F

    move-result v12

    .line 56
    .local v12, "opacity":F
    int-to-float v2, v8

    mul-float/2addr v2, v12

    float-to-int v2, v2

    invoke-static {v2, v14, v10, v9}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    aput v2, v7, v11

    .line 53
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 60
    .end local v12    # "opacity":F
    .end local v15    # "x":F
    :cond_0
    and-int/lit8 v2, p2, 0x7

    packed-switch v2, :pswitch_data_0

    .line 70
    :pswitch_0
    const/4 v3, 0x0

    .line 71
    .local v3, "x0":F
    const/4 v5, 0x0

    .line 74
    .local v5, "x1":F
    :goto_1
    and-int/lit8 v2, p2, 0x70

    sparse-switch v2, :sswitch_data_0

    .line 84
    const/4 v4, 0x0

    .line 85
    .local v4, "y0":F
    const/4 v6, 0x0

    .line 89
    .local v6, "y1":F
    :goto_2
    new-instance v2, Lnet/oneplus/h2launcher/util/ScrimUtil$1;

    invoke-direct/range {v2 .. v7}, Lnet/oneplus/h2launcher/util/ScrimUtil$1;-><init>(FFFF[I)V

    invoke-virtual {v13, v2}, Landroid/graphics/drawable/PaintDrawable;->setShaderFactory(Landroid/graphics/drawable/ShapeDrawable$ShaderFactory;)V

    .line 102
    return-object v13

    .line 62
    .end local v3    # "x0":F
    .end local v4    # "y0":F
    .end local v5    # "x1":F
    .end local v6    # "y1":F
    :pswitch_1
    const/high16 v3, 0x3f800000    # 1.0f

    .line 63
    .restart local v3    # "x0":F
    const/4 v5, 0x0

    .line 64
    .restart local v5    # "x1":F
    goto :goto_1

    .line 66
    .end local v3    # "x0":F
    .end local v5    # "x1":F
    :pswitch_2
    const/4 v3, 0x0

    .line 67
    .restart local v3    # "x0":F
    const/high16 v5, 0x3f800000    # 1.0f

    .line 68
    .restart local v5    # "x1":F
    goto :goto_1

    .line 76
    :sswitch_0
    const/high16 v4, 0x3f800000    # 1.0f

    .line 77
    .restart local v4    # "y0":F
    const/4 v6, 0x0

    .line 78
    .restart local v6    # "y1":F
    goto :goto_2

    .line 80
    .end local v4    # "y0":F
    .end local v6    # "y1":F
    :sswitch_1
    const/4 v4, 0x0

    .line 81
    .restart local v4    # "y0":F
    const/high16 v6, 0x3f800000    # 1.0f

    .line 82
    .restart local v6    # "y1":F
    goto :goto_2

    .line 60
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch

    .line 74
    :sswitch_data_0
    .sparse-switch
        0x30 -> :sswitch_0
        0x50 -> :sswitch_1
    .end sparse-switch
.end method
