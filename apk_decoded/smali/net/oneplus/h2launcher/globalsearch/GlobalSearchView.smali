.class public Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
.super Lnet/oneplus/h2launcher/InsettableFrameLayout;
.source "GlobalSearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;,
        Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;,
        Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;
    }
.end annotation


# static fields
.field private static final EXIT_ANIMATION_DURATION:J = 0xc8L

.field private static final GRID_VIEW_NUM_COLUMNS:D = 5.0

.field private static final IME_SEARCH_INPUT:I = 0x0

.field public static final MAX_HISTORY_RECORD:I = 0xa

.field public static final RECYCLER_VIEW_NUM_COLUMNS:I = 0x5

.field public static final SEARCH_INPUT:Ljava/lang/String; = "search_input"

.field public static final SEARCH_INPUT_SETTING:Ljava/lang/String; = "search_input_setting"

.field private static final T9_SEARCH_INPUT:I = 0x1

.field public static final TAG:Ljava/lang/String;

.field private static final sBlackBackground:Landroid/graphics/drawable/Drawable;

.field private static sKeyboardInterpolator:Landroid/view/animation/Interpolator;


# instance fields
.field private mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

.field private mAppHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mAppInfos:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAppNameList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAppPinyinUnits:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAppResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

.field private mAppSubResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation
.end field

.field private mAppsHasInitialized:Z

.field private mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

.field private mAppsSearchHistoryTitleView:Landroid/widget/TextView;

.field private mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

.field private mContactHistoryList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContactPinyinUnits:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private mContactResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

.field private mContactSubResultList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsHasInitialized:Z

.field private mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

.field private mContactsSearchHistoryTitleView:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/AlertDialog;

.field mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field private mGridItemHeight:I

.field private mHanyuPinyinHelper:Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

.field private mHasChangeInputMethod:Z

.field private mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

.field private mIsInAnimationFinish:Z

.field private mIsT9Search:Z

.field private mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

.field private mLastSearchTextLength:I

.field private mLastSoftwareKeyboardHeight:I

.field private mLauncher:Lnet/oneplus/h2launcher/Launcher;

.field private mListPopupWindow:Landroid/widget/ListPopupWindow;

.field private mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

.field private mNavigationBarHeight:I

.field private mNeedRefreshCallbackApps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation
.end field

