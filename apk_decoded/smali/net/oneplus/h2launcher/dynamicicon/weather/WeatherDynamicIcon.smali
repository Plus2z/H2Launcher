.class public Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;
.super Lnet/oneplus/h2launcher/BubbleTextView;
.source "WeatherDynamicIcon.java"

# interfaces
.implements Lnet/oneplus/h2launcher/dynamicicon/IDynamicIcon;


# static fields
.field private static final ICON_DRAWABLE_ANIMATION_DURATION:I = 0x3e8

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

.field private mIconTextLeftPadding:F

.field private mIconTextTopPadding:F

.field private mTextPaint:Landroid/graphics/Paint;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 25
    const-class v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 33
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 37
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BubbleTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;
    .param p1, "x1"    # Landroid/graphics/drawable/Drawable;
    .param p2, "x2"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->onTransitionDrawableFinish(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "sourceIcon"    # Landroid/graphics/drawable/Drawable;
    .param p2, "targetIcon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 157
    instance-of v2, p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v2, :cond_1

    move-object v2, p1

    .line 158
    check-cast v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->isPressed()Z

    move-result v1

    .line 159
    .local v1, "pressed":Z
    check-cast p1, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->getBrightness()I

    move-result v0

    .line 167
    .local v0, "brightness":I
    :goto_0
    instance-of v2, p2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    if-eqz v2, :cond_2

    move-object v2, p2

    .line 168
    check-cast v2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setPressed(Z)V

    .line 169
    check-cast p2, Lnet/oneplus/h2launcher/FastBitmapDrawable;

    .end local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBrightness(I)V

    .line 176
    .end local v0    # "brightness":I
    .end local v1    # "pressed":Z
    :cond_0
    :goto_1
    return-void

    .line 160
    .restart local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    .restart local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    :cond_1
    instance-of v2, p1, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v2, :cond_0

    move-object v2, p1

    .line 161
    check-cast v2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->isPressed()Z

    move-result v1

    .line 162
    .restart local v1    # "pressed":Z
    check-cast p1, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .end local p1    # "sourceIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->getBrightness()I

    move-result v0

    .restart local v0    # "brightness":I
    goto :goto_0

    .line 170
    :cond_2
    instance-of v2, p2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v2, :cond_0

    move-object v2, p2

    .line 171
    check-cast v2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {v2, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setPressed(Z)V

    .line 172
    check-cast p2, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .end local p2    # "targetIcon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {p2, v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBrightness(I)V

    goto :goto_1
.end method

.method private generateAnimationDrawable()V
    .locals 12

    .prologue
    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 72
    iget-object v8, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v8}, Lnet/oneplus/h2launcher/Launcher;->getDeviceProfile()Lnet/oneplus/h2launcher/DeviceProfile;

    move-result-object v0

    .line 73
    .local v0, "grid":Lnet/oneplus/h2launcher/DeviceProfile;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .line 74
    .local v2, "info":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v4

    .line 75
    .local v4, "oldDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v3

    .line 76
    .local v3, "newDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget v8, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIconSize:I

    int-to-float v8, v8

    iget-object v9, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v9

    invoke-static {v9}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v9

    mul-float/2addr v8, v9

    float-to-int v1, v8

    .line 77
    .local v1, "iconSize":I
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->isDisabled()Z

    move-result v8

    invoke-virtual {v4, v8}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 78
    invoke-virtual {v4, v10, v10, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 79
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->isDisabled()Z

    move-result v8

    invoke-virtual {v3, v8}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 80
    invoke-virtual {v3, v10, v10, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 82
    new-instance v7, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    const/4 v8, 0x2

    new-array v8, v8, [Landroid/graphics/drawable/Drawable;

    aput-object v4, v8, v10

    aput-object v3, v8, v11

    invoke-direct {v7, v8}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;-><init>([Landroid/graphics/drawable/Drawable;)V

    .line 85
    .local v7, "transitionDrawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getNewWeatherImageId()Ljava/lang/String;

    move-result-object v6

    .line 86
    .local v6, "resId":Ljava/lang/String;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOldWeatherImageId()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 87
    invoke-virtual {v2, v6}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getOriginalIconDrawable(Ljava/lang/String;)Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v5

    .line 88
    .local v5, "originalDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->isDisabled()Z

    move-result v8

    invoke-virtual {v5, v8}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 89
    invoke-virtual {v5, v10, v10, v1, v1}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setBounds(IIII)V

    .line 90
    invoke-virtual {v7, v5}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBaseDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 93
    .end local v5    # "originalDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    :cond_0
    invoke-virtual {v7, v10, v10, v1, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setBounds(IIII)V

    .line 94
    invoke-virtual {v7, v11}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setFirstLayerHidden(Z)V

    .line 95
    invoke-virtual {v7, v11}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setCrossFadeEnabled(Z)V

    .line 96
    new-instance v8, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon$1;

    invoke-direct {v8, p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon$1;-><init>(Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;)V

    invoke-virtual {v7, v8}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setAnimationDoneCallback(Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable$AnimationDoneCallback;)V

    .line 107
    iput-object v7, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 108
    return-void
.end method

.method private onTransitionDrawableFinish(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
    .locals 3
    .param p1, "fromDrawable"    # Landroid/graphics/drawable/Drawable;
    .param p2, "endDrawable"    # Landroid/graphics/drawable/Drawable;

    .prologue
    const/16 v1, 0xff

    .line 111
    invoke-virtual {p1, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 112
    invoke-virtual {p2, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    .line 113
    iget v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIconSize:I

    int-to-float v1, v1

    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p0, p2, v1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 114
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->tryToUpdateParentFolderIcon()V

    .line 116
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 117
    .local v0, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->onAnimationEnd()V

    .line 118
    const/4 v1, 0x0

    iput-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 119
    return-void
.end method

.method private tryToUpdateParentFolderIcon()V
    .locals 2

    .prologue
    .line 187
    iget-object v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWorkspace()Lnet/oneplus/h2launcher/Workspace;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Workspace;->getOpenFolder()Lnet/oneplus/h2launcher/Folder;

    move-result-object v0

    .line 188
    .local v0, "folder":Lnet/oneplus/h2launcher/Folder;
    if-eqz v0, :cond_0

    .line 189
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Folder;->invalidateFolderIcon()V

    .line 191
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
    .line 46
    invoke-super {p0, p1, p2, p3}, Lnet/oneplus/h2launcher/BubbleTextView;->applyFromShortcutInfo(Lnet/oneplus/h2launcher/ShortcutInfo;ZZ)V

    move-object v1, p1

    .line 48
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;

    .line 50
    .local v1, "weatherInfo":Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherShortcutInfo;->getStaticDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    .line 51
    .local v0, "fastBitmapDrawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isDisabled()Z

    move-result v2

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/FastBitmapDrawable;->setGhostModeEnabled(Z)V

    .line 53
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 55
    iget-object v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    if-eqz v2, :cond_0

    .line 56
    iget-object v2, p1, Lnet/oneplus/h2launcher/ShortcutInfo;->contentDescription:Ljava/lang/CharSequence;

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 58
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-virtual {p1, v2, p2}, Lnet/oneplus/h2launcher/ShortcutInfo;->getLabel(Lnet/oneplus/h2launcher/AssetCache;Z)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setText(Ljava/lang/CharSequence;)V

    .line 59
    invoke-virtual {p0, p1}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setTag(Ljava/lang/Object;)V

    .line 61
    if-nez p2, :cond_1

    invoke-virtual {p1}, Lnet/oneplus/h2launcher/ShortcutInfo;->isPromise()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    if-eqz p3, :cond_2

    .line 62
    invoke-virtual {p0, p2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->applyState(Z)V

    .line 64
    :cond_2
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->invalidate()V

    .line 65
    return-void
.end method

.method public finishUpdateIcon()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 181
    .local v0, "drawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 182
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->cancelTransition()V

    .line 184
    :cond_0
    return-void
.end method

.method public invalidateIcon()V
    .locals 3

    .prologue
    .line 131
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 132
    .local v0, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    sget-object v1, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->TAG:Ljava/lang/String;

    const-string v2, "DynamicIcon WeatherDynamicIcon invalidateIcon"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 133
    invoke-interface {v0}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->needInvalidate()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 134
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->performUpdateIcon()V

    .line 138
    :goto_0
    return-void

    .line 136
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->invalidate()V

    goto :goto_0
.end method

.method public performUpdateIcon()V
    .locals 4

    .prologue
    .line 142
    sget-object v2, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->TAG:Ljava/lang/String;

    const-string v3, "DynamicIcon WeatherDynamicIcon performUpdateIcon"

    invoke-static {v2, v3}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 143
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 144
    .local v1, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->needInvalidate()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 145
    invoke-interface {v1}, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;->onAnimationStart()V

    .line 146
    invoke-direct {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->generateAnimationDrawable()V

    .line 147
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mAnimationDrawable:Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    .line 148
    .local v0, "drawable":Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 149
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 150
    const/16 v2, 0x3e8

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->startTransition(I)V

    .line 152
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
    .line 68
    invoke-super {p0, p1, p2, p3, p4}, Lnet/oneplus/h2launcher/BubbleTextView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 69
    return-void
.end method

.method public updateAssetPackChange()V
    .locals 4

    .prologue
    .line 195
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;

    .line 196
    .local v1, "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    check-cast v1, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;

    .end local v1    # "shortcut":Lnet/oneplus/h2launcher/dynamicicon/IDynamicShortcut;
    invoke-virtual {v1}, Lnet/oneplus/h2launcher/dynamicicon/calendar/CalendarShortcutInfo;->getCurrentIconDrawable()Lnet/oneplus/h2launcher/FastBitmapDrawable;

    move-result-object v0

    .line 197
    .local v0, "drawable":Lnet/oneplus/h2launcher/FastBitmapDrawable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0, v2, v0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->copyPressedAndBrightness(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 198
    iget v2, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIconSize:I

    int-to-float v2, v2

    iget-object v3, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Launcher;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lnet/oneplus/h2launcher/Utilities;->getIconScaleValue(Landroid/content/Context;)F

    move-result v3

    mul-float/2addr v2, v3

    float-to-int v2, v2

    invoke-virtual {p0, v0, v2}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->setIcon(Landroid/graphics/drawable/Drawable;I)Landroid/graphics/drawable/Drawable;

    .line 199
    return-void
.end method

.method protected updateIconState()V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    instance-of v0, v0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    if-eqz v0, :cond_2

    .line 123
    iget-object v0, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mIcon:Landroid/graphics/drawable/Drawable;

    check-cast v0, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    iget-boolean v1, p0, Lnet/oneplus/h2launcher/dynamicicon/weather/WeatherDynamicIcon;->mStayPressed:Z

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/widget/OneplusTransitionDrawable;->setPressed(Z)V

    .line 127
    :goto_1
    return-void

    .line 123
    :cond_1
    const/4 v1, 0x0

    goto :goto_0

    .line 125
    :cond_2
    invoke-super {p0}, Lnet/oneplus/h2launcher/BubbleTextView;->updateIconState()V

    goto :goto_1
.end method
