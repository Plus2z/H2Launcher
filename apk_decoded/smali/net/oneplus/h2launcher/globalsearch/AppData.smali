.class public Lnet/oneplus/h2launcher/globalsearch/AppData;
.super Ljava/lang/Object;
.source "AppData.java"


# instance fields
.field private mComponentName:Landroid/content/ComponentName;

.field private mIcon:Landroid/graphics/Bitmap;

.field private mIntent:Landroid/content/Intent;

.field private mPackageName:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mTitle:Ljava/lang/String;

    .line 26
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIcon:Landroid/graphics/Bitmap;

    .line 27
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mComponentName:Landroid/content/ComponentName;

    .line 28
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mPackageName:Ljava/lang/String;

    .line 29
    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIntent:Landroid/content/Intent;

    .line 30
    return-void
.end method

.method public constructor <init>(Lnet/oneplus/h2launcher/AppInfo;)V
    .locals 1
    .param p1, "appInfo"    # Lnet/oneplus/h2launcher/AppInfo;

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mComponentName:Landroid/content/ComponentName;

    .line 18
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->iconBitmap:Landroid/graphics/Bitmap;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIcon:Landroid/graphics/Bitmap;

    .line 19
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mTitle:Ljava/lang/String;

    .line 20
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mPackageName:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Lnet/oneplus/h2launcher/AppInfo;->intent:Landroid/content/Intent;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIntent:Landroid/content/Intent;

    .line 22
    return-void
.end method


# virtual methods
.method public getComponentName()Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 33
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mComponentName:Landroid/content/ComponentName;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIcon:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getPkgName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mPackageName:Ljava/lang/String;

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 1

    .prologue
    .line 37
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/AppData;->mTitle:Ljava/lang/String;

    return-object v0
.end method
