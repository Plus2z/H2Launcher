.class public Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;
.super Landroid/widget/ArrayAdapter;
.source "AppsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private inflater:Landroid/view/LayoutInflater;

.field private packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/content/Context;Ljava/util/List;)V
    .locals 2
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;
    .param p2, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 160
    .local p3, "values":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    .line 161
    const v0, 0x7f040052

    invoke-direct {p0, p2, v0, p3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 162
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->packageManager:Landroid/content/pm/PackageManager;

    .line 164
    invoke-virtual {p2}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    .line 165
    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 170
    if-nez p2, :cond_0

    .line 171
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->inflater:Landroid/view/LayoutInflater;

    const v3, 0x7f040052

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 172
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;-><init>()V

    .line 173
    .local v0, "holder":Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;
    const v2, 0x7f1100f3

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;->label:Landroid/widget/TextView;

    .line 174
    const v2, 0x7f110010

    invoke-virtual {p2, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 175
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 180
    :goto_0
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 181
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;->label:Landroid/widget/TextView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v3, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$AppListAdapter;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {v1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 184
    return-object p2

    .line 177
    .end local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;

    .restart local v0    # "holder":Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ViewHolder;
    goto :goto_0
.end method
