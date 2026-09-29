package net.oneplus.h2launcher.globalsearch;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.AnimatorSet;
import android.animation.ObjectAnimator;
import android.app.Activity;
import android.app.AlertDialog;
import android.content.ComponentName;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.graphics.Color;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.provider.ContactsContract;
import android.support.v4.content.ContextCompat;
import android.text.Editable;
import android.text.TextUtils;
import android.text.TextWatcher;
import android.util.AttributeSet;
import android.util.Log;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewConfiguration;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.animation.Interpolator;
import android.view.animation.PathInterpolator;
import android.view.inputmethod.InputMethodManager;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.GridView;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ListAdapter;
import android.widget.ListPopupWindow;
import android.widget.ListView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.oneplus.lib.widget.recyclerview.GridLayoutManager;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import net.oneplus.h2launcher.AppInfo;
import net.oneplus.h2launcher.AssetCache;
import net.oneplus.h2launcher.InsettableFrameLayout;
import net.oneplus.h2launcher.ItemInfo;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.LauncherAppState;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;
import net.oneplus.h2launcher.compat.LauncherAppsCompat;
import net.oneplus.h2launcher.compat.UserHandleCompat;
import net.oneplus.h2launcher.compat.UserManagerCompat;
import net.oneplus.h2launcher.customizations.OnePlusScrollView;
import net.oneplus.h2launcher.inputmethod.T9.HanyuPinyinHelper;
import net.oneplus.h2launcher.inputmethod.T9.PinyinUnit;
import net.oneplus.h2launcher.inputmethod.T9.PinyinUtil;
import net.oneplus.h2launcher.inputmethod.T9.T9MatchPinyinUnits;
import net.oneplus.h2launcher.inputmethod.T9.T9Panel;
import net.oneplus.h2launcher.util.Logger;
import net.oneplus.h2launcher.util.PermissionUtils;
import net.oneplus.h2launcher.util.TaskWorker;

/* loaded from: classes.dex */
public class GlobalSearchView extends InsettableFrameLayout implements View.OnClickListener, T9Panel.OnPanelClickedListener {
    private static final long EXIT_ANIMATION_DURATION = 200;
    private static final double GRID_VIEW_NUM_COLUMNS = 5.0d;
    private static final int IME_SEARCH_INPUT = 0;
    public static final int MAX_HISTORY_RECORD = 10;
    public static final int RECYCLER_VIEW_NUM_COLUMNS = 5;
    public static final String SEARCH_INPUT = "search_input";
    public static final String SEARCH_INPUT_SETTING = "search_input_setting";
    private static final int T9_SEARCH_INPUT = 1;
    private GlobalSearchAnimationHelper mAnimationHelper;
    private ArrayList<AppData> mAppHistoryList;
    private ArrayList<AppInfo> mAppInfos;
    private ArrayList<String> mAppNameList;
    private HashMap<Integer, ArrayList<PinyinUnit>> mAppPinyinUnits;
    private ArrayList<AppData> mAppResultList;
    private AppSearchHistoryAdapter mAppSearchHistoryAdapter;
    private ArrayList<AppData> mAppSubResultList;
    private boolean mAppsHasInitialized;
    private SearchHistoryGridView mAppsSearchHistoryGridView;
    private TextView mAppsSearchHistoryTitleView;
    private AssetCache mAssetCache;
    private ArrayList<ContactData> mContactHistoryList;
    private CopyOnWriteArrayList<ContactData> mContactInfos;
    private CopyOnWriteArrayList<String> mContactNameList;
    private ConcurrentHashMap<Integer, ArrayList<PinyinUnit>> mContactPinyinUnits;
    private ArrayList<ContactData> mContactResultList;
    private ContactSearchHistoryAdapter mContactSearchHistoryAdapter;
    private ArrayList<ContactData> mContactSubResultList;
    private boolean mContactsHasInitialized;
    private SearchHistoryGridView mContactsSearchHistoryGridView;
    private TextView mContactsSearchHistoryTitleView;
    private Context mContext;
    private AlertDialog mDialog;
    ViewTreeObserver.OnGlobalLayoutListener mGlobalLayoutListener;
    private int mGridItemHeight;
    private HanyuPinyinHelper mHanyuPinyinHelper;
    private boolean mHasChangeInputMethod;
    private InputMethodManager mInputMethodManager;
    private boolean mIsInAnimationFinish;
    private boolean mIsT9Search;
    private AnimatorSet mKeyboardDismissAnimatorSet;
    private int mLastSearchTextLength;
    private int mLastSoftwareKeyboardHeight;
    private Launcher mLauncher;
    private ListPopupWindow mListPopupWindow;
    private ArrayAdapter mListPopupWindowAdapter;
    private int mNavigationBarHeight;
    private List<ComponentName> mNeedRefreshCallbackApps;
    private String[] mPopupMenuItems;
    private boolean mResultShow;
    private View mSearchContainer;
    private View mSearchContainerMask;
    private int mSearchContainerTitleHeight;
    private View mSearchHistoryAppBackground;
    private View mSearchHistoryAppContainer;
    private int mSearchHistoryAppsHeight;
    private View mSearchHistoryContactBackground;
    private View mSearchHistoryContactContainer;
    private int mSearchHistoryContactsHeight;
    private View mSearchHistoryContainer;
    private int mSearchHistoryContainerHeight;
    private OnePlusScrollView mSearchHistoryScrollView;
    private int mSearchInput;
    private int mSearchInputAreaHeight;
    private View mSearchInputContainer;
    private EditText mSearchInputTextField;
    private ImageView mSearchMenu;
    private SearchResultAdapter mSearchResultAdapter;
    private int mSearchResultAppsHeight;
    private int mSearchResultContactsHeight;
    private RecyclerView mSearchResultContainer;
    private int mSearchResultContainerHeight;
    private int mSearchResultMarginBottom;
    private boolean mShouldDismiss;
    private boolean mShowAllAppSearchResult;
    private boolean mShowAllContactSearchResult;
    private int mSoftwareKeyboardHeight;
    private Stats mStats;
    private T9Panel mT9Panel;
    private TextWatcher mTextWatcher;
    int mTotalContacts;
    private float mTouchSlop;
    public static final String TAG = GlobalSearchView.class.getSimpleName();
    private static Interpolator sKeyboardInterpolator = new PathInterpolator(0.4f, 0.0f, 0.2f, 1.0f);
    private static final Drawable sBlackBackground = new ColorDrawable(0);

    public GlobalSearchView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mAppNameList = new ArrayList<>();
        this.mContactNameList = new CopyOnWriteArrayList<>();
        this.mAppPinyinUnits = new HashMap<>();
        this.mContactPinyinUnits = new ConcurrentHashMap<>();
        this.mContactInfos = new CopyOnWriteArrayList<>();
        this.mAppResultList = new ArrayList<>();
        this.mContactResultList = new ArrayList<>();
        this.mAppSubResultList = new ArrayList<>();
        this.mContactSubResultList = new ArrayList<>();
        this.mAppHistoryList = new ArrayList<>();
        this.mContactHistoryList = new ArrayList<>();
        this.mAppSearchHistoryAdapter = null;
        this.mContactSearchHistoryAdapter = null;
        this.mDialog = null;
        this.mListPopupWindow = null;
        this.mListPopupWindowAdapter = null;
        this.mGlobalLayoutListener = null;
        this.mSearchInput = 0;
        this.mIsT9Search = true;
        this.mIsInAnimationFinish = false;
        this.mShouldDismiss = false;
        this.mKeyboardDismissAnimatorSet = null;
        this.mTotalContacts = 0;
        this.mAppsHasInitialized = false;
        this.mContactsHasInitialized = false;
        this.mResultShow = false;
        this.mLastSearchTextLength = 0;
        this.mHasChangeInputMethod = false;
        this.mSearchResultAppsHeight = 0;
        this.mSearchResultContactsHeight = 0;
        this.mSearchHistoryAppsHeight = 0;
        this.mSearchHistoryContactsHeight = 0;
        this.mSearchResultContainerHeight = 0;
        this.mSearchHistoryContainerHeight = 0;
        this.mShowAllAppSearchResult = false;
        this.mShowAllContactSearchResult = false;
        this.mSoftwareKeyboardHeight = 0;
        this.mLastSoftwareKeyboardHeight = 0;
        this.mHanyuPinyinHelper = null;
        this.mNeedRefreshCallbackApps = new ArrayList();
        this.mTextWatcher = new TextWatcher() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.1
            @Override // android.text.TextWatcher
            public void beforeTextChanged(CharSequence s, int start, int count, int after) {
                GlobalSearchView.this.mLastSearchTextLength = s.length();
                if (GlobalSearchView.this.mLastSearchTextLength == 0) {
                    GlobalSearchView.this.mHasChangeInputMethod = false;
                }
            }

