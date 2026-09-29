package net.oneplus.h2launcher.quickpage.view;

import android.content.Context;
import android.util.AttributeSet;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import net.oneplus.h2launcher.R;

/* loaded from: classes.dex */
public class EmptyView extends RelativeLayout {
    private ImageView mEmptyImage;
    private TextView mEmptyText;

    public EmptyView(Context context) {
        super(context);
        init(context);
    }

    public EmptyView(Context context, AttributeSet attrs) {
        super(context, attrs);
        init(context);
    }

    public EmptyView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        init(context);
    }

    private void init(Context context) {
        inflate(context.getApplicationContext(), R.layout.empty_view, this);
        this.mEmptyImage = (ImageView) findViewById(R.id.empty_view_image);
        this.mEmptyText = (TextView) findViewById(R.id.empty_view_text);
    }

    public void setEmptyImage(int id) {
        this.mEmptyImage.setImageResource(id);
    }

    public void setEmptyMessage(int id) {
        this.mEmptyText.setText(id);
    }
}
