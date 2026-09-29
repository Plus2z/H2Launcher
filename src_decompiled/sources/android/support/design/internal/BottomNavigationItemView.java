package android.support.design.internal;

import android.R;
import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.annotation.NonNull;
import android.support.annotation.RestrictTo;
import android.support.v4.content.ContextCompat;
import android.support.v4.graphics.drawable.DrawableCompat;
import android.support.v4.view.PointerIconCompat;
import android.support.v4.view.ViewCompat;
import android.support.v7.view.menu.MenuItemImpl;
import android.support.v7.view.menu.MenuView;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;

@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* loaded from: classes.dex */
public class BottomNavigationItemView extends FrameLayout implements MenuView.ItemView {
    private static final int[] CHECKED_STATE_SET = {R.attr.state_checked};
    public static final int INVALID_ITEM_POSITION = -1;
    private final int mDefaultMargin;
    private ImageView mIcon;
    private ColorStateList mIconTint;
    private MenuItemImpl mItemData;
    private int mItemPosition;
    private final TextView mLargeLabel;
    private final float mScaleDownFactor;
    private final float mScaleUpFactor;
    private final int mShiftAmount;
    private boolean mShiftingMode;
    private final TextView mSmallLabel;

    public BottomNavigationItemView(@NonNull Context context) {
        this(context, null);
    }

