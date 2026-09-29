.class public abstract Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
    }
.end annotation


# static fields
.field public static final FLAG_SUSPENDED:I = 0x40000000


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    return-void
.end method

.method public static fromResolveInfo(Landroid/content/pm/ResolveInfo;Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .locals 1
    .param p0, "info"    # Landroid/content/pm/ResolveInfo;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    new-instance v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;

    invoke-direct {v0, p1, p0}, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompatV16;-><init>(Landroid/content/Context;Landroid/content/pm/ResolveInfo;)V

    return-object v0
.end method


# virtual methods
.method public abstract getApplicationInfo()Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract getComponentName()Landroid/content/ComponentName;
.end method

.method public abstract getFirstInstallTime()J
.end method

.method public abstract getIcon(I)Landroid/graphics/drawable/Drawable;
.end method

.method public abstract getIcon(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
.end method

.method public abstract getIconFromIconPack(Lnet/oneplus/h2launcher/IconPackHelper;Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
.end method

.method public abstract getIconFromPackage(Landroid/content/Context;I)Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
.end method

.method public abstract getLabel()Ljava/lang/CharSequence;
.end method

.method public abstract getUser()Lnet/oneplus/h2launcher/compat/UserHandleCompat;
.end method
