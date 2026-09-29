package net.oneplus.h2launcher.quickpage.view.advrecyclerview.utils;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* loaded from: classes.dex */
public class WrapperAdapterUtils {
    private WrapperAdapterUtils() {
    }

    public static <T> T findWrappedAdapter(RecyclerView.Adapter adapter, Class<T> cls) {
        if (cls.isInstance(adapter)) {
            return cls.cast(adapter);
        }
        if (adapter instanceof BaseWrapperAdapter) {
            return (T) findWrappedAdapter(((BaseWrapperAdapter) adapter).getWrappedAdapter(), cls);
        }
        return null;
    }

    public static RecyclerView.Adapter releaseAll(RecyclerView.Adapter adapter) {
        return releaseCyclically(adapter);
    }

    private static RecyclerView.Adapter releaseCyclically(RecyclerView.Adapter adapter) {
        if (adapter instanceof BaseWrapperAdapter) {
            BaseWrapperAdapter wrapperAdapter = (BaseWrapperAdapter) adapter;
            RecyclerView.Adapter wrappedAdapter = wrapperAdapter.getWrappedAdapter();
            wrapperAdapter.release();
            return releaseCyclically(wrappedAdapter);
        }
        return adapter;
    }
}
