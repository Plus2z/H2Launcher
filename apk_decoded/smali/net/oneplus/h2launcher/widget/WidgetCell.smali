.class public Lnet/oneplus/h2launcher/widget/WidgetCell;
.super Landroid/widget/LinearLayout;
.source "WidgetCell.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# static fields
.field private static final DEBUG:Z = false

.field private static final FADE_IN_DURATION_MS:I = 0x5a

.field private static final PREVIEW_SCALE:F = 0.8f

.field private static final TAG:Ljava/lang/String; = "WidgetCell"

.field private static final WIDTH_SCALE:F = 2.6f


# instance fields
.field cellSize:I

.field protected mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

.field private mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

.field private mDimensionsFormatString:Ljava/lang/String;

.field private mInfo:Ljava/lang/Object;

.field protected mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

.field protected final mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field protected mPresetPreviewSize:I

.field private mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

.field private mWidgetDims:Landroid/widget/TextView;

.field private mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

.field private mWidgetName:Landroid/widget/TextView;

.field private mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 92
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 95
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 96
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 101
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getLauncher()Lnet/oneplus/h2launcher/Launcher;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    .local v0, "r":Landroid/content/res/Resources;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    iget-object v1, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->portraitProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    .line 105
    new-instance v1, Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/StylusEventHelper;-><init>(Landroid/view/View;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    .line 107
    const v1, 0x7f0b00d2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    .line 108
    invoke-direct {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setContainerWidth()V

    .line 109
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setWillNotDraw(Z)V

    .line 110
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setClipToPadding(Z)V

    .line 111
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/LauncherAppState;->getAccessibilityDelegate()Lnet/oneplus/h2launcher/accessibility/LauncherAccessibilityDelegate;

    move-result-object v1

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setAccessibilityDelegate(Landroid/view/View$AccessibilityDelegate;)V

    .line 112
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/widget/WidgetCell;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/widget/WidgetCell;

    .prologue
    .line 57
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    return-object v0
.end method

.method private getTagToString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 272
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    if-nez v0, :cond_0

    .line 273
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;

    if-eqz v0, :cond_1

    .line 274
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 276
    :goto_0
    return-object v0

    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method private setContainerWidth()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v0, v0, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    int-to-float v0, v0

    const v1, 0x40266666    # 2.6f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->cellSize:I

    .line 116
    iget v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->cellSize:I

    int-to-float v0, v0

    const v1, 0x3f4ccccd    # 0.8f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mPresetPreviewSize:I

    .line 117
    return-void
.end method


# virtual methods
.method public applyFromAppWidgetProviderInfo(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;Lnet/oneplus/h2launcher/WidgetPreviewLoader;Z)V
    .locals 8
    .param p1, "info"    # Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;
    .param p2, "loader"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;
    .param p3, "setDims"    # Z

    .prologue
    .line 172
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v3

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/LauncherAppState;->getInvariantDeviceProfile()Lnet/oneplus/h2launcher/InvariantDeviceProfile;

    move-result-object v1

    .line 173
    .local v1, "profile":Lnet/oneplus/h2launcher/InvariantDeviceProfile;
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 174
    if-eqz p3, :cond_0

    .line 175
    iget v3, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanX:I

    iget v4, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numColumns:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 176
    .local v0, "hSpan":I
    iget v3, p1, Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;->spanY:I

    iget v4, v1, Lnet/oneplus/h2launcher/InvariantDeviceProfile;->numRows:I

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 177
    .local v2, "vSpan":I
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    const/4 v6, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    .end local v0    # "hSpan":I
    .end local v2    # "vSpan":I
    :cond_0
    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 181
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v3

    new-instance v4, Lnet/oneplus/h2launcher/widget/WidgetCell$1;

    invoke-direct {v4, p0, p1}, Lnet/oneplus/h2launcher/widget/WidgetCell$1;-><init>(Lnet/oneplus/h2launcher/widget/WidgetCell;Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {v3, v4}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 188
    return-void
.end method

.method public applyFromCellItem(Lnet/oneplus/h2launcher/model/WidgetItem;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V
    .locals 8
    .param p1, "item"    # Lnet/oneplus/h2launcher/model/WidgetItem;
    .param p2, "loader"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .prologue
    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 147
    iput-object p1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    .line 148
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v1, v1, Lnet/oneplus/h2launcher/model/WidgetItem;->label:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 149
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00d2

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget v4, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    .line 150
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget v4, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 149
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 151
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0b00d0

    new-array v3, v7, [Ljava/lang/Object;

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget v4, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->spanX:I

    .line 152
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    iget-object v4, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget v4, v4, Lnet/oneplus/h2launcher/model/WidgetItem;->spanY:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v6

    .line 151
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 153
    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 155
    iget-object v0, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    if-eqz v0, :cond_0

    .line 156
    new-instance v0, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;

    iget-object v1, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->activityInfo:Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/widget/PendingAddShortcutInfo;-><init>(Lnet/oneplus/h2launcher/compat/ShortcutConfigActivityInfo;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    .line 160
    :goto_0
    return-void

    .line 158
    :cond_0
    new-instance v0, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;

    iget-object v1, p1, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    invoke-direct {v0, v1}, Lnet/oneplus/h2launcher/widget/PendingAddWidgetInfo;-><init>(Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;)V

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public applyFromResolveInfo(Landroid/content/pm/PackageManager;Landroid/content/pm/ResolveInfo;Lnet/oneplus/h2launcher/WidgetPreviewLoader;)V
    .locals 6
    .param p1, "pm"    # Landroid/content/pm/PackageManager;
    .param p2, "info"    # Landroid/content/pm/ResolveInfo;
    .param p3, "loader"    # Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .prologue
    const/4 v5, 0x1

    .line 195
    iput-object p2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mInfo:Ljava/lang/Object;

    .line 196
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDimensionsFormatString:Ljava/lang/String;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 197
    iput-object p3, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    .line 199
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v0

    new-instance v1, Lnet/oneplus/h2launcher/widget/WidgetCell$2;

    invoke-direct {v1, p0, p2, p1}, Lnet/oneplus/h2launcher/widget/WidgetCell$2;-><init>(Lnet/oneplus/h2launcher/widget/WidgetCell;Landroid/content/pm/ResolveInfo;Landroid/content/pm/PackageManager;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/util/TaskWorker;->postUI(Ljava/lang/Runnable;)V

    .line 206
    return-void
.end method

.method public applyPreview(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;
    .param p2, "componentName"    # Landroid/content/ComponentName;

    .prologue
    .line 224
    if-eqz p1, :cond_0

    .line 225
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    .line 226
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->setAlpha(F)V

    .line 227
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 228
    .local v0, "anim":Landroid/view/ViewPropertyAnimator;
    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    const-wide/16 v2, 0x5a

    invoke-virtual {v1, v2, v3}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    .line 230
    .end local v0    # "anim":Landroid/view/ViewPropertyAnimator;
    :cond_0
    return-void
.end method

.method public clear()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 135
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->cancel()V

    .line 136
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    invoke-virtual {v0, v1, v1}, Lnet/oneplus/h2launcher/widget/WidgetImageView;->setBitmap(Landroid/graphics/Bitmap;Landroid/content/ComponentName;)V

    .line 137
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 138
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 140
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v0, :cond_0

    .line 141
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;->cleanup()V

    .line 142
    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    .line 144
    :cond_0
    return-void
.end method

.method public ensurePreview()V
    .locals 5

    .prologue
    .line 233
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    if-eqz v1, :cond_0

    .line 242
    :goto_0
    return-void

    .line 236
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v0

    .line 241
    .local v0, "size":[I
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetPreviewLoader:Lnet/oneplus/h2launcher/WidgetPreviewLoader;

    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    const/4 v3, 0x0

    aget v3, v0, v3

    const/4 v4, 0x1

    aget v4, v0, v4

    invoke-virtual {v1, v2, v3, v4, p0}, Lnet/oneplus/h2launcher/WidgetPreviewLoader;->getPreview(Lnet/oneplus/h2launcher/model/WidgetItem;IILnet/oneplus/h2launcher/widget/WidgetCell;)Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mActiveRequest:Lnet/oneplus/h2launcher/WidgetPreviewLoader$PreviewLoadRequest;

    goto :goto_0
.end method

.method public getActualItemWidth()I
    .locals 5

    .prologue
    .line 252
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/ItemInfo;

    .line 253
    .local v1, "info":Lnet/oneplus/h2launcher/ItemInfo;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->getPreviewSize()[I

    move-result-object v2

    .line 254
    .local v2, "size":[I
    iget-object v3, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mDeviceProfile:Lnet/oneplus/h2launcher/DeviceProfile;

    iget v0, v3, Lnet/oneplus/h2launcher/DeviceProfile;->cellWidthPx:I

    .line 256
    .local v0, "cellWidth":I
    const/4 v3, 0x0

    aget v3, v2, v3

    iget v4, v1, Lnet/oneplus/h2launcher/ItemInfo;->spanX:I

    mul-int/2addr v4, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    return v3
.end method

.method public getPreviewSize()[I
    .locals 6

    .prologue
    const v5, 0x7f0c0151

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 209
    const/4 v2, 0x2

    new-array v0, v2, [I

    .line 211
    .local v0, "maxSize":[I
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 212
    .local v1, "res":Landroid/content/res/Resources;
    iget-object v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mItem:Lnet/oneplus/h2launcher/model/WidgetItem;

    iget-object v2, v2, Lnet/oneplus/h2launcher/model/WidgetItem;->widgetInfo:Lnet/oneplus/h2launcher/LauncherAppWidgetProviderInfo;

    if-eqz v2, :cond_0

    .line 213
    iget v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v3

    .line 214
    iget v2, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mPresetPreviewSize:I

    aput v2, v0, v4

    .line 220
    :goto_0
    return-object v0

    .line 216
    :cond_0
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v3

    .line 217
    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    aput v2, v0, v4

    goto :goto_0
.end method

.method public getWidgetView()Lnet/oneplus/h2launcher/widget/WidgetImageView;
    .locals 1

    .prologue
    .line 163
    iget-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    return-object v0
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 121
    invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V

    .line 123
    const v0, 0x7f1100b7

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/widget/WidgetImageView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetImage:Lnet/oneplus/h2launcher/widget/WidgetImageView;

    .line 124
    const v0, 0x7f1100b8

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetName:Landroid/widget/TextView;

    .line 125
    const v0, 0x7f1100b9

    invoke-virtual {p0, v0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mWidgetDims:Landroid/widget/TextView;

    .line 126
    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0
    .param p1, "v"    # Landroid/view/View;
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I
    .param p6, "oldLeft"    # I
    .param p7, "oldTop"    # I
    .param p8, "oldRight"    # I
    .param p9, "oldBottom"    # I

    .prologue
    .line 247
    invoke-virtual {p0, p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 248
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/widget/WidgetCell;->ensurePreview()V

    .line 249
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 261
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 262
    .local v0, "handled":Z
    iget-object v1, p0, Lnet/oneplus/h2launcher/widget/WidgetCell;->mStylusEventHelper:Lnet/oneplus/h2launcher/StylusEventHelper;

    invoke-virtual {v1, p1}, Lnet/oneplus/h2launcher/StylusEventHelper;->checkAndPerformStylusEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 263
    const/4 v0, 0x1

    .line 265
    .end local v0    # "handled":Z
    :cond_0
    return v0
.end method
