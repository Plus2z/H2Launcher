.class public Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "IconRearrangementAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;,
        Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
        "<",
        "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# static fields
.field private static final ANIMATION_DURATION:I = 0x64

.field private static final TAG:Ljava/lang/String; = "IconRearrangementAdapter"


# instance fields
.field private mContext:Landroid/content/Context;

.field private mLastBindInfoView:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private final mLayoutInflater:Landroid/view/LayoutInflater;

.field private mListViewItemWidth:I

.field private mNeedAnimationShortcutInfos:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

.field private mOnItemClickListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;

.field private mPositionViewMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mRunningAnimators:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/view/View;",
            "Landroid/animation/Animator;",
            ">;"
        }
    .end annotation
.end field

.field private mShortcutInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "onItemClickListener"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;
    .param p4, "onItemChangedListener"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;",
            "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;",
            "Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    const/4 v0, 0x0

    .line 42
    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 32
    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemClickListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;

    .line 33
    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    .line 35
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mLastBindInfoView:Ljava/util/HashMap;

    .line 38
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mNeedAnimationShortcutInfos:Ljava/util/HashSet;

    .line 39
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    .line 43
    iput-object p1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mContext:Landroid/content/Context;

    .line 44
    iput-object p2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    .line 45
    iput-object p3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemClickListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;

    .line 46
    iput-object p4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    .line 47
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0c0098

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mListViewItemWidth:I

    .line 49
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;

    .prologue
    .line 25
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    return-object v0
.end method