.field private mPopupMenuItems:[Ljava/lang/String;

.field private mResultShow:Z

.field private mSearchContainer:Landroid/view/View;

.field private mSearchContainerMask:Landroid/view/View;

.field private mSearchContainerTitleHeight:I

.field private mSearchHistoryAppBackground:Landroid/view/View;

.field private mSearchHistoryAppContainer:Landroid/view/View;

.field private mSearchHistoryAppsHeight:I

.field private mSearchHistoryContactBackground:Landroid/view/View;

.field private mSearchHistoryContactContainer:Landroid/view/View;

.field private mSearchHistoryContactsHeight:I

.field private mSearchHistoryContainer:Landroid/view/View;

.field private mSearchHistoryContainerHeight:I

.field private mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

.field private mSearchInput:I

.field private mSearchInputAreaHeight:I

.field private mSearchInputContainer:Landroid/view/View;

.field private mSearchInputTextField:Landroid/widget/EditText;

.field private mSearchMenu:Landroid/widget/ImageView;

.field private mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

.field private mSearchResultAppsHeight:I

.field private mSearchResultContactsHeight:I

.field private mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

.field private mSearchResultContainerHeight:I

.field private mSearchResultMarginBottom:I

.field private mShouldDismiss:Z

.field private mShowAllAppSearchResult:Z

.field private mShowAllContactSearchResult:Z

.field private mSoftwareKeyboardHeight:I

.field private mStats:Lnet/oneplus/h2launcher/Stats;

.field private mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field mTotalContacts:I

.field private mTouchSlop:F


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 92
    const-class v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    .line 101
    new-instance v0, Landroid/view/animation/PathInterpolator;

    const v1, 0x3ecccccd    # 0.4f

    const/4 v2, 0x0

    const v3, 0x3e4ccccd    # 0.2f

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->sKeyboardInterpolator:Landroid/view/animation/Interpolator;

    .line 362
    new-instance v0, Landroid/graphics/drawable/ColorDrawable;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    sput-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->sBlackBackground:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 221
    invoke-direct {p0, p1, p2}, Lnet/oneplus/h2launcher/InsettableFrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    .line 117
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 118
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppPinyinUnits:Ljava/util/HashMap;

    .line 119
    new-instance v2, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactPinyinUnits:Ljava/util/concurrent/ConcurrentHashMap;

    .line 121
    new-instance v2, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 122
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    .line 123
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    .line 124
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    .line 125
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    .line 127
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    .line 130
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    .line 131
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .line 132
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    .line 133
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 134
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    .line 136
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 137
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    .line 138
    const/4 v2, 0x1

    iput-boolean v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    .line 140
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsInAnimationFinish:Z

    .line 141
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShouldDismiss:Z

    .line 142
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 144
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTotalContacts:I

    .line 145
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsHasInitialized:Z

    .line 146
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsHasInitialized:Z

    .line 147
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mResultShow:Z

    .line 148
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSearchTextLength:I

    .line 149
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHasChangeInputMethod:Z

    .line 150
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    .line 151
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    .line 152
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppsHeight:I

    .line 153
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactsHeight:I

    .line 154
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainerHeight:I

    .line 155
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainerHeight:I

    .line 166
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    .line 167
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    .line 169
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSoftwareKeyboardHeight:I

    .line 170
    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSoftwareKeyboardHeight:I

    .line 171
    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHanyuPinyinHelper:Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

    .line 173
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNeedRefreshCallbackApps:Ljava/util/List;

    .line 174
    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$1;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 222
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    .line 223
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    .line 224
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v2

    int-to-float v2, v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTouchSlop:F

    .line 225
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 226
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v2, 0x7f04001b

    invoke-virtual {v0, v2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 227
    .local v1, "view":Landroid/view/View;
    invoke-static {}, Lnet/oneplus/h2launcher/LauncherAppState;->getInstance()Lnet/oneplus/h2launcher/LauncherAppState;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherAppState;->getModel()Lnet/oneplus/h2launcher/LauncherModel;

    move-result-object v2

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/LauncherModel;->getAllAppsList()Ljava/util/ArrayList;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    .line 229
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c011b

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    .line 230
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0117

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputAreaHeight:I

    .line 231
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c011a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    .line 232
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0c0116

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultMarginBottom:I

    .line 233
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0d0052

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mPopupMenuItems:[Ljava/lang/String;

    .line 234
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->addView(Landroid/view/View;)V

    .line 235
    invoke-direct {p0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initView(Landroid/view/View;)V

    .line 236
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initPopupMenu()V

    .line 237
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initListener()V

    .line 238
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getAssetCache()Lnet/oneplus/h2launcher/AssetCache;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 239
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getStats()Lnet/oneplus/h2launcher/Stats;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    .line 240
    new-instance v2, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHanyuPinyinHelper:Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

    .line 241
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const-string v3, "input_method"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    .line 243
    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    .line 244
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->setGlobalSearchView(Landroid/view/View;)V

    .line 245
    return-void
.end method

.method static synthetic access$000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSearchTextLength:I

    return v0
.end method

.method static synthetic access$002(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSearchTextLength:I

    return p1
.end method

.method static synthetic access$100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHasChangeInputMethod:Z

    return v0
.end method

.method static synthetic access$1000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputContainer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$102(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHasChangeInputMethod:Z

    return p1
.end method

.method static synthetic access$1100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Stats;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method static synthetic access$1200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    return-object v0
.end method

.method static synthetic access$1300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/view/inputmethod/InputMethodManager;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method static synthetic access$1400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    return-object v0
.end method

.method static synthetic access$1600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)F
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTouchSlop:F

    return v0
.end method

.method static synthetic access$1700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputAreaHeight:I

    return v0
.end method

.method static synthetic access$1800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->selectInputMethod(Z)V

    return-void
.end method

.method static synthetic access$200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    return-object v0
.end method

.method static synthetic access$2000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->clearSearchHistory()V

    return-void
.end method

.method static synthetic access$2100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/ListPopupWindow;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method static synthetic access$2200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/Launcher;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    return-object v0
.end method

.method static synthetic access$2402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShouldDismiss:Z

    return p1
.end method

.method static synthetic access$2500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Ljava/util/ArrayList;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    return-object v0
.end method

.method static synthetic access$2600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$2700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    return-object v0
.end method

.method static synthetic access$2800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$2900(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method static synthetic access$300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Z
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    return v0
.end method

.method static synthetic access$3000(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/widget/TextView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$3100(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method static synthetic access$3200(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Landroid/app/AlertDialog;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method static synthetic access$3300(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNavigationBarHeight:I

    return v0
.end method

.method static synthetic access$3400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSoftwareKeyboardHeight:I

    return v0
.end method

.method static synthetic access$3402(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLastSoftwareKeyboardHeight:I

    return p1
.end method

.method static synthetic access$3500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)I
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSoftwareKeyboardHeight:I

    return v0
.end method

.method static synthetic access$3502(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;I)I
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # I

    .prologue
    .line 91
    iput p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSoftwareKeyboardHeight:I

    return p1
.end method

.method static synthetic access$3600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->showT9InputMethod()V

    return-void
.end method

.method static synthetic access$400(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->doAppsT9Search(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$500(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->doContactsT9Search(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$600(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->doAppsIMESearch(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$700(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Ljava/lang/CharSequence;

    .prologue
    .line 91
    invoke-direct {p0, p1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->doContactsIMESearch(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$800(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;

    .prologue
    .line 91
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method static synthetic access$902(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Z)Z
    .locals 0
    .param p0, "x0"    # Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;
    .param p1, "x1"    # Z

    .prologue
    .line 91
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mResultShow:Z

    return p1
.end method

.method private calculateResultContainerHeight()V
    .locals 8

    .prologue
    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    const/4 v4, 0x0

    .line 331
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    if-eqz v0, :cond_1

    .line 332
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 333
    iput v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    .line 345
    :goto_0
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    if-eqz v0, :cond_4

    .line 346
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_3

    .line 347
    iput v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    .line 359
    :goto_1
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    add-int/2addr v0, v1

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultMarginBottom:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainerHeight:I

    .line 360
    return-void

    .line 335
    :cond_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    goto :goto_0

    .line 338
    :cond_1
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_2

    .line 339
    iput v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    goto :goto_0

    .line 341
    :cond_2
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAppsHeight:I

    goto :goto_0

    .line 349
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v0, v6

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    int-to-double v2, v2

    mul-double/2addr v0, v2

    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    int-to-double v2, v2

    add-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    goto :goto_1

    .line 352
    :cond_4
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_5

    .line 353
    iput v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    goto :goto_1

    .line 355
    :cond_5
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContactsHeight:I

    goto :goto_1
.end method

.method private clearSearchHistory()V
    .locals 4

    .prologue
    .line 1155
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v2}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x7f0a00fd

    :goto_0
    invoke-direct {v0, v3, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    .line 1157
    .local v0, "builder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f0b003f

    invoke-virtual {v0, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 1158
    const v2, 0x7f0b001b

    new-instance v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$9;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$9;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1182
    const/high16 v2, 0x1040000

    new-instance v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$10;

    invoke-direct {v3, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$10;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 1188
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    .line 1189
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->requestWindowFeature(I)Z

    .line 1190
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    .line 1191
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const v3, 0x7f0e020b

    invoke-static {v2, v3}, Landroid/support/v4/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result v1

    .line 1192
    .local v1, "buttonColor":I
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1193
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    const/4 v3, -0x2

    invoke-virtual {v2, v3}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setTextColor(I)V

    .line 1194
    return-void

    .line 1155
    .end local v0    # "builder":Landroid/app/AlertDialog$Builder;
    .end local v1    # "buttonColor":I
    :cond_0
    const v2, 0x7f0a00fc

    goto :goto_0
.end method

.method private delInputText()V
    .locals 3

    .prologue
    .line 1332
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    if-eqz v2, :cond_0

    .line 1333
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1334
    .local v0, "editable":Landroid/text/Editable;
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    .line 1335
    .local v1, "start":I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/text/Editable;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 1336
    if-lez v1, :cond_0

    .line 1337
    add-int/lit8 v2, v1, -0x1

    invoke-interface {v0, v2, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 1341
    .end local v0    # "editable":Landroid/text/Editable;
    .end local v1    # "start":I
    :cond_0
    return-void
.end method

.method private doAppsIMESearch(Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 959
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 960
    .local v5, "resultAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 961
    .local v7, "tempResultAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 962
    .local v4, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 963
    .local v6, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 964
    .local v0, "charArray":[C
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 965
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 966
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_3

    .line 967
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 968
    if-nez v1, :cond_0

    .line 969
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 970
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 972
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aget-char v9, v0, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 973
    .local v2, "index":I
    if-ltz v2, :cond_1

    .line 974
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 975
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 967
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 978
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 979
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 980
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 981
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 966
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 984
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setAppsSearchResult(Ljava/util/ArrayList;)V

    .line 985
    return-void
.end method

.method private doAppsT9Search(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1017
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppPinyinUnits:Ljava/util/HashMap;

    invoke-virtual {v6}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1018
    .local v2, "iterator":Ljava/util/Iterator;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1019
    .local v5, "resultAppInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1020
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1021
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1022
    .local v3, "key":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1023
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1024
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1025
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1024
    invoke-static {v4, v6, v7, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->matchPinyinUnits(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1026
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1027
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v6, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1032
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":I
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    :cond_1
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setAppsSearchResult(Ljava/util/ArrayList;)V

    .line 1033
    return-void
.end method

.method private doContactsIMESearch(Ljava/lang/CharSequence;)V
    .locals 10
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 988
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 989
    .local v5, "resultContactInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 990
    .local v7, "tempResultContactInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 991
    .local v4, "nameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 992
    .local v6, "tempNameList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 993
    .local v0, "charArray":[C
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 994
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 995
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    array-length v8, v0

    if-ge v3, v8, :cond_3

    .line 996
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_2

    .line 997
    if-nez v1, :cond_0

    .line 998
    invoke-virtual {v6}, Ljava/util/ArrayList;->clear()V

    .line 999
    invoke-virtual {v7}, Ljava/util/ArrayList;->clear()V

    .line 1001
    :cond_0
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v8

    aget-char v9, v0, v3

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v2

    .line 1002
    .local v2, "index":I
    if-ltz v2, :cond_1

    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    if-ge v1, v8, :cond_1

    .line 1003
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1004
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    add-int/lit8 v9, v2, 0x1

    invoke-virtual {v8, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 996
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1007
    .end local v2    # "index":I
    :cond_2
    invoke-virtual {v5}, Ljava/util/ArrayList;->clear()V

    .line 1008
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1009
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 1010
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 995
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1013
    .end local v1    # "i":I
    :cond_3
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setContactsSearchResult(Ljava/util/ArrayList;)V

    .line 1014
    return-void
.end method

.method private doContactsT9Search(Ljava/lang/CharSequence;)V
    .locals 8
    .param p1, "s"    # Ljava/lang/CharSequence;

    .prologue
    .line 1036
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactPinyinUnits:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1037
    .local v2, "iterator":Ljava/util/Iterator;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1038
    .local v5, "resultContactInfos":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 1039
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 1040
    .local v1, "entry":Ljava/util/Map$Entry;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Integer;

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v3

    .line 1041
    .local v3, "key":I
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 1042
    .local v4, "lists":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 1043
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 1044
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1043
    invoke-static {v4, v6, v7, v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9MatchPinyinUnits;->matchPinyinUnits(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Ljava/lang/StringBuffer;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1045
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v6

    if-ge v3, v6, :cond_0

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1046
    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1051
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "entry":Ljava/util/Map$Entry;
    .end local v3    # "key":I
    .end local v4    # "lists":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    :cond_1
    invoke-direct {p0, v5}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setContactsSearchResult(Ljava/util/ArrayList;)V

    .line 1052
    return-void
.end method

.method private enterAnimation()V
    .locals 1

    .prologue
    .line 924
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->enterWithAnimation()V

    .line 925
    return-void
.end method

.method private initAppNameList()V
    .locals 6

    .prologue
    .line 936
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 937
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 939
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v3, v3, Lnet/oneplus/h2launcher/AppInfo;->title:Ljava/lang/CharSequence;

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 940
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 941
    .local v2, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHanyuPinyinHelper:Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

    invoke-static {v3, v1, v2, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->chineseStringToPinyinUnit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;)V

    .line 942
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppPinyinUnits:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 943
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppNameList:Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 937
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 945
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    :cond_0
    return-void
.end method

.method private initListener()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 844
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchMenu:Landroid/widget/ImageView;

    invoke-virtual {v0, p0}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 845
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 846
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v0, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setClickable(Z)V

    .line 848
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setClickable(Z)V

    .line 849
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$7;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 890
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v0, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setClickable(Z)V

    .line 891
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$8;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 919
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 920
    return-void
.end method

.method private initPopupMenu()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 772
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 773
    .local v0, "res":Landroid/content/res/Resources;
    new-instance v2, Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3}, Landroid/widget/ListPopupWindow;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    .line 774
    new-instance v2, Landroid/widget/ArrayAdapter;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const v4, 0x7f04001c

    new-instance v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mPopupMenuItems:[Ljava/lang/String;

    .line 775
    invoke-static {v6}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-direct {v2, v3, v4, v5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    .line 776
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 777
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const-string v3, "search_input_setting"

    invoke-virtual {v2, v3, v7}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 778
    .local v1, "searchInputSetting":Landroid/content/SharedPreferences;
    const-string v2, "search_input"

    invoke-interface {v1, v2, v7}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    .line 780
    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    if-ne v2, v8, :cond_0

    .line 781
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0b00aa

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 788
    :goto_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 789
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchMenu:Landroid/widget/ImageView;

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setAnchorView(Landroid/view/View;)V

    .line 790
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v2, v8}, Landroid/widget/ListPopupWindow;->setModal(Z)V

    .line 791
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    new-instance v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;

    invoke-direct {v3, p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$6;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Landroid/content/res/Resources;)V

    invoke-virtual {v2, v3}, Landroid/widget/ListPopupWindow;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 812
    return-void

    .line 782
    :cond_0
    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    if-nez v2, :cond_1

    .line 783
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    const v3, 0x7f0b0084

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    goto :goto_0

    .line 785
    :cond_1
    sget-object v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v3, "unexpected input method"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private initView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 593
    const v1, 0x7f1100a4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainer:Landroid/view/View;

    .line 594
    const v1, 0x7f1100a5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerMask:Landroid/view/View;

    .line 595
    const v1, 0x7f1100b1

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputContainer:Landroid/view/View;

    .line 596
    const v1, 0x7f1100b4

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    .line 597
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputContainer:Landroid/view/View;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 598
    const v1, 0x7f1100b3

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchMenu:Landroid/widget/ImageView;

    .line 599
    const v1, 0x7f1100a8

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainer:Landroid/view/View;

    .line 600
    const v1, 0x7f1100a9

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppBackground:Landroid/view/View;

    .line 601
    const v1, 0x7f1100aa

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppContainer:Landroid/view/View;

    .line 602
    const v1, 0x7f1100ad

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactBackground:Landroid/view/View;

    .line 603
    const v1, 0x7f1100ae

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactContainer:Landroid/view/View;

    .line 604
    const v1, 0x7f1100a7

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    .line 605
    const v1, 0x7f1100ac

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    .line 606
    const v1, 0x7f1100b0

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    .line 607
    const v1, 0x7f1100a6

    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 609
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppContainer:Landroid/view/View;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 610
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactContainer:Landroid/view/View;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 611
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 612
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$OnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 614
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$4;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->addOnScrollListener(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$OnScrollListener;)V

    .line 635
    const v1, 0x7f1100ab

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    .line 636
    const v1, 0x7f1100af

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    .line 638
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-eqz v1, :cond_0

    .line 639
    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    .line 640
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 643
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    if-eqz v1, :cond_1

    .line 644
    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;-><init>(Landroid/content/Context;Ljava/util/List;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    .line 645
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 648
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    if-eqz v1, :cond_2

    .line 649
    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-direct {v1, v2, v3, v4, p0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    .line 650
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setAdapter(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$Adapter;)V

    .line 652
    new-instance v0, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    .line 654
    .local v0, "layoutManager":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;

    invoke-direct {v1, p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$5;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;)V

    invoke-virtual {v0, v1}, Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;->setSpanSizeLookup(Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager$SpanSizeLookup;)V

    .line 661
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v1, v0}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutManager(Lcom/oneplus/lib/widget/recyclerview/RecyclerView$LayoutManager;)V

    .line 664
    .end local v0    # "layoutManager":Lcom/oneplus/lib/widget/recyclerview/GridLayoutManager;
    :cond_2
    const v1, 0x7f1100b5

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    iput-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    .line 665
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->init(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    .line 666
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v1, p0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->setOnClickHandler(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$OnPanelClickedListener;)V

    .line 667
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$T9PanelTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 669
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 670
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$ScrollViewOnTouchListener;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 671
    return-void
.end method

.method private padTrailingSearchHistory()V
    .locals 6

    .prologue
    .line 575
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 576
    .local v0, "AppHistorySize":I
    rem-int/lit8 v4, v0, 0x5

    if-eqz v4, :cond_0

    .line 577
    rem-int/lit8 v4, v0, 0x5

    rsub-int/lit8 v3, v4, 0x5

    .line 578
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_0

    .line 579
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/AppData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 578
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 583
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 584
    .local v1, "contactHistorySize":I
    rem-int/lit8 v4, v1, 0x5

    if-eqz v4, :cond_1

    .line 585
    rem-int/lit8 v4, v1, 0x5

    rsub-int/lit8 v3, v4, 0x5

    .line 586
    .restart local v3    # "num":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 587
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 586
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 590
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_1
    return-void
.end method

.method private padTrailingSearchResult()V
    .locals 7

    .prologue
    const/4 v6, 0x5

    .line 551
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 552
    .local v0, "AppResultSize":I
    rem-int/lit8 v4, v0, 0x5

    if-eqz v4, :cond_1

    .line 553
    rem-int/lit8 v4, v0, 0x5

    rsub-int/lit8 v3, v4, 0x5

    .line 554
    .local v3, "num":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 555
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/AppData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 556
    if-ge v0, v6, :cond_0

    .line 557
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/AppData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 554
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 562
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_1
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 563
    .local v1, "contactResultSize":I
    rem-int/lit8 v4, v1, 0x5

    if-eqz v4, :cond_3

    .line 564
    rem-int/lit8 v4, v1, 0x5

    rsub-int/lit8 v3, v4, 0x5

    .line 565
    .restart local v3    # "num":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_1
    if-ge v2, v3, :cond_3

    .line 566
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    if-ge v1, v6, :cond_2

    .line 568
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;

    invoke-direct {v5}, Lnet/oneplus/h2launcher/globalsearch/EmptyContactData;-><init>()V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 565
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 572
    .end local v2    # "i":I
    .end local v3    # "num":I
    :cond_3
    return-void
.end method

.method private selectInputMethod(Z)V
    .locals 13
    .param p1, "isT9Input"    # Z

    .prologue
    const v12, 0x7f0b00aa

    const v11, 0x7f0b0084

    const/4 v10, 0x0

    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 1197
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4, v10}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setTranslationY(F)V

    .line 1198
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setVisibility(I)V

    .line 1199
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    invoke-virtual {v4, v6}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setVisibility(I)V

    .line 1200
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainer:Landroid/view/View;

    invoke-virtual {v4, v10}, Landroid/view/View;->setTranslationY(F)V

    .line 1201
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainer:Landroid/view/View;

    const/high16 v7, 0x3f800000    # 1.0f

    invoke-virtual {v4, v7}, Landroid/view/View;->setAlpha(F)V

    .line 1202
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1203
    .local v2, "res":Landroid/content/res/Resources;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const-string v7, "search_input_setting"

    invoke-virtual {v4, v7, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 1204
    .local v3, "searchInputSetting":Landroid/content/SharedPreferences;
    invoke-interface {v3}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    .line 1206
    .local v1, "editor":Landroid/content/SharedPreferences$Editor;
    if-eqz p1, :cond_1

    move v4, v5

    :goto_0
    iput-boolean v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    .line 1208
    if-eqz p1, :cond_2

    .line 1209
    const-string v4, "search_input"

    invoke-interface {v1, v4, v5}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1210
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1211
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setupT9InputSearch()V

    .line 1215
    :cond_0
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 1216
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    .line 1251
    :goto_1
    iput-boolean v5, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHasChangeInputMethod:Z

    .line 1252
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    const-string v5, ""

    invoke-virtual {v4, v5}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1253
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v4}, Landroid/widget/ArrayAdapter;->notifyDataSetChanged()V

    .line 1254
    return-void

    :cond_1
    move v4, v6

    .line 1206
    goto :goto_0

    .line 1221
    :cond_2
    const-string v4, "search_input"

    invoke-interface {v1, v4, v6}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v4

    invoke-interface {v4}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 1223
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1224
    .local v0, "animators":Ljava/util/List;, "Ljava/util/List<Landroid/animation/Animator;>;"
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    const-string v7, "translationY"

    new-array v8, v5, [F

    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v9}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->getHeight()I

    move-result v9

    int-to-float v9, v9

    aput v9, v8, v6

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1225
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    const-string v7, "alpha"

    new-array v8, v5, [F

    aput v10, v8, v6

    invoke-static {v4, v7, v8}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1226
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    .line 1227
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 1228
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    sget-object v7, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->sKeyboardInterpolator:Landroid/view/animation/Interpolator;

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 1229
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    const-wide/16 v8, 0xc8

    invoke-virtual {v4, v8, v9}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 1230
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    new-instance v7, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;

    invoke-direct {v7, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$11;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v4, v7}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 1243
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mKeyboardDismissAnimatorSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v4}, Landroid/animation/AnimatorSet;->start()V

    .line 1247
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v11}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/widget/ArrayAdapter;->remove(Ljava/lang/Object;)V

    .line 1248
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindowAdapter:Landroid/widget/ArrayAdapter;

    invoke-virtual {v2, v12}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7, v6}, Landroid/widget/ArrayAdapter;->insert(Ljava/lang/Object;I)V

    goto :goto_1
.end method

.method private setAppsSearchResult(Ljava/util/ArrayList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1055
    .local p1, "packagesList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/AppInfo;>;"
    if-nez p1, :cond_0

    .line 1070
    :goto_0
    return-void

    .line 1059
    :cond_0
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1060
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 1061
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 1062
    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/oneplus/h2launcher/AppInfo;

    invoke-direct {v1, v2}, Lnet/oneplus/h2launcher/globalsearch/AppData;-><init>(Lnet/oneplus/h2launcher/AppInfo;)V

    .line 1063
    .local v1, "searchResult":Lnet/oneplus/h2launcher/globalsearch/AppData;
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1064
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    const/4 v3, 0x5

    if-ge v2, v3, :cond_1

    .line 1065
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1061
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1069
    .end local v1    # "searchResult":Lnet/oneplus/h2launcher/globalsearch/AppData;
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->padTrailingSearchResult()V

    goto :goto_0
.end method

.method private setContactsSearchResult(Ljava/util/ArrayList;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 1073
    .local p1, "contactsResultList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/globalsearch/ContactData;>;"
    if-nez p1, :cond_0

    .line 1087
    :goto_0
    return-void

    .line 1077
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1078
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V

    .line 1079
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1080
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1081
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_1

    .line 1082
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1079
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1086
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->padTrailingSearchResult()V

    goto :goto_0
.end method

.method private setInputText(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 1326
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    if-eqz v0, :cond_0

    .line 1327
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->append(Ljava/lang/CharSequence;)V

    .line 1329
    :cond_0
    return-void
.end method

.method private setupT9InputSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1292
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1293
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1294
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1295
    return-void
.end method

.method private showT9InputMethod()V
    .locals 2

    .prologue
    .line 1306
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->isShown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1307
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->runKeyboardAnimation(Landroid/view/ViewGroup;)V

    .line 1309
    :cond_0
    return-void
.end method

.method private updatePopupMenu()V
    .locals 11

    .prologue
    .line 815
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 816
    .local v7, "res":Landroid/content/res/Resources;
    new-instance v5, Landroid/graphics/Rect;

    invoke-direct {v5}, Landroid/graphics/Rect;-><init>()V

    .line 817
    .local v5, "popupRect":Landroid/graphics/Rect;
    iget-object v9, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-static {v8}, Lnet/oneplus/h2launcher/Utilities;->isDarkModeTheme(Landroid/content/Context;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const v10, 0x7f0201aa

    .line 818
    invoke-static {v8, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 817
    :goto_0
    invoke-virtual {v9, v8}, Landroid/widget/ListPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 820
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8}, Landroid/widget/ListPopupWindow;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v5}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 822
    const v8, 0x7f0c012e

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    .line 824
    .local v0, "listItemHeight":I
    const v8, 0x7f0c0122

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v2

    .line 826
    .local v2, "listMarginTop":I
    const v8, 0x7f0c0121

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 828
    .local v1, "listMarginBottom":I
    const v8, 0x7f0c012f

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v4

    .line 830
    .local v4, "popupMarginTop":I
    const v8, 0x7f0c0130

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    iget v9, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->right:I

    add-int v6, v8, v9

    .line 833
    .local v6, "popupWidth":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mPopupMenuItems:[Ljava/lang/String;

    array-length v8, v8

    add-int/lit8 v8, v8, -0x1

    mul-int/2addr v8, v0

    add-int/2addr v8, v2

    add-int/2addr v8, v1

    iget v9, v5, Landroid/graphics/Rect;->top:I

    add-int/2addr v8, v9

    iget v9, v5, Landroid/graphics/Rect;->bottom:I

    add-int v3, v8, v9

    .line 836
    .local v3, "popupHeight":I
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v6}, Landroid/widget/ListPopupWindow;->setWidth(I)V

    .line 837
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v8, v3}, Landroid/widget/ListPopupWindow;->setHeight(I)V

    .line 838
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    iget v9, v5, Landroid/graphics/Rect;->top:I

    sub-int v9, v4, v9

    invoke-virtual {v8, v9}, Landroid/widget/ListPopupWindow;->setVerticalOffset(I)V

    .line 839
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    neg-int v9, v6

    iget v10, v5, Landroid/graphics/Rect;->right:I

    add-int/2addr v9, v10

    iget-object v10, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchMenu:Landroid/widget/ImageView;

    .line 840
    invoke-virtual {v10}, Landroid/widget/ImageView;->getPaddingLeft()I

    move-result v10

    add-int/2addr v9, v10

    iget-object v10, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchMenu:Landroid/widget/ImageView;

    invoke-virtual {v10}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v10

    invoke-virtual {v10}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    add-int/2addr v9, v10

    .line 839
    invoke-virtual {v8, v9}, Landroid/widget/ListPopupWindow;->setHorizontalOffset(I)V

    .line 841
    return-void

    .line 818
    .end local v0    # "listItemHeight":I
    .end local v1    # "listMarginBottom":I
    .end local v2    # "listMarginTop":I
    .end local v3    # "popupHeight":I
    .end local v4    # "popupMarginTop":I
    .end local v6    # "popupWidth":I
    :cond_0
    iget-object v8, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const v10, 0x7f0201a9

    .line 819
    invoke-static {v8, v10}, Landroid/support/v4/content/ContextCompat;->getDrawable(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    goto :goto_0
.end method


# virtual methods
.method public cancelAnimation()V
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->cancelAnimator()V

    .line 420
    return-void
.end method

.method public dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v2, 0x0

    .line 1141
    const/4 v0, 0x4

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    if-ne v0, v1, :cond_1

    .line 1142
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/Launcher;->isInSearchMode()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1143
    invoke-virtual {p0, v2}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setLayoutBottomMarginByResource(I)V

    .line 1144
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    if-eqz v0, :cond_0

    .line 1145
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1147
    :cond_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->cancelAnimation()V

    .line 1148
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->exitAnimation()V

    .line 1151
    :cond_1
    invoke-super {p0, p1}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->dispatchKeyEventPreIme(Landroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method public exitAnimation()V
    .locals 1

    .prologue
    .line 928
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->exitWithAnimation()V

    .line 929
    return-void
.end method

.method public exitWithoutAnimation()V
    .locals 1

    .prologue
    .line 932
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->exitWithoutAnimation()V

    .line 933
    return-void
.end method

.method public getAlertDialog()Landroid/app/AlertDialog;
    .locals 1

    .prologue
    .line 1473
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mDialog:Landroid/app/AlertDialog;

    return-object v0
.end method

.method public getAnimationHelper()Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;
    .locals 1

    .prologue
    .line 1489
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    return-object v0
.end method

.method public getAppInfos()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/AppInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1493
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppResultList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/AppData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1505
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAppsSearchHistoryGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method public getAppsSearchHistoryTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1429
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getContactInfos()Ljava/util/concurrent/CopyOnWriteArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/CopyOnWriteArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1497
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    return-object v0
.end method

.method public getContactResultList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lnet/oneplus/h2launcher/globalsearch/ContactData;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1509
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getContactsDb(Z)V
    .locals 2
    .param p1, "updateUI"    # Z

    .prologue
    .line 308
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->queryContactsDb()V

    .line 309
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initContactNameList()V

    .line 311
    if-eqz p1, :cond_0

    .line 312
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    new-instance v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$2;

    invoke-direct {v1, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$2;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v0, v1}, Lnet/oneplus/h2launcher/Launcher;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 319
    :cond_0
    return-void
.end method

.method public getContactsSearchHistoryGridView()Landroid/widget/GridView;
    .locals 1

    .prologue
    .line 1425
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    return-object v0
.end method

.method public getContactsSearchHistoryTitleView()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 1433
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    return-object v0
.end method

.method public getHSL(I)F
    .locals 8
    .param p1, "color"    # I

    .prologue
    .line 373
    const/4 v2, 0x0

    .line 374
    .local v2, "l":F
    invoke-static {p1}, Landroid/graphics/Color;->red(I)I

    move-result v6

    int-to-float v5, v6

    .line 375
    .local v5, "r":F
    invoke-static {p1}, Landroid/graphics/Color;->green(I)I

    move-result v6

    int-to-float v1, v6

    .line 376
    .local v1, "g":F
    invoke-static {p1}, Landroid/graphics/Color;->blue(I)I

    move-result v6

    int-to-float v0, v6

    .line 377
    .local v0, "b":F
    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 378
    .local v3, "max":F
    invoke-static {v1, v0}, Ljava/lang/Math;->min(FF)F

    move-result v6

    invoke-static {v5, v6}, Ljava/lang/Math;->min(FF)F

    move-result v4

    .line 379
    .local v4, "min":F
    add-float v6, v3, v4

    const/high16 v7, 0x40000000    # 2.0f

    div-float v2, v6, v7

    .line 380
    return v2
.end method

.method public getInputMethodManager()Landroid/view/inputmethod/InputMethodManager;
    .locals 1

    .prologue
    .line 1465
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    return-object v0
.end method

.method public getKeyboardContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1393
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    return-object v0
.end method

.method public getListPopupWindow()Landroid/widget/ListPopupWindow;
    .locals 1

    .prologue
    .line 1469
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    return-object v0
.end method

.method public getNeedRefreshCallbackApps()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/ComponentName;",
            ">;"
        }
    .end annotation

    .prologue
    .line 369
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNeedRefreshCallbackApps:Ljava/util/List;

    return-object v0
.end method

.method public getOnGlobalLayoutListener()Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
    .locals 1

    .prologue
    .line 1477
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    return-object v0
.end method

.method public getSearchContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1377
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSearchContainerMask()Landroid/view/View;
    .locals 1

    .prologue
    .line 1381
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerMask:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryAppBackground()Landroid/view/View;
    .locals 1

    .prologue
    .line 1405
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppBackground:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryAppConrainerHeight()I
    .locals 1

    .prologue
    .line 1449
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppsHeight:I

    return v0
.end method

.method public getSearchHistoryAppContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1413
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryConrainerHeight()I
    .locals 1

    .prologue
    .line 1445
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainerHeight:I

    return v0
.end method

.method public getSearchHistoryContactBackground()Landroid/view/View;
    .locals 1

    .prologue
    .line 1409
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactBackground:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryContactConrainerHeight()I
    .locals 1

    .prologue
    .line 1453
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactsHeight:I

    return v0
.end method

.method public getSearchHistoryContactContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1417
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1401
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSearchHistoryScrollView()Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;
    .locals 1

    .prologue
    .line 1437
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    return-object v0
.end method

.method public getSearchInputContainer()Landroid/view/View;
    .locals 1

    .prologue
    .line 1385
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputContainer:Landroid/view/View;

    return-object v0
.end method

.method public getSearchInputTextField()Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 1389
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    return-object v0
.end method

.method public getSearchResultAdapter()Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;
    .locals 1

    .prologue
    .line 1501
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    return-object v0
.end method

.method public getSearchResultConrainerHeight()I
    .locals 1

    .prologue
    .line 1441
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainerHeight:I

    return v0
.end method

.method public getSearchResultContainer()Lcom/oneplus/lib/widget/recyclerview/RecyclerView;
    .locals 1

    .prologue
    .line 1397
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    return-object v0
.end method

.method public getSearchResultContainerBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 365
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->sBlackBackground:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getShowAllAppSearchResult()Z
    .locals 1

    .prologue
    .line 1513
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    return v0
.end method

.method public getShowAllContactSearchResult()Z
    .locals 1

    .prologue
    .line 1517
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    return v0
.end method

.method public getSoftwareKeyboardHeight()I
    .locals 3

    .prologue
    .line 1298
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    .line 1299
    .local v0, "r":Landroid/graphics/Rect;
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 1300
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    check-cast v2, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v2}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getHeight()I

    move-result v1

    .line 1301
    .local v1, "screenHeight":I
    iget v2, v0, Landroid/graphics/Rect;->bottom:I

    sub-int v2, v1, v2

    iput v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSoftwareKeyboardHeight:I

    .line 1302
    iget v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSoftwareKeyboardHeight:I

    return v2
.end method

.method public getStats()Lnet/oneplus/h2launcher/Stats;
    .locals 1

    .prologue
    .line 1485
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    return-object v0
.end method

.method public init()V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 384
    iget-boolean v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsInAnimationFinish:Z

    if-eqz v1, :cond_0

    .line 416
    :goto_0
    return-void

    .line 389
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    check-cast v1, Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/16 v4, 0x30

    invoke-virtual {v1, v4}, Landroid/view/Window;->setSoftInputMode(I)V

    .line 391
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const-string v4, "search_input_setting"

    invoke-virtual {v1, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 392
    .local v0, "searchInputSetting":Landroid/content/SharedPreferences;
    const-string v1, "search_input"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    .line 393
    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInput:I

    if-ne v1, v2, :cond_3

    move v1, v2

    :goto_1
    iput-boolean v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    .line 394
    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHasChangeInputMethod:Z

    .line 395
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainer:Landroid/view/View;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/view/View;->setAlpha(F)V

    .line 396
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->getPageIndicator()Landroid/view/View;

    move-result-object v1

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 397
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initAppNameList()V

    .line 399
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Launcher;->isNeedUpdateContactDb()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 400
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.READ_CONTACTS"

    invoke-static {v1, v2}, Lnet/oneplus/h2launcher/util/PermissionUtils;->hasGrantedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 401
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mLauncher:Lnet/oneplus/h2launcher/Launcher;

    invoke-virtual {v1, v3}, Lnet/oneplus/h2launcher/Launcher;->setNeedUpdateContactDb(Z)V

    .line 402
    invoke-static {}, Lnet/oneplus/h2launcher/util/TaskWorker;->get()Lnet/oneplus/h2launcher/util/TaskWorker;

    move-result-object v1

    new-instance v2, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;

    invoke-direct {v2, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$3;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    invoke-virtual {v1, v2}, Lnet/oneplus/h2launcher/util/TaskWorker;->post(Ljava/lang/Runnable;)V

    .line 412
    :cond_1
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNeedRefreshCallbackApps:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 413
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNeedRefreshCallbackApps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 415
    :cond_2
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->enterAnimation()V

    goto :goto_0

    :cond_3
    move v1, v3

    .line 393
    goto :goto_1
.end method

.method public initAppsHistory()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 453
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsHasInitialized:Z

    if-nez v3, :cond_2

    .line 454
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsHasInitialized:Z

    .line 455
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/Stats;->loadAppsHistory(Z)Z

    move-result v3

    if-nez v3, :cond_2

    .line 456
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 457
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 461
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    if-eqz v3, :cond_1

    .line 462
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->notifyDataSetChanged()V

    .line 498
    :goto_1
    return-void

    .line 459
    :cond_0
    sget-object v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v4, "initAppsHistory - mAppsHistoryList is null."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 464
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v4, "initAppsHistory - mAppsSearchHistoryAdapter is null."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 471
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 472
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Stats;->getOrderedAppList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/ComponentName;

    .line 473
    .local v1, "componentName":Landroid/content/ComponentName;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 474
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 475
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/AppInfo;

    .line 476
    .local v0, "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    iget-object v4, v0, Lnet/oneplus/h2launcher/AppInfo;->componentName:Landroid/content/ComponentName;

    invoke-virtual {v1, v4}, Landroid/content/ComponentName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 477
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/AppData;

    invoke-direct {v5, v0}, Lnet/oneplus/h2launcher/globalsearch/AppData;-><init>(Lnet/oneplus/h2launcher/AppInfo;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 474
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 484
    .end local v0    # "appInfo":Lnet/oneplus/h2launcher/AppInfo;
    .end local v1    # "componentName":Landroid/content/ComponentName;
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    if-eqz v3, :cond_6

    .line 485
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->padTrailingSearchHistory()V

    .line 486
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/AppSearchHistoryAdapter;->notifyDataSetChanged()V

    .line 489
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 490
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 491
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 492
    iput v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppsHeight:I

    goto :goto_1

    .line 494
    :cond_7
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 495
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 496
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppsHeight:I

    goto/16 :goto_1
.end method

.method protected initContactNameList()V
    .locals 6

    .prologue
    .line 948
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 949
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 950
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "\\s"

    const-string v5, ""

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 951
    .local v1, "name":Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 952
    .local v2, "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mHanyuPinyinHelper:Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;

    invoke-static {v3, v1, v2, v4}, Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUtil;->chineseStringToPinyinUnit(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;Lnet/oneplus/h2launcher/inputmethod/T9/HanyuPinyinHelper;)V

    .line 953
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactPinyinUnits:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactNameList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 949
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 956
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "units":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lnet/oneplus/h2launcher/inputmethod/T9/PinyinUnit;>;"
    :cond_0
    return-void
.end method

.method public initContactsHistory()V
    .locals 8

    .prologue
    const/16 v7, 0x8

    const/4 v6, 0x0

    .line 501
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsHasInitialized:Z

    if-nez v3, :cond_2

    .line 502
    const/4 v3, 0x1

    iput-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsHasInitialized:Z

    .line 503
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Stats;->loadContactsHistory()Z

    move-result v3

    if-nez v3, :cond_2

    .line 504
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    if-eqz v3, :cond_0

    .line 505
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 509
    :goto_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    if-eqz v3, :cond_1

    .line 510
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->notifyDataSetChanged()V

    .line 548
    :goto_1
    return-void

    .line 507
    :cond_0
    sget-object v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v4, "initContactsHistory - mContactsHistoryList is null."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 512
    :cond_1
    sget-object v3, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v4, "initContactsHistory - mContactsSearchHistoryAdapter is null."

    invoke-static {v3, v4}, Lnet/oneplus/h2launcher/util/Logger;->w(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 519
    :cond_2
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 520
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/Stats;->getOrderedContactList()Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_3
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 521
    .local v1, "displayName":Ljava/lang/String;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    const/16 v5, 0xa

    if-ge v4, v5, :cond_3

    .line 522
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_3
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v4

    if-ge v2, v4, :cond_3

    .line 523
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    .line 524
    .local v0, "contactData":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 525
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 522
    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 532
    .end local v0    # "contactData":Lnet/oneplus/h2launcher/globalsearch/ContactData;
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_5
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    if-eqz v3, :cond_6

    .line 533
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->padTrailingSearchHistory()V

    .line 534
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSearchHistoryAdapter:Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;

    invoke-virtual {v3}, Lnet/oneplus/h2launcher/globalsearch/ContactSearchHistoryAdapter;->notifyDataSetChanged()V

    .line 537
    :cond_6
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-nez v3, :cond_7

    .line 538
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactBackground:Landroid/view/View;

    invoke-virtual {v3, v7}, Landroid/view/View;->setVisibility(I)V

    .line 539
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 540
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v3, v7}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 541
    iput v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactsHeight:I

    goto :goto_1

    .line 543
    :cond_7
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactBackground:Landroid/view/View;

    invoke-virtual {v3, v6}, Landroid/view/View;->setVisibility(I)V

    .line 544
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryTitleView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    .line 545
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactsSearchHistoryGridView:Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;

    invoke-virtual {v3, v6}, Lnet/oneplus/h2launcher/globalsearch/SearchHistoryGridView;->setVisibility(I)V

    .line 546
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactHistoryList:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    int-to-double v4, v3

    const-wide/high16 v6, 0x4014000000000000L    # 5.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGridItemHeight:I

    int-to-double v6, v3

    mul-double/2addr v4, v6

    iget v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerTitleHeight:I

    int-to-double v6, v3

    add-double/2addr v4, v6

    double-to-int v3, v4

    iput v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactsHeight:I

    goto/16 :goto_1
.end method

.method public initInputBackground()V
    .locals 2

    .prologue
    .line 322
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    const/high16 v1, 0x41600000    # 14.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 323
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerMask:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    .line 324
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchContainerMask:Landroid/view/View;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initAppsHistory()V

    .line 326
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->initContactsHistory()V

    .line 327
    iget v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryAppsHeight:I

    iget v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContactsHeight:I

    add-int/2addr v0, v1

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryContainerHeight:I

    .line 328
    return-void
.end method

.method public isAnimating()Z
    .locals 1

    .prologue
    .line 423
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAnimationHelper:Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchAnimationHelper;->isAnimating()Z

    move-result v0

    return v0
.end method

.method public isT9Search()Z
    .locals 1

    .prologue
    .line 1461
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 6
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1113
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v3

    packed-switch v3, :pswitch_data_0

    .line 1137
    :cond_0
    :goto_0
    return-void

    .line 1115
    :pswitch_0
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 1116
    .local v2, "res":Landroid/content/res/Resources;
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->updatePopupMenu()V

    .line 1117
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->show()V

    .line 1120
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mListPopupWindow:Landroid/widget/ListPopupWindow;

    invoke-virtual {v3}, Landroid/widget/ListPopupWindow;->getListView()Landroid/widget/ListView;

    move-result-object v1

    .line 1121
    .local v1, "popupList":Landroid/widget/ListView;
    if-eqz v1, :cond_0

    .line 1122
    invoke-virtual {v1}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1123
    .local v0, "params":Landroid/widget/FrameLayout$LayoutParams;
    const v3, 0x7f0c0122

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 1125
    const v3, 0x7f0c0121

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    goto :goto_0

    .line 1130
    .end local v0    # "params":Landroid/widget/FrameLayout$LayoutParams;
    .end local v1    # "popupList":Landroid/widget/ListView;
    .end local v2    # "res":Landroid/content/res/Resources;
    :pswitch_1
    iget-boolean v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsT9Search:Z

    if-eqz v3, :cond_1

    .line 1131
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->showT9InputMethod()V

    goto :goto_0

    .line 1133
    :cond_1
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    goto :goto_0

    .line 1113
    :pswitch_data_0
    .packed-switch 0x7f1100b3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected onFinishInflate()V
    .locals 0

    .prologue
    .line 1108
    invoke-super {p0}, Lnet/oneplus/h2launcher/InsettableFrameLayout;->onFinishInflate()V

    .line 1109
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 8
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "user"    # Lnet/oneplus/h2launcher/compat/UserHandleCompat;
    .param p3, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 427
    iget-object v3, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getInstance(Landroid/content/Context;)Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;

    move-result-object v1

    .line 428
    .local v1, "launcherApps":Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;
    invoke-virtual {v1, p1, p2}, Lnet/oneplus/h2launcher/compat/LauncherAppsCompat;->getActivityList(Ljava/lang/String;Lnet/oneplus/h2launcher/compat/UserHandleCompat;)Ljava/util/List;

    move-result-object v2

    .line 431
    .local v2, "matches":Ljava/util/List;, "Ljava/util/List<Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_0
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;

    .line 432
    .local v0, "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v4, :cond_0

    .line 433
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/AppInfo;

    iget-object v6, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    iget-object v7, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    invoke-direct {v5, v6, v0, p2, v7}, Lnet/oneplus/h2launcher/AppInfo;-><init>(Landroid/content/Context;Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;Lnet/oneplus/h2launcher/compat/UserHandleCompat;Lnet/oneplus/h2launcher/AssetCache;)V

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 436
    .end local v0    # "info":Lnet/oneplus/h2launcher/compat/LauncherActivityInfoCompat;
    :cond_1
    return-void
.end method

.method public onPanelClick(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;)V
    .locals 1
    .param p1, "d"    # Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    .prologue
    .line 1313
    sget-object v0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->DEL:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    if-ne p1, v0, :cond_0

    .line 1314
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->delInputText()V

    .line 1317
    :goto_0
    return-void

    .line 1316
    :cond_0
    invoke-virtual {p1}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setInputText(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onPanelLongClick(Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;)V
    .locals 2
    .param p1, "d"    # Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    .prologue
    .line 1321
    sget-object v0, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;->DEL:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel$Digit;

    if-ne p1, v0, :cond_0

    .line 1322
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1323
    :cond_0
    return-void
.end method

.method public queryContactsDb()V
    .locals 19

    .prologue
    .line 248
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTotalContacts:I

    .line 249
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 250
    sget-object v2, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 251
    .local v2, "queryUri":Landroid/net/Uri;
    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v4, "_id"

    aput-object v4, v3, v1

    const/4 v1, 0x1

    const-string v4, "display_name"

    aput-object v4, v3, v1

    const/4 v1, 0x2

    const-string v4, "photo_thumb_uri"

    aput-object v4, v3, v1

    .line 255
    .local v3, "projection":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 256
    invoke-virtual/range {v1 .. v6}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 258
    .local v9, "cursor":Landroid/database/Cursor;
    :goto_0
    if-eqz v9, :cond_3

    invoke-interface {v9}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 259
    const-string v1, "_id"

    .line 260
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 259
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    .line 262
    .local v7, "contactId":Ljava/lang/String;
    const-string v1, "display_name"

    .line 263
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 262
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v16

    .line 265
    .local v16, "title":Ljava/lang/String;
    if-eqz v7, :cond_0

    if-nez v16, :cond_1

    .line 266
    :cond_0
    sget-object v1, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v4, "Contact id or name is null !!!"

    invoke-static {v1, v4}, Lnet/oneplus/h2launcher/util/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 270
    :cond_1
    new-instance v13, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v13, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v13, "intent":Landroid/content/Intent;
    sget-object v1, Landroid/provider/ContactsContract$Contacts;->CONTENT_URI:Landroid/net/Uri;

    .line 272
    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 271
    invoke-static {v1, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v17

    .line 273
    .local v17, "uri":Landroid/net/Uri;
    move-object/from16 v0, v17

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 275
    const-string v1, "photo_thumb_uri"

    .line 276
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v1

    .line 275
    invoke-interface {v9, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    .line 278
    .local v15, "photo":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v4, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    new-instance v5, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    if-nez v15, :cond_2

    const/4 v1, 0x0

    .line 279
    :goto_1
    move-object/from16 v0, v16

    invoke-direct {v5, v6, v0, v1, v13}, Lnet/oneplus/h2launcher/globalsearch/ContactData;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Landroid/content/Intent;)V

    .line 278
    invoke-virtual {v4, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    .line 280
    move-object/from16 v0, p0

    iget v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTotalContacts:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mTotalContacts:I

    goto :goto_0

    .line 279
    :cond_2
    invoke-static {v15}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    goto :goto_1

    .line 283
    .end local v7    # "contactId":Ljava/lang/String;
    .end local v13    # "intent":Landroid/content/Intent;
    .end local v15    # "photo":Ljava/lang/String;
    .end local v16    # "title":Ljava/lang/String;
    .end local v17    # "uri":Landroid/net/Uri;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    if-eqz v1, :cond_7

    .line 284
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Stats;->getGlobalSearchDbHelper()Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;

    move-result-object v1

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchDbHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v10

    .line 285
    .local v10, "db":Landroid/database/sqlite/SQLiteDatabase;
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mStats:Lnet/oneplus/h2launcher/Stats;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/Stats;->getContactIdList()Ljava/util/ArrayList;

    move-result-object v8

    .line 286
    .local v8, "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-eqz v8, :cond_7

    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 287
    const/4 v11, 0x0

    .line 288
    .local v11, "found":Z
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_2
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v12, v1, :cond_7

    .line 289
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v1

    if-ge v14, v1, :cond_4

    .line 290
    move-object/from16 v0, p0

    iget-object v1, v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactInfos:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1, v14}, Ljava/util/concurrent/CopyOnWriteArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/globalsearch/ContactData;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/globalsearch/ContactData;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 291
    const/4 v11, 0x1

    .line 295
    :cond_4
    if-nez v11, :cond_5

    .line 296
    const-string v4, "global_search_contacts"

    const-string v5, "_id=?"

    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    const/16 v18, 0x0

    invoke-virtual {v8, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aput-object v1, v6, v18

    invoke-virtual {v10, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 288
    :cond_5
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 289
    :cond_6
    add-int/lit8 v14, v14, 0x1

    goto :goto_3

    .line 302
    .end local v8    # "contactIds":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v10    # "db":Landroid/database/sqlite/SQLiteDatabase;
    .end local v11    # "found":Z
    .end local v12    # "i":I
    .end local v14    # "j":I
    :cond_7
    if-eqz v9, :cond_8

    .line 303
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 305
    :cond_8
    return-void
.end method

.method public setInsets(Landroid/graphics/Rect;)V
    .locals 1
    .param p1, "newInsets"    # Landroid/graphics/Rect;

    .prologue
    .line 1534
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInsets:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    .line 1535
    iget v0, p1, Landroid/graphics/Rect;->bottom:I

    iput v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mNavigationBarHeight:I

    .line 1536
    return-void
.end method

.method public setIsInAnimationFinish(Z)V
    .locals 0
    .param p1, "isInAnimationFinish"    # Z

    .prologue
    .line 1457
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mIsInAnimationFinish:Z

    .line 1458
    return-void
.end method

.method public setLayoutBottomMarginByKeyboardHeight(I)V
    .locals 3
    .param p1, "keyboardHeight"    # I

    .prologue
    .line 1344
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    .line 1345
    invoke-virtual {v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1346
    .local v1, "searchResultLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    .line 1347
    invoke-virtual {v2}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 1348
    .local v0, "searchHistoryLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    iput p1, v1, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1349
    iput p1, v0, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1350
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v2, v1}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1351
    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    invoke-virtual {v2, v0}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1352
    return-void
.end method

.method public setLayoutBottomMarginByResource(I)V
    .locals 5
    .param p1, "resourceId"    # I

    .prologue
    .line 1355
    if-lez p1, :cond_0

    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 1356
    .local v0, "marginBottom":I
    :goto_0
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v4

    add-int/2addr v0, v4

    .line 1357
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1358
    .local v3, "t9PanelLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout$LayoutParams;

    .line 1359
    .local v2, "searchResultLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    invoke-virtual {v4}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/FrameLayout$LayoutParams;

    .line 1360
    .local v1, "searchHistoryLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    invoke-virtual {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->getSoftwareKeyboardHeight()I

    move-result v4

    iput v4, v3, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1361
    iput v0, v2, Landroid/widget/RelativeLayout$LayoutParams;->bottomMargin:I

    .line 1362
    iput v0, v1, Landroid/widget/FrameLayout$LayoutParams;->bottomMargin:I

    .line 1363
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mT9Panel:Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;

    invoke-virtual {v4, v3}, Lnet/oneplus/h2launcher/inputmethod/T9/T9Panel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1364
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultContainer:Lcom/oneplus/lib/widget/recyclerview/RecyclerView;

    invoke-virtual {v4, v2}, Lcom/oneplus/lib/widget/recyclerview/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1365
    iget-object v4, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    invoke-virtual {v4, v1}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1366
    return-void

    .line 1355
    .end local v0    # "marginBottom":I
    .end local v1    # "searchHistoryLayoutParams":Landroid/widget/FrameLayout$LayoutParams;
    .end local v2    # "searchResultLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    .end local v3    # "t9PanelLayoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V
    .locals 0
    .param p1, "listener"    # Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .prologue
    .line 1481
    iput-object p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1482
    return-void
.end method

.method public setShouldDismiss(Z)V
    .locals 0
    .param p1, "shouldDismiss"    # Z

    .prologue
    .line 1529
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShouldDismiss:Z

    .line 1530
    return-void
.end method

.method public setShowAllAppSearchResult(Z)V
    .locals 0
    .param p1, "shouldShowAllAppSearchResult"    # Z

    .prologue
    .line 1521
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    .line 1522
    return-void
.end method

.method public setShowAllContactSearchResult(Z)V
    .locals 0
    .param p1, "shouldShowAllContactSearchResult"    # Z

    .prologue
    .line 1525
    iput-boolean p1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    .line 1526
    return-void
.end method

.method public setupIMEInputSearch()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1257
    invoke-virtual {p0, v1}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->setLayoutBottomMarginByResource(I)V

    .line 1258
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchHistoryScrollView:Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;

    invoke-virtual {v0, v1, v1}, Lnet/oneplus/h2launcher/customizations/OnePlusScrollView;->smoothScrollTo(II)V

    .line 1259
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 1260
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 1261
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 1262
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mInputMethodManager:Landroid/view/inputmethod/InputMethodManager;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchInputTextField:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1263
    new-instance v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;

    invoke-direct {v0, p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView$12;-><init>(Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;)V

    iput-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 1287
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 1288
    return-void
.end method

.method protected trimMemory(I)V
    .locals 5
    .param p1, "level"    # I

    .prologue
    .line 1369
    sget-object v0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->TAG:Ljava/lang/String;

    const-string v1, "[Trim Memory] globalSearchView, level:%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lnet/oneplus/h2launcher/util/Logger;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1371
    const/16 v0, 0x3c

    if-ne p1, v0, :cond_0

    .line 1372
    invoke-static {}, Lnet/oneplus/h2launcher/globalsearch/ContactImageCache;->clear()V

    .line 1374
    :cond_0
    return-void
.end method

.method public updateAllAppsList(Ljava/lang/String;Lnet/oneplus/h2launcher/AssetCache;)V
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "assetCache"    # Lnet/oneplus/h2launcher/AssetCache;

    .prologue
    .line 439
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    if-nez v1, :cond_0

    .line 440
    iput-object p2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAssetCache:Lnet/oneplus/h2launcher/AssetCache;

    .line 443
    :cond_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    if-eqz v1, :cond_2

    .line 444
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 445
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/oneplus/h2launcher/AppInfo;

    invoke-virtual {v1}, Lnet/oneplus/h2launcher/AppInfo;->getPkgName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppInfos:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 444
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 450
    .end local v0    # "i":I
    :cond_2
    return-void
.end method

.method public updateSearchResultAdapter()V
    .locals 3

    .prologue
    .line 1090
    invoke-direct {p0}, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->calculateResultContainerHeight()V

    .line 1091
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    if-eqz v0, :cond_0

    .line 1092
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    if-eqz v0, :cond_1

    .line 1093
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setResultList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 1102
    :goto_0
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    invoke-virtual {v0}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->notifyDataSetChanged()V

    .line 1104
    :cond_0
    return-void

    .line 1094
    :cond_1
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    if-eqz v0, :cond_2

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    if-nez v0, :cond_2

    .line 1095
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setResultList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1096
    :cond_2
    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllAppSearchResult:Z

    if-nez v0, :cond_3

    iget-boolean v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mShowAllContactSearchResult:Z

    if-eqz v0, :cond_3

    .line 1097
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setResultList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 1099
    :cond_3
    iget-object v0, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mSearchResultAdapter:Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;

    iget-object v1, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mAppSubResultList:Ljava/util/ArrayList;

    iget-object v2, p0, Lnet/oneplus/h2launcher/globalsearch/GlobalSearchView;->mContactSubResultList:Ljava/util/ArrayList;

    invoke-virtual {v0, v1, v2}, Lnet/oneplus/h2launcher/globalsearch/SearchResultAdapter;->setResultList(Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0
.end method
