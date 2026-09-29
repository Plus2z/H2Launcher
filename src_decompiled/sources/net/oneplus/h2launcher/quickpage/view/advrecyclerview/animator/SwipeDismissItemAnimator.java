package net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator;

import android.support.v4.view.ViewCompat;
import android.support.v4.view.ViewPropertyAnimatorCompat;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.Interpolator;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.AddAnimationInfo;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ChangeAnimationInfo;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAddAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemChangeAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemMoveAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemRemoveAnimationManager;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.MoveAnimationInfo;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.RemoveAnimationInfo;
import net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.SwipeableItemViewHolder;

/* loaded from: classes.dex */
public class SwipeDismissItemAnimator extends GeneralItemAnimator {
    public static final Interpolator MOVE_INTERPOLATOR = new AccelerateDecelerateInterpolator();

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.GeneralItemAnimator
    protected void onSetup() {
        setItemAddAnimationsManager(new DefaultItemAddAnimationManager(this));
        setItemRemoveAnimationManager(new SwipeDismissItemRemoveAnimationManager(this));
        setItemChangeAnimationsManager(new SwipeDismissItemChangeAnimationManager(this));
        setItemMoveAnimationsManager(new SwipeDismissItemMoveAnimationManager(this));
        setRemoveDuration(150L);
        setMoveDuration(150L);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.GeneralItemAnimator
    protected void onSchedulePendingAnimations() {
        schedulePendingAnimationsByDefaultRule();
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.GeneralItemAnimator
    protected void cancelAnimations(RecyclerView.ViewHolder item) {
        super.cancelAnimations(item);
    }

    /* loaded from: classes.dex */
    private static class DefaultItemAddAnimationManager extends ItemAddAnimationManager {
        public DefaultItemAddAnimationManager(BaseItemAnimator itemAnimator) {
            super(itemAnimator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onCreateAnimation(AddAnimationInfo info) {
            ViewPropertyAnimatorCompat animator = ViewCompat.animate(info.holder.itemView);
            animator.alpha(1.0f);
            animator.setDuration(getDuration());
            startActiveItemAnimation(info, info.holder, animator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedSuccessfully(AddAnimationInfo info, RecyclerView.ViewHolder item) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedBeforeStarted(AddAnimationInfo info, RecyclerView.ViewHolder item) {
            ViewCompat.setAlpha(item.itemView, 1.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationCancel(AddAnimationInfo info, RecyclerView.ViewHolder item) {
            ViewCompat.setAlpha(item.itemView, 1.0f);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemAddAnimationManager
        public boolean addPendingAnimation(RecyclerView.ViewHolder item) {
            endAnimation(item);
            ViewCompat.setAlpha(item.itemView, 0.0f);
            enqueuePendingAnimationInfo(new AddAnimationInfo(item));
            return true;
        }
    }

    /* loaded from: classes.dex */
    private static class SwipeDismissItemRemoveAnimationManager extends ItemRemoveAnimationManager {
        private static final Interpolator DEFAULT_INTERPOLATOR = new AccelerateDecelerateInterpolator();

        public SwipeDismissItemRemoveAnimationManager(BaseItemAnimator itemAnimator) {
            super(itemAnimator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onCreateAnimation(RemoveAnimationInfo info) {
            ViewPropertyAnimatorCompat animator;
            if (isSwipeDismissed(info.holder)) {
                View view = info.holder.itemView;
                animator = ViewCompat.animate(view);
                animator.setDuration(getDuration());
            } else {
                View view2 = info.holder.itemView;
                animator = ViewCompat.animate(view2);
                animator.setDuration(getDuration());
                animator.setInterpolator(DEFAULT_INTERPOLATOR);
                animator.alpha(0.0f);
            }
            startActiveItemAnimation(info, info.holder, animator);
        }

        /* JADX WARN: Multi-variable type inference failed */
        private static boolean isSwipeDismissed(RecyclerView.ViewHolder viewHolder) {
            if (!(viewHolder instanceof SwipeableItemViewHolder)) {
                return false;
            }
            SwipeableItemViewHolder item2 = (SwipeableItemViewHolder) viewHolder;
            int result = item2.getSwipeResult();
            int reaction = item2.getAfterSwipeReaction();
            return (result == 2 || result == 3 || result == 4 || result == 5) && reaction == 1;
        }

        private static boolean isSwipeDismissed(RemoveAnimationInfo info) {
            return info instanceof SwipeDismissRemoveAnimationInfo;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedSuccessfully(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            if (isSwipeDismissed(info)) {
                ViewCompat.setTranslationX(view, 0.0f);
                ViewCompat.setTranslationY(view, 0.0f);
            } else {
                ViewCompat.setAlpha(view, 1.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedBeforeStarted(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            if (isSwipeDismissed(info)) {
                ViewCompat.setTranslationX(view, 0.0f);
                ViewCompat.setTranslationY(view, 0.0f);
            } else {
                ViewCompat.setAlpha(view, 1.0f);
            }
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationCancel(RemoveAnimationInfo info, RecyclerView.ViewHolder item) {
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemRemoveAnimationManager
        public boolean addPendingAnimation(RecyclerView.ViewHolder holder) {
            if (isSwipeDismissed(holder)) {
                View itemView = holder.itemView;
                int prevItemX = (int) (ViewCompat.getTranslationX(itemView) + 0.5f);
                int prevItemY = (int) (ViewCompat.getTranslationY(itemView) + 0.5f);
                endAnimation(holder);
                ViewCompat.setTranslationX(itemView, prevItemX);
                ViewCompat.setTranslationY(itemView, prevItemY);
                enqueuePendingAnimationInfo(new SwipeDismissRemoveAnimationInfo(holder));
            } else {
                endAnimation(holder);
                enqueuePendingAnimationInfo(new RemoveAnimationInfo(holder));
            }
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes.dex */
    public static class SwipeDismissRemoveAnimationInfo extends RemoveAnimationInfo {
        public SwipeDismissRemoveAnimationInfo(RecyclerView.ViewHolder holder) {
            super(holder);
        }
    }

    /* loaded from: classes.dex */
    private static class SwipeDismissItemChangeAnimationManager extends ItemChangeAnimationManager {
        public SwipeDismissItemChangeAnimationManager(BaseItemAnimator itemAnimator) {
            super(itemAnimator);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemChangeAnimationManager
        protected void onCreateChangeAnimationForOldItem(ChangeAnimationInfo info) {
            ViewPropertyAnimatorCompat animator = ViewCompat.animate(info.oldHolder.itemView);
            animator.setDuration(getDuration());
            animator.translationX(info.toX - info.fromX);
            animator.translationY(info.toY - info.fromY);
            animator.alpha(0.0f);
            startActiveItemAnimation(info, info.oldHolder, animator);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemChangeAnimationManager
        protected void onCreateChangeAnimationForNewItem(ChangeAnimationInfo info) {
            ViewPropertyAnimatorCompat animator = ViewCompat.animate(info.newHolder.itemView);
            animator.translationX(0.0f);
            animator.translationY(0.0f);
            animator.setDuration(getDuration());
            animator.alpha(1.0f);
            startActiveItemAnimation(info, info.newHolder, animator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedSuccessfully(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            ViewCompat.setAlpha(view, 1.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setTranslationY(view, 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedBeforeStarted(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            ViewCompat.setAlpha(view, 1.0f);
            ViewCompat.setTranslationX(view, 0.0f);
            ViewCompat.setTranslationY(view, 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationCancel(ChangeAnimationInfo info, RecyclerView.ViewHolder item) {
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemChangeAnimationManager
        public boolean addPendingAnimation(RecyclerView.ViewHolder oldHolder, RecyclerView.ViewHolder newHolder, int fromX, int fromY, int toX, int toY) {
            float prevTranslationX = ViewCompat.getTranslationX(oldHolder.itemView);
            float prevTranslationY = ViewCompat.getTranslationY(oldHolder.itemView);
            float prevAlpha = ViewCompat.getAlpha(oldHolder.itemView);
            endAnimation(oldHolder);
            int deltaX = (int) ((toX - fromX) - prevTranslationX);
            int deltaY = (int) ((toY - fromY) - prevTranslationY);
            ViewCompat.setTranslationX(oldHolder.itemView, prevTranslationX);
            ViewCompat.setTranslationY(oldHolder.itemView, prevTranslationY);
            ViewCompat.setAlpha(oldHolder.itemView, prevAlpha);
            if (newHolder != null) {
                endAnimation(newHolder);
                ViewCompat.setTranslationX(newHolder.itemView, -deltaX);
                ViewCompat.setTranslationY(newHolder.itemView, -deltaY);
                ViewCompat.setAlpha(newHolder.itemView, 0.0f);
            }
            enqueuePendingAnimationInfo(new ChangeAnimationInfo(oldHolder, newHolder, fromX, fromY, toX, toY));
            return true;
        }
    }

    /* loaded from: classes.dex */
    private static class SwipeDismissItemMoveAnimationManager extends ItemMoveAnimationManager {
        public SwipeDismissItemMoveAnimationManager(BaseItemAnimator itemAnimator) {
            super(itemAnimator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onCreateAnimation(MoveAnimationInfo info) {
            View view = info.holder.itemView;
            int deltaX = info.toX - info.fromX;
            int deltaY = info.toY - info.fromY;
            if (deltaX != 0) {
                ViewCompat.animate(view).translationX(0.0f);
            }
            if (deltaY != 0) {
                ViewCompat.animate(view).translationY(0.0f);
            }
            ViewPropertyAnimatorCompat animator = ViewCompat.animate(view);
            animator.setDuration(getDuration());
            animator.setInterpolator(SwipeDismissItemAnimator.MOVE_INTERPOLATOR);
            startActiveItemAnimation(info, info.holder, animator);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedSuccessfully(MoveAnimationInfo info, RecyclerView.ViewHolder item) {
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationEndedBeforeStarted(MoveAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            ViewCompat.setTranslationY(view, 0.0f);
            ViewCompat.setTranslationX(view, 0.0f);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.BaseItemAnimationManager
        public void onAnimationCancel(MoveAnimationInfo info, RecyclerView.ViewHolder item) {
            View view = item.itemView;
            int deltaX = info.toX - info.fromX;
            int deltaY = info.toY - info.fromY;
            if (deltaX != 0) {
                ViewCompat.animate(view).translationX(0.0f);
            }
            if (deltaY != 0) {
                ViewCompat.animate(view).translationY(0.0f);
            }
            if (deltaX != 0) {
                ViewCompat.setTranslationX(view, 0.0f);
            }
            if (deltaY != 0) {
                ViewCompat.setTranslationY(view, 0.0f);
            }
        }

        @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.animator.impl.ItemMoveAnimationManager
        public boolean addPendingAnimation(RecyclerView.ViewHolder item, int fromX, int fromY, int toX, int toY) {
            View view = item.itemView;
            int fromX2 = (int) (fromX + ViewCompat.getTranslationX(item.itemView));
            int fromY2 = (int) (fromY + ViewCompat.getTranslationY(item.itemView));
            endAnimation(item);
            int deltaX = toX - fromX2;
            int deltaY = toY - fromY2;
            MoveAnimationInfo info = new MoveAnimationInfo(item, fromX2, fromY2, toX, toY);
            if (deltaX == 0 && deltaY == 0) {
                dispatchFinished(info, info.holder);
                info.clear(info.holder);
                return false;
            }
            if (deltaX != 0) {
                ViewCompat.setTranslationX(view, -deltaX);
            }
            if (deltaY != 0) {
                ViewCompat.setTranslationY(view, -deltaY);
            }
            enqueuePendingAnimationInfo(info);
            return true;
        }
    }
}
