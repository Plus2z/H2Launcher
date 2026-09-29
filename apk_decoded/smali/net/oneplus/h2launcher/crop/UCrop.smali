.class public Lnet/oneplus/h2launcher/crop/UCrop;
.super Ljava/lang/Object;
.source "UCrop.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/crop/UCrop$Options;
    }
.end annotation


# static fields
.field public static final EXTRA_ASPECT_RATIO_SET:Ljava/lang/String; = "net.oneplus.h2launcher.AspectRatioSet"

.field public static final EXTRA_ASPECT_RATIO_X:Ljava/lang/String; = "net.oneplus.h2launcher.AspectRatioX"

.field public static final EXTRA_ASPECT_RATIO_Y:Ljava/lang/String; = "net.oneplus.h2launcher.AspectRatioY"

.field public static final EXTRA_ERROR:Ljava/lang/String; = "net.oneplus.h2launcher.Error"

.field public static final EXTRA_INPUT_URI:Ljava/lang/String; = "net.oneplus.h2launcher.InputUri"

.field public static final EXTRA_MAX_SIZE_SET:Ljava/lang/String; = "net.oneplus.h2launcher.MaxSizeSet"

.field public static final EXTRA_MAX_SIZE_X:Ljava/lang/String; = "net.oneplus.h2launcher.MaxSizeX"

.field public static final EXTRA_MAX_SIZE_Y:Ljava/lang/String; = "net.oneplus.h2launcher.MaxSizeY"

.field public static final EXTRA_OUTPUT_CROP_ASPECT_RATIO:Ljava/lang/String; = "net.oneplus.h2launcher.CropAspectRatio"

.field public static final EXTRA_OUTPUT_CROP_ASPECT_RATIO_SECONDARY:Ljava/lang/String; = "net.oneplus.h2launcher.CropAspectRatioSecondary"

.field public static final EXTRA_OUTPUT_MASK_COLOR:Ljava/lang/String; = "net.oneplus.h2launcher.OutputMaskColor"

.field public static final EXTRA_OUTPUT_MASK_COLOR_SECONDARY:Ljava/lang/String; = "net.oneplus.h2launcher.OutputMaskColorSecondary"

.field public static final EXTRA_OUTPUT_URI:Ljava/lang/String; = "net.oneplus.h2launcher.OutputUri"

.field public static final EXTRA_OUTPUT_URI_SECONDARY:Ljava/lang/String; = "net.oneplus.h2launcher.OutputUriSecondary"

.field private static final EXTRA_PREFIX:Ljava/lang/String; = "net.oneplus.h2launcher"

.field public static final REQUEST_CROP:I = 0x45

.field public static final RESULT_ERROR:I = 0x60


# instance fields
.field private mCropIntent:Landroid/content/Intent;

.field private mCropOptionsBundle:Landroid/os/Bundle;


# direct methods
.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "source"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destination"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropIntent:Landroid/content/Intent;

    .line 66
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    .line 67
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.InputUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 68
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.OutputUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 69
    return-void
.end method

