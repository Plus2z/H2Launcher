package net.oneplus.h2launcher.quickpage;

/* loaded from: classes.dex */
public class QuickPageItemInfo implements Comparable<QuickPageItemInfo> {
    static final int NO_ID = -1;
    public String component;
    public String content;
    public int id = -1;
    public long modified;
    public long reminderId;
    public long reminderTime;
    public int size;
    public int type;
    public int widgetId;

    @Override // java.lang.Comparable
    public int compareTo(QuickPageItemInfo o) {
        return this.id - o.id;
    }

    public String toString() {
        return "Item(id=" + this.id + " type=" + this.type + " size=" + this.size + " widgetId=" + this.widgetId + " component=" + this.component + " reminderTime=" + this.reminderTime + " reminderId=" + this.reminderId + ")";
    }
}
