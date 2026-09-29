.class Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;
.super Ljava/lang/Object;
.source "FavoriteContactsGrid.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->getViewForItem(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;I)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

.field final synthetic val$entry:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

.field final synthetic val$holder:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)V
    .locals 0
    .param p1, "this$1"    # Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    .prologue
    .line 458
    iput-object p1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    iput-object p2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$holder:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;

    iput-object p3, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$entry:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 461
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 481
    :goto_0
    :pswitch_0
    const/4 v1, 0x1

    return v1

    .line 463
    :pswitch_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$holder:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    iget-object v2, v2, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$1200(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/graphics/PorterDuffColorFilter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 467
    :pswitch_2
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$entry:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/content/Intent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 469
    :try_start_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$entry:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x10000000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 470
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->this$1:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter;->this$0:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;

    invoke-static {v1}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;->access$900(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid;)Landroid/content/Context;

    move-result-object v1

    .line 471
    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$entry:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;

    invoke-static {v2}, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;->access$1300(Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ContactInfo;)Landroid/content/Intent;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 478
    :cond_0
    :goto_1
    :pswitch_3
    iget-object v1, p0, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$FavoriteContactsAdapter$1;->val$holder:Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;

    iget-object v1, v1, Lnet/oneplus/h2launcher/quickpage/FavoriteContactsGrid$ViewHolder;->icon:Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/quickpage/view/CircleImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto :goto_0

    .line 472
    :catch_0
    move-exception v0

    .line 474
    .local v0, "anfe":Landroid/content/ActivityNotFoundException;
    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_1

    .line 461
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method
