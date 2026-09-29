.class final Lnet/oneplus/h2launcher/LauncherModel$8;
.super Ljava/lang/Object;
.source "LauncherModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/LauncherModel;->updateItemsInDatabaseHelper(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$cr:Landroid/content/ContentResolver;

.field final synthetic val$items:Ljava/util/ArrayList;

.field final synthetic val$stackTrace:[Ljava/lang/StackTraceElement;

.field final synthetic val$valuesList:Ljava/util/ArrayList;


# direct methods
.method constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;[Ljava/lang/StackTraceElement;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 757
    iput-object p1, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    iput-object p2, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    iput-object p3, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    iput-object p4, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .prologue
    .line 759
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 761
    .local v6, "ops":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 762
    .local v0, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 763
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$items:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/ItemInfo;

    .line 764
    .local v3, "item":Lnet/oneplus/h2launcher/ItemInfo;
    iget-wide v4, v3, Lnet/oneplus/h2launcher/ItemInfo;->id:J

    .line 765
    .local v4, "itemId":J
    invoke-static {v4, v5}, Lnet/oneplus/h2launcher/LauncherSettings$Favorites;->getContentUri(J)Landroid/net/Uri;

    move-result-object v7

    .line 766
    .local v7, "uri":Landroid/net/Uri;
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$valuesList:Ljava/util/ArrayList;

    invoke-virtual {v9, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/content/ContentValues;

    .line 768
    .local v8, "values":Landroid/content/ContentValues;
    invoke-static {v7}, Landroid/content/ContentProviderOperation;->newUpdate(Landroid/net/Uri;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9, v8}, Landroid/content/ContentProviderOperation$Builder;->withValues(Landroid/content/ContentValues;)Landroid/content/ContentProviderOperation$Builder;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/ContentProviderOperation$Builder;->build()Landroid/content/ContentProviderOperation;

    move-result-object v9

    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 769
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$stackTrace:[Ljava/lang/StackTraceElement;

    invoke-static {v3, v4, v5, v9}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemArrays(Lnet/oneplus/h2launcher/ItemInfo;J[Ljava/lang/StackTraceElement;)V

    .line 762
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 773
    .end local v3    # "item":Lnet/oneplus/h2launcher/ItemInfo;
    .end local v4    # "itemId":J
    .end local v7    # "uri":Landroid/net/Uri;
    .end local v8    # "values":Landroid/content/ContentValues;
    :cond_0
    :try_start_0
    iget-object v9, p0, Lnet/oneplus/h2launcher/LauncherModel$8;->val$cr:Landroid/content/ContentResolver;

    sget-object v10, Lnet/oneplus/h2launcher/LauncherProvider;->AUTHORITY:Ljava/lang/String;

    invoke-virtual {v9, v10, v6}, Landroid/content/ContentResolver;->applyBatch(Ljava/lang/String;Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 777
    :goto_1
    return-void

    .line 774
    :catch_0
    move-exception v1

    .line 775
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1
.end method
