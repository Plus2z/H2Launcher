.class public Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;
.super Landroid/widget/TextView;
.source "EllipsizingTextView.java"


# static fields
.field public static final ALL_AVAILABLE:I = -0x1


# instance fields
.field private mMaxLines:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 43
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 44
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 46
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 50
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 51
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;Ljava/lang/String;II)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->measureTextViewLineCount(Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method private final init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v3, 0x0

    .line 55
    const/4 v1, 0x1

    new-array v1, v1, [I

    const v2, 0x1010153

    aput v2, v1, v3

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 57
    .local v0, "a":Landroid/content/res/TypedArray;
    const/4 v1, 0x2

    invoke-virtual {v0, v3, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setMaxLines(I)V

    .line 58
    return-void
.end method

.method private measureTextViewLineCount(Ljava/lang/String;II)I
    .locals 5
    .param p1, "text"    # Ljava/lang/String;
    .param p2, "textSize"    # I
    .param p3, "deviceWidth"    # I

    .prologue
    const/4 v4, 0x0

    .line 155
    new-instance v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 156
    .local v1, "textView":Landroid/widget/TextView;
    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 157
    int-to-float v3, p2

    invoke-virtual {v1, v4, v3}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 158
    const/high16 v3, -0x80000000

    invoke-static {p3, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 159
    .local v2, "widthMeasureSpec":I
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 160
    .local v0, "heightMeasureSpec":I
    invoke-virtual {v1, v2, v0}, Landroid/widget/TextView;->measure(II)V

    .line 161
    invoke-virtual {v1}, Landroid/widget/TextView;->getLineCount()I

    move-result v3

    return v3
.end method


# virtual methods
.method protected onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "lengthBefore"    # I
    .param p4, "lengthAfter"    # I

    .prologue
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->onTextChanged(Ljava/lang/CharSequence;III)V

    .line 69
    if-eqz p1, :cond_0

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->updateTextSize(Ljava/lang/String;)V

    .line 70
    return-void

    .line 69
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setMaxLines(I)V
    .locals 0
    .param p1, "maxlines"    # I

    .prologue
    .line 61
    invoke-super {p0, p1}, Landroid/widget/TextView;->setMaxLines(I)V

    .line 62
    iput p1, p0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->mMaxLines:I

    .line 63
    return-void
.end method

.method public setText(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 23
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "avail"    # I

    .prologue
    .line 80
    if-eqz p1, :cond_0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-nez v3, :cond_1

    .line 124
    .end local p1    # "text":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    return-object p1

    .line 83
    .restart local p1    # "text":Ljava/lang/CharSequence;
    :cond_1
    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V

    .line 84
    invoke-virtual/range {p0 .. p1}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v3, -0x1

    move/from16 v0, p2

    if-eq v0, v3, :cond_0

    .line 88
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getLayout()Landroid/text/Layout;

    move-result-object v2

    .line 89
    .local v2, "layout":Landroid/text/Layout;
    if-nez v2, :cond_2

    .line 90
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getWidth()I

    move-result v3

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getCompoundPaddingLeft()I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getCompoundPaddingRight()I

    move-result v4

    sub-int v7, v3, v4

    .line 91
    .local v7, "w":I
    new-instance v2, Landroid/text/StaticLayout;

    .end local v2    # "layout":Landroid/text/Layout;
    const/4 v4, 0x0

    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v6

    sget-object v8, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v9, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v11, 0x0

    move-object/from16 v3, p1

    invoke-direct/range {v2 .. v11}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;IILandroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    .line 95
    .end local v7    # "w":I
    .restart local v2    # "layout":Landroid/text/Layout;
    :cond_2
    move-object/from16 v0, p0

    iget v3, v0, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->mMaxLines:I

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v2, v3}, Landroid/text/Layout;->getLineStart(I)I

    move-result v17

    .line 97
    .local v17, "lastLineStart":I
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 96
    move-object/from16 v0, p1

    move/from16 v1, v17

    invoke-interface {v0, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 97
    invoke-virtual/range {p0 .. p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v4

    move/from16 v0, p2

    int-to-float v5, v0

    sget-object v6, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    .line 96
    invoke-static {v3, v4, v5, v6}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v18

    .line 99
    .local v18, "remainder":Ljava/lang/CharSequence;
    new-instance v12, Landroid/text/SpannableStringBuilder;

    invoke-direct {v12}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 100
    .local v12, "builder":Landroid/text/SpannableStringBuilder;
    invoke-interface/range {p1 .. p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move/from16 v0, v17

    invoke-virtual {v12, v3, v4, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 101
    invoke-static/range {v18 .. v18}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 102
    invoke-interface/range {v18 .. v18}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v12, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 109
    :cond_3
    move-object/from16 v0, p1

    instance-of v3, v0, Landroid/text/Spanned;

    if-eqz v3, :cond_5

    move-object/from16 v19, p1

    .line 110
    check-cast v19, Landroid/text/Spanned;

    .line 111
    .local v19, "s":Landroid/text/Spanned;
    const/4 v3, 0x0

    invoke-interface/range {v19 .. v19}, Landroid/text/Spanned;->length()I

    move-result v4

    const-class v5, Ljava/lang/Object;

    move-object/from16 v0, v19

    invoke-interface {v0, v3, v4, v5}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v21

    .line 112
    .local v21, "spans":[Ljava/lang/Object;
    invoke-virtual {v12}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v13

    .line 113
    .local v13, "destLen":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_1
    move-object/from16 v0, v21

    array-length v3, v0

    move/from16 v0, v16

    if-ge v0, v3, :cond_5

    .line 114
    aget-object v20, v21, v16

    .line 115
    .local v20, "span":Ljava/lang/Object;
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v22

    .line 116
    .local v22, "start":I
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v14

    .line 117
    .local v14, "end":I
    invoke-interface/range {v19 .. v20}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v15

    .line 118
    .local v15, "flags":I
    move/from16 v0, v22

    if-gt v0, v13, :cond_4

    .line 119
    invoke-static {v14, v13}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v0, v20

    move/from16 v1, v22

    invoke-virtual {v12, v0, v1, v3, v15}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 113
    :cond_4
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    .line 123
    .end local v13    # "destLen":I
    .end local v14    # "end":I
    .end local v15    # "flags":I
    .end local v16    # "i":I
    .end local v19    # "s":Landroid/text/Spanned;
    .end local v20    # "span":Ljava/lang/Object;
    .end local v21    # "spans":[Ljava/lang/Object;
    .end local v22    # "start":I
    :cond_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v12}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->setText(Ljava/lang/CharSequence;)V

    move-object/from16 p1, v12

    .line 124
    goto/16 :goto_0
.end method

.method public updateTextSize()V
    .locals 1

    .prologue
    .line 128
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->updateTextSize(Ljava/lang/String;)V

    .line 129
    return-void
.end method

.method public updateTextSize(Ljava/lang/String;)V
    .locals 2
    .param p1, "curText"    # Ljava/lang/String;

    .prologue
    .line 132
    if-eqz p1, :cond_0

    move-object v0, p1

    .line 134
    .local v0, "text":Ljava/lang/String;
    :goto_0
    new-instance v1, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView$1;-><init>(Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->post(Ljava/lang/Runnable;)Z

    .line 152
    return-void

    .line 133
    .end local v0    # "text":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/view/EllipsizingTextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
