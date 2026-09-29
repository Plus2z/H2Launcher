package net.oneplus.h2launcher.iconrearrangement;

import android.content.Context;
import android.graphics.PointF;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.MotionEvent;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import com.oneplus.lib.widget.recyclerview.LinearLayoutManager;
import com.oneplus.lib.widget.recyclerview.LinearSmoothScroller;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.Set;
import net.oneplus.h2launcher.DeviceProfile;
import net.oneplus.h2launcher.Launcher;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementAdapter;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper;

/* loaded from: classes.dex */
public class IconRearrangementPanel extends RelativeLayout implements View.OnClickListener, IconRearrangementAdapter.OnItemClickListener, IconRearrangementAdapter.OnItemChangedListener {
    private static final int ANIMATION_DURATION = 400;
    private static final float MILLISECONDS_PER_INCH = 125.0f;
    private IconRearrangementAdapter mAdapter;
    private View mDividerLineView;
    private View mEmptyView;
    private IconRearrangementAddFolderIcon mFolderButton;
    private boolean mFolderButtonForceDisable;
    IconRearrangementHelper mHelper;
    private int mItemWidth;
    Launcher mLauncher;
    private int mMaxScrollFirstItemScrollX;
    private View mNonEmptyView;
    private IconRearrangementRecyclerView mRecyclerView;
    private RelativeLayout mRecyclerViewContainer;
    private int mRecyclerViewVisibleViewCount;
    private ArrayList<ShortcutInfo> mShortcutInfos;

    static /* synthetic */ int access$008(IconRearrangementPanel x0) {
        int i = x0.mRecyclerViewVisibleViewCount;
        x0.mRecyclerViewVisibleViewCount = i + 1;
        return i;
    }

    public IconRearrangementPanel(Context context) {
        this(context, null, 0);
    }

    public IconRearrangementPanel(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public IconRearrangementPanel(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        this.mShortcutInfos = new ArrayList<>();
        this.mFolderButtonForceDisable = false;
        this.mLauncher = (Launcher) context;
        this.mAdapter = new IconRearrangementAdapter(context, this.mShortcutInfos, this, this);
        this.mItemWidth = context.getResources().getDimensionPixelOffset(R.dimen.icon_rearrangement_item_width);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
        this.mRecyclerView = (IconRearrangementRecyclerView) findViewById(R.id.icon_rearrangement_list_view);
        this.mRecyclerView.setAdapter(this.mAdapter);
        this.mEmptyView = findViewById(R.id.empty_view);
        this.mNonEmptyView = findViewById(R.id.non_empty_view);
        this.mDividerLineView = findViewById(R.id.divider_line);
        this.mRecyclerViewContainer = (RelativeLayout) findViewById(R.id.icon_rearrangement_list_view_container);
        this.mRecyclerView.setLayoutManager(new LinearLayoutManager(getContext(), 0, 0 == true ? 1 : 0) { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementPanel.1
            /* JADX INFO: Access modifiers changed from: protected */
            @Override // com.oneplus.lib.widget.recyclerview.LinearLayoutManager
            public int getExtraLayoutSpace(RecyclerView.State state) {
                DeviceProfile grid = IconRearrangementPanel.this.mLauncher.getDeviceProfile();
                return super.getExtraLayoutSpace(state) + grid.availableHeightPx;
            }

            @Override // com.oneplus.lib.widget.recyclerview.LinearLayoutManager, com.oneplus.lib.widget.recyclerview.RecyclerView.LayoutManager
            public void smoothScrollToPosition(RecyclerView recyclerView, RecyclerView.State state, int position) {
                LinearSmoothScroller smoothScroller = new LinearSmoothScroller(IconRearrangementPanel.this.mLauncher) { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementPanel.1.1
                    @Override // com.oneplus.lib.widget.recyclerview.LinearSmoothScroller
                    public PointF computeScrollVectorForPosition(int targetPosition) {
                        return this.computeScrollVectorForPosition(targetPosition);
                    }

                    @Override // com.oneplus.lib.widget.recyclerview.LinearSmoothScroller
                    protected float calculateSpeedPerPixel(DisplayMetrics displayMetrics) {
                        return IconRearrangementPanel.MILLISECONDS_PER_INCH / displayMetrics.densityDpi;
                    }
                };
                smoothScroller.setTargetPosition(position);
                startSmoothScroll(smoothScroller);
            }
        });
        this.mRecyclerView.addOnScrollListener(new RecyclerView.OnScrollListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementPanel.2
            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrollStateChanged(RecyclerView recyclerView, int newState) {
                View firstView;
                if (IconRearrangementPanel.this.mRecyclerViewVisibleViewCount == 0) {
                    IconRearrangementPanel.this.mRecyclerViewVisibleViewCount = IconRearrangementPanel.this.mRecyclerView.getWidth() / IconRearrangementPanel.this.mItemWidth;
                    if (IconRearrangementPanel.this.mItemWidth * IconRearrangementPanel.this.mRecyclerViewVisibleViewCount != IconRearrangementPanel.this.mRecyclerView.getWidth()) {
                        IconRearrangementPanel.access$008(IconRearrangementPanel.this);
                    }
                    IconRearrangementPanel.this.mMaxScrollFirstItemScrollX = IconRearrangementPanel.this.mRecyclerView.getWidth() - (IconRearrangementPanel.this.mRecyclerViewVisibleViewCount * IconRearrangementPanel.this.mItemWidth);
                }
                if (newState == 0 && (firstView = IconRearrangementPanel.this.mRecyclerView.findChildViewUnder(0.0f, 0.0f)) != null && firstView.getX() != 0.0f) {
                    int targetPos = IconRearrangementPanel.this.mRecyclerView.getChildAdapterPosition(firstView);
                    int firstViewX = (int) firstView.getX();
                    if (firstViewX < 0) {
                        firstViewX = -firstViewX;
                    }
                    int width = firstView.getWidth();
                    int scrollX = width - firstViewX;
                    if (firstViewX * 2 < width) {
                        scrollX = -firstViewX;
                    }
                    boolean isRtl = Utilities.isRtl(IconRearrangementPanel.this.mLauncher.getResources());
                    if (!isRtl || targetPos != IconRearrangementPanel.this.mRecyclerViewVisibleViewCount - 1 || IconRearrangementPanel.this.mMaxScrollFirstItemScrollX != firstView.getX() || scrollX <= 0) {
                        if (isRtl || targetPos != IconRearrangementPanel.this.mAdapter.getItemCount() - IconRearrangementPanel.this.mRecyclerViewVisibleViewCount || IconRearrangementPanel.this.mMaxScrollFirstItemScrollX != firstView.getX() || scrollX <= 0) {
                            IconRearrangementPanel.this.mRecyclerView.smoothScrollBy(scrollX, 0);
                        }
                    }
                }
            }

            @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.OnScrollListener
            public void onScrolled(RecyclerView recyclerView, int dx, int dy) {
            }
        });
        LinearLayout linearLayout = (LinearLayout) findViewById(R.id.folder_button_layout);
        this.mFolderButton = IconRearrangementAddFolderIcon.fromXml(R.layout.icon_rearrangement_add_folder_icon, this.mLauncher, linearLayout);
        this.mFolderButton.setTextVisible(true);
        this.mFolderButton.setSingleLine(false);
        this.mFolderButton.setOnClickListener(this);
        this.mRecyclerView.setFocusable(false);
        linearLayout.addView(this.mFolderButton);
        checkAndUpdateState();
    }

