package net.oneplus.h2launcher.iconrearrangement;

import android.animation.Animator;
import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import net.oneplus.h2launcher.BubbleTextView;
import net.oneplus.h2launcher.LauncherViewPropertyAnimator;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.ShortcutInfo;
import net.oneplus.h2launcher.iconrearrangement.IconRearrangementHelper;
import net.oneplus.h2launcher.util.Logger;

/* loaded from: classes.dex */
public class IconRearrangementAdapter extends RecyclerView.Adapter<IconRearrangementRowViewHolder> implements View.OnClickListener {
    private static final int ANIMATION_DURATION = 100;
    private static final String TAG = "IconRearrangementAdapter";
    private Context mContext;
    private final LayoutInflater mLayoutInflater;
    private int mListViewItemWidth;
    private OnItemChangedListener mOnItemChangedListener;
    private OnItemClickListener mOnItemClickListener;
    private ArrayList<ShortcutInfo> mShortcutInfos;
    private HashMap<View, Integer> mPositionViewMap = new HashMap<>();
    private HashMap<ShortcutInfo, View> mLastBindInfoView = new HashMap<>();
    private HashSet<ShortcutInfo> mNeedAnimationShortcutInfos = new HashSet<>();
    private HashMap<View, Animator> mRunningAnimators = new HashMap<>();

    /* loaded from: classes.dex */
    public interface OnItemChangedListener {
        void onItemChanged();
    }

    /* loaded from: classes.dex */
    public interface OnItemClickListener {
        void onItemClick(View view, int i);
    }

