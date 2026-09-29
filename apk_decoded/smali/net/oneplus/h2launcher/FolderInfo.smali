.class public Lnet/oneplus/h2launcher/FolderInfo;
.super Lnet/oneplus/h2launcher/ItemInfo;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/FolderInfo$FolderListener;
    }
.end annotation


# static fields
.field public static final FLAG_ITEMS_SORTED:I = 0x1

.field public static final FLAG_MULTI_PAGE_ANIMATION:I = 0x4

.field public static final FLAG_WORK_FOLDER:I = 0x2

.field public static final NO_FLAGS:I


# instance fields
.field private contents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field listeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/FolderInfo$FolderListener;",
            ">;"
        }
    .end annotation
.end field

.field opened:Z

.field public options:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 65
    invoke-direct {p0}, Lnet/oneplus/h2launcher/ItemInfo;-><init>()V

    .line 61
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    .line 66
    const/4 v0, 0x2

    iput v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->itemType:I

    .line 67
    invoke-static {}, Lnet/oneplus/h2launcher/compat/UserHandleCompat;->myUserHandle()Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    move-result-object v0

    iput-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->user:Lnet/oneplus/h2launcher/compat/UserHandleCompat;

    .line 68
    return-void
.end method


# virtual methods
.method public add(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 76
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 77
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 78
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;->onAdd(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 77
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderInfo;->itemsChanged()V

    .line 81
    return-void
.end method

.method addListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    .prologue
    .line 129
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 130
    return-void
.end method

.method public contains(Lnet/oneplus/h2launcher/ShortcutInfo;)Z
    .locals 1
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 110
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public createWithContents(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 101
    .local p1, "newContents":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/ShortcutInfo;>;"
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 102
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 103
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 104
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    iget-object v2, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v1, v2}, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;->onCreateWithContents(Ljava/util/List;)V

    .line 103
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderInfo;->itemsChanged()V

    .line 107
    return-void
.end method

.method public getContents()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    return-object v0
.end method

.method public hasOption(I)Z
    .locals 1
    .param p1, "optionFlag"    # I

    .prologue
    .line 167
    iget v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method itemsChanged()V
    .locals 2

    .prologue
    .line 139
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 140
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    invoke-interface {v1}, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;->onItemsChanged()V

    .line 139
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 142
    :cond_0
    return-void
.end method

.method onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 122
    invoke-super {p0, p1, p2}, Lnet/oneplus/h2launcher/ItemInfo;->onAddToDatabase(Landroid/content/Context;Landroid/content/ContentValues;)V

    .line 123
    const-string v0, "title"

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 124
    const-string v0, "options"

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p2, v0, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 126
    return-void
.end method

.method public remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V
    .locals 2
    .param p1, "item"    # Lnet/oneplus/h2launcher/ShortcutInfo;

    .prologue
    .line 89
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->contents:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 90
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 91
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;->onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 90
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 93
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/FolderInfo;->itemsChanged()V

    .line 94
    return-void
.end method

.method removeListener(Lnet/oneplus/h2launcher/FolderInfo$FolderListener;)V
    .locals 1
    .param p1, "listener"    # Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    .prologue
    .line 133
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 134
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 136
    :cond_0
    return-void
.end method

.method public setOption(IZLandroid/content/Context;)V
    .locals 3
    .param p1, "option"    # I
    .param p2, "isEnabled"    # Z
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 176
    iget v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    .line 177
    .local v0, "oldOptions":I
    if-eqz p2, :cond_1

    .line 178
    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    or-int/2addr v1, p1

    iput v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    .line 182
    :goto_0
    if-eqz p3, :cond_0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    if-eq v0, v1, :cond_0

    .line 183
    invoke-static {p3, p0}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 185
    :cond_0
    return-void

    .line 180
    :cond_1
    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    xor-int/lit8 v2, p1, -0x1

    and-int/2addr v1, v2

    iput v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->options:I

    goto :goto_0
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 2
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 114
    iput-object p1, p0, Lnet/oneplus/h2launcher/FolderInfo;->title:Ljava/lang/CharSequence;

    .line 115
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 116
    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;

    invoke-interface {v1, p1}, Lnet/oneplus/h2launcher/FolderInfo$FolderListener;->onTitleChanged(Ljava/lang/CharSequence;)V

    .line 115
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 118
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 160
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "FolderInfo(id="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/FolderInfo;->id:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->itemType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " container="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/FolderInfo;->container:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " screen="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lnet/oneplus/h2launcher/FolderInfo;->screenId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->cellX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " cellY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->cellY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanX="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->spanX:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " spanY="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->spanY:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " dropPos="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/FolderInfo;->dropPos:[I

    .line 163
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method unbind()V
    .locals 1

    .prologue
    .line 146
    invoke-super {p0}, Lnet/oneplus/h2launcher/ItemInfo;->unbind()V

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/FolderInfo;->listeners:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 148
    return-void
.end method
