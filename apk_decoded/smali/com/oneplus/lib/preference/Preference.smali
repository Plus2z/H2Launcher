.class public Lcom/oneplus/lib/preference/Preference;
.super Ljava/lang/Object;
.source "Preference.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oneplus/lib/preference/Preference$BaseSavedState;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;,
        Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/oneplus/lib/preference/Preference;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_ORDER:I = 0x7fffffff


# instance fields
.field private mBaseMethodCalled:Z

.field private mCanRecycleLayout:Z

.field private mContext:Landroid/content/Context;

.field private mDefaultValue:Ljava/lang/Object;

.field private mDependencyKey:Ljava/lang/String;

.field private mDependencyMet:Z

.field private mDependents:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oneplus/lib/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mEnabled:Z

.field private mExtras:Landroid/os/Bundle;

.field private mFragment:Ljava/lang/String;

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mIconResId:I

.field private mId:J

.field private mIntent:Landroid/content/Intent;

.field private mKey:Ljava/lang/String;

.field private mLayoutResId:I

.field private mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

.field private mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

.field private mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

.field private mOrder:I

.field private mParentDependencyMet:Z

.field private mPersistent:Z

.field private mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

.field private mRequiresKey:Z

.field private mSecondaryIcon:Landroid/graphics/drawable/Drawable;

.field private mSecondaryIconResId:I

.field private mSelectable:Z

.field private mShouldDisableView:Z

.field private mSummary:Ljava/lang/CharSequence;

.field private mTitle:Ljava/lang/CharSequence;

.field private mTitleRes:I

