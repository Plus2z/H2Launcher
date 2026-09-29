package net.oneplus.h2launcher.inputmethod.T9;

import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.widget.LinearLayout;
import net.oneplus.gallery3d.exif.ExifInterface;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.globalsearch.GlobalSearchView;

/* loaded from: classes.dex */
public class T9Panel extends LinearLayout implements View.OnClickListener, View.OnLongClickListener {
    private LinearLayout mButtonDel;
    private LinearLayout mButtonEight;
    private LinearLayout mButtonFive;
    private LinearLayout mButtonFour;
    private LinearLayout mButtonNine;
    private LinearLayout mButtonOne;
    private LinearLayout mButtonSeven;
    private LinearLayout mButtonSix;
    private LinearLayout mButtonThree;
    private LinearLayout mButtonTwo;
    private LinearLayout mButtonZero;
    private GlobalSearchView mGlobalSearchView;
    private View mKeyboardContainer;
    private OnPanelClickedListener mListener;

    /* loaded from: classes.dex */
    public interface OnPanelClickedListener {
        void onPanelClick(Digit digit);

        void onPanelLongClick(Digit digit);
    }

    /* loaded from: classes.dex */
    public enum Digit {
        ZERO("0"),
        ONE("1"),
        TWO(ExifInterface.GpsMeasureMode.MODE_2_DIMENSIONAL),
        THREE(ExifInterface.GpsMeasureMode.MODE_3_DIMENSIONAL),
        FOUR("4"),
        FIVE("5"),
        SIX("6"),
        SEVEN("7"),
        EIGHT("8"),
        NINE("9"),
        DEL("del"),
        UNDEFINED("NA");

        private String mValue;

        Digit(String value) {
            this.mValue = value;
        }

        public static Digit fromString(String value) {
            for (Digit type : values()) {
                if (type.getValue().equalsIgnoreCase(value)) {
                    return type;
                }
            }
            return UNDEFINED;
        }

        public String getValue() {
            return this.mValue;
        }

        @Override // java.lang.Enum
        public String toString() {
            return getValue();
        }
    }

    public T9Panel(Context context) {
        super(context);
    }

    public T9Panel(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setOnClickHandler(OnPanelClickedListener listener) {
        this.mListener = listener;
    }

    public void init(GlobalSearchView globalSearchView) {
        this.mGlobalSearchView = globalSearchView;
        this.mKeyboardContainer = findViewById(R.id.t9_panel);
        this.mButtonZero = (LinearLayout) findViewById(R.id.digit_zero_container);
        this.mButtonZero.setTag(Digit.ZERO);
        this.mButtonOne = (LinearLayout) findViewById(R.id.digit_one_container);
        this.mButtonOne.setTag(Digit.ONE);
        this.mButtonTwo = (LinearLayout) findViewById(R.id.digit_two_container);
        this.mButtonTwo.setTag(Digit.TWO);
        this.mButtonThree = (LinearLayout) findViewById(R.id.digit_three_container);
        this.mButtonThree.setTag(Digit.THREE);
        this.mButtonFour = (LinearLayout) findViewById(R.id.digit_four_container);
        this.mButtonFour.setTag(Digit.FOUR);
        this.mButtonFive = (LinearLayout) findViewById(R.id.digit_five_container);
        this.mButtonFive.setTag(Digit.FIVE);
        this.mButtonSix = (LinearLayout) findViewById(R.id.digit_six_container);
        this.mButtonSix.setTag(Digit.SIX);
        this.mButtonSeven = (LinearLayout) findViewById(R.id.digit_seven_container);
        this.mButtonSeven.setTag(Digit.SEVEN);
        this.mButtonEight = (LinearLayout) findViewById(R.id.digit_eight_container);
        this.mButtonEight.setTag(Digit.EIGHT);
        this.mButtonNine = (LinearLayout) findViewById(R.id.digit_nine_container);
        this.mButtonNine.setTag(Digit.NINE);
        this.mButtonDel = (LinearLayout) findViewById(R.id.digit_delete_container);
        this.mButtonDel.setTag(Digit.DEL);
        this.mButtonZero.setOnClickListener(this);
        LinearLayout linearLayout = this.mButtonZero;
        GlobalSearchView globalSearchView2 = this.mGlobalSearchView;
        globalSearchView2.getClass();
        linearLayout.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonOne.setOnClickListener(this);
        LinearLayout linearLayout2 = this.mButtonOne;
        GlobalSearchView globalSearchView3 = this.mGlobalSearchView;
        globalSearchView3.getClass();
        linearLayout2.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonTwo.setOnClickListener(this);
        LinearLayout linearLayout3 = this.mButtonTwo;
        GlobalSearchView globalSearchView4 = this.mGlobalSearchView;
        globalSearchView4.getClass();
        linearLayout3.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonThree.setOnClickListener(this);
        LinearLayout linearLayout4 = this.mButtonThree;
        GlobalSearchView globalSearchView5 = this.mGlobalSearchView;
        globalSearchView5.getClass();
        linearLayout4.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonFour.setOnClickListener(this);
        LinearLayout linearLayout5 = this.mButtonFour;
        GlobalSearchView globalSearchView6 = this.mGlobalSearchView;
        globalSearchView6.getClass();
        linearLayout5.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonFive.setOnClickListener(this);
        LinearLayout linearLayout6 = this.mButtonFive;
        GlobalSearchView globalSearchView7 = this.mGlobalSearchView;
        globalSearchView7.getClass();
        linearLayout6.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonSix.setOnClickListener(this);
        LinearLayout linearLayout7 = this.mButtonSix;
        GlobalSearchView globalSearchView8 = this.mGlobalSearchView;
        globalSearchView8.getClass();
        linearLayout7.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonSeven.setOnClickListener(this);
        LinearLayout linearLayout8 = this.mButtonSeven;
        GlobalSearchView globalSearchView9 = this.mGlobalSearchView;
        globalSearchView9.getClass();
        linearLayout8.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonEight.setOnClickListener(this);
        LinearLayout linearLayout9 = this.mButtonEight;
        GlobalSearchView globalSearchView10 = this.mGlobalSearchView;
        globalSearchView10.getClass();
        linearLayout9.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonNine.setOnClickListener(this);
        LinearLayout linearLayout10 = this.mButtonNine;
        GlobalSearchView globalSearchView11 = this.mGlobalSearchView;
        globalSearchView11.getClass();
        linearLayout10.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonDel.setOnClickListener(this);
        LinearLayout linearLayout11 = this.mButtonDel;
        GlobalSearchView globalSearchView12 = this.mGlobalSearchView;
        globalSearchView12.getClass();
        linearLayout11.setOnTouchListener(new GlobalSearchView.T9PanelTouchListener());
        this.mButtonDel.setOnLongClickListener(this);
    }

    @Override // android.view.View
    protected void onFinishInflate() {
        super.onFinishInflate();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        this.mListener.onPanelClick((Digit) v.getTag());
    }

    @Override // android.view.View.OnLongClickListener
    public boolean onLongClick(View v) {
        this.mListener.onPanelLongClick((Digit) v.getTag());
        return true;
    }

    public boolean isShow() {
        return getVisibility() == 0;
    }
}