    public BottomNavigationItemView(@NonNull Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public BottomNavigationItemView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mItemPosition = -1;
        Resources res = getResources();
        int inactiveLabelSize = res.getDimensionPixelSize(android.support.design.R.dimen.design_bottom_navigation_text_size);
        int activeLabelSize = res.getDimensionPixelSize(android.support.design.R.dimen.design_bottom_navigation_active_text_size);
        this.mDefaultMargin = res.getDimensionPixelSize(android.support.design.R.dimen.design_bottom_navigation_margin);
        this.mShiftAmount = inactiveLabelSize - activeLabelSize;
        this.mScaleUpFactor = (activeLabelSize * 1.0f) / inactiveLabelSize;
        this.mScaleDownFactor = (inactiveLabelSize * 1.0f) / activeLabelSize;
        LayoutInflater.from(context).inflate(android.support.design.R.layout.design_bottom_navigation_item, (ViewGroup) this, true);
        setBackgroundResource(android.support.design.R.drawable.design_bottom_navigation_item_background);
        this.mIcon = (ImageView) findViewById(android.support.design.R.id.icon);
        this.mSmallLabel = (TextView) findViewById(android.support.design.R.id.smallLabel);
        this.mLargeLabel = (TextView) findViewById(android.support.design.R.id.largeLabel);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void initialize(MenuItemImpl itemData, int menuType) {
        this.mItemData = itemData;
        setCheckable(itemData.isCheckable());
        setChecked(itemData.isChecked());
        setEnabled(itemData.isEnabled());
        setIcon(itemData.getIcon());
        setTitle(itemData.getTitle());
        setId(itemData.getItemId());
        setContentDescription(itemData.getContentDescription());
        ViewCompat.setTooltipText(this, itemData.getTooltipText());
    }

    public void setItemPosition(int position) {
        this.mItemPosition = position;
    }

    public int getItemPosition() {
        return this.mItemPosition;
    }

    public void setShiftingMode(boolean enabled) {
        this.mShiftingMode = enabled;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public MenuItemImpl getItemData() {
        return this.mItemData;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setTitle(CharSequence title) {
        this.mSmallLabel.setText(title);
        this.mLargeLabel.setText(title);
        setContentDescription(title);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setCheckable(boolean checkable) {
        refreshDrawableState();
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setChecked(boolean checked) {
        this.mLargeLabel.setPivotX(this.mLargeLabel.getWidth() / 2);
        this.mLargeLabel.setPivotY(this.mLargeLabel.getBaseline());
        this.mSmallLabel.setPivotX(this.mSmallLabel.getWidth() / 2);
        this.mSmallLabel.setPivotY(this.mSmallLabel.getBaseline());
        if (this.mShiftingMode) {
            if (checked) {
                FrameLayout.LayoutParams iconParams = (FrameLayout.LayoutParams) this.mIcon.getLayoutParams();
                iconParams.gravity = 49;
                iconParams.topMargin = this.mDefaultMargin;
                this.mIcon.setLayoutParams(iconParams);
                this.mLargeLabel.setVisibility(0);
                this.mLargeLabel.setScaleX(1.0f);
                this.mLargeLabel.setScaleY(1.0f);
            } else {
                FrameLayout.LayoutParams iconParams2 = (FrameLayout.LayoutParams) this.mIcon.getLayoutParams();
                iconParams2.gravity = 17;
                iconParams2.topMargin = this.mDefaultMargin;
                this.mIcon.setLayoutParams(iconParams2);
                this.mLargeLabel.setVisibility(4);
                this.mLargeLabel.setScaleX(0.5f);
                this.mLargeLabel.setScaleY(0.5f);
            }
            this.mSmallLabel.setVisibility(4);
        } else if (checked) {
            FrameLayout.LayoutParams iconParams3 = (FrameLayout.LayoutParams) this.mIcon.getLayoutParams();
            iconParams3.gravity = 49;
            iconParams3.topMargin = this.mDefaultMargin + this.mShiftAmount;
            this.mIcon.setLayoutParams(iconParams3);
            this.mLargeLabel.setVisibility(0);
            this.mSmallLabel.setVisibility(4);
            this.mLargeLabel.setScaleX(1.0f);
            this.mLargeLabel.setScaleY(1.0f);
            this.mSmallLabel.setScaleX(this.mScaleUpFactor);
            this.mSmallLabel.setScaleY(this.mScaleUpFactor);
        } else {
            FrameLayout.LayoutParams iconParams4 = (FrameLayout.LayoutParams) this.mIcon.getLayoutParams();
            iconParams4.gravity = 49;
            iconParams4.topMargin = this.mDefaultMargin;
            this.mIcon.setLayoutParams(iconParams4);
            this.mLargeLabel.setVisibility(4);
            this.mSmallLabel.setVisibility(0);
            this.mLargeLabel.setScaleX(this.mScaleDownFactor);
            this.mLargeLabel.setScaleY(this.mScaleDownFactor);
            this.mSmallLabel.setScaleX(1.0f);
            this.mSmallLabel.setScaleY(1.0f);
        }
        refreshDrawableState();
    }

    @Override // android.view.View, android.support.v7.view.menu.MenuView.ItemView
    public void setEnabled(boolean enabled) {
        super.setEnabled(enabled);
        this.mSmallLabel.setEnabled(enabled);
        this.mLargeLabel.setEnabled(enabled);
        this.mIcon.setEnabled(enabled);
        if (enabled) {
            ViewCompat.setPointerIcon(this, PointerIconCompat.getSystemIcon(getContext(), PointerIconCompat.TYPE_HAND));
        } else {
            ViewCompat.setPointerIcon(this, null);
        }
    }

    @Override // android.view.ViewGroup, android.view.View
    public int[] onCreateDrawableState(int extraSpace) {
        int[] drawableState = super.onCreateDrawableState(extraSpace + 1);
        if (this.mItemData != null && this.mItemData.isCheckable() && this.mItemData.isChecked()) {
            mergeDrawableStates(drawableState, CHECKED_STATE_SET);
        }
        return drawableState;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setShortcut(boolean showShortcut, char shortcutKey) {
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public void setIcon(Drawable icon) {
        if (icon != null) {
            Drawable.ConstantState state = icon.getConstantState();
            if (state != null) {
                icon = state.newDrawable();
            }
            icon = DrawableCompat.wrap(icon).mutate();
            DrawableCompat.setTintList(icon, this.mIconTint);
        }
        this.mIcon.setImageDrawable(icon);
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public boolean prefersCondensedTitle() {
        return false;
    }

    @Override // android.support.v7.view.menu.MenuView.ItemView
    public boolean showsIcon() {
        return true;
    }

    public void setIconTintList(ColorStateList tint) {
        this.mIconTint = tint;
        if (this.mItemData != null) {
            setIcon(this.mItemData.getIcon());
        }
    }

    public void setTextColor(ColorStateList color) {
        this.mSmallLabel.setTextColor(color);
        this.mLargeLabel.setTextColor(color);
    }

    public void setItemBackground(int background) {
        Drawable backgroundDrawable = background == 0 ? null : ContextCompat.getDrawable(getContext(), background);
        ViewCompat.setBackground(this, backgroundDrawable);
    }
}
