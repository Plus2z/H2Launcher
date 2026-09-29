package net.oneplus.h2launcher;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;
import android.widget.ScrollView;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public class FolderScrollView extends ScrollView {
    private GestureDetector mGestureDetector;
    private final List<View.OnScrollChangeListener> mListeners;

    public FolderScrollView(Context context) {
        super(context);
        this.mListeners = new ArrayList();
        init();
    }

    public FolderScrollView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mListeners = new ArrayList();
        init();
    }

    public FolderScrollView(Context context, AttributeSet attrs, int defStyleAttr) {
        super(context, attrs, defStyleAttr);
        this.mListeners = new ArrayList();
        init();
    }

    private void init() {
        setOnScrollChangeListener(new View.OnScrollChangeListener() { // from class: net.oneplus.h2launcher.FolderScrollView.1
            @Override // android.view.View.OnScrollChangeListener
            public void onScrollChange(View v, int scrollX, int scrollY, int oldScrollX, int oldScrollY) {
                for (View.OnScrollChangeListener listener : FolderScrollView.this.mListeners) {
                    if (listener != null) {
                        listener.onScrollChange(v, scrollX, scrollY, oldScrollX, oldScrollY);
                    }
                }
            }
        });
        this.mGestureDetector = new GestureDetector(getContext(), new GestureDetector.SimpleOnGestureListener() { // from class: net.oneplus.h2launcher.FolderScrollView.2
            @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
            public boolean onSingleTapUp(MotionEvent e) {
                ((Launcher) FolderScrollView.this.getContext()).closeFolder();
                return true;
            }
        });
    }

    public int getVerticalScrollRange() {
        return computeVerticalScrollRange();
    }

    public int getVerticalScrollExtent() {
        return computeVerticalScrollExtent();
    }

    public void addOnScrollChangeListener(View.OnScrollChangeListener listener) {
        if (listener instanceof FolderScrollBar) {
            for (int i = this.mListeners.size() - 1; i >= 0; i--) {
                View.OnScrollChangeListener l = this.mListeners.get(i);
                if (l instanceof FolderScrollBar) {
                    this.mListeners.remove(l);
                }
            }
        }
        if (listener instanceof Folder) {
            for (int i2 = this.mListeners.size() - 1; i2 >= 0; i2--) {
                View.OnScrollChangeListener l2 = this.mListeners.get(i2);
                if (l2 instanceof Folder) {
                    this.mListeners.remove(l2);
                }
            }
        }
        this.mListeners.add(listener);
    }

    @Override // android.widget.ScrollView, android.view.View
    @SuppressLint({"ClickableViewAccessibility"})
    public boolean onTouchEvent(MotionEvent ev) {
        this.mGestureDetector.onTouchEvent(ev);
        return super.onTouchEvent(ev);
    }
}