.field private mWidgetLayoutResId:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 311
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 312
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 302
    sget v0, Lcom/oneplus/commonctrl/R$attr;->op_preferenceStyle:I

    invoke-direct {p0, p1, p2, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 303
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 284
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/oneplus/lib/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 285
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 218
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 98
    const v1, 0x7fffffff

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 116
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 117
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 119
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 122
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 123
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 128
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 130
    sget v1, Lcom/oneplus/commonctrl/R$layout;->preference:I

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 132
    iput-boolean v3, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 219
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    .line 221
    sget-object v1, Lcom/oneplus/commonctrl/R$styleable;->Preference:[I

    invoke-virtual {p1, p2, v1, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 223
    .local v0, "a":Landroid/content/res/TypedArray;
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_icon:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    .line 225
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_key:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    .line 227
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 228
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_title:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 230
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_summary:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 232
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_order:I

    iget v2, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 234
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_fragment:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    .line 236
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_layout:I

    iget v2, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 238
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_widgetLayout:I

    iget v2, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    iput v1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    .line 240
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_enabled:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 242
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_selectable:I

    invoke-virtual {v0, v1, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 244
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_persistent:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 246
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_dependency:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 248
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {v0, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 249
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_defaultValue:I

    invoke-virtual {p0, v0, v1}, Lcom/oneplus/lib/preference/Preference;->onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;

    move-result-object v1

    iput-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 252
    :cond_0
    sget v1, Lcom/oneplus/commonctrl/R$styleable;->Preference_android_shouldDisableView:I

    iget-boolean v2, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 254
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 261
    return-void
.end method

.method private dispatchSetInitialValue()V
    .locals 3

    .prologue
    .line 1404
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    .line 1405
    .local v0, "shouldPersist":Z
    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v1, v2}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1406
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1407
    const/4 v1, 0x0

    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    .line 1412
    :cond_1
    :goto_0
    return-void

    .line 1410
    :cond_2
    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/oneplus/lib/preference/Preference;->onSetInitialValue(ZLjava/lang/Object;)V

    goto :goto_0
.end method

.method private registerDependency()V
    .locals 4

    .prologue
    .line 1222
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1231
    :goto_0
    return-void

    .line 1224
    :cond_0
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    .line 1225
    .local v0, "preference":Lcom/oneplus/lib/preference/Preference;
    if-eqz v0, :cond_1

    .line 1226
    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->registerDependent(Lcom/oneplus/lib/preference/Preference;)V

    goto :goto_0

    .line 1228
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Dependency \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" not found for preference \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\" (title: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private registerDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 1270
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-nez v0, :cond_0

    .line 1271
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    .line 1274
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1276
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p1, p0, v0}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 1277
    return-void
.end method

.method private setEnabledStateOnViews(Landroid/view/View;Z)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;
    .param p2, "enabled"    # Z

    .prologue
    .line 575
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 577
    instance-of v2, p1, Landroid/view/ViewGroup;

    if-eqz v2, :cond_0

    move-object v1, p1

    .line 578
    check-cast v1, Landroid/view/ViewGroup;

    .line 579
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_0

    .line 580
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 579
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 583
    .end local v0    # "i":I
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private tryCommit(Landroid/content/SharedPreferences$Editor;)V
    .locals 2
    .param p1, "editor"    # Landroid/content/SharedPreferences$Editor;

    .prologue
    .line 1435
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1437
    :try_start_0
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V
    :try_end_0
    .catch Ljava/lang/AbstractMethodError; {:try_start_0 .. :try_end_0} :catch_0

    .line 1445
    :cond_0
    :goto_0
    return-void

    .line 1438
    :catch_0
    move-exception v0

    .line 1442
    .local v0, "unused":Ljava/lang/AbstractMethodError;
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0
.end method

.method private unregisterDependency()V
    .locals 2

    .prologue
    .line 1234
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 1235
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/Preference;->findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    .line 1236
    .local v0, "oldDependency":Lcom/oneplus/lib/preference/Preference;
    if-eqz v0, :cond_0

    .line 1237
    invoke-direct {v0, p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V

    .line 1240
    .end local v0    # "oldDependency":Lcom/oneplus/lib/preference/Preference;
    :cond_0
    return-void
.end method

.method private unregisterDependent(Lcom/oneplus/lib/preference/Preference;)V
    .locals 1
    .param p1, "dependent"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 1288
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 1289
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 1291
    :cond_0
    return-void
.end method


# virtual methods
.method protected callChangeListener(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "newValue"    # Ljava/lang/Object;

    .prologue
    .line 962
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method

.method canRecycleLayout()Z
    .locals 1

    .prologue
    .line 1729
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    return v0
.end method

.method public compareTo(Lcom/oneplus/lib/preference/Preference;)I
    .locals 2
    .param p1, "another"    # Lcom/oneplus/lib/preference/Preference;

    .prologue
    .line 1139
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq v0, v1, :cond_0

    .line 1141
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    iget v1, p1, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    sub-int/2addr v0, v1

    .line 1151
    :goto_0
    return v0

    .line 1142
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-ne v0, v1, :cond_1

    .line 1144
    const/4 v0, 0x0

    goto :goto_0

    .line 1145
    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_2

    .line 1146
    const/4 v0, 0x1

    goto :goto_0

    .line 1147
    :cond_2
    iget-object v0, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_3

    .line 1148
    const/4 v0, -0x1

    goto :goto_0

    .line 1151
    :cond_3
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v0, v1}, Lcom/oneplus/lib/preference/CharSequences;->compareToIgnoreCase(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 80
    check-cast p1, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->compareTo(Lcom/oneplus/lib/preference/Preference;)I

    move-result v0

    return v0
.end method

.method dispatchRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1841
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1842
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 1843
    .local v0, "state":Landroid/os/Parcelable;
    if-eqz v0, :cond_0

    .line 1844
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1845
    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 1846
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1847
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onRestoreInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1852
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_0
    return-void
.end method

.method dispatchSaveInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1788
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1789
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1790
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 1791
    .local v0, "state":Landroid/os/Parcelable;
    iget-boolean v1, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    if-nez v1, :cond_0

    .line 1792
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Derived class did not call super.onSaveInstanceState()"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1795
    :cond_0
    if-eqz v0, :cond_1

    .line 1796
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1799
    .end local v0    # "state":Landroid/os/Parcelable;
    :cond_1
    return-void
.end method

.method protected findPreferenceInHierarchy(Ljava/lang/String;)Lcom/oneplus/lib/preference/Preference;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 1253
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_1

    .line 1254
    :cond_0
    const/4 v0, 0x0

    .line 1257
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0, p1}, Lcom/oneplus/lib/preference/PreferenceManager;->findPreference(Ljava/lang/CharSequence;)Lcom/oneplus/lib/preference/Preference;

    move-result-object v0

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 1059
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getDependency()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1379
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    return-object v0
.end method

.method public getEditor()Landroid/content/SharedPreferences$Editor;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1108
    const/4 v0, 0x0

    .line 1111
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    goto :goto_0
.end method

.method public getExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 374
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 375
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    .line 377
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method getFilterableStringBuilder()Ljava/lang/StringBuilder;
    .locals 5

    .prologue
    const/16 v4, 0x20

    .line 1749
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1750
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v2

    .line 1751
    .local v2, "title":Ljava/lang/CharSequence;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1752
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1754
    :cond_0
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 1755
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1756
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 1758
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_2

    .line 1760
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 1762
    :cond_2
    return-object v0
.end method

.method public getFragment()Ljava/lang/String;
    .locals 1

    .prologue
    .line 365
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    return-object v0
.end method

.method public getIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 702
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method getId()J
    .locals 2

    .prologue
    .line 859
    iget-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    return-wide v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 1

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 892
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    return-object v0
.end method

.method public getLayoutResource()I
    .locals 1

    .prologue
    .line 417
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    return v0
.end method

.method public getOnPreferenceChangeListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;
    .locals 1

    .prologue
    .line 982
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    return-object v0
.end method

.method public getOnPreferenceClickListener()Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;
    .locals 1

    .prologue
    .line 1000
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    return-object v0
.end method

.method public getOrder()I
    .locals 1

    .prologue
    .line 615
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    return v0
.end method

.method protected getPersistedBoolean(Z)Z
    .locals 2
    .param p1, "defaultReturnValue"    # Z

    .prologue
    .line 1721
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1725
    .end local p1    # "defaultReturnValue":Z
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":Z
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedFloat(F)F
    .locals 2
    .param p1, "defaultReturnValue"    # F

    .prologue
    .line 1633
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1637
    .end local p1    # "defaultReturnValue":F
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":F
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getFloat(Ljava/lang/String;F)F

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedInt(I)I
    .locals 2
    .param p1, "defaultReturnValue"    # I

    .prologue
    .line 1589
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1593
    .end local p1    # "defaultReturnValue":I
    :goto_0
    return p1

    .restart local p1    # "defaultReturnValue":I
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result p1

    goto :goto_0
.end method

.method protected getPersistedLong(J)J
    .locals 3
    .param p1, "defaultReturnValue"    # J

    .prologue
    .line 1677
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1681
    .end local p1    # "defaultReturnValue":J
    :goto_0
    return-wide p1

    .restart local p1    # "defaultReturnValue":J
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0
.end method

.method protected getPersistedString(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "defaultReturnValue"    # Ljava/lang/String;

    .prologue
    .line 1490
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1494
    .end local p1    # "defaultReturnValue":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/lang/String;
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method protected getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1545
    .local p1, "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1549
    .end local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :goto_0
    return-object p1

    .restart local p1    # "defaultReturnValue":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences;->getStringSet(Ljava/lang/String;Ljava/util/Set;)Ljava/util/Set;

    move-result-object p1

    goto :goto_0
.end method

.method public getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;
    .locals 1

    .prologue
    .line 1191
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    return-object v0
.end method

.method public getSecondaryIcon()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 745
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getSharedPreferences()Landroid/content/SharedPreferences;
    .locals 1

    .prologue
    .line 1080
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1081
    const/4 v0, 0x0

    .line 1084
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v0

    goto :goto_0
.end method

.method public getShouldDisableView()Z
    .locals 1

    .prologue
    .line 849
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    return v0
.end method

.method public getSummary()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 755
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 663
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTitleRes()I
    .locals 1

    .prologue
    .line 653
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    return v0
.end method

.method public getView(Landroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0
    .param p1, "convertView"    # Landroid/view/View;
    .param p2, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 461
    if-nez p1, :cond_0

    .line 462
    invoke-virtual {p0, p2}, Lcom/oneplus/lib/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 464
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 465
    return-object p1
.end method

.method public getWidgetLayoutResource()I
    .locals 1

    .prologue
    .line 444
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    return v0
.end method

.method public hasKey()Z
    .locals 1

    .prologue
    .line 916
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 803
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isPersistent()Z
    .locals 1

    .prologue
    .line 926
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    return v0
.end method

.method public isSelectable()Z
    .locals 1

    .prologue
    .line 824
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    return v0
.end method

.method protected notifyChanged()V
    .locals 1

    .prologue
    .line 1169
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1170
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceChange(Lcom/oneplus/lib/preference/Preference;)V

    .line 1172
    :cond_0
    return-void
.end method

.method public notifyDependencyChange(Z)V
    .locals 4
    .param p1, "disableDependents"    # Z

    .prologue
    .line 1301
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependents:Ljava/util/List;

    .line 1303
    .local v0, "dependents":Ljava/util/List;, "Ljava/util/List<Lcom/oneplus/lib/preference/Preference;>;"
    if-nez v0, :cond_1

    .line 1311
    :cond_0
    return-void

    .line 1307
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    .line 1308
    .local v1, "dependentsCount":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 1309
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/oneplus/lib/preference/Preference;

    invoke-virtual {v3, p0, p1}, Lcom/oneplus/lib/preference/Preference;->onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V

    .line 1308
    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method protected notifyHierarchyChanged()V
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    if-eqz v0, :cond_0

    .line 1181
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    invoke-interface {v0, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;->onPreferenceHierarchyChange(Lcom/oneplus/lib/preference/Preference;)V

    .line 1183
    :cond_0
    return-void
.end method

.method protected onAttachedToActivity()V
    .locals 0

    .prologue
    .line 1217
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    .line 1218
    return-void
.end method

.method protected onAttachedToHierarchy(Lcom/oneplus/lib/preference/PreferenceManager;)V
    .locals 2
    .param p1, "preferenceManager"    # Lcom/oneplus/lib/preference/PreferenceManager;

    .prologue
    .line 1201
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    .line 1203
    invoke-virtual {p1}, Lcom/oneplus/lib/preference/PreferenceManager;->getNextId()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oneplus/lib/preference/Preference;->mId:J

    .line 1205
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->dispatchSetInitialValue()V

    .line 1206
    return-void
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 11
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v9, 0x8

    const/4 v8, 0x0

    .line 511
    const v7, 0x1020016

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    .line 512
    .local v6, "titleView":Landroid/widget/TextView;
    if-eqz v6, :cond_0

    .line 513
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 514
    .local v5, "title":Ljava/lang/CharSequence;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_c

    .line 515
    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 516
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 522
    .end local v5    # "title":Ljava/lang/CharSequence;
    :cond_0
    :goto_0
    const v7, 0x1020010

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 524
    .local v4, "summaryView":Landroid/widget/TextView;
    if-eqz v4, :cond_1

    .line 525
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v3

    .line 526
    .local v3, "summary":Ljava/lang/CharSequence;
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_d

    .line 527
    invoke-virtual {v4, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 528
    invoke-virtual {v4, v8}, Landroid/widget/TextView;->setVisibility(I)V

    .line 534
    .end local v3    # "summary":Ljava/lang/CharSequence;
    :cond_1
    :goto_1
    const v7, 0x1020006

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 535
    .local v1, "imageView":Landroid/widget/ImageView;
    if-eqz v1, :cond_5

    .line 536
    iget v7, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-nez v7, :cond_2

    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 537
    :cond_2
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_3

    .line 538
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 540
    :cond_3
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_4

    .line 541
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 544
    :cond_4
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_e

    move v7, v8

    :goto_2
    invoke-virtual {v1, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 547
    :cond_5
    sget v7, Lcom/oneplus/commonctrl/R$id;->icon_frame:I

    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 548
    .local v0, "imageFrame":Landroid/view/View;
    if-eqz v0, :cond_6

    .line 549
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    move v7, v8

    :goto_3
    invoke-virtual {v0, v7}, Landroid/view/View;->setVisibility(I)V

    .line 552
    :cond_6
    sget v7, Lcom/oneplus/commonctrl/R$id;->secondary_icon:I

    .line 553
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 554
    .local v2, "secondaryImageView":Landroid/widget/ImageView;
    if-eqz v2, :cond_a

    .line 555
    iget v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    if-nez v7, :cond_7

    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    .line 556
    :cond_7
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v7, :cond_8

    .line 557
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v7

    iget v10, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    invoke-virtual {v7, v10}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 559
    :cond_8
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_9

    .line 560
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2, v7}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 563
    :cond_9
    iget-object v7, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_10

    :goto_4
    invoke-virtual {v2, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 566
    :cond_a
    iget-boolean v7, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    if-eqz v7, :cond_b

    .line 567
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v7

    invoke-direct {p0, p1, v7}, Lcom/oneplus/lib/preference/Preference;->setEnabledStateOnViews(Landroid/view/View;Z)V

    .line 569
    :cond_b
    return-void

    .line 518
    .end local v0    # "imageFrame":Landroid/view/View;
    .end local v1    # "imageView":Landroid/widget/ImageView;
    .end local v2    # "secondaryImageView":Landroid/widget/ImageView;
    .end local v4    # "summaryView":Landroid/widget/TextView;
    .restart local v5    # "title":Ljava/lang/CharSequence;
    :cond_c
    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 530
    .end local v5    # "title":Ljava/lang/CharSequence;
    .restart local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v4    # "summaryView":Landroid/widget/TextView;
    :cond_d
    invoke-virtual {v4, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .end local v3    # "summary":Ljava/lang/CharSequence;
    .restart local v1    # "imageView":Landroid/widget/ImageView;
    :cond_e
    move v7, v9

    .line 544
    goto :goto_2

    .restart local v0    # "imageFrame":Landroid/view/View;
    :cond_f
    move v7, v9

    .line 549
    goto :goto_3

    .restart local v2    # "secondaryImageView":Landroid/widget/ImageView;
    :cond_10
    move v8, v9

    .line 563
    goto :goto_4
.end method

.method protected onClick()V
    .locals 0

    .prologue
    .line 869
    return-void
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 482
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    const-string v4, "layout_inflater"

    .line 483
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/LayoutInflater;

    .line 485
    .local v1, "layoutInflater":Landroid/view/LayoutInflater;
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    const/4 v4, 0x0

    invoke-virtual {v1, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 487
    .local v0, "layout":Landroid/view/View;
    const v3, 0x1020018

    .line 488
    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 489
    .local v2, "widgetFrame":Landroid/view/ViewGroup;
    if-eqz v2, :cond_0

    .line 490
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    if-eqz v3, :cond_1

    .line 491
    iget v3, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    invoke-virtual {v1, v3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 496
    :cond_0
    :goto_0
    return-object v0

    .line 493
    :cond_1
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_0
.end method

.method public onDependencyChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1
    .param p1, "dependency"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 1320
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1321
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyMet:Z

    .line 1324
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1326
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 1328
    :cond_0
    return-void

    .line 1321
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 328
    const/4 v0, 0x0

    return-object v0
.end method

.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 1047
    const/4 v0, 0x0

    return v0
.end method

.method public onParentChanged(Lcom/oneplus/lib/preference/Preference;Z)V
    .locals 1
    .param p1, "parent"    # Lcom/oneplus/lib/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 1337
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    if-ne v0, p2, :cond_0

    .line 1338
    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mParentDependencyMet:Z

    .line 1341
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 1343
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 1345
    :cond_0
    return-void

    .line 1338
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onPrepareForRemoval()V
    .locals 0

    .prologue
    .line 1388
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    .line 1389
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 1865
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1866
    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    if-eq p1, v0, :cond_0

    if-eqz p1, :cond_0

    .line 1867
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Wrong state class -- expecting Preference State"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1869
    :cond_0
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 1

    .prologue
    .line 1814
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mBaseMethodCalled:Z

    .line 1815
    sget-object v0, Lcom/oneplus/lib/preference/Preference$BaseSavedState;->EMPTY_STATE:Landroid/view/AbsSavedState;

    return-object v0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 0
    .param p1, "restorePersistedValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1432
    return-void
.end method

.method public peekExtras()Landroid/os/Bundle;
    .locals 1

    .prologue
    .line 385
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mExtras:Landroid/os/Bundle;

    return-object v0
.end method

.method public performClick(Lcom/oneplus/lib/preference/PreferenceScreen;)V
    .locals 4
    .param p1, "preferenceScreen"    # Lcom/oneplus/lib/preference/PreferenceScreen;

    .prologue
    .line 1013
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    .line 1037
    :cond_0
    :goto_0
    return-void

    .line 1017
    :cond_1
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->onClick()V

    .line 1019
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    if-eqz v3, :cond_2

    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    invoke-interface {v3, p0}, Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;->onPreferenceClick(Lcom/oneplus/lib/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1023
    :cond_2
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getPreferenceManager()Lcom/oneplus/lib/preference/PreferenceManager;

    move-result-object v2

    .line 1024
    .local v2, "preferenceManager":Lcom/oneplus/lib/preference/PreferenceManager;
    if-eqz v2, :cond_3

    .line 1026
    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getOnPreferenceTreeClickListener()Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;

    move-result-object v1

    .line 1027
    .local v1, "listener":Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    if-eqz p1, :cond_3

    if-eqz v1, :cond_3

    .line 1028
    invoke-interface {v1, p1, p0}, Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;->onPreferenceTreeClick(Lcom/oneplus/lib/preference/PreferenceScreen;Lcom/oneplus/lib/preference/Preference;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 1033
    .end local v1    # "listener":Lcom/oneplus/lib/preference/PreferenceManager$OnPreferenceTreeClickListener;
    :cond_3
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    .line 1034
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 1035
    .local v0, "context":Landroid/content/Context;
    iget-object v3, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    invoke-virtual {v0, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method protected persistBoolean(Z)Z
    .locals 4
    .param p1, "value"    # Z

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 1695
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1696
    if-nez p1, :cond_0

    move v1, v2

    :cond_0
    invoke-virtual {p0, v1}, Lcom/oneplus/lib/preference/Preference;->getPersistedBoolean(Z)Z

    move-result v1

    if-ne p1, v1, :cond_1

    .line 1706
    :goto_0
    return v2

    .line 1701
    :cond_1
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v1}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1702
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1703
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_2
    move v2, v1

    .line 1706
    goto :goto_0
.end method

.method protected persistFloat(F)Z
    .locals 3
    .param p1, "value"    # F

    .prologue
    const/4 v1, 0x1

    .line 1607
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1608
    const/high16 v2, 0x7fc00000    # Float.NaN

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/Preference;->getPersistedFloat(F)F

    move-result v2

    cmpl-float v2, p1, v2

    if-nez v2, :cond_0

    .line 1618
    :goto_0
    return v1

    .line 1613
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1614
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putFloat(Ljava/lang/String;F)Landroid/content/SharedPreferences$Editor;

    .line 1615
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1618
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistInt(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    const/4 v1, 0x1

    .line 1563
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1564
    xor-int/lit8 v2, p1, -0x1

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/Preference;->getPersistedInt(I)I

    move-result v2

    if-ne p1, v2, :cond_0

    .line 1574
    :goto_0
    return v1

    .line 1569
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1570
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1571
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1574
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistLong(J)Z
    .locals 5
    .param p1, "value"    # J

    .prologue
    const/4 v1, 0x1

    .line 1651
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1652
    const-wide/16 v2, -0x1

    xor-long/2addr v2, p1

    invoke-virtual {p0, v2, v3}, Lcom/oneplus/lib/preference/Preference;->getPersistedLong(J)J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_0

    .line 1662
    :goto_0
    return v1

    .line 1657
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1658
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 1659
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1662
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistString(Ljava/lang/String;)Z
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 1461
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1463
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/Preference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1473
    :goto_0
    return v1

    .line 1468
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1469
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1470
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1473
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected persistStringSet(Ljava/util/Set;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p1, "values":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const/4 v1, 0x1

    .line 1513
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldPersist()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1515
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/oneplus/lib/preference/Preference;->getPersistedStringSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1525
    :goto_0
    return v1

    .line 1520
    :cond_0
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v2}, Lcom/oneplus/lib/preference/PreferenceManager;->getEditor()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1521
    .local v0, "editor":Landroid/content/SharedPreferences$Editor;
    iget-object v2, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putStringSet(Ljava/lang/String;Ljava/util/Set;)Landroid/content/SharedPreferences$Editor;

    .line 1522
    invoke-direct {p0, v0}, Lcom/oneplus/lib/preference/Preference;->tryCommit(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0

    .line 1525
    .end local v0    # "editor":Landroid/content/SharedPreferences$Editor;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method requireKey()V
    .locals 2

    .prologue
    .line 903
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 904
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Preference does not have a key assigned."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 907
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    .line 908
    return-void
.end method

.method public restoreHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1827
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchRestoreInstanceState(Landroid/os/Bundle;)V

    .line 1828
    return-void
.end method

.method public saveHierarchyState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "container"    # Landroid/os/Bundle;

    .prologue
    .line 1774
    invoke-virtual {p0, p1}, Lcom/oneplus/lib/preference/Preference;->dispatchSaveInstanceState(Landroid/os/Bundle;)V

    .line 1775
    return-void
.end method

.method public setDefaultValue(Ljava/lang/Object;)V
    .locals 0
    .param p1, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 1399
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDefaultValue:Ljava/lang/Object;

    .line 1400
    return-void
.end method

.method public setDependency(Ljava/lang/String;)V
    .locals 0
    .param p1, "dependencyKey"    # Ljava/lang/String;

    .prologue
    .line 1365
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->unregisterDependency()V

    .line 1368
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mDependencyKey:Ljava/lang/String;

    .line 1369
    invoke-direct {p0}, Lcom/oneplus/lib/preference/Preference;->registerDependency()V

    .line 1370
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    if-eq v0, p1, :cond_0

    .line 788
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mEnabled:Z

    .line 791
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->shouldDisableDependents()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->notifyDependencyChange(Z)V

    .line 793
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 795
    :cond_0
    return-void
.end method

.method public setFragment(Ljava/lang/String;)V
    .locals 0
    .param p1, "fragment"    # Ljava/lang/String;

    .prologue
    .line 356
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mFragment:Ljava/lang/String;

    .line 357
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 689
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    if-eq v0, p1, :cond_0

    .line 690
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mIconResId:I

    .line 691
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 693
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 675
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 676
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 678
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 680
    :cond_2
    return-void
.end method

.method public setIntent(Landroid/content/Intent;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 338
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mIntent:Landroid/content/Intent;

    .line 339
    return-void
.end method

.method public setKey(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 878
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mKey:Ljava/lang/String;

    .line 880
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mRequiresKey:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->requireKey()V

    .line 883
    :cond_0
    return-void
.end method

.method public setLayoutResource(I)V
    .locals 1
    .param p1, "layoutResId"    # I

    .prologue
    .line 403
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 405
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 408
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mLayoutResId:I

    .line 409
    return-void
.end method

.method final setOnPreferenceChangeInternalListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    .prologue
    .line 1162
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeInternalListener;

    .line 1163
    return-void
.end method

.method public setOnPreferenceChangeListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;)V
    .locals 0
    .param p1, "onPreferenceChangeListener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    .prologue
    .line 972
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnChangeListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceChangeListener;

    .line 973
    return-void
.end method

.method public setOnPreferenceClickListener(Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;)V
    .locals 0
    .param p1, "onPreferenceClickListener"    # Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    .prologue
    .line 991
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mOnClickListener:Lcom/oneplus/lib/preference/Preference$OnPreferenceClickListener;

    .line 992
    return-void
.end method

.method public setOrder(I)V
    .locals 1
    .param p1, "order"    # I

    .prologue
    .line 599
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    if-eq p1, v0, :cond_0

    .line 600
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mOrder:I

    .line 603
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyHierarchyChanged()V

    .line 605
    :cond_0
    return-void
.end method

.method public setPersistent(Z)V
    .locals 0
    .param p1, "persistent"    # Z

    .prologue
    .line 950
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mPersistent:Z

    .line 951
    return-void
.end method

.method public setSecondaryIcon(I)V
    .locals 1
    .param p1, "iconResId"    # I

    .prologue
    .line 732
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIconResId:I

    .line 733
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V

    .line 734
    return-void
.end method

.method public setSecondaryIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 716
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    if-eq v0, p1, :cond_2

    .line 717
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSecondaryIcon:Landroid/graphics/drawable/Drawable;

    .line 719
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 721
    :cond_2
    return-void
.end method

.method public setSelectable(Z)V
    .locals 1
    .param p1, "selectable"    # Z

    .prologue
    .line 812
    iget-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    if-eq v0, p1, :cond_0

    .line 813
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mSelectable:Z

    .line 814
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 816
    :cond_0
    return-void
.end method

.method public setShouldDisableView(Z)V
    .locals 0
    .param p1, "shouldDisableView"    # Z

    .prologue
    .line 839
    iput-boolean p1, p0, Lcom/oneplus/lib/preference/Preference;->mShouldDisableView:Z

    .line 840
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 841
    return-void
.end method

.method public setSummary(I)V
    .locals 1
    .param p1, "summaryResId"    # I

    .prologue
    .line 777
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    .line 778
    return-void
.end method

.method public setSummary(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "summary"    # Ljava/lang/CharSequence;

    .prologue
    .line 764
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 765
    :cond_1
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mSummary:Ljava/lang/CharSequence;

    .line 766
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 768
    :cond_2
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "titleResId"    # I

    .prologue
    .line 641
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oneplus/lib/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    .line 642
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 643
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 627
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    if-nez v0, :cond_1

    :cond_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 628
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oneplus/lib/preference/Preference;->mTitleRes:I

    .line 629
    iput-object p1, p0, Lcom/oneplus/lib/preference/Preference;->mTitle:Ljava/lang/CharSequence;

    .line 630
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->notifyChanged()V

    .line 632
    :cond_2
    return-void
.end method

.method public setWidgetLayoutResource(I)V
    .locals 1
    .param p1, "widgetLayoutResId"    # I

    .prologue
    .line 431
    iget v0, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    if-eq p1, v0, :cond_0

    .line 433
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oneplus/lib/preference/Preference;->mCanRecycleLayout:Z

    .line 435
    :cond_0
    iput p1, p0, Lcom/oneplus/lib/preference/Preference;->mWidgetLayoutResId:I

    .line 436
    return-void
.end method

.method public shouldCommit()Z
    .locals 1

    .prologue
    .line 1123
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-nez v0, :cond_0

    .line 1124
    const/4 v0, 0x0

    .line 1127
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    invoke-virtual {v0}, Lcom/oneplus/lib/preference/PreferenceManager;->shouldCommit()Z

    move-result v0

    goto :goto_0
.end method

.method public shouldDisableDependents()Z
    .locals 1

    .prologue
    .line 1354
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected shouldPersist()Z
    .locals 1

    .prologue
    .line 939
    iget-object v0, p0, Lcom/oneplus/lib/preference/Preference;->mPreferenceManager:Lcom/oneplus/lib/preference/PreferenceManager;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->hasKey()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1734
    invoke-virtual {p0}, Lcom/oneplus/lib/preference/Preference;->getFilterableStringBuilder()Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
