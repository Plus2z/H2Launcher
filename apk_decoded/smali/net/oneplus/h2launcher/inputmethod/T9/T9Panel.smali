.class public Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;
.super Landroid/widget/LinearLayout;
.source "T9Panel.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;,
        Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;
    }
.end annotation


# instance fields
.field private mButtonDel:Landroid/widget/LinearLayout;

.field private mButtonEight:Landroid/widget/LinearLayout;

.field private mButtonFive:Landroid/widget/LinearLayout;

.field private mButtonFour:Landroid/widget/LinearLayout;

.field private mButtonNine:Landroid/widget/LinearLayout;

.field private mButtonOne:Landroid/widget/LinearLayout;

.field private mButtonSeven:Landroid/widget/LinearLayout;

.field private mButtonSix:Landroid/widget/LinearLayout;

.field private mButtonThree:Landroid/widget/LinearLayout;

.field private mButtonTwo:Landroid/widget/LinearLayout;

.field private mButtonZero:Landroid/widget/LinearLayout;

.field private mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

.field private mKeyboardContainer:Landroid/view/View;

.field private mListener:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 58
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 63
    return-void
.end method


# virtual methods
.method public init(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 3
    .param p1, "globalSearchView"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 70
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .line 71
    const v0, 0x7f1100b5

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mKeyboardContainer:Landroid/view/View;

    .line 73
    const v0, 0x7f1101c8

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonZero:Landroid/widget/LinearLayout;

    .line 74
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonZero:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->ZERO:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 75
    const v0, 0x7f1101bf

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonOne:Landroid/widget/LinearLayout;

    .line 76
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonOne:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->ONE:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 77
    const v0, 0x7f1101c0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonTwo:Landroid/widget/LinearLayout;

    .line 78
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonTwo:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->TWO:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 79
    const v0, 0x7f1101c1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonThree:Landroid/widget/LinearLayout;

    .line 80
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonThree:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->THREE:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 81
    const v0, 0x7f1101c2

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFour:Landroid/widget/LinearLayout;

    .line 82
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFour:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->FOUR:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 83
    const v0, 0x7f1101c3

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFive:Landroid/widget/LinearLayout;

    .line 84
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFive:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->FIVE:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 85
    const v0, 0x7f1101c4

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSix:Landroid/widget/LinearLayout;

    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSix:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->SIX:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 87
    const v0, 0x7f1101c5

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSeven:Landroid/widget/LinearLayout;

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSeven:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->SEVEN:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 89
    const v0, 0x7f1101c6

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonEight:Landroid/widget/LinearLayout;

    .line 90
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonEight:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->EIGHT:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 91
    const v0, 0x7f1101c7

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonNine:Landroid/widget/LinearLayout;

    .line 92
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonNine:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->NINE:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 93
    const v0, 0x7f1101c9

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonDel:Landroid/widget/LinearLayout;

    .line 94
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonDel:Landroid/widget/LinearLayout;

    sget-object v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->DEL:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonZero:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonZero:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonOne:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonOne:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonTwo:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonTwo:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 103
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonThree:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonThree:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 105
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFour:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFour:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 107
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFive:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonFive:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 109
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSix:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSix:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSeven:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonSeven:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 113
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonEight:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 114
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonEight:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonNine:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonNine:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonDel:Landroid/widget/LinearLayout;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mGlobalSearchView:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 119
    iget-object v0, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mButtonDel:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p0}, Landroid/widget/LinearLayout;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 120
    return-void
.end method

.method public isShow()Z
    .locals 1

    .prologue
    .line 139
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 129
    iget-object v1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mListener:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-interface {v1, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;->onPanelClick(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;)V

    .line 130
    return-void
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 124
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 125
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mListener:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;

    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    invoke-interface {v1, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;->onPanelLongClick(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;)V

    .line 135
    const/4 v0, 0x1

    return v0
.end method

.method public setOnClickHandler(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;)V
    .locals 0
    .param p1, "listener"    # Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;

    .prologue
    .line 66
    iput-object p1, p0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->mListener:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;

    .line 67
    return-void
.end method
