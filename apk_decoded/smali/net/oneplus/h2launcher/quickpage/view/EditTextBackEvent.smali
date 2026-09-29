.class public Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent;
.super Landroid/widget/EditText;
.source "EditTextBackEvent.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;
    }
.end annotation


# instance fields
.field private mOnImeBack:Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 13
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 14
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 17
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 21
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 22
    return-void
.end method


# virtual methods
.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 26
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    .line 27
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 28
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent;->mOnImeBack:Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent;->mOnImeBack:Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;->onImeBack()V

    .line 30
    :cond_0
    invoke-super {p0, p2}, Landroid/widget/EditText;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public setOnEditTextImeBackListener(Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;

    .prologue
    .line 34
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent;->mOnImeBack:Lnet/oneplus/h2launcher/quickpage/view/EditTextBackEvent$EditTextImeBackListener;

    .line 35
    return-void
.end method
