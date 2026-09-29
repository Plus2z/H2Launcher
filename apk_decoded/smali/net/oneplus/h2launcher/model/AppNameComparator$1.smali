.class Lnet/oneplus/h2launcher/model/AppNameComparator$1;
.super Lnet/oneplus/h2launcher/model/AbstractUserComparator;
.source "AppNameComparator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lnet/oneplus/h2launcher/model/AppNameComparator;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lnet/oneplus/h2launcher/model/AbstractUserComparator",
        "<",
        "Lnet/oneplus/h2launcher/ItemInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lnet/oneplus/h2launcher/model/AppNameComparator;


# direct methods
.method constructor <init>(Lnet/oneplus/h2launcher/model/AppNameComparator;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lnet/oneplus/h2launcher/model/AppNameComparator;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 39
    iput-object p1, p0, Lnet/oneplus/h2launcher/model/AppNameComparator$1;->this$0:Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-direct {p0, p2}, Lnet/oneplus/h2launcher/model/AbstractUserComparator;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 39
    check-cast p1, Lnet/oneplus/h2launcher/ItemInfo;

    check-cast p2, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, p2}, Lnet/oneplus/h2launcher/model/AppNameComparator$1;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v0

    return v0
.end method

.method public final compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I
    .locals 7
    .param p1, "a"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "b"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    .line 44
    iget-object v5, p1, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_0

    iget-object v5, p1, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    .line 45
    .local v3, "firstTitle":Ljava/lang/String;
    :goto_0
    iget-object v5, p2, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    if-eqz v5, :cond_1

    iget-object v5, p2, Lnet/oneplus/h2launcher/ItemInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 47
    .local v0, "SecondTitle":Ljava/lang/String;
    :goto_1
    iget-object v5, p0, Lnet/oneplus/h2launcher/model/AppNameComparator$1;->this$0:Lnet/oneplus/h2launcher/model/AppNameComparator;

    invoke-virtual {v5, v3, v0}, Lnet/oneplus/h2launcher/model/AppNameComparator;->compareTitles(Ljava/lang/String;Ljava/lang/String;)I

    move-result v4

    .line 48
    .local v4, "result":I
    if-nez v4, :cond_2

    instance-of v5, p1, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v5, :cond_2

    instance-of v5, p2, Lnet/oneplus/h2launcher/AppInfo;

    if-eqz v5, :cond_2

    move-object v1, p1

    .line 49
    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    .local v1, "aAppInfo":Lnet/oneplus/h2launcher/AppInfo;
    move-object v2, p2

    .line 50
    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    .line 52
    .local v2, "bAppInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v5, v1, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    iget-object v6, v2, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v5, v6}, Landroid/content/ComponentName;->compareTo(Landroid/content/ComponentName;)I

    move-result v4

    .line 53
    if-nez v4, :cond_2

    .line 56
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/model/AbstractUserComparator;->compare(Lnet/oneplus/h2launcher/ItemInfo;Lnet/oneplus/h2launcher/ItemInfo;)I

    move-result v5

    .line 59
    .end local v1    # "aAppInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v2    # "bAppInfo":Lnet/oneplus/h2launcher/AppInfo;
    :goto_2
    return v5

    .line 44
    .end local v0    # "SecondTitle":Ljava/lang/String;
    .end local v3    # "firstTitle":Ljava/lang/String;
    .end local v4    # "result":I
    :cond_0
    const-string v3, ""

    goto :goto_0

    .line 45
    .restart local v3    # "firstTitle":Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_1

    .restart local v0    # "SecondTitle":Ljava/lang/String;
    .restart local v4    # "result":I
    :cond_2
    move v5, v4

    .line 59
    goto :goto_2
.end method
