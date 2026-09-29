.class Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;
.super Ljava/lang/Object;
.source "CustomizationSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ItemClick"
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;


# direct methods
.method private constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;)V
    .locals 0

    .prologue
    .line 250
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;->this$1:Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;)V
    .locals 0
    .param p1, "x0"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;
    .param p2, "x1"    # Lnet/oneplus/h2launcher/CustomizationSettingsFragment$1;

    .prologue
    .line 250
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;-><init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 254
    const/4 v4, 0x0

    .line 255
    .local v4, "theSwitch":Landroid/widget/Switch;
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f11012b

    if-ne v6, v7, :cond_3

    .line 256
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;

    .line 257
    .local v5, "viewHolder":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    iget-object v4, v5, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;->mSwitch:Landroid/widget/Switch;

    .line 258
    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    invoke-virtual {v4, v6}, Landroid/widget/Switch;->setChecked(Z)V

    .line 263
    .end local v5    # "viewHolder":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    :cond_0
    :goto_1
    if-nez v4, :cond_4

    .line 281
    :cond_1
    :goto_2
    return-void

    .line 258
    .restart local v5    # "viewHolder":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 259
    .end local v5    # "viewHolder":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ViewHolder;
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v6

    const v7, 0x7f11012c

    if-ne v6, v7, :cond_0

    move-object v4, p1

    .line 260
    check-cast v4, Landroid/widget/Switch;

    goto :goto_1

    .line 267
    :cond_4
    invoke-virtual {v4}, Landroid/widget/Switch;->getVisibility()I

    move-result v6

    if-nez v6, :cond_5

    .line 268
    invoke-virtual {v4}, Landroid/widget/Switch;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;

    .line 269
    .local v0, "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    if-eqz v0, :cond_1

    .line 270
    invoke-virtual {v4}, Landroid/widget/Switch;->isChecked()Z

    move-result v6

    iput-boolean v6, v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->enabled:Z

    goto :goto_2

    .line 273
    .end local v0    # "entry":Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
    :cond_5
    iget-object v6, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter$ItemClick;->this$1:Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;

    iget-object v6, v6, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingAdapter;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-virtual {v6}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    .line 274
    .local v2, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v3

    .line 275
    .local v3, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v1, Lnet/oneplus/h2launcher/SwitchLayoutFragment;

    invoke-direct {v1}, Lnet/oneplus/h2launcher/SwitchLayoutFragment;-><init>()V

    .line 276
    .local v1, "fragment":Lnet/oneplus/h2launcher/SwitchLayoutFragment;
    const v6, 0x7f11018b

    invoke-virtual {v3, v6, v1}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    .line 277
    const/4 v6, 0x0

    invoke-virtual {v3, v6}, Landroid/support/v4/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 278
    invoke-virtual {v3}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    goto :goto_2
.end method
