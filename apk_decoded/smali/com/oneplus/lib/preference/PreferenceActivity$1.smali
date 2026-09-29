.class Lcom/oneplus/lib/preference/PreferenceActivity$1;
.super Landroid/os/Handler;
.source "PreferenceActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oneplus/lib/preference/PreferenceActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oneplus/lib/preference/PreferenceActivity;


# direct methods
.method constructor <init>(Lcom/oneplus/lib/preference/PreferenceActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oneplus/lib/preference/PreferenceActivity;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 228
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 253
    :cond_0
    :goto_0
    return-void

    .line 230
    :pswitch_0
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$000(Lcom/oneplus/lib/preference/PreferenceActivity;)V

    goto :goto_0

    .line 233
    :pswitch_1
    new-instance v2, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 234
    .local v2, "oldHeaders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/oneplus/lib/preference/PreferenceActivity$Header;>;"
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 235
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->onBuildHeaders(Ljava/util/List;)V

    .line 236
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    instance-of v3, v3, Landroid/widget/BaseAdapter;

    if-eqz v3, :cond_1

    .line 237
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->getListAdapter()Landroid/widget/ListAdapter;

    move-result-object v3

    check-cast v3, Landroid/widget/BaseAdapter;

    invoke-virtual {v3}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 239
    :cond_1
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->onGetNewHeader()Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v0

    .line 240
    .local v0, "header":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    if-eqz v0, :cond_3

    iget-object v3, v0, Lcom/oneplus/lib/preference/PreferenceActivity$Header;->fragment:Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 241
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3, v0, v2}, Lcom/oneplus/lib/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 242
    .local v1, "mappedHeader":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eq v3, v1, :cond_0

    .line 243
    :cond_2
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3, v0}, Lcom/oneplus/lib/preference/PreferenceActivity;->switchToHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 245
    .end local v1    # "mappedHeader":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v3}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 246
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    iget-object v4, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v4}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$200(Lcom/oneplus/lib/preference/PreferenceActivity;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v4

    iget-object v5, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-static {v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->access$100(Lcom/oneplus/lib/preference/PreferenceActivity;)Ljava/util/ArrayList;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lcom/oneplus/lib/preference/PreferenceActivity;->findBestMatchingHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;Ljava/util/ArrayList;)Lcom/oneplus/lib/preference/PreferenceActivity$Header;

    move-result-object v1

    .line 247
    .restart local v1    # "mappedHeader":Lcom/oneplus/lib/preference/PreferenceActivity$Header;
    if-eqz v1, :cond_0

    .line 248
    iget-object v3, p0, Lcom/oneplus/lib/preference/PreferenceActivity$1;->this$0:Lcom/oneplus/lib/preference/PreferenceActivity;

    invoke-virtual {v3, v1}, Lcom/oneplus/lib/preference/PreferenceActivity;->setSelectedHeader(Lcom/oneplus/lib/preference/PreferenceActivity$Header;)V

    goto :goto_0

    .line 228
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