    public void setIconRearrangementHelper(IconRearrangementHelper helper) {
        this.mHelper = helper;
    }

    public RelativeLayout getRecyclerViewContainer() {
        return this.mRecyclerViewContainer;
    }

    public View getRecyclerView() {
        return this.mRecyclerView;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (v == this.mFolderButton) {
            this.mHelper.mergeFolder();
        }
    }

    @Override // net.oneplus.h2launcher.iconrearrangement.IconRearrangementAdapter.OnItemClickListener
    public void onItemClick(View view, int position) {
        ShortcutInfo info = (ShortcutInfo) view.getTag();
        if (info != null && this.mShortcutInfos.contains(info)) {
            this.mHelper.dropIcon(info, view);
        }
    }

    @Override // net.oneplus.h2launcher.iconrearrangement.IconRearrangementAdapter.OnItemChangedListener
    public void onItemChanged() {
        checkAndUpdateState();
    }

    public boolean addShortcutInfo(ShortcutInfo shortcutInfo) {
        if (!this.mAdapter.addShortcutInfo(shortcutInfo)) {
            return false;
        }
        this.mRecyclerView.setScrollToLast(true);
        return true;
    }

    public boolean removeShortcutInfoAnimated(ShortcutInfo shortcutInfo, View v, IconRearrangementHelper.TaskStageCallback callback, Runnable task, Runnable endRunnable) {
        return this.mAdapter.removeShortcutInfoAnimated(shortcutInfo, v, callback, task, endRunnable);
    }

    public void removeShortcutInfosAnimated(ArrayList<ShortcutInfo> shortcutInfos) {
        this.mAdapter.removeShortcutInfosAnimated(shortcutInfos);
    }

    public void checkAndUpdateState() {
        int shortcutCount = this.mShortcutInfos.size();
        if (shortcutCount > 0) {
            this.mEmptyView.setVisibility(8);
            this.mNonEmptyView.setVisibility(0);
            this.mFolderButton.setEnabled(shortcutCount > 1 && !this.mFolderButtonForceDisable);
            this.mFolderButton.invalidate();
            return;
        }
        this.mEmptyView.setVisibility(0);
        this.mNonEmptyView.setVisibility(8);
    }

    public Set<View> getAllItemViews() {
        return this.mAdapter.getAllItemViews();
    }

    public ArrayList<View> getVisibleViews() {
        return this.mAdapter.getVisibleViews();
    }

    public void setFolderButtonAlpha(float alpha) {
        this.mFolderButton.setAlpha(alpha);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ArrayList<ShortcutInfo> getShortcutInfos() {
        ArrayList<ShortcutInfo> shortcutInfos = new ArrayList<>();
        shortcutInfos.addAll(this.mShortcutInfos);
        return shortcutInfos;
    }

    public int getShortcutInfoCount() {
        return this.mShortcutInfos.size();
    }

    public void clearAllItem() {
        this.mShortcutInfos.clear();
        this.mAdapter.notifyDataSetChanged();
        checkAndUpdateState();
    }

    public void setFolderButtonForceDisable(boolean folderButtonForceDisable) {
        if (this.mFolderButtonForceDisable != folderButtonForceDisable) {
            this.mFolderButtonForceDisable = folderButtonForceDisable;
            checkAndUpdateState();
        }
    }

    public boolean containsShortcutInfo(ShortcutInfo info) {
        return this.mShortcutInfos.contains(info);
    }

    public IconRearrangementAddFolderIcon getFolderButton() {
        return this.mFolderButton;
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent event) {
        super.onTouchEvent(event);
        return true;
    }
}
