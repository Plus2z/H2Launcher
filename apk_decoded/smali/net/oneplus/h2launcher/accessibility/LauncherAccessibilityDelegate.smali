.class public Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;
.super Landroid/view/View$AccessibilityDelegate;
.source "LauncherAccessibilityDelegate.java"

# interfaces
.implements Lnet/oneplus/h2launcher/DragController$DragListener;


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;,
        Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;,
        Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;
    }
.end annotation


# static fields
.field private static final ADD_TO_WORKSPACE:I = 0x7f110000

.field private static final INFO:I = 0x7f110004

.field private static final MOVE:I = 0x7f110007

.field private static final MOVE_TO_WORKSPACE:I = 0x7f11000a

.field private static final REMOVE:I = 0x7f11000b

.field private static final RESIZE:I = 0x7f11000c

.field private static final TAG:Ljava/lang/String; = "LauncherAccessibilityDelegate"

.field private static final UNINSTALL:I = 0x7f11000d


# instance fields
.field private final mActions:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;",
            ">;"
        }
    .end annotation
.end field

.field private mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

.field private mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

.field final mLauncher:Lnet/oneplus/h2launcher/Launcher;


# direct methods
.method public constructor <init>(Lnet/oneplus/h2launcher/Launcher;)V
    .locals 8
    .param p1, "launcher"    # Lnet/oneplus/h2launcher/Launcher;

    .prologue
    const v4, 0x7f11000b

    const v7, 0x7f11000a

    const v6, 0x7f110007

    const v3, 0x7f110004

    const/high16 v5, 0x7f110000

    .line 74
    invoke-direct {p0}, Landroid/view/View$AccessibilityDelegate;-><init>()V

    .line 68
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    .line 71
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 72
    const/4 v0, 0x0

    iput-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 75
    iput-object p1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 77
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b004a

    .line 78
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v4, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 77
    invoke-virtual {v0, v4, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 79
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b0070

    .line 80
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v3, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 79
    invoke-virtual {v0, v3, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 81
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f11000d

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f11000d

    const v4, 0x7f0b004b

    .line 82
    invoke-virtual {p1, v4}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 81
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 83
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b0019

    .line 84
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 83
    invoke-virtual {v0, v5, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b0024

    .line 86
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v6, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 85
    invoke-virtual {v0, v6, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 87
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    new-instance v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v2, 0x7f0b0028

    .line 88
    invoke-virtual {p1, v2}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-direct {v1, v7, v2}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, v7, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 89
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v1, 0x7f11000c

    new-instance v2, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    const v3, 0x7f11000c

    const v4, 0x7f0b002a

    .line 90
    invoke-virtual {p1, v4}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;-><init>(ILjava/lang/CharSequence;)V

    .line 89
    invoke-virtual {v0, v1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 91
    return-void
.end method

.method private findSpaceOnWorkspace(Lnet/oneplus/h2launcher/ItemInfo;[I)J
    .locals 11
    .param p1, "info"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p2, "outCoordinates"    # [I

    .prologue
    .line 402
    iget-object v9, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v7

    .line 403
    .local v7, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getScreenOrder()Ljava/util/ArrayList;

    move-result-object v8

    .line 407
    .local v8, "workspaceScreens":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Long;>;"
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->getCurrentPage()I

    move-result v6

    .line 408
    .local v6, "screenIndex":I
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 409
    .local v2, "screenId":J
    invoke-virtual {v7, v6}, Lnet/oneplus/h2launcher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 411
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget v9, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v10, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v9, v10}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 412
    .local v0, "found":Z
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->hasCustomContent()Z

    move-result v9

    if-eqz v9, :cond_0

    const/4 v6, 0x1

    .line 413
    :goto_0
    if-nez v0, :cond_1

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v6, v9, :cond_1

    .line 414
    invoke-virtual {v8, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 415
    invoke-virtual {v7, v6}, Lnet/oneplus/h2launcher/Workspace;->getPageAt(I)Landroid/view/View;

    move-result-object v1

    .end local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 416
    .restart local v1    # "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget v9, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v10, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v9, v10}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 417
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 412
    :cond_0
    const/4 v6, 0x0

    goto :goto_0

    .line 420
    :cond_1
    if-eqz v0, :cond_2

    move-wide v4, v2

    .line 432
    .end local v2    # "screenId":J
    .local v4, "screenId":J
    :goto_1
    return-wide v4

    .line 424
    .end local v4    # "screenId":J
    .restart local v2    # "screenId":J
    :cond_2
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->addExtraEmptyScreen()Z

    .line 425
    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Workspace;->commitExtraEmptyScreen()J

    move-result-wide v2

    .line 426
    invoke-virtual {v7, v2, v3}, Lnet/oneplus/h2launcher/Workspace;->getScreenWithId(J)Lnet/oneplus/h2launcher/CellLayout;

    move-result-object v1

    .line 427
    iget v9, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    iget v10, p1, Lnet/oneplus/h2launcher/ItemInfo;->spanY:I

    invoke-virtual {v1, p2, v9, v10}, Lnet/oneplus/h2launcher/CellLayout;->findCellForSpan([III)Z

    move-result v0

    .line 429
    if-nez v0, :cond_3

    .line 430
    const-string v9, "LauncherAccessibilityDelegate"

    const-string v10, "Not enough space on an empty screen"

    invoke-static {v9, v10}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    :cond_3
    move-wide v4, v2

    .line 432
    .end local v2    # "screenId":J
    .restart local v4    # "screenId":J
    goto :goto_1
.end method

.method private getSupportedResizeActions(Landroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)Ljava/util/ArrayList;
    .locals 7
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v6, 0x1

    .line 224
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .local v0, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    move-object v3, p1

    .line 226
    check-cast v3, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->getAppWidgetInfo()Landroid/appwidget/AppWidgetProviderInfo;

    move-result-object v2

    .line 227
    .local v2, "providerInfo":Landroid/appwidget/AppWidgetProviderInfo;
    if-nez v2, :cond_1

    .line 253
    :cond_0
    :goto_0
    return-object v0

    .line 231
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/CellLayout;

    .line 232
    .local v1, "layout":Lnet/oneplus/h2launcher/CellLayout;
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_4

    .line 233
    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v3, v4

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-virtual {v1, v3, v4, v6, v5}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_2

    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v3, v3, -0x1

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 234
    invoke-virtual {v1, v3, v4, v6, v5}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 235
    :cond_2
    const v3, 0x7f0b0023

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 238
    :cond_3
    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanX:I

    if-le v3, v4, :cond_4

    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    if-le v3, v6, :cond_4

    .line 239
    const v3, 0x7f0b001e

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 243
    :cond_4
    iget v3, v2, Landroid/appwidget/AppWidgetProviderInfo;->resizeMode:I

    and-int/lit8 v3, v3, 0x2

    if-eqz v3, :cond_0

    .line 244
    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v5, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v4, v5

    iget v5, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v1, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-nez v3, :cond_5

    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    add-int/lit8 v4, v4, -0x1

    iget v5, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 245
    invoke-virtual {v1, v3, v4, v5, v6}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 246
    :cond_5
    const v3, 0x7f0b0022

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 249
    :cond_6
    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    iget v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->minSpanY:I

    if-le v3, v4, :cond_0

    iget v3, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    if-le v3, v6, :cond_0

    .line 250
    const v3, 0x7f0b001d

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0
.end method


# virtual methods
.method announceConfirmation(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 296
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 297
    return-void
.end method

.method announceConfirmation(Ljava/lang/String;)V
    .locals 1
    .param p1, "confirmation"    # Ljava/lang/String;

    .prologue
    .line 300
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v0

    invoke-virtual {v0, p1}, Lnet/oneplus/h2launcher/DragLayer;->announceForAccessibility(Ljava/lang/CharSequence;)V

    .line 302
    return-void
.end method

.method public beginAccessibleDrag(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V
    .locals 8
    .param p1, "item"    # Landroid/view/View;
    .param p2, "info"    # Lnet/oneplus/h2launcher/ItemInfo;

    .prologue
    const/4 v7, 0x1

    .line 339
    new-instance v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    invoke-direct {v4}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 340
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p2, v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->info:Lnet/oneplus/h2launcher/ItemInfo;

    .line 341
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    iput-object p1, v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->item:Landroid/view/View;

    .line 342
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v5, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->ICON:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v5, v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 343
    instance-of v4, p2, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v4, :cond_4

    .line 344
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v5, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->FOLDER:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v5, v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    .line 349
    :cond_0
    :goto_0
    new-instance v0, Lnet/oneplus/h2launcher/CellLayout$CellInfo;

    invoke-direct {v0, p1, p2}, Lnet/oneplus/h2launcher/CellLayout$CellInfo;-><init>(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 351
    .local v0, "cellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 352
    .local v2, "pos":Landroid/graphics/Rect;
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v4

    invoke-virtual {v4, p1, v2}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantRectRelativeToSelf(Landroid/view/View;Landroid/graphics/Rect;)F

    .line 353
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v4

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerX()I

    move-result v5

    invoke-virtual {v2}, Landroid/graphics/Rect;->centerY()I

    move-result v6

    invoke-virtual {v4, v5, v6}, Lnet/oneplus/h2launcher/DragController;->prepareAccessibleDrag(II)V

    .line 355
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    .line 357
    .local v3, "workspace":Lnet/oneplus/h2launcher/Workspace;
    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v1

    .line 358
    .local v1, "folder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v1, :cond_1

    .line 359
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Folder;->getItemsInReadingOrder()Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 360
    iput-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 365
    :cond_1
    :goto_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    if-nez v4, :cond_2

    .line 366
    iput-object v3, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 368
    :cond_2
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    invoke-interface {v4, v7}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->enableAccessibleDrag(Z)V

    .line 369
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    invoke-interface {v4, v0, v7}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->startDrag(Lnet/oneplus/h2launcher/CellLayout$CellInfo;Z)V

    .line 371
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v4

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/DragController;->isDragging()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 372
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v4

    invoke-virtual {v4, p0}, Lnet/oneplus/h2launcher/DragController;->addDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 374
    :cond_3
    return-void

    .line 345
    .end local v0    # "cellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    .end local v1    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v2    # "pos":Landroid/graphics/Rect;
    .end local v3    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_4
    instance-of v4, p2, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v4, :cond_0

    .line 346
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    sget-object v5, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;->WIDGET:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    iput-object v5, v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;->dragType:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragType;

    goto :goto_0

    .line 362
    .restart local v0    # "cellInfo":Lnet/oneplus/h2launcher/CellLayout$CellInfo;
    .restart local v1    # "folder":Lnet/oneplus/h2launcher/Folder;
    .restart local v2    # "pos":Landroid/graphics/Rect;
    .restart local v3    # "workspace":Lnet/oneplus/h2launcher/Workspace;
    :cond_5
    iget-object v4, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/Launcher;->closeFolder()V

    goto :goto_1
.end method

.method public getDragInfo()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;
    .locals 1

    .prologue
    .line 309
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    return-object v0
.end method

.method public handleAccessibleDrop(Landroid/view/View;Landroid/graphics/Rect;Ljava/lang/String;)V
    .locals 4
    .param p1, "clickedTarget"    # Landroid/view/View;
    .param p2, "dropLocation"    # Landroid/graphics/Rect;
    .param p3, "confirmation"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 319
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->isInAccessibleDrag()Z

    move-result v1

    if-nez v1, :cond_1

    .line 336
    :cond_0
    :goto_0
    return-void

    .line 321
    :cond_1
    const/4 v1, 0x2

    new-array v0, v1, [I

    .line 322
    .local v0, "loc":[I
    if-nez p2, :cond_2

    .line 323
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v2

    .line 324
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    aput v1, v0, v3

    .line 330
    :goto_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragLayer()Lnet/oneplus/h2launcher/DragLayer;

    move-result-object v1

    invoke-virtual {v1, p1, v0}, Lnet/oneplus/h2launcher/DragLayer;->getDescendantCoordRelativeToSelf(Landroid/view/View;[I)F

    .line 331
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v1

    invoke-virtual {v1, v0}, Lnet/oneplus/h2launcher/DragController;->completeAccessibleDrag([I)V

    .line 333
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 334
    invoke-virtual {p0, p3}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    goto :goto_0

    .line 326
    :cond_2
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    aput v1, v0, v2

    .line 327
    invoke-virtual {p2}, Landroid/graphics/Rect;->centerY()I

    move-result v1

    aput v1, v0, v3

    goto :goto_1
.end method

.method public isInAccessibleDrag()Z
    .locals 1

    .prologue
    .line 305
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onDragEnd()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 384
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->getDragController()Lnet/oneplus/h2launcher/DragController;

    move-result-object v0

    invoke-virtual {v0, p0}, Lnet/oneplus/h2launcher/DragController;->removeDragListener(Lnet/oneplus/h2launcher/DragController$DragListener;)V

    .line 385
    iput-object v2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragInfo:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$DragInfo;

    .line 386
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;->enableAccessibleDrag(Z)V

    .line 388
    iput-object v2, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mDragSource:Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$AccessibilityDragSource;

    .line 390
    :cond_0
    return-void
.end method

.method public onDragStart(Lnet/oneplus/h2launcher/DragSource;Ljava/lang/Object;I)V
    .locals 0
    .param p1, "source"    # Lnet/oneplus/h2launcher/DragSource;
    .param p2, "info"    # Ljava/lang/Object;
    .param p3, "dragAction"    # I

    .prologue
    .line 380
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 6
    .param p1, "host"    # Landroid/view/View;
    .param p2, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 95
    invoke-super {p0, p1, p2}, Landroid/view/View$AccessibilityDelegate;->onInitializeAccessibilityNodeInfo(Landroid/view/View;Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 96
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lnet/oneplus/h2launcher/ItemInfo;

    if-nez v1, :cond_1

    .line 124
    :cond_0
    :goto_0
    return-void

    .line 97
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    .line 99
    .local v0, "item":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-static {v0}, Lnet/oneplus/h2launcher/DeleteDropTarget;->supportsDrop(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 100
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f11000b

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 102
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 103
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f11000d

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 105
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lnet/oneplus/h2launcher/InfoDropTarget;->supportsDrop(Landroid/content/Context;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 106
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f110004

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 109
    :cond_4
    instance-of v1, v0, Lnet/oneplus/h2launcher/ShortcutInfo;

    if-nez v1, :cond_5

    instance-of v1, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-nez v1, :cond_5

    instance-of v1, v0, Lnet/oneplus/h2launcher/FolderInfo;

    if-eqz v1, :cond_6

    .line 112
    :cond_5
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f110007

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 114
    iget-wide v2, v0, Lnet/oneplus/h2launcher/ItemInfo;->container:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-ltz v1, :cond_8

    .line 115
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f11000a

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    .line 121
    :cond_6
    :goto_1
    instance-of v1, v0, Lnet/oneplus/h2launcher/AppInfo;

    if-nez v1, :cond_7

    instance-of v1, v0, Lnet/oneplus/h2launcher/PendingAddItemInfo;

    if-eqz v1, :cond_0

    .line 122
    :cond_7
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const/high16 v2, 0x7f110000

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto/16 :goto_0

    .line 116
    :cond_8
    instance-of v1, v0, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    if-eqz v1, :cond_6

    move-object v1, v0

    .line 117
    check-cast v1, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    invoke-direct {p0, p1, v1}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_6

    .line 118
    iget-object v1, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mActions:Landroid/util/SparseArray;

    const v2, 0x7f11000c

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;

    invoke-virtual {p2, v1}, Landroid/view/accessibility/AccessibilityNodeInfo;->addAction(Landroid/view/accessibility/AccessibilityNodeInfo$AccessibilityAction;)V

    goto :goto_1
.end method

.method public performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z
    .locals 1
    .param p1, "host"    # Landroid/view/View;
    .param p2, "action"    # I
    .param p3, "args"    # Landroid/os/Bundle;

    .prologue
    .line 128
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/ItemInfo;

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/ItemInfo;

    invoke-virtual {p0, p1, v0, p2}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->performAction(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x1

    .line 132
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/view/View$AccessibilityDelegate;->performAccessibilityAction(Landroid/view/View;ILandroid/os/Bundle;)Z

    move-result v0

    goto :goto_0
.end method

.method public performAction(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;I)Z
    .locals 20
    .param p1, "host"    # Landroid/view/View;
    .param p2, "item"    # Lnet/oneplus/h2launcher/ItemInfo;
    .param p3, "action"    # I

    .prologue
    .line 136
    const v3, 0x7f11000b

    move/from16 v0, p3

    if-ne v0, v3, :cond_1

    .line 137
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    move-object/from16 v1, p1

    invoke-static {v3, v0, v1}, Lnet/oneplus/h2launcher/DeleteDropTarget;->removeWorkspaceOrFolderItem(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 138
    const v3, 0x7f0b0074

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(I)V

    .line 139
    const/4 v3, 0x1

    .line 220
    :goto_0
    return v3

    .line 141
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 142
    :cond_1
    const v3, 0x7f110004

    move/from16 v0, p3

    if-ne v0, v3, :cond_2

    .line 143
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    invoke-static {v0, v3}, Lnet/oneplus/h2launcher/InfoDropTarget;->startDetailsActivityForInfo(Ljava/lang/Object;Lnet/oneplus/h2launcher/Launcher;)V

    .line 144
    const/4 v3, 0x1

    goto :goto_0

    .line 145
    :cond_2
    const v3, 0x7f11000d

    move/from16 v0, p3

    if-ne v0, v3, :cond_3

    .line 146
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move-object/from16 v0, p2

    invoke-static {v3, v0}, Lnet/oneplus/h2launcher/UninstallDropTarget;->startUninstallActivity(Lnet/oneplus/h2launcher/Launcher;Lnet/oneplus/h2launcher/ItemInfo;)Z

    move-result v3

    goto :goto_0

    .line 147
    :cond_3
    const v3, 0x7f110007

    move/from16 v0, p3

    if-ne v0, v3, :cond_5

    .line 148
    invoke-virtual/range {p0 .. p2}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->beginAccessibleDrag(Landroid/view/View;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 220
    :cond_4
    :goto_1
    const/4 v3, 0x0

    goto :goto_0

    .line 149
    :cond_5
    const/high16 v3, 0x7f110000

    move/from16 v0, p3

    if-ne v0, v3, :cond_6

    .line 150
    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 151
    .local v8, "coordinates":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lnet/oneplus/h2launcher/ItemInfo;[I)J

    move-result-wide v6

    .line 152
    .local v6, "screenId":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v12, 0x1

    new-instance v3, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;

    move-object/from16 v4, p0

    move-object/from16 v5, p2

    invoke-direct/range {v3 .. v8}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$1;-><init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Lnet/oneplus/h2launcher/ItemInfo;J[I)V

    invoke-virtual {v10, v12, v3}, Lnet/oneplus/h2launcher/Launcher;->showWorkspace(ZLjava/lang/Runnable;)V

    .line 175
    const/4 v3, 0x1

    goto :goto_0

    .line 176
    .end local v6    # "screenId":J
    .end local v8    # "coordinates":[I
    :cond_6
    const v3, 0x7f11000a

    move/from16 v0, p3

    if-ne v0, v3, :cond_7

    .line 177
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v9

    .line 178
    .local v9, "folder":Lnet/oneplus/h2launcher/Folder;
    move-object/from16 v0, p0

    iget-object v3, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const/4 v4, 0x1

    invoke-virtual {v3, v9, v4}, Lnet/oneplus/h2launcher/Launcher;->closeFolder(Lnet/oneplus/h2launcher/Folder;Z)V

    move-object/from16 v11, p2

    .line 179
    check-cast v11, Lnet/oneplus/h2launcher/ShortcutInfo;

    .line 180
    .local v11, "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Folder;->getInfo()Lnet/oneplus/h2launcher/FolderInfo;

    move-result-object v3

    invoke-virtual {v3, v11}, Lnet/oneplus/h2launcher/FolderInfo;->remove(Lnet/oneplus/h2launcher/ShortcutInfo;)V

    .line 182
    const/4 v3, 0x2

    new-array v8, v3, [I

    .line 183
    .restart local v8    # "coordinates":[I
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v1, v8}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->findSpaceOnWorkspace(Lnet/oneplus/h2launcher/ItemInfo;[I)J

    move-result-wide v6

    .line 184
    .restart local v6    # "screenId":J
    move-object/from16 v0, p0

    iget-object v10, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const-wide/16 v12, -0x64

    const/4 v3, 0x0

    aget v16, v8, v3

    const/4 v3, 0x1

    aget v17, v8, v3

    move-wide v14, v6

    invoke-static/range {v10 .. v17}, Lnet/oneplus/h2launcher/LauncherModel;->moveItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;JJII)V

    .line 190
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    new-instance v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v4, v0, v1}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$2;-><init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Lnet/oneplus/h2launcher/ItemInfo;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_1

    .line 200
    .end local v6    # "screenId":J
    .end local v8    # "coordinates":[I
    .end local v9    # "folder":Lnet/oneplus/h2launcher/Folder;
    .end local v11    # "info":Lnet/oneplus/h2launcher/ShortcutInfo;
    :cond_7
    const v3, 0x7f11000c

    move/from16 v0, p3

    if-ne v0, v3, :cond_4

    move-object/from16 v11, p2

    .line 201
    check-cast v11, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .line 202
    .local v11, "info":Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v0, v1, v11}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->getSupportedResizeActions(Landroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)Ljava/util/ArrayList;

    move-result-object v2

    .line 203
    .local v2, "actions":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v0, v3, [Ljava/lang/CharSequence;

    move-object/from16 v19, v0

    .line 204
    .local v19, "labels":[Ljava/lang/CharSequence;
    const/16 v18, 0x0

    .local v18, "i":I
    :goto_2
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    move/from16 v0, v18

    if-ge v0, v3, :cond_8

    .line 205
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    move/from16 v0, v18

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/Launcher;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    aput-object v3, v19, v18

    .line 204
    add-int/lit8 v18, v18, 0x1

    goto :goto_2

    .line 208
    :cond_8
    new-instance v3, Landroid/app/AlertDialog$Builder;

    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-direct {v3, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v4, 0x7f0b002a

    .line 209
    invoke-virtual {v3, v4}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    invoke-direct {v4, v0, v2, v1, v11}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate$3;-><init>(Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;Ljava/util/ArrayList;Landroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V

    .line 210
    move-object/from16 v0, v19

    invoke-virtual {v3, v0, v4}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v3

    .line 218
    invoke-virtual {v3}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    goto/16 :goto_1
.end method

.method performResizeAction(ILandroid/view/View;Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;)V
    .locals 10
    .param p1, "action"    # I
    .param p2, "host"    # Landroid/view/View;
    .param p3, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;

    .prologue
    const/4 v9, 0x1

    .line 257
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    check-cast v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;

    .line 258
    .local v7, "lp":Lnet/oneplus/h2launcher/CellLayout$LayoutParams;
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0}, Landroid/view/ViewParent;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Lnet/oneplus/h2launcher/CellLayout;

    .line 259
    .local v6, "layout":Lnet/oneplus/h2launcher/CellLayout;
    invoke-virtual {v6, p2}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsUnoccupiedForView(Landroid/view/View;)V

    .line 261
    const v0, 0x7f0b0023

    if-ne p1, v0, :cond_4

    .line 262
    invoke-virtual {p2}, Landroid/view/View;->getLayoutDirection()I

    move-result v0

    if-ne v0, v9, :cond_0

    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v0, v0, -0x1

    iget v1, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 263
    invoke-virtual {v6, v0, v1, v9, v2}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    iget v1, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    add-int/2addr v0, v1

    iget v1, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    .line 264
    invoke-virtual {v6, v0, v1, v9, v2}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_2

    .line 265
    :cond_1
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellX:I

    .line 266
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    .line 268
    :cond_2
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 269
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    .line 285
    :cond_3
    :goto_0
    invoke-virtual {v6, p2}, Lnet/oneplus/h2launcher/CellLayout;->markCellsAsOccupiedForView(Landroid/view/View;)V

    .line 286
    new-instance v8, Landroid/graphics/Rect;

    invoke-direct {v8}, Landroid/graphics/Rect;-><init>()V

    .line 287
    .local v8, "sizeRange":Landroid/graphics/Rect;
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    iget v1, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v0, v1, v2, v8}, Lnet/oneplus/h2launcher/AppWidgetResizeFrame;->getWidgetSizeRanges(Landroid/app/Activity;IILandroid/graphics/Rect;)Landroid/graphics/Rect;

    move-object v0, p2

    .line 288
    check-cast v0, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;

    const/4 v1, 0x0

    iget v2, v8, Landroid/graphics/Rect;->left:I

    iget v3, v8, Landroid/graphics/Rect;->top:I

    iget v4, v8, Landroid/graphics/Rect;->right:I

    iget v5, v8, Landroid/graphics/Rect;->bottom:I

    invoke-virtual/range {v0 .. v5}, Lnet/oneplus/h2launcher/LauncherAppWidgetHostView;->updateAppWidgetSize(Landroid/os/Bundle;IIII)V

    .line 290
    invoke-virtual {p2}, Landroid/view/View;->requestLayout()V

    .line 291
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v0, p3}, Lnet/oneplus/h2launcher/LauncherModel;->updateItemInDatabase(Landroid/content/Context;Lnet/oneplus/h2launcher/ItemInfo;)V

    .line 292
    iget-object v0, p0, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    const v1, 0x7f0b00d4

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    iget v3, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v9

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/Launcher;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;->announceConfirmation(Ljava/lang/String;)V

    .line 293
    return-void

    .line 270
    .end local v8    # "sizeRange":Landroid/graphics/Rect;
    :cond_4
    const v0, 0x7f0b001e

    if-ne p1, v0, :cond_5

    .line 271
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellHSpan:I

    .line 272
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    goto :goto_0

    .line 273
    :cond_5
    const v0, 0x7f0b0022

    if-ne p1, v0, :cond_7

    .line 274
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellX:I

    iget v1, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    add-int/2addr v1, v2

    iget v2, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanX:I

    invoke-virtual {v6, v0, v1, v2, v9}, Lnet/oneplus/h2launcher/CellLayout;->isRegionVacant(IIII)Z

    move-result v0

    if-nez v0, :cond_6

    .line 275
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellY:I

    .line 276
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->cellY:I

    .line 278
    :cond_6
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 279
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_0

    .line 280
    :cond_7
    const v0, 0x7f0b001d

    if-ne p1, v0, :cond_3

    .line 281
    iget v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    add-int/lit8 v0, v0, -0x1

    iput v0, v7, Lnet/oneplus/h2launcher/CellLayout$LayoutParams;->cellVSpan:I

    .line 282
    iget v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p3, Lnet/oneplus/h2launcher/LauncherAppWidgetInfo;->spanY:I

    goto/16 :goto_0
.end method
