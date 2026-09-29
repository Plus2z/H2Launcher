.class public Lcom/oneplus/lib/widget/OPEditText;
.super Landroid/widget/EditText;
.source "OPEditText.java"


# static fields
.field static final TAG:Ljava/lang/String; = "OPListView"


# instance fields
.field private mBackground:Landroid/graphics/drawable/Drawable;

.field private mContext:Landroid/content/Context;

.field private mErrorBackground:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 30
    sget v0, Lcom/oneplus/commonctrl/R$attr;->OPEditTextStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 36
    sget v0, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_EditText:I

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/widget/OPEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 37
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v1, 0x0

    .line 43
    invoke-static {p1, p3}, Lcom/oneplus/lib/widget/util/utils;->resolveDefStyleAttr(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 15
    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    .line 17
    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 18
    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    .line 44
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/widget/OPEditText;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method private getETBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_edit_text_material_light:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private getETErrBackground()Landroid/graphics/drawable/Drawable;
    .locals 3

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/oneplus/lib/widget/OPEditText;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oneplus/commonctrl/R$drawable;->op_edit_text_error_material_light:I

    iget-object v2, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    const-string v1, "OPListView"

    const-string v2, "OPEditText init"

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    iput-object p1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    .line 51
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/oneplus/commonctrl/R$styleable;->OPEditText:[I

    sget v3, Lcom/oneplus/commonctrl/R$attr;->OPEditTextStyle:I

    sget v4, Lcom/oneplus/commonctrl/R$style;->Oneplus_DeviceDefault_Widget_Material_EditText:I

    invoke-virtual {v1, p2, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 52
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPEditText_android_background:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 53
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->OPEditText_colorError:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    .line 54
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 56
    iget-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 57
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    .line 58
    invoke-direct {p0}, Lcom/oneplus/lib/widget/OPEditText;->getETErrBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    .line 60
    :cond_0
    return-void
.end method


# virtual methods
.method public setError(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "error"    # Ljava/lang/CharSequence;

    .prologue
    .line 67
    invoke-super {p0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    .line 68
    const-string v0, "OPListView"

    const-string v1, "OPEditText setError"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    if-eqz p1, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mErrorBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 73
    :goto_0
    return-void

    .line 72
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/widget/OPEditText;->mBackground:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/widget/OPEditText;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
