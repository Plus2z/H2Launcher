.class public Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;
.super Landroid/app/Fragment;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;,
        Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;,
        Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;
    }
.end annotation


# static fields
.field private static final NUMBER_SYMBOL:Ljava/lang/String; = "#"


# instance fields
.field private mAppList:Landroid/widget/ListView;

.field private mMapIndex:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mTextColor:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 41
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;
    .param p1, "x1"    # Landroid/view/ViewGroup;
    .param p2, "x2"    # Ljava/lang/String;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->highlightSelectedIndex(Landroid/view/ViewGroup;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;)Ljava/util/Map;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mMapIndex:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;)Landroid/widget/ListView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    .prologue
    .line 31
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mAppList:Landroid/widget/ListView;

    return-object v0
.end method

.method private displayIndex(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "root"    # Landroid/widget/LinearLayout;

    .prologue
    .line 113
    new-instance v3, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;

    invoke-direct {v3, p0, p2}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$2;-><init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/widget/LinearLayout;)V

    invoke-virtual {p2, v3}, Landroid/widget/LinearLayout;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 132
    new-instance v1, Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mMapIndex:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 133
    .local v1, "indexList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 134
    .local v0, "index":Ljava/lang/String;
    const v4, 0x7f040051

    const/4 v5, 0x0

    invoke-virtual {p1, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 135
    .local v2, "textView":Landroid/widget/TextView;
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    invoke-virtual {p2, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_0

    .line 138
    .end local v0    # "index":Ljava/lang/String;
    .end local v2    # "textView":Landroid/widget/TextView;
    :cond_0
    return-void
.end method

.method private getIndexList([Ljava/lang/String;)V
    .locals 6
    .param p1, "apps"    # [Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 97
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-direct {v3}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mMapIndex:Ljava/util/Map;

    .line 98
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p1

    if-ge v1, v3, :cond_2

    .line 99
    aget-object v0, p1, v1

    .line 100
    .local v0, "app":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v2

    .line 102
    .local v2, "index":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v3

    if-nez v3, :cond_0

    .line 103
    const-string v2, "#"

    .line 106
    :cond_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mMapIndex:Ljava/util/Map;

    invoke-interface {v3, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_1

    .line 107
    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mMapIndex:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 110
    .end local v0    # "app":Ljava/lang/String;
    .end local v2    # "index":Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private highlightSelectedIndex(Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 5
    .param p1, "root"    # Landroid/view/ViewGroup;
    .param p2, "index"    # Ljava/lang/String;

    .prologue
    .line 142
    const/4 v3, 0x0

    invoke-virtual {p2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-static {v3}, Ljava/lang/Character;->isLetter(C)Z

    move-result v2

    .line 143
    .local v2, "isLetter":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 144
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/TextView;

    if-eqz v3, :cond_1

    .line 145
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 146
    .local v0, "child":Landroid/widget/TextView;
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    const-string v3, "#"

    .line 147
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-nez v2, :cond_2

    .line 148
    :cond_0
    const/4 v3, -0x1

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 143
    .end local v0    # "child":Landroid/widget/TextView;
    :cond_1
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 150
    .restart local v0    # "child":Landroid/widget/TextView;
    :cond_2
    iget v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mTextColor:I

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    .line 154
    .end local v0    # "child":Landroid/widget/TextView;
    :cond_3
    return-void
.end method


# virtual methods
.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 45
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 48
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0e01fa

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    iput v0, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mTextColor:I

    .line 49
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v11, 0x0

    .line 54
    const v9, 0x7f040050

    invoke-virtual {p1, v9, p2, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v8

    .line 55
    .local v8, "root":Landroid/view/View;
    const v9, 0x7f1100f2

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout;

    .line 57
    .local v4, "indexLayout":Landroid/widget/LinearLayout;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-virtual {v9}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 59
    .local v7, "pm":Landroid/content/pm/PackageManager;
    new-instance v6, Landroid/content/Intent;

    const-string v9, "android.intent.action.MAIN"

    const/4 v10, 0x0

    invoke-direct {v6, v9, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 60
    .local v6, "mainIntent":Landroid/content/Intent;
    const-string v9, "android.intent.category.LAUNCHER"

    invoke-virtual {v6, v9}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 61
    invoke-virtual {v7, v6, v11}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v1

    .line 63
    .local v1, "allApps":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    new-instance v9, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;

    invoke-direct {v9, p0, v7}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;-><init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/content/pm/PackageManager;)V

    invoke-static {v1, v9}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 65
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v3, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ResolveInfo;

    .line 67
    .local v5, "info":Landroid/content/pm/ResolveInfo;
    invoke-virtual {v5, v7}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v3, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 70
    .end local v5    # "info":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    new-array v9, v9, [Ljava/lang/String;

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/String;

    .line 72
    .local v2, "appLabels":[Ljava/lang/String;
    const v9, 0x7f1100f1

    invoke-virtual {v8, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ListView;

    iput-object v9, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mAppList:Landroid/widget/ListView;

    .line 74
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v9

    invoke-direct {v0, p0, v9, v1}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;-><init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/content/Context;Ljava/util/List;)V

    .line 75
    .local v0, "adapter":Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mAppList:Landroid/widget/ListView;

    invoke-virtual {v9, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 76
    iget-object v9, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->mAppList:Landroid/widget/ListView;

    new-instance v10, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;

    invoke-direct {v10, p0, v0, v7, v4}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$1;-><init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;Landroid/content/pm/PackageManager;Landroid/widget/LinearLayout;)V

    invoke-virtual {v9, v10}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 90
    invoke-direct {p0, v2}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->getIndexList([Ljava/lang/String;)V

    .line 92
    invoke-direct {p0, p1, v4}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;->displayIndex(Landroid/view/LayoutInflater;Landroid/widget/LinearLayout;)V

    .line 93
    return-object v8
.end method
