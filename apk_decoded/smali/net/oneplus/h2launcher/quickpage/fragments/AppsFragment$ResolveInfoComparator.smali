.class Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;
.super Ljava/lang/Object;
.source "AppsFragment.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ResolveInfoComparator"
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
.field final packageManager:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;Landroid/content/pm/PackageManager;)V
    .locals 0
    .param p2, "packageManager"    # Landroid/content/pm/PackageManager;

    .prologue
    .line 196
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;->this$0:Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 197
    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;->packageManager:Landroid/content/pm/PackageManager;

    .line 198
    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .param p1, "resolveInfo"    # Landroid/content/pm/ResolveInfo;
    .param p2, "resolveInfo2"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 202
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 203
    .local v0, "appLabel":Ljava/lang/String;
    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;->packageManager:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 204
    .local v1, "appLabel2":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 193
    check-cast p1, Landroid/content/pm/ResolveInfo;

    check-cast p2, Landroid/content/pm/ResolveInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/quickpage/fragments/AppsFragment$ResolveInfoComparator;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
