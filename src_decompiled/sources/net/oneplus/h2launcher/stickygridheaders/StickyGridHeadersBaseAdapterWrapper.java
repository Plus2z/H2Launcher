package net.oneplus.h2launcher.stickygridheaders;

import android.content.Context;
import android.database.DataSetObserver;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import net.oneplus.h2launcher.compat.LauncherActivityInfoCompat;

/* loaded from: classes.dex */
public class StickyGridHeadersBaseAdapterWrapper extends BaseAdapter {
    protected static final int ID_FILLER = -2;
    protected static final int ID_HEADER = -1;
    protected static final int ID_HEADER_FILLER = -3;
    protected static final int POSITION_FILLER = -1;
    protected static final int POSITION_HEADER = -2;
    protected static final int POSITION_HEADER_FILLER = -3;
    protected static final int VIEW_TYPE_FILLER = 0;
    protected static final int VIEW_TYPE_HEADER = 1;
    protected static final int VIEW_TYPE_HEADER_FILLER = 2;
    private static final int sNumViewTypes = 3;
    private final Context mContext;
    private int mCount;
    private final StickyGridHeadersBaseAdapter mDelegate;
    private StickyGridHeadersGridView mGridView;
    private View mLastHeaderViewSeen;
    private View mLastViewSeen;
    private boolean mCounted = false;
    private DataSetObserver mDataSetObserver = new DataSetObserver() { // from class: net.oneplus.h2launcher.stickygridheaders.StickyGridHeadersBaseAdapterWrapper.1
        @Override // android.database.DataSetObserver
        public void onChanged() {
            StickyGridHeadersBaseAdapterWrapper.this.updateCount();
        }

        @Override // android.database.DataSetObserver
        public void onInvalidated() {
            StickyGridHeadersBaseAdapterWrapper.this.mCounted = false;
        }
    };
    private int mNumColumns = 1;

    public StickyGridHeadersBaseAdapterWrapper(Context context, StickyGridHeadersGridView gridView, StickyGridHeadersBaseAdapter delegate) {
        this.mContext = context;
        this.mDelegate = delegate;
        this.mGridView = gridView;
        delegate.registerDataSetObserver(this.mDataSetObserver);
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean areAllItemsEnabled() {
        return false;
    }

    @Override // android.widget.Adapter
    public int getCount() {
        if (this.mCounted) {
            return this.mCount;
        }
        this.mCount = 0;
        int numHeaders = this.mDelegate.getNumHeaders();
        if (numHeaders == 0) {
            this.mCount = this.mDelegate.getCount();
            this.mCounted = true;
            return this.mCount;
        }
        for (int i = 0; i < numHeaders; i++) {
            this.mCount += this.mDelegate.getCountForHeader(i) + unFilledSpacesInHeaderGroup(i) + this.mNumColumns;
        }
        this.mCounted = true;
        return this.mCount;
    }

    @Override // android.widget.Adapter
    public Object getItem(int position) throws ArrayIndexOutOfBoundsException {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -2) {
            return null;
        }
        return this.mDelegate.getItem(adapterPosition.mPosition);
    }

