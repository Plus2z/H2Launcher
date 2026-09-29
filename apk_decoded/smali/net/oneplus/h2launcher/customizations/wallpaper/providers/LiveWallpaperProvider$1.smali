.class Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;
.super Ljava/lang/Object;
.source "LiveWallpaperProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;->loadTiles()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final mCollator:Ljava/text/Collator;

.field final synthetic this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;

.field final synthetic val$packageManager:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;Landroid/content/pm/PackageManager;)V
    .locals 1
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;

    .prologue
    .line 65
    iput-object p1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->this$0:Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider;

    iput-object p2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->val$packageManager:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->mCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "info1"    # Landroid/content/pm/ResolveInfo;
    .param p2, "info2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 69
    iget-object v0, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->mCollator:Ljava/text/Collator;

    iget-object v1, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->val$packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->val$packageManager:Landroid/content/pm/PackageManager;

    .line 70
    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 69
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 65
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/customizations/wallpaper/providers/LiveWallpaperProvider$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
