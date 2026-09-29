.class public Lcom/oneplus/lib/app/OPProgressDialog;
.super Lcom/oneplus/lib/app/OPAlertDialog;
.source "OPProgressDialog.java"


# static fields
.field public static final STYLE_HORIZONTAL:I = 0x1

.field public static final STYLE_SPINNER:I


# instance fields
.field private mHasStarted:Z

.field private mIncrementBy:I

.field private mIncrementSecondaryBy:I

.field private mIndeterminate:Z

.field private mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

.field private mMax:I

.field private mMessage:Ljava/lang/CharSequence;

.field private mMessageView:Landroid/widget/TextView;

.field private mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

.field private mProgressDrawable:Landroid/graphics/drawable/Drawable;

.field private mProgressNumber:Landroid/widget/TextView;

.field private mProgressNumberFormat:Ljava/lang/String;

.field private mProgressPercent:Landroid/widget/TextView;

.field private mProgressPercentFormat:Ljava/text/NumberFormat;

.field private mProgressStyle:I

.field private mProgressVal:I

.field private mSecondaryProgressVal:I

.field private mViewUpdateHandler:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 76
    invoke-direct {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    .line 77
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->initFormats()V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 81
    invoke-direct {p0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;I)V

    .line 56
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    .line 82
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->initFormats()V

    .line 83
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPProgressDialog;)Lcom/oneplus/lib/widget/OPProgressBar;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oneplus/lib/app/OPProgressDialog;)Ljava/text/NumberFormat;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oneplus/lib/app/OPProgressDialog;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPProgressDialog;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method private initFormats()V
    .locals 2

    .prologue
    .line 86
    const-string v0, "%1d/%2d"

    iput-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 87
    invoke-static {}, Ljava/text/NumberFormat;->getPercentInstance()Ljava/text/NumberFormat;

    move-result-object v0

    iput-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 88
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/text/NumberFormat;->setMaximumFractionDigits(I)V

    .line 89
    return-void
.end method

.method private onProgressChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 345
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 346
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 350
    :cond_0
    return-void
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 93
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/oneplus/lib/app/OPProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/oneplus/lib/app/OPProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Lcom/oneplus/lib/app/OPProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z

    .prologue
    .line 98
    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/app/OPProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZ)Lcom/oneplus/lib/app/OPProgressDialog;
    .locals 6
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z

    .prologue
    .line 103
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    invoke-static/range {v0 .. v5}, Lcom/oneplus/lib/app/OPProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPProgressDialog;

    move-result-object v0

    return-object v0
.end method

.method public static show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZZLandroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPProgressDialog;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "title"    # Ljava/lang/CharSequence;
    .param p2, "message"    # Ljava/lang/CharSequence;
    .param p3, "indeterminate"    # Z
    .param p4, "cancelable"    # Z
    .param p5, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 109
    new-instance v0, Lcom/oneplus/lib/app/OPProgressDialog;

    invoke-direct {v0, p0}, Lcom/oneplus/lib/app/OPProgressDialog;-><init>(Landroid/content/Context;)V

    .line 110
    .local v0, "dialog":Lcom/oneplus/lib/app/OPProgressDialog;
    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 111
    invoke-virtual {v0, p2}, Lcom/oneplus/lib/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 112
    invoke-virtual {v0, p3}, Lcom/oneplus/lib/app/OPProgressDialog;->setIndeterminate(Z)V

    .line 113
    invoke-virtual {v0, p4}, Lcom/oneplus/lib/app/OPProgressDialog;->setCancelable(Z)V

    .line 114
    invoke-virtual {v0, p5}, Lcom/oneplus/lib/app/OPProgressDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 115
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPProgressDialog;->show()V

    .line 116
    return-object v0
.end method


# virtual methods
.method public getMax()I
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 238
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar;->getMax()I

    move-result v0

    .line 240
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public getProgress()I
    .locals 1

    .prologue
    .line 223
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 224
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar;->getProgress()I

    move-result v0

    .line 226
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public getSecondaryProgress()I
    .locals 1

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 231
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar;->getSecondaryProgress()I

    move-result v0

    .line 233
    :goto_0
    return v0

    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method

.method public incrementProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 253
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->incrementProgressBy(I)V

    .line 255
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 259
    :goto_0
    return-void

    .line 257
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    goto :goto_0
.end method

.method public incrementSecondaryProgressBy(I)V
    .locals 1
    .param p1, "diff"    # I

    .prologue
    .line 262
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->incrementSecondaryProgressBy(I)V

    .line 264
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 268
    :goto_0
    return-void

    .line 266
    :cond_0
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    add-int/2addr v0, p1

    iput v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    goto :goto_0
.end method

