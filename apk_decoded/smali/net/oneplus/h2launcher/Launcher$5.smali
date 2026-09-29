.class Lnet/oneplus/h2launcher/Launcher$5;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Lnet/oneplus/h2launcher/config/PreferencesHelper$PreferenceChangedCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/Launcher;->onCreate(Landroid/os/Bundle;)V
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
    .line 776
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$5;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getWatchedKeys()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 779
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pref_quick_page"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "pref_search_bar_style"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public onPreferenceChange(Ljava/lang/String;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 787
    const/4 v3, -0x1

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v3, :pswitch_data_0

    .line 798
    :goto_1
    :pswitch_0
    return-void

    .line 787
    :sswitch_0
    const-string v4, "pref_quick_page"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v1

    goto :goto_0

    :sswitch_1
    const-string v4, "pref_search_bar_style"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v3, v2

    goto :goto_0

    .line 791
    :pswitch_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$5;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 792
    .local v0, "appContext":Landroid/content/Context;
    iget-object v3, p0, Lnet/oneplus/h2launcher/Launcher$5;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleHidden(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    move v1, v2

    :cond_1
    invoke-static {v3, v1}, Lnet/oneplus/h2launcher/Launcher;->access$802(Lnet/oneplus/h2launcher/Launcher;Z)Z

    .line 793
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$5;->this$0:Lnet/oneplus/h2launcher/Launcher;

    .line 794
    invoke-static {v0}, Lnet/oneplus/h2launcher/config/PreferencesHelper;->isSearchBarStyleTransparent(Landroid/content/Context;)Z

    move-result v3

    .line 793
    invoke-static {v1, v3}, Lnet/oneplus/h2launcher/Launcher;->access$902(Lnet/oneplus/h2launcher/Launcher;Z)Z

    .line 795
    iget-object v1, p0, Lnet/oneplus/h2launcher/Launcher$5;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/Launcher;->access$1002(Lnet/oneplus/h2launcher/Launcher;Z)Z

    goto :goto_1

    .line 787
    nop

    :sswitch_data_0
    .sparse-switch
        -0x4bca4ec3 -> :sswitch_0
        0x1567bb4a -> :sswitch_1
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