.method private constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 2
    .param p1, "source"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destination"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "destinationSecondary"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropIntent:Landroid/content/Intent;

    .line 86
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.InputUri"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 88
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.OutputUri"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.OutputUriSecondary"

    invoke-virtual {v0, v1, p3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 90
    return-void
.end method

.method public static getError(Landroid/content/Intent;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "result"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 280
    const-string v0, "net.oneplus.h2launcher.Error"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getSerializableExtra(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    return-object v0
.end method

.method public static getInput(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 211
    const-string v0, "net.oneplus.h2launcher.InputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getOutput(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 221
    const-string v0, "net.oneplus.h2launcher.OutputUri"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static getOutputCropAspectRatio(Landroid/content/Intent;)F
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 259
    const-string v0, "net.oneplus.h2launcher.CropAspectRatio"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getOutputCropAspectRatioSecondary(Landroid/content/Intent;)F
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 269
    const-string v0, "net.oneplus.h2launcher.CropAspectRatioSecondary"

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v0

    return v0
.end method

.method public static getOutputMaskColor(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 240
    const-string v0, "net.oneplus.h2launcher.OutputMaskColor"

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOutputMaskColorSecondary(Landroid/content/Intent;)I
    .locals 2
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 249
    const-string v0, "net.oneplus.h2launcher.OutputMaskColorSecondary"

    const/high16 v1, -0x80000000

    invoke-virtual {p0, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getOutputSecondary(Landroid/content/Intent;)Landroid/net/Uri;
    .locals 1
    .param p0, "intent"    # Landroid/content/Intent;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 231
    const-string v0, "net.oneplus.h2launcher.OutputUriSecondary"

    invoke-virtual {p0, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    return-object v0
.end method

.method public static of(Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 1
    .param p0, "source"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "destination"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 61
    new-instance v0, Lnet/oneplus/h2launcher/crop/UCrop;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/crop/UCrop;-><init>(Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method

.method public static of(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 1
    .param p0, "source"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "destination"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "destinationSecondary"    # Landroid/net/Uri;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 80
    new-instance v0, Lnet/oneplus/h2launcher/crop/UCrop;

    invoke-direct {v0, p0, p1, p2}, Lnet/oneplus/h2launcher/crop/UCrop;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    return-object v0
.end method


# virtual methods
.method public getIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 199
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropIntent:Landroid/content/Intent;

    const-class v1, Lnet/oneplus/h2launcher/crop/UCropActivity;

    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 200
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropIntent:Landroid/content/Intent;

    iget-object v1, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {v0, v1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 201
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public start(Landroid/app/Activity;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 141
    const/16 v0, 0x45

    invoke-virtual {p0, p1, v0}, Lnet/oneplus/h2launcher/crop/UCrop;->start(Landroid/app/Activity;I)V

    .line 142
    return-void
.end method

.method public start(Landroid/app/Activity;I)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "requestCode"    # I

    .prologue
    .line 151
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/UCrop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p1, v0, p2}, Landroid/app/Activity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 152
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 160
    const/16 v0, 0x45

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/UCrop;->start(Landroid/content/Context;Landroid/app/Fragment;I)V

    .line 161
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 180
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/UCrop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 181
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 169
    const/16 v0, 0x45

    invoke-virtual {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/crop/UCrop;->start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V

    .line 170
    return-void
.end method

.method public start(Landroid/content/Context;Landroid/support/v4/app/Fragment;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "fragment"    # Landroid/support/v4/app/Fragment;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "requestCode"    # I

    .prologue
    .line 190
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/crop/UCrop;->getIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p2, v0, p3}, Landroid/support/v4/app/Fragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 191
    return-void
.end method

.method public useSourceImageAspectRatio()Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 111
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioSet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 112
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioX"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 113
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioY"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 114
    return-object p0
.end method

.method public withAspectRatio(FF)Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 3
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 100
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioSet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 101
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 102
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.AspectRatioY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putFloat(Ljava/lang/String;F)V

    .line 103
    return-object p0
.end method

.method public withMaxResultSize(II)Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 3
    .param p1, "width"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param
    .param p2, "height"    # I
        .annotation build Landroid/support/annotation/IntRange;
            from = 0x64L
        .end annotation
    .end param

    .prologue
    .line 124
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.MaxSizeSet"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 125
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.MaxSizeX"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 126
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    const-string v1, "net.oneplus.h2launcher.MaxSizeY"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 127
    return-object p0
.end method

.method public withOptions(Lnet/oneplus/h2launcher/crop/UCrop$Options;)Lnet/oneplus/h2launcher/crop/UCrop;
    .locals 2
    .param p1, "options"    # Lnet/oneplus/h2launcher/crop/UCrop$Options;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 131
    iget-object v0, p0, Lnet/oneplus/h2launcher/crop/UCrop;->mCropOptionsBundle:Landroid/os/Bundle;

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/crop/UCrop$Options;->getOptionBundle()Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 132
    return-object p0
.end method
