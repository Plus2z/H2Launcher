.class public Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "CustomizationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewHolder"
.end annotation


# instance fields
.field public mDivider:Landroid/view/View;

.field public mIcon:Landroid/widget/ImageView;

.field public mRowLayout:Landroid/widget/RelativeLayout;

.field public mSubtitle:Landroid/widget/TextView;

.field public mSwitch:Landroid/widget/Switch;

.field public mTitle:Landroid/widget/TextView;

.field final synthetic this$1:Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    .param p2, "v"    # Landroid/view/View;

    .prologue
    const/4 v0, 0x0

    .line 239
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->this$1:Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;

    .line 240
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 232
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mRowLayout:Landroid/widget/RelativeLayout;

    .line 233
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 234
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 235
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 236
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 237
    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mDivider:Landroid/view/View;

    .line 241
    const v0, 0x7f11012b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mRowLayout:Landroid/widget/RelativeLayout;

    .line 242
    const v0, 0x7f110010

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mIcon:Landroid/widget/ImageView;

    .line 243
    const v0, 0x7f11012c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 244
    const v0, 0x7f11007b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mTitle:Landroid/widget/TextView;

    .line 245
    const v0, 0x7f11012d

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSubtitle:Landroid/widget/TextView;

    .line 246
    const v0, 0x7f11012e

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mDivider:Landroid/view/View;

    .line 247
    return-void
.end method
