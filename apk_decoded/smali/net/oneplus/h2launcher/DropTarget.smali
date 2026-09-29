.class public interface abstract Lnet/oneplus/h2launcher/DropTarget;
.super Ljava/lang/Object;
.source "DropTarget.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/DropTarget$DragObject;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DropTarget"


# virtual methods
.method public abstract acceptDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)Z
.end method

.method public abstract getHitRectRelativeToDragLayer(Landroid/graphics/Rect;)V
.end method

.method public abstract getLeft()I
.end method

.method public abstract getLocationInDragLayer([I)V
.end method

.method public abstract getTop()I
.end method

.method public abstract isDropEnabled()Z
.end method

.method public abstract onDragEnter(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragExit(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDragOver(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end method

.method public abstract onDrop(Lnet/oneplus/h2launcher/DropTarget$DragObject;)V
.end method

.method public abstract onFlingToDelete(Lnet/oneplus/h2launcher/DropTarget$DragObject;Landroid/graphics/PointF;)V
.end method

.method public abstract prepareAccessibilityDrop()V
.end method
