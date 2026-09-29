.class public Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;
.super Ljava/lang/Object;
.source "TextDrawable.java"

# interfaces
.implements Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
.implements Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;
.implements Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private borderThickness:I

.field private color:I

.field private font:Landroid/graphics/Typeface;

.field private fontSize:I

.field private height:I

.field private isBold:Z

.field public radius:F

.field private shape:Landroid/graphics/drawable/shapes/RectShape;

.field private text:Ljava/lang/String;

.field public textColor:I

.field private toUpperCase:Z

.field private width:I


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, -0x1

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 174
    const v0, -0x777778

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->color:I

    .line 175
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->textColor:I

    .line 176
    iput v2, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->borderThickness:I

    .line 177
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->width:I

    .line 178
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->height:I

    .line 179
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 180
    const-string v0, "sans-serif-light"

    invoke-static {v0, v2}, Landroid/graphics/Typeface;->create(Ljava/lang/String;I)Landroid/graphics/Typeface;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 181
    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->fontSize:I

    .line 182
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->isBold:Z

    .line 183
    iput-boolean v2, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->toUpperCase:Z

    .line 184
    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$1;

    .prologue
    .line 146
    invoke-direct {p0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)Landroid/graphics/drawable/shapes/RectShape;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->height:I

    return v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->width:I

    return v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->toUpperCase:Z

    return v0
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->text:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->color:I

    return v0
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->fontSize:I

    return v0
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->isBold:Z

    return v0
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)Landroid/graphics/Typeface;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    return-object v0
.end method

.method static synthetic access$900(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;

    .prologue
    .line 146
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->borderThickness:I

    return v0
.end method


# virtual methods
.method public beginConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0

    .prologue
    .line 228
    return-object p0
.end method

.method public bold()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 217
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->isBold:Z

    .line 218
    return-object p0
.end method

.method public build(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;
    .locals 2
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 276
    iput p2, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->color:I

    .line 277
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->text:Ljava/lang/String;

    .line 278
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;-><init>(Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$1;)V

    return-object v0
.end method

.method public buildRect(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 258
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->rect()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;

    .line 259
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->build(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRound(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I

    .prologue
    .line 270
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->round()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;

    .line 271
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->build(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public buildRoundRect(Ljava/lang/String;II)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;
    .locals 1
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "color"    # I
    .param p3, "radius"    # I

    .prologue
    .line 264
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->roundRect(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;

    .line 265
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->build(Ljava/lang/String;I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable;

    move-result-object v0

    return-object v0
.end method

.method public endConfig()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IShapeBuilder;
    .locals 0

    .prologue
    .line 233
    return-object p0
.end method

.method public fontSize(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "size"    # I

    .prologue
    .line 212
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->fontSize:I

    .line 213
    return-object p0
.end method

.method public height(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "height"    # I

    .prologue
    .line 192
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->height:I

    .line 193
    return-object p0
.end method

.method public rect()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 238
    new-instance v0, Landroid/graphics/drawable/shapes/RectShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/RectShape;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 239
    return-object p0
.end method

.method public round()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;
    .locals 1

    .prologue
    .line 244
    new-instance v0, Landroid/graphics/drawable/shapes/OvalShape;

    invoke-direct {v0}, Landroid/graphics/drawable/shapes/OvalShape;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 245
    return-object p0
.end method

.method public roundRect(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IBuilder;
    .locals 4
    .param p1, "radius"    # I

    .prologue
    const/4 v3, 0x0

    .line 250
    int-to-float v1, p1

    iput v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->radius:F

    .line 251
    const/16 v1, 0x8

    new-array v0, v1, [F

    const/4 v1, 0x0

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x1

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x2

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x3

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x4

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x5

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x6

    int-to-float v2, p1

    aput v2, v0, v1

    const/4 v1, 0x7

    int-to-float v2, p1

    aput v2, v0, v1

    .line 252
    .local v0, "radii":[F
    new-instance v1, Landroid/graphics/drawable/shapes/RoundRectShape;

    invoke-direct {v1, v0, v3, v3}, Landroid/graphics/drawable/shapes/RoundRectShape;-><init>([FLandroid/graphics/RectF;[F)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->shape:Landroid/graphics/drawable/shapes/RectShape;

    .line 253
    return-object p0
.end method

.method public textColor(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 197
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->textColor:I

    .line 198
    return-object p0
.end method

.method public toUpperCase()Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 1

    .prologue
    .line 222
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->toUpperCase:Z

    .line 223
    return-object p0
.end method

.method public useFont(Landroid/graphics/Typeface;)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "font"    # Landroid/graphics/Typeface;

    .prologue
    .line 207
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->font:Landroid/graphics/Typeface;

    .line 208
    return-object p0
.end method

.method public width(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 187
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->width:I

    .line 188
    return-object p0
.end method

.method public withBorder(I)Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$IConfigBuilder;
    .locals 0
    .param p1, "thickness"    # I

    .prologue
    .line 202
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/util/TextDrawable$Builder;->borderThickness:I

    .line 203
    return-object p0
.end method