.method private runRemoveViewAnimator(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
    .locals 10
    .param p1, "v"    # Landroid/view/View;
    .param p2, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;
    .param p4, "task"    # Ljava/lang/Runnable;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 139
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/animation/Animator;

    .line 140
    .local v7, "animator":Landroid/animation/Animator;
    if-eqz v7, :cond_0

    invoke-virtual {v7}, Landroid/animation/Animator;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 141
    invoke-virtual {v7}, Landroid/animation/Animator;->cancel()V

    .line 143
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 144
    .local v9, "viewInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    if-eq v9, p2, :cond_4

    .line 145
    const-string v0, "IconRearrangementAdapter"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "view bind other item, don\'t run remove animator, view = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 146
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v8

    .line 147
    .local v8, "index":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 148
    if-ltz v8, :cond_1

    .line 149
    invoke-virtual {p0, v8}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->notifyItemRemoved(I)V

    .line 150
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;->onItemChanged()V

    .line 154
    :cond_1
    if-eqz p5, :cond_2

    .line 155
    invoke-interface {p5}, Ljava/lang/Runnable;->run()V

    .line 157
    :cond_2
    if-eqz p3, :cond_3

    if-eqz p4, :cond_3

    .line 158
    invoke-interface {p3, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 199
    .end local v8    # "index":I
    :cond_3
    :goto_0
    return-void

    .line 162
    :cond_4
    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 163
    new-instance v6, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    invoke-direct {v6, p1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 164
    .local v6, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    const/4 v0, 0x0

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 165
    const-wide/16 v0, 0x64

    invoke-virtual {v6, v0, v1}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 166
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    invoke-virtual {v0, p1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;

    move-object v1, p0

    move-object v2, p2

    move-object v3, p5

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$1;-><init>(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;Lnet/oneplus/h2launcher/ShortcutInfo;Ljava/lang/Runnable;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;)V

    invoke-virtual {v6, v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 198
    invoke-virtual {v6}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    goto :goto_0
.end method


# virtual methods
.method public addShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 1
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 95
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 96
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 97
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mNeedAnimationShortcutInfos:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 98
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;->onItemChanged()V

    .line 101
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->notifyItemInserted(I)V

    .line 102
    const/4 v0, 0x1

    .line 104
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAllItemViews()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 227
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getShortcutInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 202
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getVisibleViews()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .prologue
    .line 231
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 232
    .local v2, "visibleViews":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/view/View;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 233
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 234
    .local v0, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mLastBindInfoView:Ljava/util/HashMap;

    invoke-virtual {v4, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_0

    .line 235
    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 238
    .end local v0    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    return-object v2
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 25
    check-cast p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->onBindViewHolder(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;I)V
    .locals 8
    .param p1, "viewHolder"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v5, 0x1

    const/high16 v7, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    .line 66
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 67
    .local v2, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v3, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v5, v5}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZZ)V

    .line 68
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    iget-object v4, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mLastBindInfoView:Ljava/util/HashMap;

    iget-object v4, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v2, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    iget-object v4, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/animation/Animator;

    .line 71
    .local v1, "animator":Landroid/animation/Animator;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 72
    invoke-virtual {v1}, Landroid/animation/Animator;->cancel()V

    .line 74
    :cond_0
    iget-object v3, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mContent:Landroid/view/ViewGroup;

    invoke-virtual {v3, v6}, Landroid/view/ViewGroup;->setTranslationX(F)V

    .line 75
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mNeedAnimationShortcutInfos:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 76
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mNeedAnimationShortcutInfos:Ljava/util/HashSet;

    invoke-virtual {v3, v2}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    .line 77
    iget-object v3, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    .line 78
    new-instance v0, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    iget-object v3, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-direct {v0, v3}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;-><init>(Landroid/view/View;)V

    .line 80
    .local v0, "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    invoke-virtual {v0, v7}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->alpha(F)Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;

    .line 81
    const-wide/16 v4, 0x64

    invoke-virtual {v0, v4, v5}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->setDuration(J)Landroid/animation/Animator;

    .line 82
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    iget-object v4, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v4, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;->start()V

    .line 87
    .end local v0    # "alphaAnim":Lnet/oneplus/h2launcher/LauncherViewPropertyAnimator;
    :goto_0
    return-void

    .line 85
    :cond_1
    iget-object v3, p1, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;->mIconView:Lnet/oneplus/h2launcher/BubbleTextView;

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/BubbleTextView;->setAlpha(F)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 206
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemClickListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;

    if-eqz v1, :cond_1

    .line 207
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 208
    .local v0, "pos":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 209
    new-instance v0, Ljava/lang/Integer;

    .end local v0    # "pos":Ljava/lang/Integer;
    const/4 v1, -0x1

    invoke-direct {v0, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 211
    .restart local v0    # "pos":Ljava/lang/Integer;
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemClickListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v1, p1, v2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemClickListener;->onItemClick(Landroid/view/View;I)V

    .line 213
    .end local v0    # "pos":Ljava/lang/Integer;
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 25
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;
    .locals 6
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 54
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mLayoutInflater:Landroid/view/LayoutInflater;

    const v4, 0x7f04006b

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    .line 55
    .local v1, "layout":Landroid/widget/LinearLayout;
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    iget v4, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mListViewItemWidth:I

    const/4 v5, -0x2

    invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 56
    const v3, 0x7f110139

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/BubbleTextView;

    .line 58
    .local v0, "iconView":Lnet/oneplus/h2launcher/BubbleTextView;
    new-instance v2, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;

    invoke-direct {v2, v1, v0}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;-><init>(Landroid/view/ViewGroup;Lnet/oneplus/h2launcher/BubbleTextView;)V

    .line 59
    .local v2, "viewHolder":Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementRowViewHolder;
    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/BubbleTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    return-object v2
.end method

.method public removeShortcutInfoAnimated(Lnet/oneplus/h2launcher/ShortcutInfo;Landroid/view/View;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)Z
    .locals 6
    .param p1, "shortcutInfo"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "v"    # Landroid/view/View;
    .param p3, "callback"    # Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;
    .param p4, "task"    # Ljava/lang/Runnable;
    .param p5, "endRunnable"    # Ljava/lang/Runnable;

    .prologue
    .line 108
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v1, p2

    move-object v2, p1

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 109
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->runRemoveViewAnimator(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 110
    const/4 v0, 0x1

    .line 113
    :goto_0
    return v0

    .line 112
    :cond_0
    invoke-interface {p3, p4}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;->onTaskEnd(Ljava/lang/Runnable;)V

    .line 113
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public removeShortcutInfosAnimated(Ljava/util/ArrayList;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p1, "shortcutInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    const/4 v3, 0x0

    .line 117
    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mPositionViewMap:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :cond_0
    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 118
    .local v1, "v":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 119
    .local v2, "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    .line 120
    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->runRemoveViewAnimator(Landroid/view/View;Lnet/oneplus/h2launcher/ShortcutInfo;Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementHelper$TaskStageCallback;Ljava/lang/Runnable;Ljava/lang/Runnable;)V

    .line 121
    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 124
    .end local v1    # "v":Landroid/view/View;
    .end local v2    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 125
    .restart local v2    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 126
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v6

    .line 127
    .local v6, "index":I
    if-ltz v6, :cond_2

    .line 128
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mShortcutInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 129
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    if-eqz v3, :cond_3

    .line 130
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mOnItemChangedListener:Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;

    invoke-interface {v3}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter$OnItemChangedListener;->onItemChanged()V

    .line 132
    :cond_3
    invoke-virtual {p0, v6}, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->notifyItemRemoved(I)V

    goto :goto_1

    .line 136
    .end local v2    # "shortcutInfo":Lnet/oneplus/h2launcher/ShortcutInfo;
    .end local v6    # "index":I
    :cond_4
    return-void
.end method

.method public stopAllAnimator()V
    .locals 4

    .prologue
    .line 216
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mNeedAnimationShortcutInfos:Ljava/util/HashSet;

    invoke-virtual {v2}, Ljava/util/HashSet;->clear()V

    .line 217
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 218
    .local v1, "v":Landroid/view/View;
    iget-object v3, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/Animator;

    .line 219
    .local v0, "animator":Landroid/animation/Animator;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/Animator;->isRunning()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 220
    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    goto :goto_0

    .line 223
    .end local v0    # "animator":Landroid/animation/Animator;
    .end local v1    # "v":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Lnet/oneplus/h2launcher/iconrearrangement/IconRearrangementAdapter;->mRunningAnimators:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 224
    return-void
.end method
