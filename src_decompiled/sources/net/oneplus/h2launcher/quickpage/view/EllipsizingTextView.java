package net.oneplus.h2launcher.quickpage.view;

import android.R;
import android.content.Context;
import android.content.res.TypedArray;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.View;
import android.widget.TextView;

/* loaded from: classes.dex */
public class EllipsizingTextView extends TextView {
    public static final int ALL_AVAILABLE = -1;
    private int mMaxLines;

    public EllipsizingTextView(Context context) {
        super(context);
    }

    public EllipsizingTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context, attrs);
    }

    public EllipsizingTextView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(context, attrs);
    }

    private final void init(Context context, AttributeSet attrs) {
        TypedArray a = context.obtainStyledAttributes(attrs, new int[]{R.attr.maxLines});
        setMaxLines(a.getInt(0, 2));
    }

    @Override // android.widget.TextView
    public void setMaxLines(int maxlines) {
        super.setMaxLines(maxlines);
        this.mMaxLines = maxlines;
    }

    @Override // android.widget.TextView
    protected void onTextChanged(CharSequence text, int start, int lengthBefore, int lengthAfter) {
        super.onTextChanged(text, start, lengthBefore, lengthAfter);
        updateTextSize(text != null ? text.toString() : null);
    }

    public CharSequence setText(CharSequence text, int avail) {
        if (text != null && text.length() != 0) {
            setEllipsize(null);
            setText(text);
            if (avail != -1) {
                Layout layout = getLayout();
                if (layout == null) {
                    int w = (getWidth() - getCompoundPaddingLeft()) - getCompoundPaddingRight();
                    layout = new StaticLayout(text, 0, text.length(), getPaint(), w, Layout.Alignment.ALIGN_NORMAL, 1.0f, 0.0f, false);
                }
                int lastLineStart = layout.getLineStart(this.mMaxLines - 1);
                CharSequence remainder = TextUtils.ellipsize(text.subSequence(lastLineStart, text.length()), getPaint(), avail, TextUtils.TruncateAt.END);
                SpannableStringBuilder builder = new SpannableStringBuilder();
                builder.append((CharSequence) text.toString(), 0, lastLineStart);
                if (!TextUtils.isEmpty(remainder)) {
                    builder.append((CharSequence) remainder.toString());
                }
                if (text instanceof Spanned) {
                    Spanned s = (Spanned) text;
                    Object[] spans = s.getSpans(0, s.length(), Object.class);
                    int destLen = builder.length();
                    for (Object span : spans) {
                        int start = s.getSpanStart(span);
                        int end = s.getSpanEnd(span);
                        int flags = s.getSpanFlags(span);
                        if (start <= destLen) {
                            builder.setSpan(span, start, Math.min(end, destLen), flags);
                        }
                    }
                }
                setText(builder);
                return builder;
            }
            return text;
        }
        return text;
    }

    public void updateTextSize() {
        updateTextSize(null);
    }

    public void updateTextSize(String curText) {
        final String text;
        if (curText != null) {
            text = curText;
        } else {
            text = getText() != null ? getText().toString() : null;
        }
        post(new Runnable() { // from class: net.oneplus.h2launcher.quickpage.view.EllipsizingTextView.1
            @Override // java.lang.Runnable
            public void run() {
                int lineCount = EllipsizingTextView.this.measureTextViewLineCount(text, EllipsizingTextView.this.getResources().getDimensionPixelSize(net.oneplus.h2launcher.R.dimen.quick_page_welcome_title_size), EllipsizingTextView.this.getWidth());
                if (lineCount > 0 && text != null) {
                    EllipsizingTextView.this.setTextSize(0, EllipsizingTextView.this.getResources().getDimension(lineCount > 1 ? net.oneplus.h2launcher.R.dimen.quick_page_welcome_title_size : net.oneplus.h2launcher.R.dimen.quick_page_welcome_title_size_big));
                    float textWidth = EllipsizingTextView.this.getPaint().measureText(text.toString());
                    if (textWidth > EllipsizingTextView.this.getWidth()) {
                        EllipsizingTextView.this.setTextSize(0, EllipsizingTextView.this.getResources().getDimension(net.oneplus.h2launcher.R.dimen.quick_page_welcome_title_size));
                    }
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int measureTextViewLineCount(String text, int textSize, int deviceWidth) {
        TextView textView = new TextView(getContext());
        textView.setText(text);
        textView.setTextSize(0, textSize);
        int widthMeasureSpec = View.MeasureSpec.makeMeasureSpec(deviceWidth, Integer.MIN_VALUE);
        int heightMeasureSpec = View.MeasureSpec.makeMeasureSpec(0, 0);
        textView.measure(widthMeasureSpec, heightMeasureSpec);
        return textView.getLineCount();
    }
}
