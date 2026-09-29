.class Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;
.super Ljava/lang/Object;
.source "LauncherProvider.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    .prologue
    .line 628
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;->this$0:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 632
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;->this$0:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    if-eqz v0, :cond_0

    .line 633
    iget-object v0, p0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper$1;->this$0:Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;

    iget-object v0, v0, Lnet/oneplus/h2launcher/LauncherProvider$DatabaseHelper;->mListener:Lnet/oneplus/h2launcher/LauncherProviderChangeListener;

    invoke-interface {v0}, Lnet/oneplus/h2launcher/LauncherProviderChangeListener;->onAppWidgetHostReset()V

    .line 635
    :cond_0
    return-void
.end method
