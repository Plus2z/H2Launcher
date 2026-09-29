package net.oneplus.h2launcher.quickpage.view.util;

/* loaded from: classes.dex */
public abstract class AbstractDataProvider {

    /* loaded from: classes.dex */
    public interface Data {
        int getId();

        int getIndex();

        int getViewType();

        boolean isPinned();

        boolean isSectionHeader();

        void setPinned(boolean z);
    }

    public abstract void addItem(Data data);

    public abstract int getCount();

    public abstract Data getItem(int i);

    public abstract void moveItem(int i, int i2);

    public abstract void removeItem(int i);
}
