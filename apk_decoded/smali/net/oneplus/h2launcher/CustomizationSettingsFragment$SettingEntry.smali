.class Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;
.super Ljava/lang/Object;
.source "CustomizationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/CustomizationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingEntry"
.end annotation


# instance fields
.field public enabled:Z

.field public icon:Landroid/graphics/drawable/Drawable;

.field public subtitle:Ljava/lang/String;

.field final synthetic this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

.field public title:Ljava/lang/String;

.field public type:I


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/CustomizationSettingsFragment;IIII)V
    .locals 4
    .param p2, "type"    # I
    .param p3, "iconResId"    # I
    .param p4, "titleResId"    # I
    .param p5, "subtitleResId"    # I

    .prologue
    const/4 v3, 0x0

    .line 388
    iput-object p1, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->this$0:Lnet/oneplus/h2launcher/CustomizationSettingsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 389
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 390
    .local v0, "res":Landroid/content/res/Resources;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/CustomizationSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 391
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    iput p2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->type:I

    .line 392
    if-nez p3, :cond_0

    move-object v2, v3

    :goto_0
    iput-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->icon:Landroid/graphics/drawable/Drawable;

    .line 393
    if-nez p4, :cond_1

    move-object v2, v3

    :goto_1
    iput-object v2, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->title:Ljava/lang/String;

    .line 394
    if-nez p5, :cond_2

    :goto_2
    iput-object v3, p0, Lnet/oneplus/h2launcher/CustomizationSettingsFragment$SettingEntry;->subtitle:Ljava/lang/String;

    .line 395
    return-void

    .line 392
    :cond_0
    invoke-virtual {v0, p3, v1}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto :goto_0

    .line 393
    :cond_1
    invoke-virtual {v0, p4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    .line 394
    :cond_2
    invoke-virtual {v0, p5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    goto :goto_2
.end method
