.class public Lnet/oneplus/h2launcher/FolderScrollView;
.super Landroid/widget/ScrollView;
.source "FolderScrollView.java"


# instance fields
.field private mGestureDetector:Landroid/view/GestureDetector;

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/view/View$OnScrollChangeListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    .line 21
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->init()V

    .line 22
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    .line 26
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->init()V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 16
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    .line 31
    invoke-direct {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->init()V

    .line 32
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/FolderScrollView;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/FolderScrollView;

    .prologue
    .line 15
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method private init()V
    .locals 3

    .prologue
    .line 35
    new-instance v0, Lnet/oneplus/h2launcher/FolderScrollView$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/FolderScrollView$1;-><init>(Lnet/oneplus/h2launcher/FolderScrollView;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/FolderScrollView;->setOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V

    .line 46
    new-instance v0, Landroid/view/GestureDetector;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/FolderScrollView$2;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/FolderScrollView$2;-><init>(Lnet/oneplus/h2launcher/FolderScrollView;)V

    invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 53
    return-void
.end method


# virtual methods
.method public addOnScrollChangeListener(Landroid/view/View$OnScrollChangeListener;)V
    .locals 3
    .param p1, "listener"    # Landroid/view/View$OnScrollChangeListener;

    .prologue
    .line 64
    instance-of v2, p1, Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v2, :cond_1

    .line 65
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 66
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnScrollChangeListener;

    .line 67
    .local v1, "l":Landroid/view/View$OnScrollChangeListener;
    instance-of v2, v1, Lnet/oneplus/h2launcher/FolderScrollBar;

    if-eqz v2, :cond_0

    .line 68
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 65
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 72
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/view/View$OnScrollChangeListener;
    :cond_1
    instance-of v2, p1, Lnet/oneplus/h2launcher/Folder;

    if-eqz v2, :cond_3

    .line 73
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .restart local v0    # "i":I
    :goto_1
    if-ltz v0, :cond_3

    .line 74
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View$OnScrollChangeListener;

    .line 75
    .restart local v1    # "l":Landroid/view/View$OnScrollChangeListener;
    instance-of v2, v1, Lnet/oneplus/h2launcher/Folder;

    if-eqz v2, :cond_2

    .line 76
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 73
    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_1

    .line 80
    .end local v0    # "i":I
    .end local v1    # "l":Landroid/view/View$OnScrollChangeListener;
    :cond_3
    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mListeners:Ljava/util/List;

    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    return-void
.end method

.method public getVerticalScrollExtent()I
    .locals 1

    .prologue
    .line 60
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->computeVerticalScrollExtent()I

    move-result v0

    return v0
.end method

.method public getVerticalScrollRange()I
    .locals 1

    .prologue
    .line 56
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderScrollView;->computeVerticalScrollRange()I

    move-result v0

    return v0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "ev"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    .line 86
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderScrollView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 87
    invoke-super {p0, p1}, Landroid/widget/ScrollView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method
