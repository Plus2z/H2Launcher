.class public Lnet/oneplus/h2launcher/quickpage/SchemeHelper;
.super Ljava/lang/Object;
.source "SchemeHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;
    }
.end annotation


# instance fields
.field private mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

.field private mDefaultScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

.field private mResources:Landroid/content/res/Resources;


# direct methods
.method public constructor <init>(Landroid/content/res/Resources;)V
    .locals 2
    .param p1, "res"    # Landroid/content/res/Resources;

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mResources:Landroid/content/res/Resources;

    .line 27
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    const v1, 0x7f0200ca

    .line 28
    invoke-static {p1, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;-><init>(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mDefaultScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    .line 29
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;)Landroid/content/res/Resources;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/quickpage/SchemeHelper;

    .prologue
    .line 9
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mResources:Landroid/content/res/Resources;

    return-object v0
.end method


# virtual methods
.method public destroySchemes()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 56
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mDefaultScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->destroy()V

    .line 57
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mDefaultScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    .line 58
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    if-eqz v0, :cond_0

    .line 59
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;->destroy()V

    .line 60
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    .line 62
    :cond_0
    iput-object v1, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mResources:Landroid/content/res/Resources;

    .line 63
    return-void
.end method

.method public getCurrentScheme()Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mDefaultScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    goto :goto_0
.end method

.method public setSchemeFromImage(Landroid/graphics/Bitmap;)V
    .locals 1
    .param p1, "headerImage"    # Landroid/graphics/Bitmap;

    .prologue
    .line 48
    new-instance v0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    invoke-direct {v0, p0, p1}, Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;-><init>(Lnet/oneplus/h2launcher/quickpage/SchemeHelper;Landroid/graphics/Bitmap;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/quickpage/SchemeHelper;->mCurrentScheme:Lnet/oneplus/h2launcher/quickpage/SchemeHelper$Scheme;

    .line 49
    return-void
.end method
