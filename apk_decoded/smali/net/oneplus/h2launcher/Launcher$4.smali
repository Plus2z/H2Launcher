.class Lnet/oneplus/h2launcher/Launcher$4;
.super Ljava/lang/Object;
.source "Launcher.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;


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
    .line 717
    iput-object p1, p0, Lnet/oneplus/h2launcher/Launcher$4;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 3
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 720
    const/4 v0, -0x1

    invoke-virtual {p2}, Ljava/lang/String;->hashCode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    :cond_0
    :goto_0
    packed-switch v0, :pswitch_data_1

    .line 725
    :goto_1
    return-void

    .line 720
    :pswitch_0
    const-string v2, "pref_wallpaper_color"

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    goto :goto_0

    .line 722
    :pswitch_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/Launcher$4;->this$0:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->access$702(Lnet/oneplus/h2launcher/Launcher;Z)Z

    goto :goto_1

    .line 720
    nop

    :pswitch_data_0
    .packed-switch 0x4f3ee8ca
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_1
    .end packed-switch
.end method
