.class public Lcom/oneplus/lib/app/OPAlertDialog;
.super Landroid/app/Dialog;
.source "OPAlertDialog.java"

# interfaces
.implements Landroid/content/DialogInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    }
.end annotation


# instance fields
.field private mAlert:Lcom/oneplus/lib/app/OPAlertController;

.field protected mContext:Landroid/content/Context;


# direct methods
.method protected constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 67
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    const/4 v1, 0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 68
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "themeResId"    # I

    .prologue
    .line 97
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;IZ)V

    .line 98
    return-void
.end method

.method constructor <init>(Landroid/content/Context;IZ)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "createThemeContextWrapper"    # Z

    .prologue
    .line 101
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 103
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-direct {v0, v1, p0, v2}, Lcom/oneplus/lib/app/OPAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    .line 104
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method protected constructor <init>(Landroid/content/Context;ZLandroid/content/DialogInterface$OnCancelListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "cancelable"    # Z
    .param p3, "cancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 108
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    .line 111
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    .line 112
    invoke-virtual {p0, p3}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 113
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-direct {v0, p1, p0, v1}, Lcom/oneplus/lib/app/OPAlertController;-><init>(Landroid/content/Context;Landroid/content/DialogInterface;Landroid/view/Window;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    .line 114
    iput-object p1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    .line 115
    return-void
.end method

.method static synthetic access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;
    .locals 1
    .param p0, "x0"    # Lcom/oneplus/lib/app/OPAlertDialog;

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    return-object v0
.end method

.method static resolveDialogTheme(Landroid/content/Context;I)I
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "themeResId"    # I

    .prologue
    .line 118
    const/high16 v1, 0x1000000

    if-lt p1, v1, :cond_0

    .line 123
    .end local p1    # "themeResId":I
    :goto_0
    return p1

    .line 121
    .restart local p1    # "themeResId":I
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 122
    .local v0, "outValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010309

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 123
    iget p1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method


# virtual methods
.method public getButton(I)Landroid/widget/Button;
    .locals 1
    .param p1, "whichButton"    # I

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    return-object v0
.end method

.method public getListView()Landroid/widget/ListView;
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertController;->getListView()Landroid/widget/ListView;

    move-result-object v0

    return-object v0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 322
    invoke-super {p0, p1}, Landroid/app/Dialog;->onCreate(Landroid/os/Bundle;)V

    .line 323
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertController;->installContent()V

    .line 324
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 328
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 329
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 334
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertController;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 335
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2}, Landroid/app/Dialog;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 223
    return-void
.end method

.method public setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V
    .locals 2
    .param p1, "whichButton"    # I
    .param p2, "text"    # Ljava/lang/CharSequence;
    .param p3, "msg"    # Landroid/os/Message;

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, p2, v1, p3}, Lcom/oneplus/lib/app/OPAlertController;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;Landroid/os/Message;)V

    .line 209
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 263
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 264
    return-void
.end method

.method public setButton(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 231
    const/4 v0, -0x1

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 232
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 276
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 277
    return-void
.end method

.method public setButton2(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 240
    const/4 v0, -0x2

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 241
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 289
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 290
    return-void
.end method

.method public setButton3(Ljava/lang/CharSequence;Landroid/os/Message;)V
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "msg"    # Landroid/os/Message;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 249
    const/4 v0, -0x3

    invoke-virtual {p0, v0, p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/os/Message;)V

    .line 250
    return-void
.end method

.method public setCustomTitle(Landroid/view/View;)V
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setCustomTitle(Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 298
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    .line 299
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 302
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 303
    return-void
.end method

.method public setIconAttribute(I)V
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 311
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 312
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 313
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController;->setIcon(I)V

    .line 314
    return-void
.end method

.method public setInverseBackgroundForced(Z)V
    .locals 1
    .param p1, "forceInverseBackground"    # Z

    .prologue
    .line 317
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setInverseBackgroundForced(Z)V

    .line 318
    return-void
.end method

.method public setMessage(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setMessage(Ljava/lang/CharSequence;)V

    .line 165
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 152
    invoke-super {p0, p1}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 153
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setTitle(Ljava/lang/CharSequence;)V

    .line 154
    return-void
.end method

.method public setView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;)V

    .line 172
    return-void
.end method

.method public setView(Landroid/view/View;IIII)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog;->mAlert:Lcom/oneplus/lib/app/OPAlertController;

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/oneplus/lib/app/OPAlertController;->setView(Landroid/view/View;IIII)V

    .line 187
    return-void
.end method