    @Override // android.widget.Adapter
    public long getItemId(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -2) {
            return -1L;
        }
        if (adapterPosition.mPosition == -1) {
            return -2L;
        }
        if (adapterPosition.mPosition == -3) {
            return -3L;
        }
        return this.mDelegate.getItemId(adapterPosition.mPosition);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getItemViewType(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -2) {
            return 1;
        }
        if (adapterPosition.mPosition == -1) {
            return 0;
        }
        if (adapterPosition.mPosition == -3) {
            return 2;
        }
        int itemViewType = this.mDelegate.getItemViewType(adapterPosition.mPosition);
        return itemViewType != -1 ? itemViewType + 3 : itemViewType;
    }

    @Override // android.widget.Adapter
    public View getView(int position, View convertView, ViewGroup parent) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -2) {
            HeaderFillerView v = getHeaderFillerView(adapterPosition.mHeader, convertView, parent);
            View view = this.mDelegate.getHeaderView(adapterPosition.mHeader, (View) v.getTag(), parent);
            this.mGridView.detachHeader((View) v.getTag());
            v.setTag(view);
            this.mGridView.attachHeader(view);
            this.mLastHeaderViewSeen = v;
            v.forceLayout();
            return v;
        }
        if (adapterPosition.mPosition == -3) {
            View convertView2 = getFillerView(convertView, parent, this.mLastHeaderViewSeen);
            convertView2.forceLayout();
            return convertView2;
        }
        if (adapterPosition.mPosition == -1) {
            return getFillerView(convertView, parent, this.mLastViewSeen);
        }
        View convertView3 = this.mDelegate.getView(adapterPosition.mPosition, convertView, parent);
        this.mLastViewSeen = convertView3;
        return convertView3;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public int getViewTypeCount() {
        return this.mDelegate.getViewTypeCount() + 3;
    }

    public StickyGridHeadersBaseAdapter getWrappedAdapter() {
        return this.mDelegate;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean hasStableIds() {
        return this.mDelegate.hasStableIds();
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public boolean isEmpty() {
        return this.mDelegate.isEmpty();
    }

    @Override // android.widget.BaseAdapter, android.widget.ListAdapter
    public boolean isEnabled(int position) {
        Position adapterPosition = translatePosition(position);
        if (adapterPosition.mPosition == -1 || adapterPosition.mPosition == -2) {
            return false;
        }
        return this.mDelegate.isEnabled(adapterPosition.mPosition);
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void registerDataSetObserver(DataSetObserver observer) {
        super.registerDataSetObserver(observer);
        this.mDelegate.registerDataSetObserver(observer);
    }

    public void setNumColumns(int numColumns) {
        this.mNumColumns = numColumns;
        this.mCounted = false;
    }

    @Override // android.widget.BaseAdapter, android.widget.Adapter
    public void unregisterDataSetObserver(DataSetObserver observer) {
        super.unregisterDataSetObserver(observer);
        this.mDelegate.unregisterDataSetObserver(observer);
    }

    private FillerView getFillerView(View convertView, ViewGroup parent, View lastViewSeen) {
        FillerView fillerView = null;
        if (convertView != null && (convertView instanceof FillerView)) {
            fillerView = (FillerView) convertView;
        }
        if (fillerView == null) {
            fillerView = new FillerView(this.mContext);
        }
        fillerView.setMeasureTarget(lastViewSeen);
        return fillerView;
    }

    private HeaderFillerView getHeaderFillerView(int headerPosition, View convertView, ViewGroup parent) {
        HeaderFillerView headerFillerView = (HeaderFillerView) convertView;
        if (headerFillerView == null) {
            return new HeaderFillerView(this.mContext);
        }
        return headerFillerView;
    }

    private int unFilledSpacesInHeaderGroup(int header) {
        int remainder;
        if (this.mNumColumns == 0 || (remainder = this.mDelegate.getCountForHeader(header) % this.mNumColumns) == 0) {
            return 0;
        }
        return this.mNumColumns - remainder;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getHeaderId(int position) {
        return translatePosition(position).mHeader;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public View getHeaderView(int position, View convertView, ViewGroup parent) {
        if (this.mDelegate.getNumHeaders() == 0) {
            return null;
        }
        return this.mDelegate.getHeaderView(translatePosition(position).mHeader, convertView, parent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Position translatePosition(int position) {
        int numHeaders = this.mDelegate.getNumHeaders();
        if (numHeaders == 0) {
            if (position >= this.mDelegate.getCount()) {
                return new Position(-1, 0);
            }
            return new Position(position, 0);
        }
        int adapterPosition = position;
        int place = position;
        int i = 0;
        while (i < numHeaders) {
            int sectionCount = this.mDelegate.getCountForHeader(i);
            if (place == 0) {
                return new Position(-2, i);
            }
            int place2 = place - this.mNumColumns;
            if (place2 < 0) {
                return new Position(-3, i);
            }
            int adapterPosition2 = adapterPosition - this.mNumColumns;
            if (place2 < sectionCount) {
                return new Position(adapterPosition2, i);
            }
            int filler = unFilledSpacesInHeaderGroup(i);
            adapterPosition = adapterPosition2 - filler;
            place = place2 - (sectionCount + filler);
            if (place >= 0) {
                i++;
            } else {
                return new Position(-1, i);
            }
        }
        return new Position(-1, i);
    }

    protected void updateCount() {
        this.mCount = 0;
        int numHeaders = this.mDelegate.getNumHeaders();
        if (numHeaders == 0) {
            this.mCount = this.mDelegate.getCount();
            this.mCounted = true;
            return;
        }
        for (int i = 0; i < numHeaders; i++) {
            this.mCount += this.mDelegate.getCountForHeader(i) + this.mNumColumns;
        }
        this.mCounted = true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class FillerView extends View {
        private View mMeasureTarget;

        public FillerView(Context context) {
            super(context);
        }

        public FillerView(Context context, AttributeSet attrs) {
            super(context, attrs);
        }

        public FillerView(Context context, AttributeSet attrs, int defStyle) {
            super(context, attrs, defStyle);
        }

        public void setMeasureTarget(View lastViewSeen) {
            this.mMeasureTarget = lastViewSeen;
        }

        @Override // android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            int heightMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(this.mMeasureTarget.getMeasuredHeight(), LauncherActivityInfoCompat.FLAG_SUSPENDED);
            super.onMeasure(widthMeasureSpec, heightMeasureSpec2);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class HeaderFillerView extends FrameLayout {
        private int mHeaderId;

        public HeaderFillerView(Context context) {
            super(context);
        }

        public HeaderFillerView(Context context, AttributeSet attrs) {
            super(context, attrs);
        }

        public HeaderFillerView(Context context, AttributeSet attrs, int defStyle) {
            super(context, attrs, defStyle);
        }

        public int getHeaderId() {
            return this.mHeaderId;
        }

        public void setHeaderId(int headerId) {
            this.mHeaderId = headerId;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.widget.FrameLayout, android.view.ViewGroup
        public FrameLayout.LayoutParams generateDefaultLayoutParams() {
            return new FrameLayout.LayoutParams(-1, -1);
        }

        @Override // android.widget.FrameLayout, android.view.View
        protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
            View v = (View) getTag();
            ViewGroup.LayoutParams params = v.getLayoutParams();
            if (params == null) {
                params = generateDefaultLayoutParams();
                v.setLayoutParams(params);
            }
            if (v.getVisibility() != 8) {
                int heightSpec = getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(0, 0), 0, params.height);
                int widthSpec = getChildMeasureSpec(View.MeasureSpec.makeMeasureSpec(StickyGridHeadersBaseAdapterWrapper.this.mGridView.getWidth(), LauncherActivityInfoCompat.FLAG_SUSPENDED), 0, params.width);
                v.measure(widthSpec, heightSpec);
            }
            setMeasuredDimension(View.MeasureSpec.getSize(widthMeasureSpec), v.getMeasuredHeight());
        }
    }

    /* loaded from: classes.dex */
    protected class HeaderHolder {
        protected View mHeaderView;

        protected HeaderHolder() {
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes.dex */
    public class Position {
        protected int mHeader;
        protected int mPosition;

        protected Position(int position, int header) {
            this.mPosition = position;
            this.mHeader = header;
        }
    }
}
