.class public Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;
.source "CustomizationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomizationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SettingAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;,
        Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter",
        "<",
        "Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V
    .locals 7
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    .prologue
    .line 161
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-direct {p0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;-><init>()V

    .line 162
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    const/4 v2, 0x0

    const v3, 0x7f02011f

    const v4, 0x7f0b009d

    const v5, 0x7f0b009f

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 167
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    const/4 v2, 0x1

    const v3, 0x7f020123

    const v4, 0x7f0b0063

    const v5, 0x7f0b0064

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 172
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    const/4 v2, 0x2

    const v3, 0x7f020122

    const v4, 0x7f0b0061

    const v5, 0x7f0b0062

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 178
    invoke-static {}, Lnet/oneplus/h2launcher/oos/StyleManager;->getInstance()Lnet/oneplus/h2launcher/oos/StyleManager;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/oos/StyleManager;->showWidgetsButtonConfigurable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 179
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    const/4 v2, 0x3

    const v3, 0x7f0200e8

    const v4, 0x7f0b005f

    const v5, 0x7f0b0060

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    :cond_0
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v6

    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    const/16 v2, 0x8

    const v3, 0x7f0200e6

    const v4, 0x7f0b00e6

    const v5, 0x7f0b00de

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V

    invoke-virtual {v6, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 194
    invoke-static {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$100(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)V

    .line 195
    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-static {v0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 159
    check-cast p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->onBindViewHolder(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;I)V
    .locals 7
    .param p1, "holder"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    .param p2, "position"    # I

    .prologue
    const/4 v6, 0x0

    const/4 v4, 0x4

    const/4 v3, 0x0

    .line 207
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mRowLayout:Landroid/widget/RelativeLayout;

    if-eqz v2, :cond_0

    .line 208
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mRowLayout:Landroid/widget/RelativeLayout;

    new-instance v5, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;

    invoke-direct {v5, p0, v6}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;)V

    invoke-virtual {v2, v5}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 211
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-static {v2}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->access$000(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    .line 212
    .local v0, "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    iget-object v5, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->icon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 213
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    iget-object v5, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->title:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 214
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v5, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->subtitle:Ljava/lang/String;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    iget-object v5, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    iget-object v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->subtitle:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 217
    iget-object v5, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget v2, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->type:I

    if-ne v2, v4, :cond_2

    move v2, v4

    :goto_1
    invoke-virtual {v5, v2}, Landroid/widget/Switch;->setVisibility(I)V

    .line 218
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    iget-boolean v5, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setChecked(Z)V

    .line 219
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    invoke-virtual {v2, v0}, Landroid/widget/Switch;->setTag(Ljava/lang/Object;)V

    .line 220
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    new-instance v5, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;

    invoke-direct {v5, p0, v6}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;)V

    invoke-virtual {v2, v5}, Landroid/widget/Switch;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 222
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->getItemCount()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ne p2, v2, :cond_3

    move v1, v4

    .line 223
    .local v1, "visibility":I
    :goto_2
    iget-object v2, p1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mDivider:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 224
    return-void

    .end local v1    # "visibility":I
    :cond_1
    move v2, v3

    .line 215
    goto :goto_0

    :cond_2
    move v2, v3

    .line 217
    goto :goto_1

    :cond_3
    move v1, v3

    .line 222
    goto :goto_2
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 159
    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 199
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f040064

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 200
    .local v0, "v":Landroid/view/View;
    new-instance v1, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;Landroid/view/View;)V

    .line 201
    .local v1, "vh":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 202
    return-object v1
.end method