            @Override // android.text.TextWatcher
            public void onTextChanged(CharSequence s, int start, int before, int count) {
                GlobalSearchView.this.mAnimationHelper.cancelAnimator();
                if (s.length() > 0) {
                    if (GlobalSearchView.this.mIsT9Search) {
                        GlobalSearchView.this.doAppsT9Search(s);
                        GlobalSearchView.this.doContactsT9Search(s);
                    } else {
                        GlobalSearchView.this.doAppsIMESearch(s);
                        GlobalSearchView.this.doContactsIMESearch(s);
                    }
                    GlobalSearchView.this.mSearchResultContainer.setVisibility(0);
                    GlobalSearchView.this.updateSearchResultAdapter();
                    if (GlobalSearchView.this.mLastSearchTextLength == 0) {
                        GlobalSearchView.this.mResultShow = true;
                        GlobalSearchView.this.mAnimationHelper.runSearchResultAnimation(true);
                        return;
                    }
                    return;
                }
                if (GlobalSearchView.this.mLastSearchTextLength != 0) {
                    GlobalSearchView.this.mResultShow = false;
                    if (!GlobalSearchView.this.mHasChangeInputMethod) {
                        GlobalSearchView.this.mAnimationHelper.runSearchResultAnimation(false);
                    } else {
                        GlobalSearchView.this.initAppsHistory();
                        GlobalSearchView.this.initContactsHistory();
                        GlobalSearchView.this.mHasChangeInputMethod = false;
                    }
                    GlobalSearchView.this.mSearchInputContainer.setBackgroundResource(R.drawable.global_search_input_card);
                }
            }

