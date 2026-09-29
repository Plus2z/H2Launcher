.class Lnet/oneplus/h2launcher/LauncherClings$1;
.super Ljava/lang/Object;
.source "LauncherClings.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherClings;->dismissMigrationCling()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/LauncherClings;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/LauncherClings;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/LauncherClings;

    .prologue
    .line 157
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherClings$1;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 159
    new-instance v0, Lnet/oneplus/h2launcher/LauncherClings$1$1;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/LauncherClings$1$1;-><init>(Lnet/oneplus/h2launcher/LauncherClings$1;)V

    .line 165
    .local v0, "cb":Ljava/lang/Runnable;
    iget-object v1, p0, Lnet/oneplus/h2launcher/LauncherClings$1;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v2, p0, Lnet/oneplus/h2launcher/LauncherClings$1;->this$0:Lnet/oneplus/h2launcher/LauncherClings;

    iget-object v2, v2, Lnet/oneplus/h2launcher/LauncherClings;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v3, 0x7f11015e

    invoke-virtual {v2, v3}, Lnet/oneplus/h2launcher/Launcher;->findViewById(I)Landroid/view/View;

    move-result-object v2

    const-string v3, "cling_gel.migration.dismissed"

    const/16 v4, 0xc8

    invoke-virtual {v1, v2, v0, v3, v4}, Lnet/oneplus/h2launcher/LauncherClings;->dismissCling(Landroid/view/View;Ljava/lang/Runnable;Ljava/lang/String;I)V

    .line 167
    return-void
.end method
