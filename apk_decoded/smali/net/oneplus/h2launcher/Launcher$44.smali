.class Lnet/oneplus/h2launcher/Launcher$44;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/Launcher;

.field final synthetic val$addAnimated:Ljava/util/ArrayList;

.field final synthetic val$addNotAnimated:Ljava/util/ArrayList;

.field final synthetic val$addedApps:Ljava/util/ArrayList;

.field final synthetic val$newScreens:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/Launcher;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    .line 6097
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$44;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iput-object p2, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$newScreens:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addNotAnimated:Ljava/util/ArrayList;

    iput-object p4, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addAnimated:Ljava/util/ArrayList;

    iput-object p5, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addedApps:Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 6099
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$44;->this$0:Lnet/oneplus/h2launcher/Launcher;

    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$newScreens:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addNotAnimated:Ljava/util/ArrayList;

    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addAnimated:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/Launcher$44;->val$addedApps:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2, v3, v4}, Lnet/oneplus/h2launcher/Launcher;->bindAppsAdded(Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 6100
    return-void
.end method