            @Override // android.text.TextWatcher
            public void afterTextChanged(Editable s) {
            }
        };
        this.mContext = context;
        this.mLauncher = (Launcher) this.mContext;
        this.mTouchSlop = ViewConfiguration.get(this.mContext).getScaledTouchSlop();
        LayoutInflater inflater = LayoutInflater.from(context);
        View view = inflater.inflate(R.layout.activity_search, (ViewGroup) null);
        this.mAppInfos = LauncherAppState.getInstance().getModel().getAllAppsList();
        this.mGridItemHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.search_grid_item_height);
        this.mSearchInputAreaHeight = context.getResources().getDimensionPixelSize(R.dimen.result_margin_top);
        this.mSearchContainerTitleHeight = this.mContext.getResources().getDimensionPixelSize(R.dimen.search_container_title_height);
        this.mSearchResultMarginBottom = this.mContext.getResources().getDimensionPixelSize(R.dimen.result_margin_bottom);
        this.mPopupMenuItems = this.mContext.getResources().getStringArray(R.array.global_search_popup_menu_items);
        addView(view);
        initView(view);
        initPopupMenu();
        initListener();
        this.mAssetCache = this.mLauncher.getAssetCache();
        this.mStats = this.mLauncher.getStats();
        this.mHanyuPinyinHelper = new HanyuPinyinHelper(this.mContext.getApplicationContext());
        this.mInputMethodManager = (InputMethodManager) this.mContext.getSystemService("input_method");
        this.mAnimationHelper = new GlobalSearchAnimationHelper(this.mContext);
        this.mAnimationHelper.setGlobalSearchView(this);
    }

    public void queryContactsDb() {
        this.mTotalContacts = 0;
        this.mContactInfos.clear();
        Uri queryUri = ContactsContract.Contacts.CONTENT_URI;
        String[] projection = {GlobalSearchDbHelper.COLUMN_ID, GlobalSearchDbHelper.DISPLAY_NAME, "photo_thumb_uri"};
        Cursor cursor = this.mContext.getContentResolver().query(queryUri, projection, null, null, null);
        while (cursor != null && cursor.moveToNext()) {
            String contactId = cursor.getString(cursor.getColumnIndex(GlobalSearchDbHelper.COLUMN_ID));
            String title = cursor.getString(cursor.getColumnIndex(GlobalSearchDbHelper.DISPLAY_NAME));
            if (contactId == null || title == null) {
                Logger.d(TAG, "Contact id or name is null !!!");
            } else {
                Intent intent = new Intent("android.intent.action.VIEW");
                Uri uri = Uri.withAppendedPath(ContactsContract.Contacts.CONTENT_URI, String.valueOf(contactId));
                intent.setData(uri);
                String photo = cursor.getString(cursor.getColumnIndex("photo_thumb_uri"));
                this.mContactInfos.add(new ContactData(String.valueOf(contactId), title, photo == null ? null : Uri.parse(photo), intent));
                this.mTotalContacts++;
            }
        }
        if (this.mStats != null) {
            SQLiteDatabase db = this.mStats.getGlobalSearchDbHelper().getWritableDatabase();
            ArrayList<String> contactIds = this.mStats.getContactIdList();
            if (contactIds != null && contactIds.size() > 0) {
                boolean found = false;
                for (int i = 0; i < contactIds.size(); i++) {
                    int j = 0;
                    while (true) {
                        if (j >= this.mContactInfos.size()) {
                            break;
                        }
                        if (!this.mContactInfos.get(j).getId().equals(contactIds.get(i))) {
                            j++;
                        } else {
                            found = true;
                            break;
                        }
                    }
                    if (!found) {
                        db.delete(GlobalSearchDbHelper.CONTACT_TABLE_NAME, "_id=?", new String[]{contactIds.get(i)});
                    }
                }
            }
        }
        if (cursor != null) {
            cursor.close();
        }
    }

    public void getContactsDb(boolean updateUI) {
        queryContactsDb();
        initContactNameList();
        if (updateUI) {
            this.mLauncher.runOnUiThread(new Runnable() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.2
                @Override // java.lang.Runnable
                public void run() {
                    GlobalSearchView.this.initContactsHistory();
                }
            });
        }
    }

    public void initInputBackground() {
        this.mSearchInputTextField.setTextSize(14.0f);
        this.mSearchContainerMask.setAlpha(0.0f);
        this.mSearchContainerMask.setBackgroundColor(-16777216);
        initAppsHistory();
        initContactsHistory();
        this.mSearchHistoryContainerHeight = this.mSearchHistoryAppsHeight + this.mSearchHistoryContactsHeight;
    }

    private void calculateResultContainerHeight() {
        if (this.mShowAllAppSearchResult) {
            if (this.mAppResultList.size() == 0) {
                this.mSearchResultAppsHeight = 0;
            } else {
                this.mSearchResultAppsHeight = (int) ((Math.ceil(this.mAppResultList.size() / GRID_VIEW_NUM_COLUMNS) * this.mGridItemHeight) + this.mSearchContainerTitleHeight);
            }
        } else if (this.mAppSubResultList.size() == 0) {
            this.mSearchResultAppsHeight = 0;
        } else {
            this.mSearchResultAppsHeight = this.mGridItemHeight + this.mSearchContainerTitleHeight;
        }
        if (this.mShowAllContactSearchResult) {
            if (this.mContactResultList.size() == 0) {
                this.mSearchResultContactsHeight = 0;
            } else {
                this.mSearchResultContactsHeight = (int) ((Math.ceil(this.mContactResultList.size() / GRID_VIEW_NUM_COLUMNS) * this.mGridItemHeight) + this.mSearchContainerTitleHeight);
            }
        } else if (this.mContactSubResultList.size() == 0) {
            this.mSearchResultContactsHeight = 0;
        } else {
            this.mSearchResultContactsHeight = this.mGridItemHeight + this.mSearchContainerTitleHeight;
        }
        this.mSearchResultContainerHeight = this.mSearchResultAppsHeight + this.mSearchResultContactsHeight + this.mSearchResultMarginBottom;
    }

    public Drawable getSearchResultContainerBackground() {
        return sBlackBackground;
    }

    public List<ComponentName> getNeedRefreshCallbackApps() {
        return this.mNeedRefreshCallbackApps;
    }

    public float getHSL(int color) {
        float r = Color.red(color);
        float g = Color.green(color);
        float b = Color.blue(color);
        float max = Math.max(r, Math.max(g, b));
        float min = Math.min(r, Math.min(g, b));
        float l = (max + min) / 2.0f;
        return l;
    }

    public void init() {
        if (!this.mIsInAnimationFinish) {
            ((Launcher) this.mContext).getWindow().setSoftInputMode(48);
            SharedPreferences searchInputSetting = this.mContext.getSharedPreferences(SEARCH_INPUT_SETTING, 0);
            this.mSearchInput = searchInputSetting.getInt(SEARCH_INPUT, 0);
            this.mIsT9Search = this.mSearchInput == 1;
            this.mHasChangeInputMethod = false;
            this.mSearchContainer.setAlpha(1.0f);
            this.mLauncher.getPageIndicator().setVisibility(4);
            initAppNameList();
            if (this.mLauncher.isNeedUpdateContactDb() && PermissionUtils.hasGrantedPermission(this.mContext, "android.permission.READ_CONTACTS")) {
                this.mLauncher.setNeedUpdateContactDb(false);
                TaskWorker.get().post(new Runnable() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.3
                    @Override // java.lang.Runnable
                    public void run() {
                        GlobalSearchView.this.mStats.loadContactsHistory();
                        GlobalSearchView.this.getContactsDb(true);
                    }
                });
            }
            if (this.mNeedRefreshCallbackApps != null) {
                this.mNeedRefreshCallbackApps.clear();
            }
            enterAnimation();
        }
    }

    public void cancelAnimation() {
        this.mAnimationHelper.cancelAnimator();
    }

    public boolean isAnimating() {
        return this.mAnimationHelper.isAnimating();
    }

    public void onPackageAdded(String packageName, UserHandleCompat user, AssetCache assetCache) {
        LauncherAppsCompat launcherApps = LauncherAppsCompat.getInstance(this.mContext);
        List<LauncherActivityInfoCompat> matches = launcherApps.getActivityList(packageName, user);
        for (LauncherActivityInfoCompat info : matches) {
            if (this.mAppInfos != null) {
                this.mAppInfos.add(new AppInfo(this.mContext, info, user, this.mAssetCache));
            }
        }
    }

    public void updateAllAppsList(String packageName, AssetCache assetCache) {
        if (this.mAssetCache == null) {
            this.mAssetCache = assetCache;
        }
        if (this.mAppInfos != null) {
            for (int i = 0; i < this.mAppInfos.size(); i++) {
                if (this.mAppInfos.get(i).getPkgName().equals(packageName)) {
                    this.mAppInfos.remove(i);
                }
            }
        }
    }

    public void initAppsHistory() {
        if (!this.mAppsHasInitialized) {
            this.mAppsHasInitialized = true;
            if (!this.mStats.loadAppsHistory(false)) {
                if (this.mAppHistoryList != null) {
                    this.mAppHistoryList.clear();
                } else {
                    Logger.w(TAG, "initAppsHistory - mAppsHistoryList is null.");
                }
                if (this.mAppSearchHistoryAdapter != null) {
                    this.mAppSearchHistoryAdapter.notifyDataSetChanged();
                    return;
                } else {
                    Logger.w(TAG, "initAppsHistory - mAppsSearchHistoryAdapter is null.");
                    return;
                }
            }
        }
        this.mAppHistoryList.clear();
        Iterator<ComponentName> it = this.mStats.getOrderedAppList().iterator();
        while (it.hasNext()) {
            ComponentName componentName = it.next();
            if (this.mAppHistoryList.size() < 10) {
                int i = 0;
                while (true) {
                    if (i < this.mAppInfos.size()) {
                        AppInfo appInfo = this.mAppInfos.get(i);
                        if (!componentName.equals(appInfo.componentName)) {
                            i++;
                        } else {
                            this.mAppHistoryList.add(new AppData(appInfo));
                            break;
                        }
                    }
                }
            }
        }
        if (this.mAppSearchHistoryAdapter != null) {
            padTrailingSearchHistory();
            this.mAppSearchHistoryAdapter.notifyDataSetChanged();
        }
        if (this.mAppHistoryList.size() == 0) {
            this.mAppsSearchHistoryTitleView.setVisibility(8);
            this.mAppsSearchHistoryGridView.setVisibility(8);
            this.mSearchHistoryAppsHeight = 0;
        } else {
            this.mAppsSearchHistoryTitleView.setVisibility(0);
            this.mAppsSearchHistoryGridView.setVisibility(0);
            this.mSearchHistoryAppsHeight = (int) ((Math.ceil(this.mAppHistoryList.size() / GRID_VIEW_NUM_COLUMNS) * this.mGridItemHeight) + this.mSearchContainerTitleHeight);
        }
    }

    public void initContactsHistory() {
        if (!this.mContactsHasInitialized) {
            this.mContactsHasInitialized = true;
            if (!this.mStats.loadContactsHistory()) {
                if (this.mContactHistoryList != null) {
                    this.mContactHistoryList.clear();
                } else {
                    Logger.w(TAG, "initContactsHistory - mContactsHistoryList is null.");
                }
                if (this.mContactSearchHistoryAdapter != null) {
                    this.mContactSearchHistoryAdapter.notifyDataSetChanged();
                    return;
                } else {
                    Logger.w(TAG, "initContactsHistory - mContactsSearchHistoryAdapter is null.");
                    return;
                }
            }
        }
        this.mContactHistoryList.clear();
        Iterator<String> it = this.mStats.getOrderedContactList().iterator();
        while (it.hasNext()) {
            String displayName = it.next();
            if (this.mContactHistoryList.size() < 10) {
                int i = 0;
                while (true) {
                    if (i < this.mContactInfos.size()) {
                        ContactData contactData = this.mContactInfos.get(i);
                        if (!displayName.equals(contactData.getDisplayName())) {
                            i++;
                        } else {
                            this.mContactHistoryList.add(contactData);
                            break;
                        }
                    }
                }
            }
        }
        if (this.mContactSearchHistoryAdapter != null) {
            padTrailingSearchHistory();
            this.mContactSearchHistoryAdapter.notifyDataSetChanged();
        }
        if (this.mContactHistoryList.size() == 0) {
            this.mSearchHistoryContactBackground.setVisibility(8);
            this.mContactsSearchHistoryTitleView.setVisibility(8);
            this.mContactsSearchHistoryGridView.setVisibility(8);
            this.mSearchHistoryContactsHeight = 0;
            return;
        }
        this.mSearchHistoryContactBackground.setVisibility(0);
        this.mContactsSearchHistoryTitleView.setVisibility(0);
        this.mContactsSearchHistoryGridView.setVisibility(0);
        this.mSearchHistoryContactsHeight = (int) ((Math.ceil(this.mContactHistoryList.size() / GRID_VIEW_NUM_COLUMNS) * this.mGridItemHeight) + this.mSearchContainerTitleHeight);
    }

    private void padTrailingSearchResult() {
        int AppResultSize = this.mAppResultList.size();
        if (AppResultSize % 5 != 0) {
            int num = 5 - (AppResultSize % 5);
            for (int i = 0; i < num; i++) {
                this.mAppResultList.add(new AppData());
                if (AppResultSize < 5) {
                    this.mAppSubResultList.add(new AppData());
                }
            }
        }
        int contactResultSize = this.mContactResultList.size();
        if (contactResultSize % 5 != 0) {
            int num2 = 5 - (contactResultSize % 5);
            for (int i2 = 0; i2 < num2; i2++) {
                this.mContactResultList.add(new EmptyContactData());
                if (contactResultSize < 5) {
                    this.mContactSubResultList.add(new EmptyContactData());
                }
            }
        }
    }

    private void padTrailingSearchHistory() {
        int AppHistorySize = this.mAppHistoryList.size();
        if (AppHistorySize % 5 != 0) {
            int num = 5 - (AppHistorySize % 5);
            for (int i = 0; i < num; i++) {
                this.mAppHistoryList.add(new AppData());
            }
        }
        int contactHistorySize = this.mContactHistoryList.size();
        if (contactHistorySize % 5 != 0) {
            int num2 = 5 - (contactHistorySize % 5);
            for (int i2 = 0; i2 < num2; i2++) {
                this.mContactHistoryList.add(new EmptyContactData());
            }
        }
    }

    private void initView(View view) {
        this.mSearchContainer = view.findViewById(R.id.search_container);
        this.mSearchContainerMask = view.findViewById(R.id.search_container_mask);
        this.mSearchInputContainer = view.findViewById(R.id.search_input_container);
        this.mSearchInputTextField = (EditText) view.findViewById(R.id.search_input_text_field);
        this.mSearchInputContainer.setVisibility(4);
        this.mSearchMenu = (ImageView) view.findViewById(R.id.search_input_text_menu);
        this.mSearchHistoryContainer = (LinearLayout) view.findViewById(R.id.search_history_container);
        this.mSearchHistoryAppBackground = (LinearLayout) view.findViewById(R.id.search_history_app_background);
        this.mSearchHistoryAppContainer = (LinearLayout) view.findViewById(R.id.search_history_app_container);
        this.mSearchHistoryContactBackground = (LinearLayout) view.findViewById(R.id.search_history_contact_background);
        this.mSearchHistoryContactContainer = (LinearLayout) view.findViewById(R.id.search_history_contact_container);
        this.mSearchHistoryScrollView = (OnePlusScrollView) view.findViewById(R.id.search_history_container_scrollview);
        this.mAppsSearchHistoryGridView = (SearchHistoryGridView) view.findViewById(R.id.search_history_grid_view);
        this.mContactsSearchHistoryGridView = (SearchHistoryGridView) view.findViewById(R.id.contacts_history_result_grid_view);
        this.mSearchResultContainer = (RecyclerView) findViewById(R.id.search_result_container);
        this.mSearchHistoryAppContainer.setOnTouchListener(new OnTouchListener());
        this.mSearchHistoryContactContainer.setOnTouchListener(new OnTouchListener());
        this.mAppsSearchHistoryGridView.setOnTouchListener(new OnTouchListener());
        this.mContactsSearchHistoryGridView.setOnTouchListener(new OnTouchListener());
        this.mSearchResultContainer.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.4
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                super.onScrollStateChanged(recyclerView, newState);
                if (GlobalSearchView.this.mIsT9Search) {
                    if (GlobalSearchView.this.mT9Panel.isShown() && !GlobalSearchView.this.mAnimationHelper.T9KeyboardIsAnimating()) {
                        GlobalSearchView.this.mAnimationHelper.runKeyboardDismissAnimation(GlobalSearchView.this.mT9Panel);
                        return;
                    }
                    return;
                }
                if (GlobalSearchView.this.mInputMethodManager != null) {
                    GlobalSearchView.this.mInputMethodManager.hideSoftInputFromWindow(GlobalSearchView.this.mSearchInputTextField.getWindowToken(), 0);
                }
            }

            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
                super.onScrolled(recyclerView, dx, dy);
            }
        });
        this.mAppsSearchHistoryTitleView = (TextView) view.findViewById(R.id.history_container_title);
        this.mContactsSearchHistoryTitleView = (TextView) view.findViewById(R.id.contacts_history_container_title);
        if (this.mAppsSearchHistoryGridView != null) {
            this.mAppSearchHistoryAdapter = new AppSearchHistoryAdapter(this.mContext, this.mAppHistoryList);
            this.mAppsSearchHistoryGridView.setAdapter((ListAdapter) this.mAppSearchHistoryAdapter);
        }
        if (this.mContactsSearchHistoryGridView != null) {
            this.mContactSearchHistoryAdapter = new ContactSearchHistoryAdapter(this.mContext, this.mContactHistoryList);
            this.mContactsSearchHistoryGridView.setAdapter((ListAdapter) this.mContactSearchHistoryAdapter);
        }
        if (this.mSearchResultContainer != null) {
            this.mSearchResultAdapter = new SearchResultAdapter(this.mContext, this.mAppResultList, this.mContactResultList, this);
            this.mSearchResultContainer.setAdapter(this.mSearchResultAdapter);
            final GridLayoutManager layoutManager = new GridLayoutManager(this.mContext, 5);
            layoutManager.setSpanSizeLookup(new GridLayoutManager.SpanSizeLookup() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.5
                @Override // com.oneplus.lib.widget.recyclerview.GridLayoutManager.SpanSizeLookup
                public int getSpanSize(int position) {
                    if (GlobalSearchView.this.mSearchResultAdapter.isHeader(position) || GlobalSearchView.this.mSearchResultAdapter.isSearchOnline(position)) {
                        return layoutManager.getSpanCount();
                    }
                    return 1;
                }
            });
            this.mSearchResultContainer.setLayoutManager(layoutManager);
        }
        this.mT9Panel = (T9Panel) view.findViewById(R.id.t9_panel);
        this.mT9Panel.init(this);
        this.mT9Panel.setOnClickHandler(this);
        this.mT9Panel.setOnTouchListener(new T9PanelTouchListener());
        this.mSearchResultContainer.setOnTouchListener(new ScrollViewOnTouchListener());
        this.mSearchHistoryScrollView.setOnTouchListener(new ScrollViewOnTouchListener());
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class ScrollViewOnTouchListener implements View.OnTouchListener {
        float mDownX;
        float mDownY;

        public ScrollViewOnTouchListener() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x000a, code lost:
        
            return false;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r14, android.view.MotionEvent r15) {
            /*
                r13 = this;
                r12 = 0
                r10 = 4611686018427387904(0x4000000000000000, double:2.0)
                int r0 = r15.getAction()
                switch(r0) {
                    case 0: goto Lb;
                    case 1: goto L79;
                    case 2: goto L18;
                    case 3: goto L79;
                    default: goto La;
                }
            La:
                return r12
            Lb:
                float r5 = r15.getX()
                r13.mDownX = r5
                float r5 = r15.getY()
                r13.mDownY = r5
                goto La
            L18:
                float r5 = r13.mDownY
                float r6 = r15.getY()
                float r5 = r5 - r6
                float r4 = java.lang.Math.abs(r5)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                float r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1600(r5)
                int r5 = (r4 > r5 ? 1 : (r4 == r5 ? 0 : -1))
                if (r5 < 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                boolean r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$300(r5)
                if (r5 == 0) goto L5d
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.inputmethod.T9.T9Panel r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1200(r5)
                boolean r5 = r5.isShown()
                if (r5 == 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$200(r5)
                boolean r5 = r5.T9KeyboardIsAnimating()
                if (r5 != 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$200(r5)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.inputmethod.T9.T9Panel r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1200(r6)
                r5.runKeyboardDismissAnimation(r6)
                goto La
            L5d:
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.view.inputmethod.InputMethodManager r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1300(r5)
                if (r5 == 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.view.inputmethod.InputMethodManager r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1300(r5)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.widget.EditText r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1400(r6)
                android.os.IBinder r6 = r6.getWindowToken()
                r5.hideSoftInputFromWindow(r6, r12)
                goto La
            L79:
                float r5 = r13.mDownX
                float r6 = r15.getX()
                float r5 = r5 - r6
                float r2 = java.lang.Math.abs(r5)
                float r5 = r13.mDownY
                float r6 = r15.getY()
                float r5 = r5 - r6
                float r3 = java.lang.Math.abs(r5)
                double r6 = (double) r2
                double r6 = java.lang.Math.pow(r6, r10)
                double r8 = (double) r3
                double r8 = java.lang.Math.pow(r8, r10)
                double r6 = r6 + r8
                r8 = 4602678819172646912(0x3fe0000000000000, double:0.5)
                double r6 = java.lang.Math.pow(r6, r8)
                float r1 = (float) r6
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                float r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1600(r5)
                int r5 = (r1 > r5 ? 1 : (r1 == r5 ? 0 : -1))
                if (r5 >= 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                boolean r5 = r5.isAnimating()
                if (r5 != 0) goto La
                float r5 = r13.mDownY
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                int r6 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1700(r6)
                float r6 = (float) r6
                int r5 = (r5 > r6 ? 1 : (r5 == r6 ? 0 : -1))
                if (r5 <= 0) goto La
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                r5.cancelAnimation()
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r5 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                r5.exitAnimation()
                goto La
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.globalsearch.GlobalSearchView.ScrollViewOnTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* loaded from: classes.dex */
    public class OnTouchListener implements View.OnTouchListener {
        float mDownY;

        public OnTouchListener() {
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        /* JADX WARN: Code restructure failed: missing block: B:3:0x0008, code lost:
        
            return false;
         */
        @Override // android.view.View.OnTouchListener
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public boolean onTouch(android.view.View r6, android.view.MotionEvent r7) {
            /*
                r5 = this;
                r4 = 0
                int r0 = r7.getAction()
                switch(r0) {
                    case 0: goto L9;
                    case 1: goto L8;
                    case 2: goto L10;
                    default: goto L8;
                }
            L8:
                return r4
            L9:
                float r2 = r7.getY()
                r5.mDownY = r2
                goto L8
            L10:
                float r2 = r5.mDownY
                float r3 = r7.getY()
                float r2 = r2 - r3
                float r1 = java.lang.Math.abs(r2)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                float r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1600(r2)
                int r2 = (r1 > r2 ? 1 : (r1 == r2 ? 0 : -1))
                if (r2 < 0) goto L8
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                boolean r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$300(r2)
                if (r2 == 0) goto L55
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.inputmethod.T9.T9Panel r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1200(r2)
                boolean r2 = r2.isShown()
                if (r2 == 0) goto L8
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$200(r2)
                boolean r2 = r2.T9KeyboardIsAnimating()
                if (r2 != 0) goto L8
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.globalsearch.GlobalSearchAnimationHelper r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$200(r2)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r3 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                net.oneplus.h2launcher.inputmethod.T9.T9Panel r3 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1200(r3)
                r2.runKeyboardDismissAnimation(r3)
                goto L8
            L55:
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.view.inputmethod.InputMethodManager r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1300(r2)
                if (r2 == 0) goto L8
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.view.inputmethod.InputMethodManager r2 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1300(r2)
                net.oneplus.h2launcher.globalsearch.GlobalSearchView r3 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.this
                android.widget.EditText r3 = net.oneplus.h2launcher.globalsearch.GlobalSearchView.access$1400(r3)
                android.os.IBinder r3 = r3.getWindowToken()
                r2.hideSoftInputFromWindow(r3, r4)
                goto L8
            */
            throw new UnsupportedOperationException("Method not decompiled: net.oneplus.h2launcher.globalsearch.GlobalSearchView.OnTouchListener.onTouch(android.view.View, android.view.MotionEvent):boolean");
        }
    }

    /* loaded from: classes.dex */
    public class T9PanelTouchListener implements View.OnTouchListener {
        float mDownY;

        public T9PanelTouchListener() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            int action = event.getAction();
            switch (action) {
                case 0:
                    this.mDownY = event.getY();
                    return false;
                case 1:
                default:
                    return false;
                case 2:
                    if (event.getY() - this.mDownY >= GlobalSearchView.this.mTouchSlop && GlobalSearchView.this.mT9Panel.isShown() && !GlobalSearchView.this.mAnimationHelper.T9KeyboardIsAnimating()) {
                        GlobalSearchView.this.mAnimationHelper.runKeyboardDismissAnimation(GlobalSearchView.this.mT9Panel);
                        return false;
                    }
                    return false;
            }
        }
    }

    private void initPopupMenu() {
        final Resources res = this.mContext.getResources();
        this.mListPopupWindow = new ListPopupWindow(this.mContext);
        this.mListPopupWindowAdapter = new ArrayAdapter(this.mContext, R.layout.activity_search_popup_menu, new ArrayList(Arrays.asList(this.mPopupMenuItems)));
        this.mListPopupWindow.setAdapter(this.mListPopupWindowAdapter);
        SharedPreferences searchInputSetting = this.mContext.getSharedPreferences(SEARCH_INPUT_SETTING, 0);
        this.mSearchInput = searchInputSetting.getInt(SEARCH_INPUT, 0);
        if (this.mSearchInput == 1) {
            this.mListPopupWindowAdapter.remove(res.getString(R.string.quick_search_input_method));
        } else if (this.mSearchInput == 0) {
            this.mListPopupWindowAdapter.remove(res.getString(R.string.normal_search_input_method));
        } else {
            Log.w(TAG, "unexpected input method");
        }
        this.mListPopupWindowAdapter.notifyDataSetChanged();
        this.mListPopupWindow.setAnchorView(this.mSearchMenu);
        this.mListPopupWindow.setModal(true);
        this.mListPopupWindow.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.6
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> parent, View view, int position, long id) {
                switch ((int) id) {
                    case 0:
                        String selected = (String) parent.getItemAtPosition(position);
                        boolean t9Input = selected.equals(res.getString(R.string.quick_search_input_method));
                        ((Launcher) GlobalSearchView.this.mContext).getWindow().setSoftInputMode(48);
                        GlobalSearchView.this.selectInputMethod(t9Input);
                        break;
                    case 1:
                        GlobalSearchView.this.clearSearchHistory();
                        break;
                }
                GlobalSearchView.this.mListPopupWindow.dismiss();
            }
        });
    }

    private void updatePopupMenu() {
        Drawable drawable;
        Resources res = this.mContext.getResources();
        Rect popupRect = new Rect();
        ListPopupWindow listPopupWindow = this.mListPopupWindow;
        if (Utilities.isDarkModeTheme(this.mLauncher)) {
            drawable = ContextCompat.getDrawable(this.mContext, R.drawable.quantum_popup_menu_dark);
        } else {
            drawable = ContextCompat.getDrawable(this.mContext, R.drawable.quantum_popup_menu);
        }
        listPopupWindow.setBackgroundDrawable(drawable);
        this.mListPopupWindow.getBackground().getPadding(popupRect);
        int listItemHeight = res.getDimensionPixelOffset(R.dimen.search_input_text_popup_window_item_height);
        int listMarginTop = res.getDimensionPixelOffset(R.dimen.search_input_text_drop_down_list_margin_top);
        int listMarginBottom = res.getDimensionPixelOffset(R.dimen.search_input_text_drop_down_list_margin_bottom);
        int popupMarginTop = res.getDimensionPixelOffset(R.dimen.search_input_text_popup_window_margin_top);
        int popupWidth = res.getDimensionPixelSize(R.dimen.search_input_text_popup_window_width) + popupRect.left + popupRect.right;
        int popupHeight = ((this.mPopupMenuItems.length - 1) * listItemHeight) + listMarginTop + listMarginBottom + popupRect.top + popupRect.bottom;
        this.mListPopupWindow.setWidth(popupWidth);
        this.mListPopupWindow.setHeight(popupHeight);
        this.mListPopupWindow.setVerticalOffset(popupMarginTop - popupRect.top);
        this.mListPopupWindow.setHorizontalOffset((-popupWidth) + popupRect.right + this.mSearchMenu.getPaddingLeft() + this.mSearchMenu.getDrawable().getIntrinsicWidth());
    }

    private void initListener() {
        this.mSearchMenu.setOnClickListener(this);
        this.mSearchInputTextField.addTextChangedListener(this.mTextWatcher);
        this.mSearchResultContainer.setClickable(false);
        this.mAppsSearchHistoryGridView.setClickable(false);
        this.mAppsSearchHistoryGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.7
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> arg0, View view, int position, long arg3) {
                UserHandleCompat user;
                ComponentName componentName = ((AppData) GlobalSearchView.this.mAppHistoryList.get(position)).getComponentName();
                if (componentName != null && !TextUtils.isEmpty(componentName.flattenToShortString())) {
                    Intent intent = ((AppData) GlobalSearchView.this.mAppHistoryList.get(position)).getIntent();
                    if (intent != null) {
                        intent.addFlags(268435456);
                        GlobalSearchView.this.mLauncher.startActivitySafely(view, intent, null);
                        if (intent.hasExtra(ItemInfo.EXTRA_PROFILE)) {
                            long serialNumber = intent.getLongExtra(ItemInfo.EXTRA_PROFILE, -1L);
                            user = UserManagerCompat.getInstance(GlobalSearchView.this.mContext).getUserForSerialNumber(serialNumber);
                        } else {
                            user = UserHandleCompat.fromIntent(intent);
                        }
                    } else {
                        user = UserHandleCompat.myUserHandle();
                    }
                    GlobalSearchView.this.mStats.recordAppHistory(componentName, System.currentTimeMillis());
                    GlobalSearchView.this.mStats.recordLaunch(view, intent, null, -1L, 0, user);
                    GlobalSearchView.this.mShouldDismiss = true;
                    GlobalSearchView.this.cancelAnimation();
                    GlobalSearchView.this.exitWithoutAnimation();
                    return;
                }
                if (!GlobalSearchView.this.isAnimating()) {
                    GlobalSearchView.this.cancelAnimation();
                    GlobalSearchView.this.exitAnimation();
                }
            }
        });
        this.mContactsSearchHistoryGridView.setClickable(false);
        this.mContactsSearchHistoryGridView.setOnItemClickListener(new AdapterView.OnItemClickListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.8
            @Override // android.widget.AdapterView.OnItemClickListener
            public void onItemClick(AdapterView<?> arg0, View view, int position, long arg3) {
                String id = ((ContactData) GlobalSearchView.this.mContactHistoryList.get(position)).getId();
                String displayName = ((ContactData) GlobalSearchView.this.mContactHistoryList.get(position)).getDisplayName();
                Uri iconUri = ((ContactData) GlobalSearchView.this.mContactHistoryList.get(position)).getIcon();
                Intent intent = ((ContactData) GlobalSearchView.this.mContactHistoryList.get(position)).getIntent();
                if (displayName != null && !displayName.isEmpty()) {
                    if (intent != null) {
                        intent.addFlags(268435456);
                        GlobalSearchView.this.mLauncher.startActivitySafely(view, intent, null);
                    }
                    GlobalSearchView.this.mStats.recordContactHistory(id, displayName, iconUri, System.currentTimeMillis());
                    GlobalSearchView.this.mShouldDismiss = true;
                    GlobalSearchView.this.cancelAnimation();
                    GlobalSearchView.this.exitWithoutAnimation();
                    return;
                }
                if (!GlobalSearchView.this.isAnimating()) {
                    GlobalSearchView.this.cancelAnimation();
                    GlobalSearchView.this.exitAnimation();
                }
            }
        });
        this.mSearchInputTextField.setOnClickListener(this);
    }

    private void enterAnimation() {
        this.mAnimationHelper.enterWithAnimation();
    }

    public void exitAnimation() {
        this.mAnimationHelper.exitWithAnimation();
    }

    public void exitWithoutAnimation() {
        this.mAnimationHelper.exitWithoutAnimation();
    }

    private void initAppNameList() {
        this.mAppNameList.clear();
        for (int i = 0; i < this.mAppInfos.size(); i++) {
            String name = this.mAppInfos.get(i).title.toString().replaceAll("\\s", "");
            ArrayList<PinyinUnit> units = new ArrayList<>();
            PinyinUtil.chineseStringToPinyinUnit(this.mContext, name, units, this.mHanyuPinyinHelper);
            this.mAppPinyinUnits.put(Integer.valueOf(i), units);
            this.mAppNameList.add(name);
        }
    }

    protected void initContactNameList() {
        this.mContactNameList.clear();
        for (int i = 0; i < this.mContactInfos.size(); i++) {
            String name = this.mContactInfos.get(i).getDisplayName().replaceAll("\\s", "");
            ArrayList<PinyinUnit> units = new ArrayList<>();
            PinyinUtil.chineseStringToPinyinUnit(this.mContext, name, units, this.mHanyuPinyinHelper);
            this.mContactPinyinUnits.put(Integer.valueOf(i), units);
            this.mContactNameList.add(name);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAppsIMESearch(CharSequence s) {
        ArrayList<AppInfo> resultAppInfos = new ArrayList<>();
        ArrayList<AppInfo> tempResultAppInfos = new ArrayList<>();
        ArrayList<String> nameList = new ArrayList<>();
        ArrayList<String> tempNameList = new ArrayList<>();
        char[] charArray = s.toString().toLowerCase().toCharArray();
        resultAppInfos.addAll(this.mAppInfos);
        nameList.addAll(this.mAppNameList);
        for (char c : charArray) {
            for (int i = 0; i < nameList.size(); i++) {
                if (i == 0) {
                    tempNameList.clear();
                    tempResultAppInfos.clear();
                }
                int index = nameList.get(i).toLowerCase().indexOf(String.valueOf(c));
                if (index >= 0) {
                    tempResultAppInfos.add(resultAppInfos.get(i));
                    tempNameList.add(nameList.get(i).substring(index + 1));
                }
            }
            resultAppInfos.clear();
            resultAppInfos.addAll(tempResultAppInfos);
            nameList.clear();
            nameList.addAll(tempNameList);
        }
        setAppsSearchResult(resultAppInfos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doContactsIMESearch(CharSequence s) {
        ArrayList<ContactData> resultContactInfos = new ArrayList<>();
        ArrayList<ContactData> tempResultContactInfos = new ArrayList<>();
        ArrayList<String> nameList = new ArrayList<>();
        ArrayList<String> tempNameList = new ArrayList<>();
        char[] charArray = s.toString().toLowerCase().toCharArray();
        resultContactInfos.addAll(this.mContactInfos);
        nameList.addAll(this.mContactNameList);
        for (char c : charArray) {
            for (int i = 0; i < nameList.size(); i++) {
                if (i == 0) {
                    tempNameList.clear();
                    tempResultContactInfos.clear();
                }
                int index = nameList.get(i).toLowerCase().indexOf(String.valueOf(c));
                if (index >= 0 && i < resultContactInfos.size()) {
                    tempResultContactInfos.add(resultContactInfos.get(i));
                    tempNameList.add(nameList.get(i).substring(index + 1));
                }
            }
            resultContactInfos.clear();
            resultContactInfos.addAll(tempResultContactInfos);
            nameList.clear();
            nameList.addAll(tempNameList);
        }
        setContactsSearchResult(resultContactInfos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doAppsT9Search(CharSequence s) {
        ArrayList<AppInfo> resultAppInfos = new ArrayList<>();
        for (Map.Entry<Integer, ArrayList<PinyinUnit>> entry : this.mAppPinyinUnits.entrySet()) {
            int key = entry.getKey().intValue();
            ArrayList<PinyinUnit> lists = entry.getValue();
            StringBuffer buffer = new StringBuffer();
            if (key < this.mAppNameList.size() && T9MatchPinyinUnits.matchPinyinUnits(lists, this.mAppNameList.get(key), s.toString(), buffer) && key < this.mAppInfos.size() && !resultAppInfos.contains(this.mAppInfos.get(key))) {
                resultAppInfos.add(this.mAppInfos.get(key));
            }
        }
        setAppsSearchResult(resultAppInfos);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doContactsT9Search(CharSequence s) {
        ArrayList<ContactData> resultContactInfos = new ArrayList<>();
        for (Map.Entry<Integer, ArrayList<PinyinUnit>> entry : this.mContactPinyinUnits.entrySet()) {
            int key = entry.getKey().intValue();
            ArrayList<PinyinUnit> lists = entry.getValue();
            StringBuffer buffer = new StringBuffer();
            if (key < this.mContactNameList.size() && T9MatchPinyinUnits.matchPinyinUnits(lists, this.mContactNameList.get(key), s.toString(), buffer) && key < this.mContactInfos.size() && !resultContactInfos.contains(this.mContactInfos.get(key))) {
                resultContactInfos.add(this.mContactInfos.get(key));
            }
        }
        setContactsSearchResult(resultContactInfos);
    }

    private void setAppsSearchResult(ArrayList<AppInfo> packagesList) {
        if (packagesList != null) {
            this.mAppResultList.clear();
            this.mAppSubResultList.clear();
            for (int i = 0; i < packagesList.size(); i++) {
                AppData searchResult = new AppData(packagesList.get(i));
                this.mAppResultList.add(searchResult);
                if (this.mAppSubResultList.size() < 5) {
                    this.mAppSubResultList.add(searchResult);
                }
            }
            padTrailingSearchResult();
        }
    }

    private void setContactsSearchResult(ArrayList<ContactData> contactsResultList) {
        if (contactsResultList != null) {
            this.mContactResultList.clear();
            this.mContactSubResultList.clear();
            for (int i = 0; i < contactsResultList.size(); i++) {
                this.mContactResultList.add(contactsResultList.get(i));
                if (this.mContactSubResultList.size() < 5) {
                    this.mContactSubResultList.add(contactsResultList.get(i));
                }
            }
            padTrailingSearchResult();
        }
    }

    public void updateSearchResultAdapter() {
        calculateResultContainerHeight();
        if (this.mSearchResultAdapter != null) {
            if (this.mShowAllAppSearchResult && this.mShowAllContactSearchResult) {
                this.mSearchResultAdapter.setResultList(this.mAppResultList, this.mContactResultList);
            } else if (this.mShowAllAppSearchResult && !this.mShowAllContactSearchResult) {
                this.mSearchResultAdapter.setResultList(this.mAppResultList, this.mContactSubResultList);
            } else if (!this.mShowAllAppSearchResult && this.mShowAllContactSearchResult) {
                this.mSearchResultAdapter.setResultList(this.mAppSubResultList, this.mContactResultList);
            } else {
                this.mSearchResultAdapter.setResultList(this.mAppSubResultList, this.mContactSubResultList);
            }
            this.mSearchResultAdapter.notifyDataSetChanged();
        }
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        switch (v.getId()) {
            case R.id.search_input_text_menu /* 2131820723 */:
                Resources res = this.mContext.getResources();
                updatePopupMenu();
                this.mListPopupWindow.show();
                ListView popupList = this.mListPopupWindow.getListView();
                if (popupList != null) {
                    FrameLayout.LayoutParams params = (FrameLayout.LayoutParams) popupList.getLayoutParams();
                    params.topMargin = res.getDimensionPixelOffset(R.dimen.search_input_text_drop_down_list_margin_top);
                    params.bottomMargin = res.getDimensionPixelOffset(R.dimen.search_input_text_drop_down_list_margin_bottom);
                    return;
                }
                return;
            case R.id.search_input_text_field /* 2131820724 */:
                if (this.mIsT9Search) {
                    showT9InputMethod();
                    return;
                } else {
                    this.mInputMethodManager.showSoftInput(this.mSearchInputTextField, 1);
                    return;
                }
            default:
                return;
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public boolean dispatchKeyEventPreIme(KeyEvent event) {
        if (4 == event.getKeyCode() && !this.mIsT9Search && this.mLauncher.isInSearchMode()) {
            setLayoutBottomMarginByResource(0);
            if (this.mInputMethodManager != null) {
                this.mInputMethodManager.hideSoftInputFromWindow(this.mSearchInputTextField.getWindowToken(), 0);
            }
            cancelAnimation();
            exitAnimation();
        }
        return super.dispatchKeyEventPreIme(event);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void clearSearchHistory() {
        AlertDialog.Builder builder = new AlertDialog.Builder(this.mContext, Utilities.isDarkModeTheme(this.mLauncher) ? R.style.GlobalSearchAlertDialogDark : R.style.GlobalSearchAlertDialog);
        builder.setMessage(R.string.clear_search_history_message);
        builder.setPositiveButton(R.string.action_clear, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.9
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                GlobalSearchView.this.mStats.clearAppHistory();
                GlobalSearchView.this.mStats.clearContactHistory();
                if (GlobalSearchView.this.mSearchInputTextField.getText().toString().length() == 0) {
                    if (GlobalSearchView.this.mAppHistoryList != null) {
                        GlobalSearchView.this.mAppHistoryList.clear();
                    }
                    if (GlobalSearchView.this.mAppSearchHistoryAdapter != null) {
                        GlobalSearchView.this.mAppSearchHistoryAdapter.notifyDataSetChanged();
                    }
                    if (GlobalSearchView.this.mContactHistoryList != null) {
                        GlobalSearchView.this.mContactHistoryList.clear();
                    }
                    if (GlobalSearchView.this.mContactSearchHistoryAdapter != null) {
                        GlobalSearchView.this.mContactSearchHistoryAdapter.notifyDataSetChanged();
                    }
                    GlobalSearchView.this.mAppsSearchHistoryTitleView.setVisibility(8);
                    GlobalSearchView.this.mAppsSearchHistoryGridView.setVisibility(8);
                    GlobalSearchView.this.mContactsSearchHistoryTitleView.setVisibility(8);
                    GlobalSearchView.this.mContactsSearchHistoryGridView.setVisibility(8);
                }
            }
        });
        builder.setNegativeButton(android.R.string.cancel, new DialogInterface.OnClickListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.10
            @Override // android.content.DialogInterface.OnClickListener
            public void onClick(DialogInterface dialog, int which) {
                GlobalSearchView.this.mDialog.dismiss();
            }
        });
        this.mDialog = builder.create();
        this.mDialog.requestWindowFeature(1);
        this.mDialog.show();
        int buttonColor = ContextCompat.getColor(this.mContext, R.color.oneplus_accent_color);
        this.mDialog.getButton(-1).setTextColor(buttonColor);
        this.mDialog.getButton(-2).setTextColor(buttonColor);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void selectInputMethod(boolean isT9Input) {
        this.mSearchResultContainer.setTranslationY(0.0f);
        this.mSearchResultContainer.setVisibility(8);
        this.mSearchHistoryScrollView.setVisibility(0);
        this.mSearchHistoryContainer.setTranslationY(0.0f);
        this.mSearchHistoryContainer.setAlpha(1.0f);
        Resources res = this.mContext.getResources();
        SharedPreferences searchInputSetting = this.mContext.getSharedPreferences(SEARCH_INPUT_SETTING, 0);
        SharedPreferences.Editor editor = searchInputSetting.edit();
        this.mIsT9Search = isT9Input;
        if (isT9Input) {
            editor.putInt(SEARCH_INPUT, 1).apply();
            if (!this.mT9Panel.isShown()) {
                setupT9InputSearch();
            }
            this.mListPopupWindowAdapter.remove(res.getString(R.string.quick_search_input_method));
            this.mListPopupWindowAdapter.insert(res.getString(R.string.normal_search_input_method), 0);
        } else {
            editor.putInt(SEARCH_INPUT, 0).apply();
            List<Animator> animators = new ArrayList<>();
            animators.add(ObjectAnimator.ofFloat(this.mT9Panel, "translationY", this.mT9Panel.getHeight()));
            animators.add(ObjectAnimator.ofFloat(this.mT9Panel, "alpha", 0.0f));
            this.mKeyboardDismissAnimatorSet = new AnimatorSet();
            this.mKeyboardDismissAnimatorSet.playTogether(animators);
            this.mKeyboardDismissAnimatorSet.setInterpolator(sKeyboardInterpolator);
            this.mKeyboardDismissAnimatorSet.setDuration(EXIT_ANIMATION_DURATION);
            this.mKeyboardDismissAnimatorSet.addListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.11
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationStart(Animator animation) {
                }

                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    GlobalSearchView.this.mT9Panel.clearAnimation();
                    GlobalSearchView.this.mT9Panel.setVisibility(8);
                    GlobalSearchView.this.mLauncher.getWindow().setSoftInputMode(32);
                    GlobalSearchView.this.setupIMEInputSearch();
                }
            });
            this.mKeyboardDismissAnimatorSet.start();
            this.mListPopupWindowAdapter.remove(res.getString(R.string.normal_search_input_method));
            this.mListPopupWindowAdapter.insert(res.getString(R.string.quick_search_input_method), 0);
        }
        this.mHasChangeInputMethod = true;
        this.mSearchInputTextField.setText("");
        this.mListPopupWindowAdapter.notifyDataSetChanged();
    }

    public void setupIMEInputSearch() {
        setLayoutBottomMarginByResource(0);
        this.mSearchHistoryScrollView.smoothScrollTo(0, 0);
        this.mSearchInputTextField.setFocusableInTouchMode(true);
        this.mSearchInputTextField.setFocusable(true);
        this.mSearchInputTextField.requestFocus();
        this.mInputMethodManager.showSoftInput(this.mSearchInputTextField, 1);
        this.mGlobalLayoutListener = new ViewTreeObserver.OnGlobalLayoutListener() { // from class: net.oneplus.h2launcher.globalsearch.GlobalSearchView.12
            @Override // android.view.ViewTreeObserver.OnGlobalLayoutListener
            public void onGlobalLayout() {
                if (GlobalSearchView.this.getSoftwareKeyboardHeight() <= 0 || GlobalSearchView.this.getSoftwareKeyboardHeight() == GlobalSearchView.this.mNavigationBarHeight) {
                    if (GlobalSearchView.this.mIsT9Search) {
                        GlobalSearchView.this.mSoftwareKeyboardHeight = 0;
                        GlobalSearchView.this.mLastSoftwareKeyboardHeight = 0;
                        if (GlobalSearchView.this.mGlobalLayoutListener != null) {
                            ((Activity) GlobalSearchView.this.mContext).getWindow().getDecorView().getViewTreeObserver().removeOnGlobalLayoutListener(GlobalSearchView.this.mGlobalLayoutListener);
                            GlobalSearchView.this.mGlobalLayoutListener = null;
                        }
                        GlobalSearchView.this.showT9InputMethod();
                        return;
                    }
                    if (GlobalSearchView.this.mLastSoftwareKeyboardHeight != GlobalSearchView.this.mSoftwareKeyboardHeight) {
                        GlobalSearchView.this.mLastSoftwareKeyboardHeight = GlobalSearchView.this.mSoftwareKeyboardHeight;
                        return;
                    }
                    return;
                }
                if (GlobalSearchView.this.mLastSoftwareKeyboardHeight != GlobalSearchView.this.mSoftwareKeyboardHeight) {
                    GlobalSearchView.this.mLastSoftwareKeyboardHeight = GlobalSearchView.this.mSoftwareKeyboardHeight;
                }
            }
        };
        ((Activity) this.mContext).getWindow().getDecorView().getViewTreeObserver().addOnGlobalLayoutListener(this.mGlobalLayoutListener);
    }

    private void setupT9InputSearch() {
        this.mInputMethodManager.hideSoftInputFromWindow(this.mSearchInputTextField.getWindowToken(), 0);
        this.mSearchInputTextField.setFocusableInTouchMode(false);
        this.mSearchInputTextField.setFocusable(false);
    }

    public int getSoftwareKeyboardHeight() {
        Rect r = new Rect();
        ((Launcher) this.mContext).getWindow().getDecorView().getWindowVisibleDisplayFrame(r);
        int screenHeight = ((Launcher) this.mContext).getWindow().getDecorView().getRootView().getHeight();
        this.mSoftwareKeyboardHeight = screenHeight - r.bottom;
        return this.mSoftwareKeyboardHeight;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showT9InputMethod() {
        if (!this.mT9Panel.isShown()) {
            this.mAnimationHelper.runKeyboardAnimation(this.mT9Panel);
        }
    }

    @Override // net.oneplus.h2launcher.inputmethod.T9.T9Panel.OnPanelClickedListener
    public void onPanelClick(T9Panel.Digit d) {
        if (d == T9Panel.Digit.DEL) {
            delInputText();
        } else {
            setInputText(d.getValue());
        }
    }

    @Override // net.oneplus.h2launcher.inputmethod.T9.T9Panel.OnPanelClickedListener
    public void onPanelLongClick(T9Panel.Digit d) {
        if (d == T9Panel.Digit.DEL) {
            this.mSearchInputTextField.setText("");
        }
    }

    private void setInputText(String s) {
        if (this.mSearchInputTextField != null) {
            this.mSearchInputTextField.append(s);
        }
    }

    private void delInputText() {
        if (this.mSearchInputTextField != null) {
            Editable editable = this.mSearchInputTextField.getText();
            int start = this.mSearchInputTextField.getSelectionStart();
            if (editable != null && editable.length() > 0 && start > 0) {
                editable.delete(start - 1, start);
            }
        }
    }

    public void setLayoutBottomMarginByKeyboardHeight(int keyboardHeight) {
        RelativeLayout.LayoutParams searchResultLayoutParams = (RelativeLayout.LayoutParams) this.mSearchResultContainer.getLayoutParams();
        FrameLayout.LayoutParams searchHistoryLayoutParams = (FrameLayout.LayoutParams) this.mSearchHistoryScrollView.getLayoutParams();
        searchResultLayoutParams.bottomMargin = keyboardHeight;
        searchHistoryLayoutParams.bottomMargin = keyboardHeight;
        this.mSearchResultContainer.setLayoutParams(searchResultLayoutParams);
        this.mSearchHistoryScrollView.setLayoutParams(searchHistoryLayoutParams);
    }

    public void setLayoutBottomMarginByResource(int resourceId) {
        int marginBottom = (resourceId > 0 ? getResources().getDimensionPixelSize(resourceId) : 0) + getSoftwareKeyboardHeight();
        RelativeLayout.LayoutParams t9PanelLayoutParams = (RelativeLayout.LayoutParams) this.mT9Panel.getLayoutParams();
        RelativeLayout.LayoutParams searchResultLayoutParams = (RelativeLayout.LayoutParams) this.mSearchResultContainer.getLayoutParams();
        FrameLayout.LayoutParams searchHistoryLayoutParams = (FrameLayout.LayoutParams) this.mSearchHistoryScrollView.getLayoutParams();
        t9PanelLayoutParams.bottomMargin = getSoftwareKeyboardHeight();
        searchResultLayoutParams.bottomMargin = marginBottom;
        searchHistoryLayoutParams.bottomMargin = marginBottom;
        this.mT9Panel.setLayoutParams(t9PanelLayoutParams);
        this.mSearchResultContainer.setLayoutParams(searchResultLayoutParams);
        this.mSearchHistoryScrollView.setLayoutParams(searchHistoryLayoutParams);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void trimMemory(int level) {
        Logger.i(TAG, "[Trim Memory] globalSearchView, level:%d", Integer.valueOf(level));
        if (level == 60) {
            ContactImageCache.clear();
        }
    }

    public View getSearchContainer() {
        return this.mSearchContainer;
    }

    public View getSearchContainerMask() {
        return this.mSearchContainerMask;
    }

    public View getSearchInputContainer() {
        return this.mSearchInputContainer;
    }

    public EditText getSearchInputTextField() {
        return this.mSearchInputTextField;
    }

    public View getKeyboardContainer() {
        return this.mT9Panel;
    }

    public RecyclerView getSearchResultContainer() {
        return this.mSearchResultContainer;
    }

    public View getSearchHistoryContainer() {
        return this.mSearchHistoryContainer;
    }

    public View getSearchHistoryAppBackground() {
        return this.mSearchHistoryAppBackground;
    }

    public View getSearchHistoryContactBackground() {
        return this.mSearchHistoryContactBackground;
    }

    public View getSearchHistoryAppContainer() {
        return this.mSearchHistoryAppContainer;
    }

    public View getSearchHistoryContactContainer() {
        return this.mSearchHistoryContactContainer;
    }

    public GridView getAppsSearchHistoryGridView() {
        return this.mAppsSearchHistoryGridView;
    }

    public GridView getContactsSearchHistoryGridView() {
        return this.mContactsSearchHistoryGridView;
    }

    public TextView getAppsSearchHistoryTitleView() {
        return this.mAppsSearchHistoryTitleView;
    }

    public TextView getContactsSearchHistoryTitleView() {
        return this.mContactsSearchHistoryTitleView;
    }

    public OnePlusScrollView getSearchHistoryScrollView() {
        return this.mSearchHistoryScrollView;
    }

    public int getSearchResultConrainerHeight() {
        return this.mSearchResultContainerHeight;
    }

    public int getSearchHistoryConrainerHeight() {
        return this.mSearchHistoryContainerHeight;
    }

    public int getSearchHistoryAppConrainerHeight() {
        return this.mSearchHistoryAppsHeight;
    }

    public int getSearchHistoryContactConrainerHeight() {
        return this.mSearchHistoryContactsHeight;
    }

    public void setIsInAnimationFinish(boolean isInAnimationFinish) {
        this.mIsInAnimationFinish = isInAnimationFinish;
    }

    public boolean isT9Search() {
        return this.mIsT9Search;
    }

    public InputMethodManager getInputMethodManager() {
        return this.mInputMethodManager;
    }

    public ListPopupWindow getListPopupWindow() {
        return this.mListPopupWindow;
    }

    public AlertDialog getAlertDialog() {
        return this.mDialog;
    }

    public ViewTreeObserver.OnGlobalLayoutListener getOnGlobalLayoutListener() {
        return this.mGlobalLayoutListener;
    }

    public void setOnGlobalLayoutListener(ViewTreeObserver.OnGlobalLayoutListener listener) {
        this.mGlobalLayoutListener = listener;
    }

    public Stats getStats() {
        return this.mStats;
    }

    public GlobalSearchAnimationHelper getAnimationHelper() {
        return this.mAnimationHelper;
    }

    public ArrayList<AppInfo> getAppInfos() {
        return this.mAppInfos;
    }

    public CopyOnWriteArrayList<ContactData> getContactInfos() {
        return this.mContactInfos;
    }

    public SearchResultAdapter getSearchResultAdapter() {
        return this.mSearchResultAdapter;
    }

    public ArrayList<AppData> getAppResultList() {
        return this.mAppResultList;
    }

    public ArrayList<ContactData> getContactResultList() {
        return this.mContactResultList;
    }

    public boolean getShowAllAppSearchResult() {
        return this.mShowAllAppSearchResult;
    }

    public boolean getShowAllContactSearchResult() {
        return this.mShowAllContactSearchResult;
    }

    public void setShowAllAppSearchResult(boolean shouldShowAllAppSearchResult) {
        this.mShowAllAppSearchResult = shouldShowAllAppSearchResult;
    }

    public void setShowAllContactSearchResult(boolean shouldShowAllContactSearchResult) {
        this.mShowAllContactSearchResult = shouldShowAllContactSearchResult;
    }

    public void setShouldDismiss(boolean shouldDismiss) {
        this.mShouldDismiss = shouldDismiss;
    }

    @Override // net.oneplus.h2launcher.InsettableFrameLayout, net.oneplus.h2launcher.Insettable
    public void setInsets(Rect newInsets) {
        this.mInsets.set(newInsets);
        this.mNavigationBarHeight = newInsets.bottom;
    }
}
