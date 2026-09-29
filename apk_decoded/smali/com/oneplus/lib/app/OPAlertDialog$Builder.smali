.class public Lcom/oneplus/lib/app/OPAlertDialog$Builder;
.super Ljava/lang/Object;
.source "OPAlertDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/app/OPAlertDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private final P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 352
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 354
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-direct {v0, p1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 355
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I

    .prologue
    .line 368
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 369
    new-instance v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    .line 370
    invoke-static {p1, p2}, Lcom/oneplus/lib/app/OPAlertDialog;->resolveDialogTheme(Landroid/content/Context;I)I

    move-result v2

    invoke-direct {v1, p1, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    .line 372
    return-void
.end method


# virtual methods
.method public create()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 3

    .prologue
    .line 968
    new-instance v0, Lcom/oneplus/lib/app/OPAlertDialog;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;-><init>(Landroid/content/Context;)V

    .line 969
    .local v0, "dialog":Lcom/oneplus/lib/app/OPAlertDialog;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    invoke-static {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->access$000(Lcom/oneplus/lib/app/OPAlertDialog;)Lcom/oneplus/lib/app/OPAlertController;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->apply(Lcom/oneplus/lib/app/OPAlertController;)V

    .line 970
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCancelable(Z)V

    .line 971
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-boolean v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    if-eqz v1, :cond_0

    .line 972
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setCanceledOnTouchOutside(Z)V

    .line 974
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 975
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 976
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    if-eqz v1, :cond_1

    .line 977
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/app/OPAlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    .line 979
    :cond_1
    return-object v0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 383
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v0, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public setAdapter(Landroid/widget/ListAdapter;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 646
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 647
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 648
    return-object p0
.end method

.method public setCancelable(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "cancelable"    # Z

    .prologue
    .line 569
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCancelable:Z

    .line 570
    return-object p0
.end method

.method public setCursor(Landroid/database/Cursor;Landroid/content/DialogInterface$OnClickListener;Ljava/lang/String;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;
    .param p3, "labelColumn"    # Ljava/lang/String;

    .prologue
    .line 665
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 666
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 667
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 668
    return-object p0
.end method

.method public setCustomTitle(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "customTitleView"    # Landroid/view/View;

    .prologue
    .line 423
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCustomTitleView:Landroid/view/View;

    .line 424
    return-object p0
.end method

.method public setIcon(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "iconId"    # I

    .prologue
    .line 455
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    .line 456
    return-object p0
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 465
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 466
    return-object p0
.end method

.method public setIconAttribute(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 3
    .param p1, "attrId"    # I

    .prologue
    .line 479
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 480
    .local v0, "out":Landroid/util/TypedValue;
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 481
    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget v2, v0, Landroid/util/TypedValue;->resourceId:I

    iput v2, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIconId:I

    .line 482
    return-object p0
.end method

.method public setInverseBackgroundForced(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "useInverseBackground"    # Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 946
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mForceInverseBackground:Z

    .line 947
    return-object p0
.end method

.method public setItems(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 618
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 619
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 620
    return-object p0
.end method

.method public setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 630
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 631
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 632
    return-object p0
.end method

.method public setMessage(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "messageId"    # I

    .prologue
    .line 433
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 434
    return-object p0
.end method

.method public setMessage(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "message"    # Ljava/lang/CharSequence;

    .prologue
    .line 443
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 444
    return-object p0
.end method

.method public setMultiChoiceItems(I[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 691
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 692
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 693
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    .line 694
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 695
    return-object p0
.end method

.method public setMultiChoiceItems(Landroid/database/Cursor;Ljava/lang/String;Ljava/lang/String;Landroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "isCheckedColumn"    # Ljava/lang/String;
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 745
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 746
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 747
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsCheckedColumn:Ljava/lang/String;

    .line 748
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 749
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 750
    return-object p0
.end method

.method public setMultiChoiceItems([Ljava/lang/CharSequence;[ZLandroid/content/DialogInterface$OnMultiChoiceClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItems"    # [Z
    .param p3, "listener"    # Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .prologue
    .line 717
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 718
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 719
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItems:[Z

    .line 720
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsMultiChoice:Z

    .line 721
    return-object p0
.end method

.method public setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 520
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 521
    return-object p0
.end method

.method public setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 532
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonText:Ljava/lang/CharSequence;

    .line 533
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNegativeButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 534
    return-object p0
.end method

.method public setNeutralButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 546
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 547
    return-object p0
.end method

.method public setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 558
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonText:Ljava/lang/CharSequence;

    .line 559
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mNeutralButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 560
    return-object p0
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onCancelListener"    # Landroid/content/DialogInterface$OnCancelListener;

    .prologue
    .line 587
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnCancelListener:Landroid/content/DialogInterface$OnCancelListener;

    .line 588
    return-object p0
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onDismissListener"    # Landroid/content/DialogInterface$OnDismissListener;

    .prologue
    .line 597
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    .line 598
    return-object p0
.end method

.method public setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "listener"    # Landroid/widget/AdapterView$OnItemSelectedListener;

    .prologue
    .line 855
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 856
    return-object p0
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "onKeyListener"    # Landroid/content/DialogInterface$OnKeyListener;

    .prologue
    .line 607
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnKeyListener:Landroid/content/DialogInterface$OnKeyListener;

    .line 608
    return-object p0
.end method

.method public setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "textId"    # I
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 493
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 494
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 495
    return-object p0
.end method

.method public setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "text"    # Ljava/lang/CharSequence;
    .param p2, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 506
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 507
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 508
    return-object p0
.end method

.method public setRecycleOnMeasureEnabled(Z)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 954
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mRecycleOnMeasure:Z

    .line 955
    return-object p0
.end method

.method public setSingleChoiceItems(IILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "itemsId"    # I
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 770
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 771
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 772
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 773
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 774
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/database/Cursor;ILjava/lang/String;Landroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "cursor"    # Landroid/database/Cursor;
    .param p2, "checkedItem"    # I
    .param p3, "labelColumn"    # Ljava/lang/String;
    .param p4, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 795
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCursor:Landroid/database/Cursor;

    .line 796
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 797
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 798
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mLabelColumn:Ljava/lang/String;

    .line 799
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 800
    return-object p0
.end method

.method public setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 840
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mAdapter:Landroid/widget/ListAdapter;

    .line 841
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 842
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 843
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 844
    return-object p0
.end method

.method public setSingleChoiceItems([Ljava/lang/CharSequence;ILandroid/content/DialogInterface$OnClickListener;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "items"    # [Ljava/lang/CharSequence;
    .param p2, "checkedItem"    # I
    .param p3, "listener"    # Landroid/content/DialogInterface$OnClickListener;

    .prologue
    .line 818
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mItems:[Ljava/lang/CharSequence;

    .line 819
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mOnClickListener:Landroid/content/DialogInterface$OnClickListener;

    .line 820
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mCheckedItem:I

    .line 821
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mIsSingleChoice:Z

    .line 822
    return-object p0
.end method

.method public setTitle(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "titleId"    # I

    .prologue
    .line 392
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iget-object v1, v1, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 393
    return-object p0
.end method

.method public setTitle(Ljava/lang/CharSequence;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 403
    return-object p0
.end method

.method public setView(I)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "layoutResId"    # I

    .prologue
    .line 868
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 869
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 870
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 871
    return-object p0
.end method

.method public setView(Landroid/view/View;)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x0

    .line 889
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 890
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 891
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 892
    return-object p0
.end method

.method public setView(Landroid/view/View;IIII)Lcom/oneplus/lib/app/OPAlertDialog$Builder;
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "viewSpacingLeft"    # I
    .param p3, "viewSpacingTop"    # I
    .param p4, "viewSpacingRight"    # I
    .param p5, "viewSpacingBottom"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 924
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput-object p1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mView:Landroid/view/View;

    .line 925
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x0

    iput v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewLayoutResId:I

    .line 926
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingSpecified:Z

    .line 927
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p2, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingLeft:I

    .line 928
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p3, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingTop:I

    .line 929
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p4, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingRight:I

    .line 930
    iget-object v0, p0, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->P:Lcom/oneplus/lib/app/OPAlertController$AlertParams;

    iput p5, v0, Lcom/oneplus/lib/app/OPAlertController$AlertParams;->mViewSpacingBottom:I

    .line 931
    return-object p0
.end method

.method public show()Lcom/oneplus/lib/app/OPAlertDialog;
    .locals 1

    .prologue
    .line 993
    invoke-virtual {p0}, Lcom/oneplus/lib/app/OPAlertDialog$Builder;->create()Lcom/oneplus/lib/app/OPAlertDialog;

    move-result-object v0

    .line 994
    .local v0, "dialog":Lcom/oneplus/lib/app/OPAlertDialog;
    invoke-virtual {v0}, Lcom/oneplus/lib/app/OPAlertDialog;->show()V

    .line 995
    return-object v0
.end method
