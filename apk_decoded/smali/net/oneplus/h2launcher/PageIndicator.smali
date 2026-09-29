.class public Lnet/oneplus/h2launcher/PageIndicator;
.super Landroid/widget/LinearLayout;
.source "PageIndicator.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
    }
.end annotation


# static fields
.field private static final MODULATE_ALPHA_ENABLED:Z = false

.field private static final TAG:Ljava/lang/String; = "PageIndicator"


# instance fields
.field private mActiveMarkerIndex:I

.field private mColor:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;

.field private mMarkers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/PageIndicatorMarker;",
            ">;"
        }
    .end annotation
.end field

.field private mMaxWindowSize:I

.field private mWindowRange:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 71
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 72
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/PageIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 76
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v4, 0x0

    .line 79
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 40
    const/4 v2, 0x2

    new-array v2, v2, [I

    iput-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    .line 43
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    .line 46
    iput v4, p0, Lnet/oneplus/h2launcher/PageIndicator;->mColor:I

    .line 80
    sget-object v2, Lnet/oneplus/h2launcher/R$styleable;->PageIndicator:[I

    invoke-virtual {p1, p2, v2, p3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, "a":Landroid/content/res/TypedArray;
    const/16 v2, 0xf

    invoke-virtual {v0, v4, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMaxWindowSize:I

    .line 83
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    aput v4, v2, v4

    .line 84
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v3, 0x1

    aput v4, v2, v3

    .line 85
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 86
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 89
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v1

    .line 90
    .local v1, "transition":Landroid/animation/LayoutTransition;
    const-wide/16 v2, 0xaf

    invoke-virtual {v1, v2, v3}, Landroid/animation/LayoutTransition;->setDuration(J)V

    .line 91
    return-void
.end method

.method private disableLayoutTransitions()V
    .locals 2

    .prologue
    .line 102
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 103
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 104
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 105
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 106
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->disableTransitionType(I)V

    .line 107
    return-void
.end method

.method private enableLayoutTransitions()V
    .locals 2

    .prologue
    .line 94
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getLayoutTransition()Landroid/animation/LayoutTransition;

    move-result-object v0

    .line 95
    .local v0, "transition":Landroid/animation/LayoutTransition;
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 96
    const/4 v1, 0x3

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 97
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 98
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/animation/LayoutTransition;->enableTransitionType(I)V

    .line 99
    return-void
.end method

.method private updateMarkerColor(ILnet/oneplus/h2launcher/PageIndicatorMarker;)V
    .locals 0
    .param p1, "color"    # I
    .param p2, "marker"    # Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .prologue
    .line 279
    if-nez p1, :cond_0

    .line 284
    :goto_0
    return-void

    .line 283
    :cond_0
    invoke-virtual {p2, p1}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->updateColor(I)V

    goto :goto_0
.end method

.method private updateMarkersColor(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 268
    if-nez p1, :cond_1

    .line 276
    :cond_0
    return-void

    .line 272
    :cond_1
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 273
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 274
    .local v1, "marker":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->updateColor(I)V

    .line 272
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method addMarker(ILnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;Z)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "marker"    # Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;
    .param p3, "allowAnimations"    # Z

    .prologue
    const/4 v3, 0x0

    .line 177
    iget-object v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v3, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 178
    iget-object v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v2, 0x7f0400a4

    .line 179
    invoke-virtual {v1, v2, p0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 181
    .local v0, "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    iget v1, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->firstPageId:I

    if-eqz v1, :cond_0

    .line 182
    iget v1, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->firstPageId:I

    iget v2, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->firstPageId:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 187
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 188
    iget v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v1, p3}, Lnet/oneplus/h2launcher/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 189
    iget v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mColor:I

    invoke-direct {p0, v1, v0}, Lnet/oneplus/h2launcher/PageIndicator;->updateMarkerColor(ILnet/oneplus/h2launcher/PageIndicatorMarker;)V

    .line 190
    return-void

    .line 184
    :cond_0
    iget v1, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->activeId:I

    iget v2, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->setMarkerDrawables(II)V

    goto :goto_0
.end method

.method addMarkers(Ljava/util/ArrayList;Z)V
    .locals 3
    .param p2, "allowAnimations"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 192
    .local p1, "markers":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;>;"
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 193
    const v2, 0x7fffffff

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    invoke-virtual {p0, v2, v1, p2}, Lnet/oneplus/h2launcher/PageIndicator;->addMarker(ILnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;Z)V

    .line 192
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 195
    :cond_0
    iget v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mColor:I

    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/PageIndicator;->updateMarkersColor(I)V

    .line 196
    return-void
.end method

.method dumpState(Ljava/lang/String;)V
    .locals 6
    .param p1, "txt"    # Ljava/lang/String;

    .prologue
    .line 224
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v2, p1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 225
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tmMarkers: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 227
    iget-object v2, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 228
    .local v1, "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 226
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 230
    .end local v1    # "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    :cond_0
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\twindow: ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x0

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v5, 0x1

    aget v4, v4, v5

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 231
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tchildren: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getChildCount()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getChildCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 233
    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 234
    .restart local v1    # "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\t\t("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 236
    .end local v1    # "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    :cond_1
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\tactive: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lnet/oneplus/h2launcher/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 237
    return-void
.end method

.method offsetWindowCenterTo(IZ)V
    .locals 14
    .param p1, "activeIndex"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    .line 110
    if-gez p1, :cond_0

    .line 111
    new-instance v12, Ljava/lang/Throwable;

    invoke-direct {v12}, Ljava/lang/Throwable;-><init>()V

    invoke-virtual {v12}, Ljava/lang/Throwable;->printStackTrace()V

    .line 113
    :cond_0
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMaxWindowSize:I

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 114
    .local v10, "windowSize":I
    div-int/lit8 v0, v10, 0x2

    .line 115
    .local v0, "hWindowSize":I
    int-to-float v12, v10

    const/high16 v13, 0x40000000    # 2.0f

    div-float v1, v12, v13

    .line 116
    .local v1, "hfWindowSize":F
    const/4 v12, 0x0

    sub-int v13, p1, v0

    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    move-result v11

    .line 117
    .local v11, "windowStart":I
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    iget v13, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMaxWindowSize:I

    add-int/2addr v13, v11

    invoke-static {v12, v13}, Ljava/lang/Math;->min(II)I

    move-result v7

    .line 118
    .local v7, "windowEnd":I
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    invoke-static {v12, v10}, Ljava/lang/Math;->min(II)I

    move-result v12

    sub-int v11, v7, v12

    .line 119
    sub-int v12, v7, v11

    div-int/lit8 v12, v12, 0x2

    add-int v8, v11, v12

    .line 120
    .local v8, "windowMid":I
    if-nez v11, :cond_5

    const/4 v6, 0x1

    .line 121
    .local v6, "windowAtStart":Z
    :goto_0
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ne v7, v12, :cond_6

    const/4 v5, 0x1

    .line 122
    .local v5, "windowAtEnd":Z
    :goto_1
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aget v12, v12, v13

    if-ne v12, v11, :cond_1

    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aget v12, v12, v13

    if-eq v12, v7, :cond_7

    :cond_1
    const/4 v9, 0x1

    .line 125
    .local v9, "windowMoved":Z
    :goto_2
    if-nez p2, :cond_2

    .line 126
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PageIndicator;->disableLayoutTransitions()V

    .line 130
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getChildCount()I

    move-result v12

    add-int/lit8 v2, v12, -0x1

    .local v2, "i":I
    :goto_3
    if-ltz v2, :cond_8

    .line 131
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/PageIndicator;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 132
    .local v3, "marker":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v3}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v4

    .line 133
    .local v4, "markerIndex":I
    if-lt v4, v11, :cond_3

    if-lt v4, v7, :cond_4

    .line 134
    :cond_3
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PageIndicator;->removeView(Landroid/view/View;)V

    .line 130
    :cond_4
    add-int/lit8 v2, v2, -0x1

    goto :goto_3

    .line 120
    .end local v2    # "i":I
    .end local v3    # "marker":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    .end local v4    # "markerIndex":I
    .end local v5    # "windowAtEnd":Z
    .end local v6    # "windowAtStart":Z
    .end local v9    # "windowMoved":Z
    :cond_5
    const/4 v6, 0x0

    goto :goto_0

    .line 121
    .restart local v6    # "windowAtStart":Z
    :cond_6
    const/4 v5, 0x0

    goto :goto_1

    .line 122
    .restart local v5    # "windowAtEnd":Z
    :cond_7
    const/4 v9, 0x0

    goto :goto_2

    .line 139
    .restart local v2    # "i":I
    .restart local v9    # "windowMoved":Z
    :cond_8
    const/4 v2, 0x0

    :goto_4
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v2, v12, :cond_c

    .line 140
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v12, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 141
    .restart local v3    # "marker":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    if-gt v11, v2, :cond_b

    if-ge v2, v7, :cond_b

    .line 142
    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/PageIndicator;->indexOfChild(Landroid/view/View;)I

    move-result v12

    if-gez v12, :cond_9

    .line 143
    sub-int v12, v2, v11

    invoke-virtual {p0, v3, v12}, Lnet/oneplus/h2launcher/PageIndicator;->addView(Landroid/view/View;I)V

    .line 145
    :cond_9
    if-ne v2, p1, :cond_a

    .line 146
    invoke-virtual {v3, v9}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->activate(Z)V

    .line 139
    :goto_5
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 148
    :cond_a
    invoke-virtual {v3, v9}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_5

    .line 151
    :cond_b
    const/4 v12, 0x1

    invoke-virtual {v3, v12}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->inactivate(Z)V

    goto :goto_5

    .line 168
    .end local v3    # "marker":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    :cond_c
    if-nez p2, :cond_d

    .line 169
    invoke-direct {p0}, Lnet/oneplus/h2launcher/PageIndicator;->enableLayoutTransitions()V

    .line 172
    :cond_d
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x0

    aput v11, v12, v13

    .line 173
    iget-object v12, p0, Lnet/oneplus/h2launcher/PageIndicator;->mWindowRange:[I

    const/4 v13, 0x1

    aput v7, v12, v13

    .line 174
    return-void
.end method

.method removeAllMarkers(Z)V
    .locals 1
    .param p1, "allowAnimations"    # Z

    .prologue
    .line 212
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 213
    const v0, 0x7fffffff

    invoke-virtual {p0, v0, p1}, Lnet/oneplus/h2launcher/PageIndicator;->removeMarker(IZ)V

    goto :goto_0

    .line 215
    :cond_0
    return-void
.end method

.method removeMarker(IZ)V
    .locals 2
    .param p1, "index"    # I
    .param p2, "allowAnimations"    # Z

    .prologue
    .line 205
    iget-object v0, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 206
    const/4 v0, 0x0

    iget-object v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 207
    iget-object v0, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 208
    iget v0, p0, Lnet/oneplus/h2launcher/PageIndicator;->mActiveMarkerIndex:I

    invoke-virtual {p0, v0, p2}, Lnet/oneplus/h2launcher/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 210
    :cond_0
    return-void
.end method

.method setActiveMarker(I)V
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 219
    iput p1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mActiveMarkerIndex:I

    .line 220
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/PageIndicator;->offsetWindowCenterTo(IZ)V

    .line 221
    return-void
.end method

.method public updateColor(Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;)V
    .locals 5
    .param p1, "extractedColors"    # Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    .prologue
    .line 245
    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->getColor(II)I

    move-result v0

    .line 246
    .local v0, "color":I
    iput v0, p0, Lnet/oneplus/h2launcher/PageIndicator;->mColor:I

    .line 249
    if-eqz v0, :cond_0

    .line 250
    const/4 v1, 0x0

    .line 251
    .local v1, "naviColor":I
    const/16 v2, 0xff

    invoke-static {v0, v2}, Landroid/support/v4/graphics/ColorUtils;->setAlphaComponent(II)I

    move-result v0

    .line 253
    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/PageIndicator;->updateMarkersColor(I)V

    .line 255
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/PageIndicator;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0e0300

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getColor(ILandroid/content/res/Resources$Theme;)I

    move-result v2

    if-ne v0, v2, :cond_1

    .line 256
    const/4 v1, 0x2

    .line 263
    :goto_0
    const/4 v2, 0x3

    invoke-virtual {p1, v2, v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->setColorAtIndex(II)V

    .line 265
    .end local v1    # "naviColor":I
    :cond_0
    return-void

    .line 257
    .restart local v1    # "naviColor":I
    :cond_1
    const/4 v2, -0x1

    if-ne v0, v2, :cond_2

    .line 258
    const/4 v1, 0x0

    goto :goto_0

    .line 260
    :cond_2
    const-string v2, "PageIndicator"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Setting workspace arrow to an unsupported color: #"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 261
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 260
    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method updateMarker(ILnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "marker"    # Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;

    .prologue
    .line 199
    iget-object v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mMarkers:Ljava/util/ArrayList;

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/PageIndicatorMarker;

    .line 200
    .local v0, "m":Lnet/oneplus/h2launcher/PageIndicatorMarker;
    iget v1, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->activeId:I

    iget v2, p2, Lnet/oneplus/h2launcher/PageIndicator$PageMarkerResources;->inactiveId:I

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/PageIndicatorMarker;->setMarkerDrawables(II)V

    .line 201
    iget v1, p0, Lnet/oneplus/h2launcher/PageIndicator;->mColor:I

    invoke-direct {p0, v1, v0}, Lnet/oneplus/h2launcher/PageIndicator;->updateMarkerColor(ILnet/oneplus/h2launcher/PageIndicatorMarker;)V

    .line 202
    return-void
.end method
