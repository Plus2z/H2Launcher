.class public Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;
.super Ljava/lang/Object;
.source "LauncherActivityInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DrawableSource"
.end annotation


# instance fields
.field private drawable:Landroid/graphics/drawable/Drawable;

.field private systemDefault:Z

.field final synthetic this$0:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Landroid/graphics/drawable/Drawable;Z)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    .param p2, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p3, "systemDefault"    # Z

    .prologue
    .line 35
    iput-object p1, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->this$0:Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    iput-object p2, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->drawable:Landroid/graphics/drawable/Drawable;

    .line 37
    iput-boolean p3, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->systemDefault:Z

    .line 38
    return-void
.end method


# virtual methods
.method public getDrawable()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->drawable:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public isSystemDefault()Z
    .locals 1

    .prologue
    .line 45
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat$DrawableSource;->systemDefault:Z

    return v0
.end method
