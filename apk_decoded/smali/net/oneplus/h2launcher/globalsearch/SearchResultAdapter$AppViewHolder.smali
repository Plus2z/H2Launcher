.class Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;
.super Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;
.source "SearchResultAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppViewHolder"
.end annotation


# instance fields
.field private imageView:Landroid/widget/ImageView;

.field private relativeLayout:Landroid/widget/RelativeLayout;

.field private textView:Landroid/widget/TextView;

.field final synthetic this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;Landroid/view/View;)V
    .locals 1
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 390
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .line 391
    invoke-direct {p0, p2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 392
    const v0, 0x7f1100c2

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->imageView:Landroid/widget/ImageView;

    .line 393
    const v0, 0x7f1100c3

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->textView:Landroid/widget/TextView;

    .line 394
    const v0, 0x7f1100c4

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    .line 395
    invoke-virtual {p2, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 396
    return-void
.end method


# virtual methods
.method getImageView()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 399
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->imageView:Landroid/widget/ImageView;

    return-object v0
.end method

.method getLayoutView()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 407
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->relativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method getTextView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->textView:Landroid/widget/TextView;

    return-object v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 14
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v4, -0x1

    const/4 v3, 0x0

    .line 412
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->getAdapterPosition()I

    move-result v9

    .line 413
    .local v9, "position":I
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 414
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getComponentName()Landroid/content/ComponentName;

    move-result-object v8

    .line 415
    .local v8, "componentName":Landroid/content/ComponentName;
    if-eqz v8, :cond_3

    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 416
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$600(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Ljava/util/ArrayList;

    move-result-object v0

    add-int/lit8 v1, v9, -0x1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;->getIntent()Landroid/content/Intent;

    move-result-object v2

    .line 418
    .local v2, "intent":Landroid/content/Intent;
    if-eqz v2, :cond_2

    .line 419
    const/high16 v0, 0x10000000

    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 420
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$700(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Launcher;

    move-result-object v0

    invoke-virtual {v0, p1, v2, v3}, Lnet/oneplus/h2launcher/Launcher;->startActivitySafely(Landroid/view/View;Landroid/content/Intent;Ljava/lang/Object;)Z

    .line 422
    const-string v0, "profile"

    invoke-virtual {v2, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 423
    const-string v0, "profile"

    invoke-virtual {v2, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v10

    .line 424
    .local v10, "serialNumber":J
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$000(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/UserManagerCompat;

    move-result-object v0

    .line 425
    invoke-virtual {v0, v10, v11}, Lnet/oneplus/h2launcher/compat/UserManagerCompat;->getUserForSerialNumber(J)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .line 432
    .end local v10    # "serialNumber":J
    .local v7, "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$800(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v12

    invoke-virtual {v0, v8, v12, v13}, Lnet/oneplus/h2launcher/Stats;->recordAppHistory(Landroid/content/ComponentName;J)V

    .line 433
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$800(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/Stats;

    move-result-object v0

    const/4 v6, 0x0

    move-object v1, p1

    invoke-virtual/range {v0 .. v7}, Lnet/oneplus/h2launcher/Stats;->recordLaunch(Landroid/view/View;Landroid/content/Intent;Lnet/oneplus/h2launcher/ShortcutInfo;JILnet/oneplus/h2launcher/compat/UserHandleCompat;)V

    .line 437
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setShouldDismiss(Z)V

    .line 438
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 439
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitWithoutAnimation()V

    .line 445
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .end local v8    # "componentName":Landroid/content/ComponentName;
    :cond_0
    :goto_1
    return-void

    .line 427
    .restart local v2    # "intent":Landroid/content/Intent;
    .restart local v8    # "componentName":Landroid/content/ComponentName;
    :cond_1
    invoke-static {v2}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->fromIntent(Landroid/content/Intent;)Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .restart local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 430
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_2
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v7

    .restart local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    goto :goto_0

    .line 441
    .end local v2    # "intent":Landroid/content/Intent;
    .end local v7    # "user":Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 442
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter$AppViewHolder;->this$0:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-static {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->access$500(Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    move-result-object v0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    goto :goto_1
.end method
