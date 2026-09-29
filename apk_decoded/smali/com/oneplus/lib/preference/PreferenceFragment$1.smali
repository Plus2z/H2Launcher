.class Lcom/oneplus/lib/preference/PreferenceFragment$1;
.super Landroid/os/Handler;
.source "PreferenceFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceFragment;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceFragment;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/preference/PreferenceFragment;

    .prologue
    .line 123
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceFragment$1;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 126
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 132
    :goto_0
    return-void

    .line 129
    :pswitch_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/PreferenceFragment$1;->this$0:Lcom/oneplus/lib/preference/PreferenceFragment;

    invoke-static {v0}, Lcom/oneplus/lib/preference/PreferenceFragment;->access$000(Lcom/oneplus/lib/preference/PreferenceFragment;)V

    goto :goto_0

    .line 126
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
