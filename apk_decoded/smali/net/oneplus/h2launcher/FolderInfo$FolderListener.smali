.class interface abstract Lnet/oneplus/h2launcher/FolderInfo$FolderListener;
.super Ljava/lang/Object;
.source "FolderInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/oneplus/h2launcher/FolderInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "FolderListener"
.end annotation


# virtual methods
.method public abstract onAdd(Lnet/oneplus/h2launcher/ShortcutInfo;)V
.end method

.method public abstract onCreateWithContents(Ljava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lnet/oneplus/h2launcher/ShortcutInfo;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onItemsChanged()V
.end method

.method public abstract onRemove(Lnet/oneplus/h2launcher/ShortcutInfo;)V
.end method

.method public abstract onTitleChanged(Ljava/lang/CharSequence;)V
.end method
