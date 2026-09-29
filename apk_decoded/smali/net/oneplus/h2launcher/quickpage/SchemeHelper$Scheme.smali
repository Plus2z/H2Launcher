.class public Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;
.super Ljava/lang/Object;
.source "SchemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/SchemeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Scheme"
.end annotation


# instance fields
.field private backgroundColor:I

.field private floatingButtonColor:I

.field private headerContourColor:I

.field private itemBackground:I

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

.field private widgetBackgroundColor:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/SchemeHelper;
    .param p2, "headerImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 72
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->this$0:Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->backgroundColor:I

    .line 74
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02b2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->widgetBackgroundColor:I

    .line 75
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02aa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->itemBackground:I

    .line 76
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e02ae

    .line 77
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->headerContourColor:I

    .line 78
    invoke-static {p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e012b

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->floatingButtonColor:I

    .line 88
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getBackgroundColor()I
    .locals 1

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->backgroundColor:I

    return v0
.end method

.method public getFloatingButtonColor()I
    .locals 1

    .prologue
    .line 107
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->floatingButtonColor:I

    return v0
.end method

.method public getHeaderContourColor()I
    .locals 1

    .prologue
    .line 99
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->headerContourColor:I

    return v0
.end method

.method public getItemBackground()I
    .locals 1

    .prologue
    .line 103
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->itemBackground:I

    return v0
.end method

.method public getWidgetBackgroundColor()I
    .locals 1

    .prologue
    .line 95
    iget v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->widgetBackgroundColor:I

    return v0
.end method