    public IconRearrangementAdapter(Context context, ArrayList<ShortcutInfo> shortcutInfos, OnItemClickListener onItemClickListener, OnItemChangedListener onItemChangedListener) {
        this.mOnItemClickListener = null;
        this.mOnItemChangedListener = null;
        this.mContext = context;
        this.mShortcutInfos = shortcutInfos;
        this.mOnItemClickListener = onItemClickListener;
        this.mOnItemChangedListener = onItemChangedListener;
        this.mLayoutInflater = LayoutInflater.from(context);
        this.mListViewItemWidth = context.getResources().getDimensionPixelOffset(R.dimen.icon_rearrangement_item_width);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public IconRearrangementRowViewHolder onCreateViewHolder(ViewGroup parent, int viewType) {
        LinearLayout layout = (LinearLayout) this.mLayoutInflater.inflate(R.layout.icon_rearrangement_item, (ViewGroup) null);
        layout.setLayoutParams(new LinearLayout.LayoutParams(this.mListViewItemWidth, -2));
        BubbleTextView iconView = (BubbleTextView) layout.findViewById(R.id.shortcut_icon);
        IconRearrangementRowViewHolder viewHolder = new IconRearrangementRowViewHolder(layout, iconView);
        iconView.setOnClickListener(this);
        return viewHolder;
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public void onBindViewHolder(IconRearrangementRowViewHolder viewHolder, int position) {
        ShortcutInfo info = this.mShortcutInfos.get(position);
        viewHolder.mIconView.applyFromShortcutInfo(info, false, true, true);
        this.mPositionViewMap.put(viewHolder.mIconView, new Integer(position));
        this.mLastBindInfoView.put(info, viewHolder.mIconView);
        Animator animator = this.mRunningAnimators.get(viewHolder.mIconView);
        if (animator != null && animator.isRunning()) {
            animator.cancel();
        }
        viewHolder.mContent.setTranslationX(0.0f);
        if (this.mNeedAnimationShortcutInfos.contains(info)) {
            this.mNeedAnimationShortcutInfos.remove(info);
            viewHolder.mIconView.setAlpha(0.0f);
            LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(viewHolder.mIconView);
            alphaAnim.alpha(1.0f);
            alphaAnim.setDuration(100L);
            this.mRunningAnimators.put(viewHolder.mIconView, alphaAnim);
            alphaAnim.start();
            return;
        }
        viewHolder.mIconView.setAlpha(1.0f);
    }

    @Override // com.oneplus.lib.widget.recyclerview.RecyclerView.Adapter
    public int getItemCount() {
        return this.mShortcutInfos.size();
    }

    public boolean addShortcutInfo(ShortcutInfo info) {
        if (this.mShortcutInfos.contains(info)) {
            return false;
        }
        this.mShortcutInfos.add(info);
        this.mNeedAnimationShortcutInfos.add(info);
        if (this.mOnItemChangedListener != null) {
            this.mOnItemChangedListener.onItemChanged();
        }
        notifyItemInserted(this.mShortcutInfos.size() - 1);
        return true;
    }

    public boolean removeShortcutInfoAnimated(ShortcutInfo shortcutInfo, View v, IconRearrangementHelper.TaskStageCallback callback, Runnable task, Runnable endRunnable) {
        if (this.mShortcutInfos.contains(shortcutInfo)) {
            runRemoveViewAnimator(v, shortcutInfo, callback, task, endRunnable);
            return true;
        }
        callback.onTaskEnd(task);
        return false;
    }

    public void removeShortcutInfosAnimated(ArrayList<ShortcutInfo> shortcutInfos) {
        int index;
        for (View v : this.mPositionViewMap.keySet()) {
            ShortcutInfo shortcutInfo = (ShortcutInfo) v.getTag();
            if (shortcutInfos.contains(shortcutInfo) && this.mShortcutInfos.contains(shortcutInfo)) {
                runRemoveViewAnimator(v, shortcutInfo, null, null, null);
                shortcutInfos.remove(shortcutInfo);
            }
        }
        Iterator<ShortcutInfo> it = shortcutInfos.iterator();
        while (it.hasNext()) {
            ShortcutInfo shortcutInfo2 = it.next();
            if (this.mShortcutInfos.contains(shortcutInfo2) && (index = this.mShortcutInfos.indexOf(shortcutInfo2)) >= 0) {
                this.mShortcutInfos.remove(index);
                if (this.mOnItemChangedListener != null) {
                    this.mOnItemChangedListener.onItemChanged();
                }
                notifyItemRemoved(index);
            }
        }
    }

    private void runRemoveViewAnimator(View v, final ShortcutInfo shortcutInfo, final IconRearrangementHelper.TaskStageCallback callback, final Runnable task, final Runnable endRunnable) {
        Animator animator = this.mRunningAnimators.get(v);
        if (animator != null && animator.isRunning()) {
            animator.cancel();
        }
        ShortcutInfo viewInfo = (ShortcutInfo) v.getTag();
        if (viewInfo != shortcutInfo) {
            Logger.d(TAG, "view bind other item, don't run remove animator, view = " + v);
            int index = this.mShortcutInfos.indexOf(shortcutInfo);
            this.mShortcutInfos.remove(shortcutInfo);
            if (index >= 0) {
                notifyItemRemoved(index);
                if (this.mOnItemChangedListener != null) {
                    this.mOnItemChangedListener.onItemChanged();
                }
            }
            if (endRunnable != null) {
                endRunnable.run();
            }
            if (callback != null && task != null) {
                callback.onTaskEnd(task);
                return;
            }
            return;
        }
        v.setAlpha(1.0f);
        LauncherViewPropertyAnimator alphaAnim = new LauncherViewPropertyAnimator(v);
        alphaAnim.alpha(0.0f);
        alphaAnim.setDuration(100L);
        this.mRunningAnimators.put(v, alphaAnim);
        alphaAnim.addListener(new Animator.AnimatorListener() { // from class: net.oneplus.h2launcher.iconrearrangement.IconRearrangementAdapter.1
            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationCancel(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationEnd(Animator animation) {
                int index2 = IconRearrangementAdapter.this.mShortcutInfos.indexOf(shortcutInfo);
                IconRearrangementAdapter.this.mShortcutInfos.remove(shortcutInfo);
                if (index2 >= 0) {
                    if (IconRearrangementAdapter.this.mOnItemChangedListener != null) {
                        IconRearrangementAdapter.this.mOnItemChangedListener.onItemChanged();
                    }
                    IconRearrangementAdapter.this.notifyItemRemoved(index2);
                }
                if (endRunnable != null) {
                    endRunnable.run();
                }
                if (callback != null && task != null) {
                    callback.onTaskEnd(task);
                }
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationRepeat(Animator animation) {
            }

            @Override // android.animation.Animator.AnimatorListener
            public void onAnimationStart(Animator animation) {
            }
        });
        alphaAnim.start();
    }

    public ArrayList<ShortcutInfo> getShortcutInfos() {
        return this.mShortcutInfos;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        if (this.mOnItemClickListener != null) {
            Integer pos = this.mPositionViewMap.get(v);
            if (pos == null) {
                pos = new Integer(-1);
            }
            this.mOnItemClickListener.onItemClick(v, pos.intValue());
        }
    }

    public void stopAllAnimator() {
        this.mNeedAnimationShortcutInfos.clear();
        for (View v : this.mRunningAnimators.keySet()) {
            Animator animator = this.mRunningAnimators.get(v);
            if (animator != null && animator.isRunning()) {
                animator.cancel();
            }
        }
        this.mRunningAnimators.clear();
    }

    public Set<View> getAllItemViews() {
        return this.mPositionViewMap.keySet();
    }

    public ArrayList<View> getVisibleViews() {
        ArrayList<View> visibleViews = new ArrayList<>();
        for (View v : this.mPositionViewMap.keySet()) {
            ShortcutInfo info = (ShortcutInfo) v.getTag();
            if (this.mLastBindInfoView.get(info) == v) {
                visibleViews.add(v);
            }
        }
        return visibleViews;
    }
}
