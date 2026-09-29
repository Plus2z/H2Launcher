package net.oneplus.h2launcher.customizations;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.Button;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class OptionButton extends Button {
    private int mNonSelectedTextColor;
    private int mSelectedBgColor;
    private int mSelectedTextColor;

    public OptionButton(Context context) {
        this(context, null);
    }

    public OptionButton(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mSelectedBgColor = context.getColor(R.color.customization_button_bg_color_selected);
        this.mSelectedTextColor = context.getColor(R.color.customization_button_text_color_selected);
        this.mNonSelectedTextColor = context.getColor(R.color.customization_button_text_color);
    }

    @Override // android.widget.TextView, android.view.View
    public void setSelected(boolean selected) {
        setBackgroundColor(selected ? this.mSelectedBgColor : 0);
        setTextColor(selected ? this.mSelectedTextColor : this.mNonSelectedTextColor);
    }
}
