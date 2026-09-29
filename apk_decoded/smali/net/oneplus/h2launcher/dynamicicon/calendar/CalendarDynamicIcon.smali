.class public Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;
.super Lnet/oneplus/h2launcher/BubbleTextView;
.source "CalendarDynamicIcon.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;


# static fields
.field private static final ICON_DRAWABLE_ANIMATION_DURATION:I = 0x3e8

.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 24
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 30
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 34
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 38
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 39
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 23
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->onTransitionDrawableFinish(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sourceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 158
    instance-of v2, p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 159
    check-cast v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->isPressed()Z

    move-result v1

    .line 160
    .local v1, "pressed":Z
    check-cast p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBrightness()I

    move-result v0

    .line 168
    .local v0, "brightness":I
    :goto_0
    instance-of v2, p2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 169
    check-cast v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setPressed(Z)V

    .line 170
    check-cast p2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    .line 177
    .end local v0    # "brightness":I
    .end local v1    # "pressed":Z
    :cond_0
    :goto_1
    return-void

    .line 161
    .restart local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    .restart local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, p1, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 162
    check-cast v2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->isPressed()Z

    move-result v1

    .line 163
    .restart local v1    # "pressed":Z
    check-cast p1, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .end local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getBrightness()I

    move-result v0

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 171
    :cond_2
    instance-of v2, p2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 172
    check-cast v2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setPressed(Z)V

    .line 173
    check-cast p2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .end local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBrightness(I)V

    goto :goto_1
.end method

.method private generateAnimationDrawable()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v9, 0x0

    .line 68
    iget-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v7}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 69
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .line 70
    .local v2, "info":Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .line 71
    .local v4, "oldDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getNewIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v3

    .line 72
    .local v3, "newDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget v7, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIconSize:I

    int-to-float v7, v7

    iget-object v8, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v8

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v8

    mul-float/2addr v7, v8

    float-to-int v1, v7

    .line 73
    .local v1, "iconSize":I
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->isDisabled()Z

    move-result v7

    invoke-virtual {v4, v7}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 74
    invoke-virtual {v4, v9, v9, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 75
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->isDisabled()Z

    move-result v7

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 76
    invoke-virtual {v3, v9, v9, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 78
    new-instance v6, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    const/4 v7, 0x2

    new-array v7, v7, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v7, v9

    aput-object v3, v7, v10

    invoke-direct {v6, v7}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 81
    .local v6, "transitionDrawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getOriginalIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v5

    .line 82
    .local v5, "originalDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->isDisabled()Z

    move-result v7

    invoke-virtual {v5, v7}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 83
    invoke-virtual {v5, v9, v9, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 84
    invoke-virtual {v6, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 86
    invoke-virtual {v6, v9, v9, v1, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBounds(IIII)V

    .line 87
    invoke-virtual {v6, v10}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setFirstLayerHidden(Z)V

    .line 88
    invoke-virtual {v6, v10}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 89
    new-instance v7, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;

    invoke-direct {v7, p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;)V

    invoke-virtual {v6, v7}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setAnimationDoneCallback(Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;)V

    .line 100
    iput-object v6, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 101
    return-void
.end method

.method private onTransitionDrawableFinish(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "fromDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v1, 0xff

    .line 104
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 105
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 106
    iget v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIconSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p2, v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 107
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->tryToUpdateParentFolderIcon()V

    .line 109
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 110
    .local v0, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->onAnimationEnd()V

    .line 111
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 112
    return-void
.end method

.method private tryToUpdateParentFolderIcon()V
    .locals 2

    .prologue
    .line 188
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 189
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_0

    .line 190
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->invalidateFolderIcon()V

    .line 192
    :cond_0
    return-void
.end method


# virtual methods
.method public applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V
    .locals 4
    .param p1, "info"    # Lnet/oneplus/h2launcher/ShortcutInfo;
    .param p2, "promiseStateChanged"    # Z
    .param p3, "animateChange"    # Z

    .prologue
    .line 43
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V

    move-object v0, p1

    .line 44
    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .line 46
    .local v0, "calendarInfo":Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v1

    .line 47
    .local v1, "fastBitmapDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 49
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 51
    iget-object v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 52
    iget-object v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 54
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v2, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setText(Ljava/lang/CharSequence;)V

    .line 55
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setTag(Ljava/lang/Object;)V

    .line 57
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 58
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->applyState(Z)V

    .line 60
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->invalidate()V

    .line 61
    return-void
.end method

.method public finishUpdateIcon()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 182
    .local v0, "drawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 183
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->cancelTransition()V

    .line 185
    :cond_0
    return-void
.end method

.method public invalidateIcon()V
    .locals 3

    .prologue
    .line 124
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->TAG:Ljava/lang/String;

    const-string v2, "DynamicIcon CalendarDynamicIcon invalidateIcon"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 125
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 126
    .local v0, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->needInvalidate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 127
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->performUpdateIcon()V

    .line 131
    :goto_0
    return-void

    .line 129
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->invalidate()V

    goto :goto_0
.end method

.method public performUpdateIcon()V
    .locals 4

    .prologue
    .line 135
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->TAG:Ljava/lang/String;

    const-string v3, "DynamicIcon CalendarDynamicIcon performUpdateIcon"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 136
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 137
    .local v1, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->needInvalidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 138
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->onAnimationStart()V

    .line 139
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->generateAnimationDrawable()V

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 141
    .local v0, "drawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 142
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 143
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->startTransition(I)V

    .line 145
    .end local v0    # "drawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    :cond_0
    return-void
.end method

.method public setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p1, "left"    # Landroid/graphics/drawable/Drawable;
    .param p2, "top"    # Landroid/graphics/drawable/Drawable;
    .param p3, "right"    # Landroid/graphics/drawable/Drawable;
    .param p4, "bottom"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 64
    invoke-super {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 65
    return-void
.end method

.method public updateAssetPackChange()V
    .locals 4

    .prologue
    .line 149
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 150
    .local v1, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .end local v1    # "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    .line 151
    .local v0, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 152
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 153
    return-void
.end method

.method protected updateIconState()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v0, :cond_2

    .line 116
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarDynamicIcon;->mStayPressed:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setPressed(Z)V

    .line 120
    :goto_1
    return-void

    .line 116
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 118
    :cond_2
    invoke-super {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->updateIconState()V

    goto :goto_1
.end method
