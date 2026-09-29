.class public Lnet/oneplus/h2launcher/CustomizationSettingsActivity;
.super Landroid/support/v4/app/FragmentActivity;
.source "CustomizationSettingsActivity.java"


# static fields
.field private static final TAG_CUSTOMIZATION_SETTINGS:Ljava/lang/String; = "customization_settings"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 12
    invoke-direct {p0}, Landroid/support/v4/app/FragmentActivity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 18
    invoke-super {p0, p1}, Landroid/support/v4/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 19
    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/CustomizationSettingsActivity;->requestWindowFeature(I)Z

    .line 20
    const v3, 0x7f04009f

    invoke-virtual {p0, v3}, Lnet/oneplus/h2launcher/CustomizationSettingsActivity;->setContentView(I)V

    .line 22
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    .line 23
    .local v1, "fragmentManager":Landroid/support/v4/app/FragmentManager;
    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    .line 24
    .local v2, "fragmentTransaction":Landroid/support/v4/app/FragmentTransaction;
    new-instance v0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-direct {v0}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;-><init>()V

    .line 25
    .local v0, "fragment":Lnet/oneplus/h2launcher/CustomizationSettingsFragment;
    const v3, 0x7f11018b

    const-string v4, "customization_settings"

    invoke-virtual {v2, v3, v0, v4}, Landroid/support/v4/app/FragmentTransaction;->replace(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    .line 26
    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    .line 27
    return-void
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 31
    invoke-super {p0}, Landroid/support/v4/app/FragmentActivity;->onStop()V

    .line 32
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/CustomizationSettingsActivity;->finish()V

    .line 33
    return-void
.end method
