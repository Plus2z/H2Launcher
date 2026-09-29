package net.oneplus.h2launcher.quickpage;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ValueAnimator;
import android.view.LayoutInflater;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.DecelerateInterpolator;
import android.widget.FrameLayout;
import com.oneplus.lib.widget.cardview.CardView;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.HashMap;
import java.util.Map;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.quickpage.SchemeHelper;
import net.oneplus.h2launcher.quickpage.rebound.Spring;
import net.oneplus.h2launcher.quickpage.view.QuickPageItemView;
import net.oneplus.h2launcher.quickpage.view.WelcomePanel;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemAdapter;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.ItemDraggableRange;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.touchguard.RecyclerViewTouchActionGuardManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils.AbstractDraggableItemViewHolder;
import net.oneplus.h2launcher.quickpage.view.util.AbstractDataProvider;
import net.oneplus.h2launcher.quickpage.widget.SpringFrameLayout;
import net.oneplus.h2launcher.util.AnalyticHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class QuickPageAdapter extends RecyclerView.Adapter<ViewHolder> implements DraggableItemAdapter<ViewHolder> {
    private static final String TAG = QuickPageAdapter.class.getSimpleName();
    private QuickPageBaseActivity mActivity;
    private int mAnimTime;
    private int mBottomPadding;
    private int mCardBorderExpandSize;
    private int mCardElevation;
    private boolean mEditMode;
    private int mEditModeDuration;
    private int mEditableItemPosition;
    private EventListener mEventListener;
    private boolean mHasSoftwareKeys;
    private View.OnClickListener mItemViewOnClickListener = new View.OnClickListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageAdapter.1
        @Override // android.view.View.OnClickListener
        public void onClick(View v) {
            QuickPageAdapter.this.onItemViewClick(v);
        }
    };
    private View.OnTouchListener mItemViewOnTouchListener = new View.OnTouchListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageAdapter.2
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return QuickPageAdapter.this.onItemViewTouch(view, motionEvent);
        }
    };
    private boolean mLongPressing;
    private DataProvider mProvider;
    private boolean mQuickPageScrolling;
    private SchemeHelper.Scheme mScheme;
    private final Spring mSpring;
    private RecyclerViewTouchActionGuardManager mTouchGuardManager;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface EventListener {
        void onItemPinned(int i);

        void onItemRemoved(int i);

        void onItemResizeFinished(int i);

        void onItemResized(int i, View view);

        void onItemViewClicked(View view, boolean z);

        boolean onItemViewTouched(View view, MotionEvent motionEvent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public class ViewHolder extends AbstractDraggableItemViewHolder implements View.OnTouchListener {
        int activePointerId;
        CardView card;
        SpringFrameLayout container;
        QuickPageItemView contentHolder;
        View dismissButton;
        View dragHandle;
        View dragHandleDrawable;
        View dragHandleTouchable;
        int handleMinHeight;
        FrameLayout.LayoutParams handleParams;
        FrameLayout.LayoutParams holderParams;
        float initialHandleHeight;
        float initialHolderHeight;
        float initialY;
        boolean isAnimating;
        boolean isResizing;
        QuickPageItem item;
        int position;

        public ViewHolder(View v) {
            super(v);
            this.initialY = -1.0f;
            this.initialHolderHeight = 0.0f;
            this.initialHandleHeight = 0.0f;
            this.isResizing = false;
            this.isAnimating = false;
            this.activePointerId = -1;
            this.container = (SpringFrameLayout) v;
            this.card = (CardView) v.findViewById(R.id.card);
            if (this.card != null) {
                this.contentHolder = (QuickPageItemView) v.findViewById(R.id.content_holder);
                if (this.contentHolder != null) {
                    this.contentHolder.setTouchGuardManager(QuickPageAdapter.this.mTouchGuardManager);
                }
            }
            this.dragHandle = v.findViewById(R.id.drag_handle);
            this.dragHandleDrawable = v.findViewById(R.id.drag_handle_drawable);
            this.dragHandleTouchable = v.findViewById(R.id.drag_handle_touchable);
            this.dismissButton = v.findViewById(R.id.dismiss_button);
        }

        /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View v, MotionEvent event) {
            switch (v.getId()) {
                case R.id.card /* 2131820746 */:
                    return QuickPageAdapter.this.mEditMode && QuickPageAdapter.this.mEditableItemPosition == this.position;
                case R.id.drag_handle_touchable /* 2131821023 */:
                    switch (event.getAction()) {
                        case 0:
                            this.dragHandleTouchable.getParent().requestDisallowInterceptTouchEvent(true);
                            QuickPageAdapter.this.mTouchGuardManager.setMoveEventsEnabled(true);
                            this.initialY = event.getRawY();
                            this.holderParams = (FrameLayout.LayoutParams) this.contentHolder.getLayoutParams();
                            if (this.holderParams.height < 0) {
                                this.holderParams.height = this.contentHolder.getMeasuredHeight();
                            }
                            this.initialHolderHeight = this.holderParams.height;
                            this.handleParams = (FrameLayout.LayoutParams) this.dragHandle.getLayoutParams();
                            if (this.handleParams.height - QuickPageAdapter.this.mCardBorderExpandSize != this.holderParams.height) {
                                this.handleParams.height = this.holderParams.height + QuickPageAdapter.this.mCardBorderExpandSize;
                            }
                            this.handleMinHeight = (this.item.getMinHeight() + QuickPageAdapter.this.mCardBorderExpandSize) / 2;
                            this.initialHandleHeight = this.handleParams.height;
                            this.isResizing = true;
                            break;
                        case 1:
                        case 3:
                            actionUp();
                            break;
                        case 2:
                            float deltaY = event.getRawY() - this.initialY;
                            int holderHeight = (int) (this.initialHolderHeight + deltaY);
                            int handleHeight = (int) (this.initialHandleHeight + deltaY);
                            if (holderHeight >= this.item.getMinHeight() && holderHeight <= this.item.getMaxHeight() && QuickPageAdapter.this.mCardBorderExpandSize + holderHeight <= handleHeight) {
                                this.holderParams.height = holderHeight;
                                this.handleParams.height = this.holderParams.height + QuickPageAdapter.this.mCardBorderExpandSize;
                                this.contentHolder.requestLayout();
                                this.dragHandle.requestLayout();
                                this.item.onItemResizeProgress(holderHeight);
                            } else if (holderHeight <= this.item.getMaxHeight() && handleHeight - QuickPageAdapter.this.mCardBorderExpandSize <= holderHeight && handleHeight >= this.handleMinHeight) {
                                this.holderParams.height = this.item.getMinHeight();
                                this.contentHolder.requestLayout();
                                this.handleParams.height = handleHeight;
                                this.dragHandle.requestLayout();
                            } else {
                                int middle = (this.handleMinHeight + this.item.getMaxHeight()) / 2;
                                if (handleHeight < middle) {
                                    this.handleParams.height = this.handleMinHeight;
                                } else {
                                    this.holderParams.height = this.item.getMaxHeight();
                                    this.contentHolder.requestLayout();
                                    this.handleParams.height = this.item.getMaxHeight() + QuickPageAdapter.this.mCardBorderExpandSize;
                                }
                                this.dragHandle.requestLayout();
                                if (!this.isAnimating) {
                                    this.isAnimating = true;
                                    this.dragHandleDrawable.animate().scaleX(1.5f).scaleY(1.5f).setInterpolator(new AccelerateInterpolator()).setDuration(QuickPageAdapter.this.mAnimTime).withLayer().setListener(new AnimatorListenerAdapter() { // from class: net.oneplus.h2launcher.quickpage.QuickPageAdapter.ViewHolder.1
                                        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                                        public void onAnimationEnd(Animator animation) {
                                            super.onAnimationStart(animation);
                                            ViewHolder.this.dragHandleDrawable.animate().scaleX(1.0f).scaleY(1.0f).setInterpolator(new DecelerateInterpolator()).setListener(null);
                                            ViewHolder.this.isAnimating = false;
                                        }
                                    });
                                }
                            }
                            if (QuickPageAdapter.this.mEventListener != null) {
                                QuickPageAdapter.this.mEventListener.onItemResized(this.position, this.itemView);
                                break;
                            }
                            break;
                    }
                    return true;
                case R.id.dismiss_button /* 2131821024 */:
                    if (!QuickPageAdapter.this.mEditMode || this.isResizing) {
                        return false;
                    }
                    switch (event.getAction()) {
                        case 0:
                            this.dismissButton.getParent().requestDisallowInterceptTouchEvent(true);
                            this.activePointerId = event.getPointerId(0);
                            return true;
                        case 1:
                        case 3:
                            int pointerIndex = event.findPointerIndex(this.activePointerId);
                            if (pointerIndex < 0) {
                                Logger.e(QuickPageAdapter.TAG, "Error processing scroll; pointer index for id " + this.activePointerId + " not found. Did any MotionEvents get skipped?");
                                return false;
                            }
                            int currentX = (int) (event.getX(pointerIndex) + 0.5f);
                            int currentY = (int) (event.getY(pointerIndex) + 0.5f);
                            if (currentX > 0 && currentX < v.getWidth() && currentY > 0 && currentY < v.getHeight()) {
                                this.dismissButton.getParent().requestDisallowInterceptTouchEvent(false);
                                this.dismissButton.setVisibility(8);
                                this.dismissButton.setOnClickListener(null);
                                this.dragHandle.setVisibility(8);
                                this.dragHandleDrawable.setVisibility(8);
                                this.dragHandleTouchable.setOnTouchListener(null);
                                QuickPageAdapter.this.setEditing(false);
                                Logger.d(QuickPageAdapter.TAG, "onPerformAction delete item=%s , position=%d ", this.item.toString(), Integer.valueOf(this.position));
                                QuickPageAdapter.this.mProvider.removeItem(this.position);
                                QuickPageAdapter.this.notifyItemRemoved(this.position);
                                if (QuickPageAdapter.this.mEventListener != null) {
                                    QuickPageAdapter.this.mEventListener.onItemRemoved(this.position);
                                }
                                Map<String, String> mdmData = new HashMap<>();
                                if (this.item.getViewType() == 2) {
                                    mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_REMOVED, this.item.getClass().getCanonicalName());
                                    mdmData.put(AnalyticHelper.Label.MDM_SHELF_WIDGET_COUNT, String.valueOf(QuickPageAdapter.this.getWidgetCount()));
                                } else {
                                    mdmData.put(AnalyticHelper.Label.MDM_SHELF_CARD_REMOVED, this.item.getClass().getCanonicalName());
                                }
                                mdmData.put(AnalyticHelper.Label.MDM_SHELF_TILE_COUNT, String.valueOf(QuickPageAdapter.this.getBoardCount()));
                                if (mdmData.size() > 0) {
                                    AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, mdmData);
                                }
                            }
                            return true;
                        case 2:
                            return true;
                        default:
                            return true;
                    }
                default:
                    return false;
            }
        }

        public void actionUp() {
            this.dragHandleTouchable.getParent().requestDisallowInterceptTouchEvent(false);
            QuickPageAdapter.this.mTouchGuardManager.setMoveEventsEnabled(false);
            updateItemHeight();
            this.item.onItemResizeFinished();
            this.isResizing = false;
            this.initialY = -1.0f;
            if (QuickPageAdapter.this.mEventListener != null) {
                QuickPageAdapter.this.mEventListener.onItemResizeFinished(this.position);
            }
            Map<String, String> mdmData = new HashMap<>();
            switch (this.item.getViewType()) {
                case 0:
                    mdmData.put(AnalyticHelper.Label.MDM_SHELF_FREQUENT_APP_SIZE, String.valueOf(this.item.getSize()));
                    break;
                case 1:
                    mdmData.put(AnalyticHelper.Label.MDM_SHELF_FREQUENT_CONTACTS_SIZE, String.valueOf(this.item.getSize()));
                    break;
            }
            mdmData.put(AnalyticHelper.Label.MDM_SHELF_TILE_HEIGHT_ADJUSTED, this.item.getClass().getCanonicalName());
            if (mdmData.size() > 0) {
                AnalyticHelper.get().putAnalytics(AnalyticHelper.Tag.MDM_SHELF_TAG, mdmData);
            }
        }

        void setContent(QuickPageItem item, int position) {
            this.item = item;
            this.position = position;
            if (item.getViewType() == 2) {
                this.card.setCardBackgroundColor(0);
                this.card.setRadius(0.0f);
                this.card.setCardElevation(0.0f);
            }
            this.contentHolder.removeAllViews();
            View content = item.getParent();
            ViewGroup contentParent = (ViewGroup) content.getParent();
            if (contentParent != null) {
                contentParent.removeAllViews();
            }
            this.contentHolder.addView(content);
            this.contentHolder.getLayoutParams().height = -2;
            item.onItemViewAttached();
            View contentView = item.getView();
            View emptyView = item.getEmptyView();
            if (emptyView != null) {
                if (item.isEmpty()) {
                    emptyView.setVisibility(0);
                    contentView.setVisibility(8);
                } else {
                    emptyView.setVisibility(8);
                    contentView.setVisibility(0);
                }
            }
            this.contentHolder.setTag(item);
            updateItemEditableLayout();
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        public void updateItemEditableLayout() {
            this.contentHolder.setEditable(QuickPageAdapter.this.mEditMode);
            boolean isRemovable = QuickPageAdapter.this.isItemEditable(this.position);
            boolean isResizable = QuickPageAdapter.this.isItemLongPressing(this.position) && !this.item.isEmpty() && (this.item.getViewType() != 4 || this.item.hasScrollableContent()) && this.item.isVerticalResizable();
            if (isRemovable) {
                this.card.setCardElevation(0.0f);
                this.dismissButton.setVisibility(0);
                this.dismissButton.setOnTouchListener(this);
            } else {
                if (getItemViewType() != 2) {
                    this.card.setCardElevation(QuickPageAdapter.this.mCardElevation);
                }
                this.dismissButton.setVisibility(8);
                this.dismissButton.setOnTouchListener(null);
            }
            if (this.isResizing) {
                updateItemHeight();
                this.isResizing = false;
            }
            if (isResizable) {
                int visibility = QuickPageAdapter.this.isItemEditable(this.position) ? 0 : 4;
                this.dragHandle.setVisibility(visibility);
                this.dragHandleDrawable.setVisibility(visibility);
                this.dragHandleTouchable.setVisibility(visibility);
                this.dragHandleTouchable.setClickable(true);
                this.dragHandleTouchable.setOnTouchListener(this);
                return;
            }
            this.dragHandle.setVisibility(8);
            this.dragHandleDrawable.setVisibility(8);
            this.dragHandleTouchable.setVisibility(8);
            this.dragHandleTouchable.setClickable(false);
            this.dragHandleTouchable.setOnTouchListener(null);
        }

        void updateItemHeight() {
            this.holderParams.height = this.item.getStandardHeight(this.holderParams.height);
            this.contentHolder.requestLayout();
            this.handleParams.height = -1;
            this.dragHandle.requestLayout();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public class HeaderFooterViewHolder extends ViewHolder {
        HeaderFooterViewHolder(View v) {
            super(v);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public QuickPageAdapter(DataProvider provider, Spring spring) {
        this.mProvider = provider;
        this.mSpring = spring;
        setHasStableIds(true);
    }

    public void init(QuickPageBaseActivity activity, RecyclerViewTouchActionGuardManager touchActionGuardManager) {
        this.mActivity = activity;
        this.mTouchGuardManager = touchActionGuardManager;
        this.mAnimTime = this.mActivity.getApplicationContext().getResources().getInteger(android.R.integer.config_shortAnimTime);
        this.mCardElevation = this.mActivity.getApplicationContext().getResources().getDimensionPixelSize(R.dimen.quick_page_item_elevation);
        this.mEditModeDuration = this.mActivity.getApplicationContext().getResources().getInteger(R.integer.edit_mode_animation_duration);
        this.mBottomPadding = this.mActivity.getApplicationContext().getResources().getDimensionPixelSize(R.dimen.quick_page_item_bottom_padding);
        this.mCardBorderExpandSize = Math.abs(this.mActivity.getApplicationContext().getResources().getDimensionPixelSize(R.dimen.quick_page_item_edit_mode_card_margin)) * 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setHasSoftwareKeys(boolean hasSoftwareKeys) {
        if (hasSoftwareKeys != this.mHasSoftwareKeys) {
            this.mHasSoftwareKeys = hasSoftwareKeys;
            notifyDataSetChanged();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setQuickPageScrolling(boolean scrolling) {
        this.mQuickPageScrolling = scrolling;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setLongPressing(boolean longPressing, int position) {
        if (longPressing != this.mLongPressing) {
            this.mLongPressing = longPressing;
            setEditableItem(position);
            Logger.d(TAG, "setLongPressing: %b %d", Boolean.valueOf(longPressing), Integer.valueOf(position));
        }
    }

    public boolean isLongPressing() {
        return this.mLongPressing;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isItemEditable(int position) {
        return this.mEditMode && this.mEditableItemPosition == position;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean isItemLongPressing(int position) {
        return isLongPressing() && this.mEditableItemPosition == position;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEditing(boolean editing) {
        if (editing != this.mEditMode) {
            this.mEditMode = editing;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEditableItem(int position) {
        this.mEditableItemPosition = position;
    }

    public int getEditableItem() {
        return this.mEditableItemPosition;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSchemeHelper(SchemeHelper schemeHelper) {
        this.mScheme = schemeHelper.getCurrentScheme();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void onItemViewClick(View v) {
        if (this.mEventListener != null) {
            this.mEventListener.onItemViewClicked(v, false);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean onItemViewTouch(View v, MotionEvent ev) {
        return this.mEventListener != null && this.mEventListener.onItemViewTouched(v, ev);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getBoardCount() {
        int count = getItemCount() - 2;
        if (count < 0) {
            return 0;
        }
        return count;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getWidgetCount() {
        int count = 0;
        for (int i = 0; i < getItemCount(); i++) {
            if (i != 0 && getItemCount() - 1 != i && getItemViewType(i) == 2) {
                count++;
            }
        }
        return count;
    }

    public void updateNoteReminders() {
        for (int i = 0; i < this.mProvider.getCount(); i++) {
            if (this.mProvider.getItem(i).getViewType() == 4) {
                NotePanel note = (NotePanel) this.mProvider.getItem(i);
                note.updateReminderVisibility();
                note.getView().invalidate();
            }
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public long getItemId(int position) {
        return this.mProvider.getItem(position).getId();
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemViewType(int position) {
        if (position == 0) {
            return 101;
        }
        if (position == getItemCount() - 1) {
            return 102;
        }
        return this.mProvider.getItem(position).getViewType() != 2 ? 100 : 2;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewRecycled(ViewHolder holder) {
        View item = holder.container;
        if (item != null) {
            item.setPadding(0, 0, 0, this.mBottomPadding);
            item.setAlpha(1.0f);
        }
        super.onViewRecycled((QuickPageAdapter) holder);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewAttachedToWindow(ViewHolder holder) {
        if (holder.getItemViewType() != 101 && holder.getItemViewType() != 102) {
            if (this.mLongPressing) {
                holder.container.setAlpha(0.5f);
            } else {
                holder.container.setAlpha(1.0f);
            }
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onViewDetachedFromWindow(ViewHolder holder) {
        if (holder.getItemViewType() != 101 && holder.getItemViewType() != 102 && this.mLongPressing) {
            holder.container.setAlpha(1.0f);
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public ViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        ViewHolder holder;
        Logger.d(TAG, "onCreateViewHolder:" + viewType);
        LayoutInflater inflater = LayoutInflater.from(parent.getContext());
        switch (viewType) {
            case 2:
                holder = new ViewHolder(inflater.inflate(R.layout.view_holder_container, parent, false));
                break;
            case 101:
                View child = inflater.inflate(R.layout.welcome_panel, parent, false);
                holder = new HeaderFooterViewHolder(child);
                View welcomePanel = child.findViewById(R.id.welcome_panel);
                this.mActivity.setWelcomePanel((WelcomePanel) welcomePanel);
                break;
            case 102:
                holder = new HeaderFooterViewHolder(inflater.inflate(R.layout.footer_panel, parent, false));
                RecyclerView.LayoutParams params = (RecyclerView.LayoutParams) holder.itemView.getLayoutParams();
                params.bottomMargin = this.mHasSoftwareKeys ? this.mActivity.getApplicationContext().getResources().getDimensionPixelSize(R.dimen.quick_page_margin_bottom) : 0;
                holder.itemView.requestLayout();
                break;
            default:
                holder = new ViewHolder(inflater.inflate(R.layout.view_holder_container, parent, false));
                break;
        }
        holder.itemView.setOnClickListener(this.mItemViewOnClickListener);
        holder.itemView.setOnTouchListener(this.mItemViewOnTouchListener);
        if (this.mSpring != null) {
            this.mSpring.addListener(holder.container);
        }
        return holder;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(ViewHolder holder, int position) {
        Logger.d(TAG, "onBindViewHolder:" + position);
        AbstractDataProvider.Data item = this.mProvider.getItem(position);
        if (item instanceof QuickPageItem) {
            holder.setContent((QuickPageItem) item, position);
        }
        if (!this.mQuickPageScrolling && position != 0 && position != getItemCount() - 1) {
            updateItemLayout(holder.container, position);
        }
        holder.container.setTranslationY(0.0f);
        if (!this.mLongPressing) {
            View view = holder.container;
            if (view.getAlpha() != 1.0f) {
                view.setAlpha(1.0f);
            }
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemCount() {
        return this.mProvider.getCount();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemAdapter
    public void onMoveItem(int fromPosition, int toPosition) {
        if (fromPosition != toPosition) {
            this.mProvider.moveItem(fromPosition, toPosition);
            notifyItemMoved(fromPosition, toPosition);
        }
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemAdapter
    public boolean onCheckCanStartDrag(ViewHolder holder, int position, int x, int y) {
        return (position == 0 || position == getItemCount() + (-1)) ? false : true;
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.DraggableItemAdapter
    public ItemDraggableRange onGetItemDraggableRange(ViewHolder holder, int position) {
        return new ItemDraggableRange(1, getItemCount() - 2);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void updateItemLayout(final View item, int position) {
        final boolean isCurrentEditItem = this.mEditableItemPosition == position;
        ValueAnimator animator = ValueAnimator.ofFloat(0.0f, 1.0f).setDuration(this.mEditModeDuration);
        animator.addUpdateListener(new ValueAnimator.AnimatorUpdateListener() { // from class: net.oneplus.h2launcher.quickpage.QuickPageAdapter.3
            @Override // android.animation.ValueAnimator.AnimatorUpdateListener
            public void onAnimationUpdate(ValueAnimator animation) {
                float progress = animation.getAnimatedFraction();
                float alpha = item.getAlpha();
                int padding = item.getPaddingBottom();
                if (QuickPageAdapter.this.mLongPressing) {
                    if (isCurrentEditItem) {
                        item.setPadding(0, 0, 0, ((int) (((QuickPageAdapter.this.mBottomPadding * 4) - padding) * progress)) + padding);
                        item.setAlpha(1.0f);
                        return;
                    } else {
                        item.setAlpha(alpha - ((alpha - 0.5f) * progress));
                        return;
                    }
                }
                item.setPadding(0, 0, 0, padding - ((int) ((padding - QuickPageAdapter.this.mBottomPadding) * progress)));
                item.setAlpha(((1.0f - alpha) * progress) + alpha);
            }
        });
        animator.start();
    }

    EventListener getEventListener() {
        return this.mEventListener;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setEventListener(EventListener eventListener) {
        this.mEventListener = eventListener;
    }
}
