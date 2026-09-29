.class public Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;
.super Ljava/lang/Object;
.source "FavoriteItem.java"


# instance fields
.field private appWidgetProvider:Ljava/lang/String;

.field private id:I

.field private intent:Ljava/lang/String;

.field private itemType:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 11
    return-void
.end method


# virtual methods
.method public getAppWidgetProvider()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    iget-object v0, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->appWidgetProvider:Ljava/lang/String;

    return-object v0
.end method

.method public getId()I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->id:I

    return v0
.end method

.method public getIntent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->intent:Ljava/lang/String;

    return-object v0
.end method

.method public getItemType()I
    .locals 1

    .prologue
    .line 38
    iget v0, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->itemType:I

    return v0
.end method

.method public setAppWidgetProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "strAppWidgetProvider"    # Ljava/lang/String;

    .prologue
    .line 26
    iput-object p1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->appWidgetProvider:Ljava/lang/String;

    .line 27
    return-void
.end method

.method public setId(I)V
    .locals 0
    .param p1, "nId"    # I

    .prologue
    .line 14
    iput p1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->id:I

    .line 15
    return-void
.end method

.method public setIntent(Ljava/lang/String;)V
    .locals 0
    .param p1, "strIntent"    # Ljava/lang/String;

    .prologue
    .line 18
    iput-object p1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->intent:Ljava/lang/String;

    .line 19
    return-void
.end method

.method public setItemType(I)V
    .locals 0
    .param p1, "nItemType"    # I

    .prologue
    .line 22
    iput p1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->itemType:I

    .line 23
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 47
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FavoriteItem(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->id:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " intent="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/launcherProviderHelper/FavoriteItem;->intent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
