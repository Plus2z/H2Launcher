.class public Lnet/oneplus/h2launcher/ExtendedEditText;
.super Landroid/widget/EditText;
.source "ExtendedEditText.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;
    }
.end annotation


# instance fields
.field private mBackKeyListener:Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 44
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 49
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 58
    const/4 v0, 0x4

    if-ne p1, v0, :cond_1

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/ExtendedEditText;->mBackKeyListener:Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;

    if-eqz v0, :cond_0

    .line 60
    iget-object v0, p0, Lnet/oneplus/h2launcher/ExtendedEditText;->mBackKeyListener:Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;->onBackKey()Z

    move-result v0

    .line 64
    :goto_0
    return v0

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 64
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/EditText;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public setOnBackKeyListener(Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;

    .prologue
    .line 52
    iput-object p1, p0, Lnet/oneplus/h2launcher/ExtendedEditText;->mBackKeyListener:Lnet/oneplus/h2launcher/ExtendedEditText$OnBackKeyListener;

    .line 53
    return-void
.end method

.method public showKeyboard()V
    .locals 0

    .prologue
    .line 68
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->showSoftInput()Z

    .line 69
    return-void
.end method

.method protected showSoftInput()Z
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 72
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->requestFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 73
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/ExtendedEditText;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "input_method"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 74
    invoke-virtual {v0, p0, v1}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