.method public isIndeterminate()Z
    .locals 1

    .prologue
    .line 295
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0}, Lcom/oneplus/lib/widget/OPProgressBar;->isIndeterminate()Z

    move-result v0

    .line 298
    :goto_0
    return v0

    :cond_0
    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v5, 0x0

    const v4, 0x102000d

    .line 121
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 122
    .local v0, "inflater":Landroid/view/LayoutInflater;
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_8

    .line 127
    new-instance v2, Lcom/oneplus/lib/app/OPProgressDialog$1;

    invoke-direct {v2, p0}, Lcom/oneplus/lib/app/OPProgressDialog$1;-><init>(Lcom/oneplus/lib/app/OPProgressDialog;)V

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mViewUpdateHandler:Landroid/os/Handler;

    .line 152
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_alert_dialog_progress_material:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 153
    .local v1, "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    .line 154
    sget v2, Lcom/oneplus/commonctrl/R$id;->progress_number:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumber:Landroid/widget/TextView;

    .line 155
    sget v2, Lcom/oneplus/commonctrl/R$id;->progress_percent:I

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercent:Landroid/widget/TextView;

    .line 156
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setView(Landroid/view/View;)V

    .line 163
    :goto_0
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    if-lez v2, :cond_0

    .line 164
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setMax(I)V

    .line 166
    :cond_0
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    if-lez v2, :cond_1

    .line 167
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setProgress(I)V

    .line 169
    :cond_1
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    if-lez v2, :cond_2

    .line 170
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setSecondaryProgress(I)V

    .line 172
    :cond_2
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    if-lez v2, :cond_3

    .line 173
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementBy:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->incrementProgressBy(I)V

    .line 175
    :cond_3
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    if-lez v2, :cond_4

    .line 176
    iget v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIncrementSecondaryBy:I

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->incrementSecondaryProgressBy(I)V

    .line 178
    :cond_4
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_5

    .line 179
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 181
    :cond_5
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_6

    .line 182
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    :cond_6
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    if-eqz v2, :cond_7

    .line 185
    iget-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 187
    :cond_7
    iget-boolean v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminate:Z

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/app/OPProgressDialog;->setIndeterminate(Z)V

    .line 188
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 189
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->onCreate(Landroid/os/Bundle;)V

    .line 190
    return-void

    .line 158
    .end local v1    # "view":Landroid/view/View;
    :cond_8
    sget v2, Lcom/oneplus/commonctrl/R$layout;->op_progress_dialog_material:I

    invoke-virtual {v0, v2, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 159
    .restart local v1    # "view":Landroid/view/View;
    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oneplus/lib/widget/OPProgressBar;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    .line 160
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessageView:Landroid/widget/TextView;

    .line 161
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/app/OPProgressDialog;->setView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 194
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onStart()V

    .line 195
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    .line 196
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 200
    invoke-super {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->onStop()V

    .line 201
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    .line 202
    return-void
.end method

.method public setIndeterminate(Z)V
    .locals 1
    .param p1, "indeterminate"    # Z

    .prologue
    .line 287
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 288
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminate(Z)V

    .line 292
    :goto_0
    return-void

    .line 290
    :cond_0
    iput-boolean p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminate:Z

    goto :goto_0
.end method

.method public setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 280
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setIndeterminateDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 284
    :goto_0
    return-void

    .line 282
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mIndeterminateDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setMax(I)V
    .locals 1
    .param p1, "max"    # I

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 245
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setMax(I)V

    .line 246
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 250
    :goto_0
    return-void

    .line 248
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMax:I

    goto :goto_0
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 303
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_1

    .line 304
    iget v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 305
    invoke-super {p0, p1}, Lcom/oneplus/lib/app/OPAlertDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 310
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mMessage:Ljava/lang/CharSequence;

    goto :goto_0
.end method

.method public setProgress(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 205
    iget-boolean v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mHasStarted:Z

    if-eqz v0, :cond_0

    .line 206
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgress(I)V

    .line 207
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 211
    :goto_0
    return-void

    .line 209
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressVal:I

    goto :goto_0
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 271
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 272
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 276
    :goto_0
    return-void

    .line 274
    :cond_0
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressDrawable:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method public setProgressNumberFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "format"    # Ljava/lang/String;

    .prologue
    .line 327
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressNumberFormat:Ljava/lang/String;

    .line 328
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 329
    return-void
.end method

.method public setProgressPercentFormat(Ljava/text/NumberFormat;)V
    .locals 0
    .param p1, "format"    # Ljava/text/NumberFormat;

    .prologue
    .line 340
    iput-object p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressPercentFormat:Ljava/text/NumberFormat;

    .line 341
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 342
    return-void
.end method

.method public setProgressStyle(I)V
    .locals 0
    .param p1, "style"    # I

    .prologue
    .line 315
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgressStyle:I

    .line 316
    return-void
.end method

.method public setSecondaryProgress(I)V
    .locals 1
    .param p1, "secondaryProgress"    # I

    .prologue
    .line 214
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mProgress:Lcom/oneplus/lib/widget/OPProgressBar;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/widget/OPProgressBar;->setSecondaryProgress(I)V

    .line 216
    invoke-direct {p0}, Lcom/oneplus/lib/app/OPProgressDialog;->onProgressChanged()V

    .line 220
    :goto_0
    return-void

    .line 218
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/app/OPProgressDialog;->mSecondaryProgressVal:I

    goto :goto_0
.end method
