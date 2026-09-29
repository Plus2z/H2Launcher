.class synthetic Lnet/oneplus/h2launcher/config/PreferencesHelper$2;
.super Ljava/lang/Object;
.source "PreferencesHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/config/PreferencesHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

.field static final synthetic $SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 308
    invoke-static {}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->values()[Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

    :try_start_0
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->SMALL:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_5

    :goto_0
    :try_start_1
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->STANDARD:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_4

    :goto_1
    :try_start_2
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$AppDrawerSizeCatalog:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->LARGE:Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$AppDrawerSizeCatalog;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_3

    .line 233
    :goto_2
    invoke-static {}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->values()[Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [I

    sput-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    :try_start_3
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->DEFAULT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    aput v2, v0, v1
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_2

    :goto_3
    :try_start_4
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->TRANSPARENT:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x2

    aput v2, v0, v1
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_1

    :goto_4
    :try_start_5
    sget-object v0, Lnet/oneplus/h2launcher/config/PreferencesHelper$2;->$SwitchMap$net$oneplus$h2launcher$config$PreferencesHelper$SearchBarStyle:[I

    sget-object v1, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->HIDDEN:Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/config/PreferencesHelper$SearchBarStyle;->ordinal()I

    move-result v1

    const/4 v2, 0x3

    aput v2, v0, v1
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_0

    :goto_5
    return-void

    :catch_0
    move-exception v0

    goto :goto_5

    :catch_1
    move-exception v0

    goto :goto_4

    :catch_2
    move-exception v0

    goto :goto_3

    .line 308
    :catch_3
    move-exception v0

    goto :goto_2

    :catch_4
    move-exception v0

    goto :goto_1

    :catch_5
    move-exception v0

    goto :goto_0
.end method
