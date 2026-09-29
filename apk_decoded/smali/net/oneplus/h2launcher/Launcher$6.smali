.class Lnet/oneplus/h2launcher/Launcher$6;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->loadExtractedColorsAndColorItems()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 871
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$6;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 874
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$6;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/Launcher;->access$1100(Lnet/oneplus/h2launcher/Launcher;)Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$6;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/dynamicui/ExtractedColors;->updateNavBarColorToSettings(Landroid/content/ContentResolver;)V

    .line 875
    return-void
.end method
