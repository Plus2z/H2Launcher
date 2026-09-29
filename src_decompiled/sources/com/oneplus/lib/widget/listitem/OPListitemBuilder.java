package com.oneplus.lib.widget.listitem;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AbsListView;
import android.widget.ImageView;
import android.widget.TextView;
import com.oneplus.commonctrl.R;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public final class OPListitemBuilder {
    private static final boolean DEBUG = false;
    private static final String TAG = "OPListitem";
    private Context mContext;
    private boolean mIconEnabled = false;
    private boolean mPrimaryTextEnabled = false;
    private boolean mSecondaryTextEnabled = false;
    private boolean mStampEnabled = false;
    private boolean mActionButtonEnabled = false;

    public OPListitemBuilder(Context context) {
        this.mContext = null;
        this.mContext = context;
    }

    public OPListitem build() {
        OPListitemImpl item = new OPListitemImpl(this.mContext);
        AbsListView.LayoutParams lp = new AbsListView.LayoutParams(-1, 216);
        item.setLayoutParams(lp);
        return item;
    }

    public OPListitemBuilder setIconEnabled(boolean enabled) {
        this.mIconEnabled = enabled;
        return this;
    }

    public OPListitemBuilder setPrimaryTextEnabled(boolean enabled) {
        this.mPrimaryTextEnabled = enabled;
        return this;
    }

    public OPListitemBuilder setSecondaryTextEnabled(boolean enabled) {
        this.mSecondaryTextEnabled = enabled;
        return this;
    }

    public OPListitemBuilder setStampEnabled(boolean enabled) {
        this.mStampEnabled = enabled;
        this.mActionButtonEnabled = !enabled;
        return this;
    }

    public OPListitemBuilder setActionButtonEnabled(boolean enabled) {
        this.mActionButtonEnabled = enabled;
        this.mStampEnabled = !enabled;
        return this;
    }

    public OPListitemBuilder reset() {
        this.mIconEnabled = false;
        this.mPrimaryTextEnabled = false;
        this.mSecondaryTextEnabled = false;
        this.mStampEnabled = false;
        this.mActionButtonEnabled = false;
        return this;
    }

    /* loaded from: classes.dex */
    private class OPListitemImpl extends OPListitem {
        private int mActionBtnSize;
        private ImageView mActionButton;
        private Context mContext;
        private ImageView mIcon;
        private int mIconSize;
        private int mMarginM1;
        private TextView mPrimaryText;
        private int mRemainHeight;
        private Resources mResources;
        private TextView mSecondaryText;
        private TextView mStamp;

        public OPListitemImpl(Context context) {
            super(context);
            this.mResources = null;
            this.mIcon = null;
            this.mPrimaryText = null;
            this.mSecondaryText = null;
            this.mStamp = null;
            this.mActionButton = null;
            this.mIconSize = -1;
            this.mActionBtnSize = -1;
            this.mMarginM1 = 0;
            this.mRemainHeight = 0;
            this.mContext = null;
            this.mContext = context;
            init();
        }

        private void init() {
            if (this.mContext != null) {
                this.mResources = this.mContext.getResources();
                this.mMarginM1 = this.mResources.getDimensionPixelOffset(R.dimen.margin_m1);
                if (OPListitemBuilder.this.mIconEnabled) {
                    this.mIcon = new ImageView(this.mContext);
                    this.mIconSize = this.mResources.getDimensionPixelOffset(R.dimen.listitem_icon_size);
                    this.mIcon.setLayoutParams(new ViewGroup.LayoutParams(this.mIconSize, this.mIconSize));
                    addView(this.mIcon);
                }
                if (OPListitemBuilder.this.mPrimaryTextEnabled) {
                    this.mPrimaryText = new TextView(this.mContext, null, 0, R.style.listitem_primary_text_font);
                    this.mPrimaryText.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    addView(this.mPrimaryText);
                }
                if (OPListitemBuilder.this.mSecondaryTextEnabled) {
                    this.mSecondaryText = new TextView(this.mContext, null, 0, R.style.listitem_secondary_text_font);
                    this.mSecondaryText.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    addView(this.mSecondaryText);
                }
                if (OPListitemBuilder.this.mStampEnabled) {
                    this.mStamp = new TextView(this.mContext, null, 0, R.style.listitem_stamp_font);
                    this.mStamp.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
                    addView(this.mStamp);
                }
                if (OPListitemBuilder.this.mActionButtonEnabled) {
                    this.mActionButton = new ImageView(this.mContext);
                    this.mActionBtnSize = this.mResources.getDimensionPixelOffset(R.dimen.listitem_actionbutton_size);
                    this.mActionButton.setLayoutParams(new ViewGroup.LayoutParams(this.mActionBtnSize, this.mActionBtnSize));
                    addView(this.mActionButton);
                }
            }
        }

        @Override // android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            setMeasuredDimension(widthMeasureSpec, heightMeasureSpec);
            int itemWidth = View.MeasureSpec.getSize(widthMeasureSpec);
            int itemHeight = View.MeasureSpec.getSize(heightMeasureSpec);
            int remaindWidth = itemWidth;
            int remainHeight = itemHeight;
            if (this.mIcon != null) {
                this.mIcon.measure(View.MeasureSpec.makeMeasureSpec(this.mIconSize, LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(this.mIconSize, LauncherActivityInfoCompat.FLAG_SUSPENDED));
                remaindWidth = (remaindWidth - this.mIconSize) - this.mMarginM1;
            }
            if (this.mActionButton != null) {
                this.mActionButton.measure(View.MeasureSpec.makeMeasureSpec(this.mActionBtnSize, LauncherActivityInfoCompat.FLAG_SUSPENDED), View.MeasureSpec.makeMeasureSpec(this.mActionBtnSize, LauncherActivityInfoCompat.FLAG_SUSPENDED));
                remaindWidth = (remaindWidth - this.mActionBtnSize) - this.mMarginM1;
            }
            if (this.mStamp != null) {
                this.mStamp.measure(View.MeasureSpec.makeMeasureSpec(remaindWidth, Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(itemHeight, Integer.MIN_VALUE));
                remaindWidth = (remaindWidth - this.mStamp.getMeasuredWidth()) - this.mMarginM1;
            }
            if (this.mPrimaryText != null) {
                this.mPrimaryText.measure(View.MeasureSpec.makeMeasureSpec(remaindWidth - (this.mMarginM1 * 2), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(remainHeight, Integer.MIN_VALUE));
                remainHeight -= this.mPrimaryText.getMeasuredHeight();
            }
            if (this.mSecondaryText != null) {
                if (this.mStamp != null) {
                    remaindWidth += this.mStamp.getMeasuredWidth();
                }
                this.mSecondaryText.measure(View.MeasureSpec.makeMeasureSpec(remaindWidth - (this.mMarginM1 * 2), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(remainHeight, Integer.MIN_VALUE));
                remainHeight -= this.mSecondaryText.getMeasuredHeight();
            }
            this.mRemainHeight = remainHeight;
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void onLayout(boolean changed, int l, int t, int r, int b) {
            layoutLTR(l, t, r, b);
        }

        @Override // android.view.ViewGroup, android.view.View
        protected void dispatchDraw(Canvas canvas) {
            super.dispatchDraw(canvas);
        }

        private void layoutLTR(int l, int t, int r, int b) {
            int top;
            int itemheight = b - t;
            int currentLeft = l;
            if (this.mIcon != null) {
                int left = l + this.mMarginM1;
                int top2 = (itemheight - this.mIconSize) / 2;
                int right = left + this.mIconSize;
                int bottom = top2 + this.mIconSize;
                this.mIcon.layout(left, top2, right, bottom);
                currentLeft = right;
            }
            if (this.mActionButton != null) {
                int right2 = r - this.mMarginM1;
                int left2 = right2 - this.mActionBtnSize;
                int top3 = (itemheight - this.mActionBtnSize) / 2;
                int bottom2 = top3 + this.mActionBtnSize;
                this.mActionButton.layout(left2, top3, right2, bottom2);
            }
            if (this.mSecondaryText != null) {
                int bottom3 = itemheight - (this.mRemainHeight / 2);
                int top4 = bottom3 - this.mSecondaryText.getMeasuredHeight();
                int left3 = currentLeft + this.mMarginM1;
                this.mSecondaryText.layout(left3, top4, left3 + this.mSecondaryText.getMeasuredWidth(), bottom3);
            }
            if (this.mPrimaryText != null) {
                int left4 = currentLeft + this.mMarginM1;
                int right3 = left4 + this.mPrimaryText.getMeasuredWidth();
                int top5 = this.mRemainHeight / 2;
                int bottom4 = top5 + this.mPrimaryText.getMeasuredHeight();
                this.mPrimaryText.layout(left4, top5, right3, bottom4);
            }
            if (this.mStamp != null) {
                int right4 = r - this.mMarginM1;
                int left5 = right4 - this.mStamp.getMeasuredWidth();
                if (this.mSecondaryText != null) {
                    top = (this.mRemainHeight / 2) + ((this.mPrimaryText.getMeasuredHeight() - this.mStamp.getMeasuredHeight()) / 2);
                } else {
                    top = (itemheight - this.mStamp.getMeasuredHeight()) / 2;
                }
                int bottom5 = top + this.mStamp.getMeasuredHeight();
                this.mStamp.layout(left5, top, right4, bottom5);
            }
        }

        @Override // com.oneplus.lib.widget.listitem.OPListitem
        public TextView getPrimaryText() {
            return this.mPrimaryText;
        }

        @Override // com.oneplus.lib.widget.listitem.OPListitem
        public TextView getSecondaryText() {
            return this.mSecondaryText;
        }

        @Override // com.oneplus.lib.widget.listitem.OPListitem
        public TextView getStamp() {
            return this.mStamp;
        }

        @Override // com.oneplus.lib.widget.listitem.OPListitem
        public ImageView getIcon() {
            return this.mIcon;
        }

        @Override // com.oneplus.lib.widget.listitem.OPListitem
        public ImageView getActionButton() {
            return this.mActionButton;
        }
    }
}
