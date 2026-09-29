.class Lnet/oneplus/h2launcher/Launcher$48;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindFolders(Lnet/oneplus/h2launcher/util/LongArrayMap;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/util/LongArrayMap;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6346
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$48;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$48;->val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 6348
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$48;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$48;->val$folders:Lnet/oneplus/h2launcher/util/LongArrayMap;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->bindFolders(Lnet/oneplus/h2launcher/util/LongArrayMap;)V

    .line 6349
    return-void
.end method
