package com.oneplus.lib.widget.recyclerview;

import com.oneplus.lib.widget.recyclerview.OpReorderer;
import com.oneplus.lib.widget.recyclerview.Pools;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import net.oneplus.h2launcher.LauncherSettings;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class AdapterHelper implements OpReorderer.Callback {
    private static final boolean DEBUG = false;
    static final int POSITION_TYPE_INVISIBLE = 0;
    static final int POSITION_TYPE_NEW_OR_LAID_OUT = 1;
    private static final String TAG = "AHT";
    final Callback mCallback;
    final boolean mDisableRecycler;
    Runnable mOnItemProcessedCallback;
    final OpReorderer mOpReorderer;
    final ArrayList<UpdateOp> mPendingUpdates;
    final ArrayList<UpdateOp> mPostponedList;
    private Pools.Pool<UpdateOp> mUpdateOpPool;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public interface Callback {
        RecyclerView.ViewHolder findViewHolder(int i);

        void markViewHoldersUpdated(int i, int i2, Object obj);

        void offsetPositionsForAdd(int i, int i2);

        void offsetPositionsForMove(int i, int i2);

        void offsetPositionsForRemovingInvisible(int i, int i2);

        void offsetPositionsForRemovingLaidOutOrNewView(int i, int i2);

        void onDispatchFirstPass(UpdateOp updateOp);

        void onDispatchSecondPass(UpdateOp updateOp);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AdapterHelper(Callback callback) {
        this(callback, false);
    }

    AdapterHelper(Callback callback, boolean disableRecycler) {
        this.mUpdateOpPool = new Pools.SimplePool(30);
        this.mPendingUpdates = new ArrayList<>();
        this.mPostponedList = new ArrayList<>();
        this.mCallback = callback;
        this.mDisableRecycler = disableRecycler;
        this.mOpReorderer = new OpReorderer(this);
    }

    AdapterHelper addUpdateOp(UpdateOp... ops) {
        Collections.addAll(this.mPendingUpdates, ops);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void reset() {
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
        recycleUpdateOpsAndClearList(this.mPostponedList);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x001a. Please report as an issue. */
    public void preProcess() {
        this.mOpReorderer.reorderOps(this.mPendingUpdates);
        int count = this.mPendingUpdates.size();
        for (int i = 0; i < count; i++) {
            UpdateOp op = this.mPendingUpdates.get(i);
            switch (op.cmd) {
                case 0:
                    applyAdd(op);
                    break;
                case 1:
                    applyRemove(op);
                    break;
                case 2:
                    applyUpdate(op);
                    break;
                case 3:
                    applyMove(op);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        this.mPendingUpdates.clear();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void consumePostponedUpdates() {
        int count = this.mPostponedList.size();
        for (int i = 0; i < count; i++) {
            this.mCallback.onDispatchSecondPass(this.mPostponedList.get(i));
        }
        recycleUpdateOpsAndClearList(this.mPostponedList);
    }

    private void applyMove(UpdateOp op) {
        postponeAndUpdateViewHolders(op);
    }

    private void applyRemove(UpdateOp op) {
        int tmpStart = op.positionStart;
        int tmpCount = 0;
        int tmpEnd = op.positionStart + op.itemCount;
        int type = -1;
        int position = op.positionStart;
        while (position < tmpEnd) {
            boolean typeChanged = false;
            RecyclerView.ViewHolder vh = this.mCallback.findViewHolder(position);
            if (vh != null || canFindInPreLayout(position)) {
                if (type == 0) {
                    UpdateOp newOp = obtainUpdateOp(1, tmpStart, tmpCount, null);
                    dispatchAndUpdateViewHolders(newOp);
                    typeChanged = true;
                }
                type = 1;
            } else {
                if (type == 1) {
                    UpdateOp newOp2 = obtainUpdateOp(1, tmpStart, tmpCount, null);
                    postponeAndUpdateViewHolders(newOp2);
                    typeChanged = true;
                }
                type = 0;
            }
            if (typeChanged) {
                position -= tmpCount;
                tmpEnd -= tmpCount;
                tmpCount = 1;
            } else {
                tmpCount++;
            }
            position++;
        }
        if (tmpCount != op.itemCount) {
            recycleUpdateOp(op);
            op = obtainUpdateOp(1, tmpStart, tmpCount, null);
        }
        if (type == 0) {
            dispatchAndUpdateViewHolders(op);
        } else {
            postponeAndUpdateViewHolders(op);
        }
    }

    private void applyUpdate(UpdateOp op) {
        int tmpStart = op.positionStart;
        int tmpCount = 0;
        int tmpEnd = op.positionStart + op.itemCount;
        int type = -1;
        for (int position = op.positionStart; position < tmpEnd; position++) {
            RecyclerView.ViewHolder vh = this.mCallback.findViewHolder(position);
            if (vh != null || canFindInPreLayout(position)) {
                if (type == 0) {
                    UpdateOp newOp = obtainUpdateOp(2, tmpStart, tmpCount, op.payload);
                    dispatchAndUpdateViewHolders(newOp);
                    tmpCount = 0;
                    tmpStart = position;
                }
                type = 1;
            } else {
                if (type == 1) {
                    UpdateOp newOp2 = obtainUpdateOp(2, tmpStart, tmpCount, op.payload);
                    postponeAndUpdateViewHolders(newOp2);
                    tmpCount = 0;
                    tmpStart = position;
                }
                type = 0;
            }
            tmpCount++;
        }
        if (tmpCount != op.itemCount) {
            Object payload = op.payload;
            recycleUpdateOp(op);
            op = obtainUpdateOp(2, tmpStart, tmpCount, payload);
        }
        if (type == 0) {
            dispatchAndUpdateViewHolders(op);
        } else {
            postponeAndUpdateViewHolders(op);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x006b  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private void dispatchAndUpdateViewHolders(com.oneplus.lib.widget.recyclerview.AdapterHelper.UpdateOp r15) {
        /*
            r14 = this;
            r10 = 1
            r11 = 0
            int r12 = r15.cmd
            if (r12 == 0) goto Lb
            int r12 = r15.cmd
            r13 = 3
            if (r12 != r13) goto L13
        Lb:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.String r11 = "should not dispatch add or move for pre layout"
            r10.<init>(r11)
            throw r10
        L13:
            int r12 = r15.positionStart
            int r13 = r15.cmd
            int r8 = r14.updatePositionWithPostponed(r12, r13)
            r7 = 1
            int r1 = r15.positionStart
            int r12 = r15.cmd
            switch(r12) {
                case 1: goto L5b;
                case 2: goto L3c;
                default: goto L23;
            }
        L23:
            java.lang.IllegalArgumentException r10 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r11 = new java.lang.StringBuilder
            r11.<init>()
            java.lang.String r12 = "op should be remove or update."
            java.lang.StringBuilder r11 = r11.append(r12)
            java.lang.StringBuilder r11 = r11.append(r15)
            java.lang.String r11 = r11.toString()
            r10.<init>(r11)
            throw r10
        L3c:
            r5 = 1
        L3d:
            r2 = 1
        L3e:
            int r12 = r15.itemCount
            if (r2 >= r12) goto L82
            int r12 = r15.positionStart
            int r13 = r5 * r2
            int r4 = r12 + r13
            int r12 = r15.cmd
            int r9 = r14.updatePositionWithPostponed(r4, r12)
            r0 = 0
            int r12 = r15.cmd
            switch(r12) {
                case 1: goto L65;
                case 2: goto L5d;
                default: goto L54;
            }
        L54:
            if (r0 == 0) goto L6b
            int r7 = r7 + 1
        L58:
            int r2 = r2 + 1
            goto L3e
        L5b:
            r5 = 0
            goto L3d
        L5d:
            int r12 = r8 + 1
            if (r9 != r12) goto L63
            r0 = r10
        L62:
            goto L54
        L63:
            r0 = r11
            goto L62
        L65:
            if (r9 != r8) goto L69
            r0 = r10
        L68:
            goto L54
        L69:
            r0 = r11
            goto L68
        L6b:
            int r12 = r15.cmd
            java.lang.Object r13 = r15.payload
            com.oneplus.lib.widget.recyclerview.AdapterHelper$UpdateOp r6 = r14.obtainUpdateOp(r12, r8, r7, r13)
            r14.dispatchFirstPassAndUpdateViewHolders(r6, r1)
            r14.recycleUpdateOp(r6)
            int r12 = r15.cmd
            r13 = 2
            if (r12 != r13) goto L7f
            int r1 = r1 + r7
        L7f:
            r8 = r9
            r7 = 1
            goto L58
        L82:
            java.lang.Object r3 = r15.payload
            r14.recycleUpdateOp(r15)
            if (r7 <= 0) goto L95
            int r10 = r15.cmd
            com.oneplus.lib.widget.recyclerview.AdapterHelper$UpdateOp r6 = r14.obtainUpdateOp(r10, r8, r7, r3)
            r14.dispatchFirstPassAndUpdateViewHolders(r6, r1)
            r14.recycleUpdateOp(r6)
        L95:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.oneplus.lib.widget.recyclerview.AdapterHelper.dispatchAndUpdateViewHolders(com.oneplus.lib.widget.recyclerview.AdapterHelper$UpdateOp):void");
    }

    void dispatchFirstPassAndUpdateViewHolders(UpdateOp op, int offsetStart) {
        this.mCallback.onDispatchFirstPass(op);
        switch (op.cmd) {
            case 1:
                this.mCallback.offsetPositionsForRemovingInvisible(offsetStart, op.itemCount);
                return;
            case 2:
                this.mCallback.markViewHoldersUpdated(offsetStart, op.itemCount, op.payload);
                return;
            default:
                throw new IllegalArgumentException("only remove and update ops can be dispatched in first pass");
        }
    }

    private int updatePositionWithPostponed(int pos, int cmd) {
        int start;
        int end;
        int count = this.mPostponedList.size();
        for (int i = count - 1; i >= 0; i--) {
            UpdateOp postponed = this.mPostponedList.get(i);
            if (postponed.cmd == 3) {
                if (postponed.positionStart < postponed.itemCount) {
                    start = postponed.positionStart;
                    end = postponed.itemCount;
                } else {
                    start = postponed.itemCount;
                    end = postponed.positionStart;
                }
                if (pos >= start && pos <= end) {
                    if (start == postponed.positionStart) {
                        if (cmd == 0) {
                            postponed.itemCount++;
                        } else if (cmd == 1) {
                            postponed.itemCount--;
                        }
                        pos++;
                    } else {
                        if (cmd == 0) {
                            postponed.positionStart++;
                        } else if (cmd == 1) {
                            postponed.positionStart--;
                        }
                        pos--;
                    }
                } else if (pos < postponed.positionStart) {
                    if (cmd == 0) {
                        postponed.positionStart++;
                        postponed.itemCount++;
                    } else if (cmd == 1) {
                        postponed.positionStart--;
                        postponed.itemCount--;
                    }
                }
            } else if (postponed.positionStart <= pos) {
                if (postponed.cmd == 0) {
                    pos -= postponed.itemCount;
                } else if (postponed.cmd == 1) {
                    pos += postponed.itemCount;
                }
            } else if (cmd == 0) {
                postponed.positionStart++;
            } else if (cmd == 1) {
                postponed.positionStart--;
            }
        }
        for (int i2 = this.mPostponedList.size() - 1; i2 >= 0; i2--) {
            UpdateOp op = this.mPostponedList.get(i2);
            if (op.cmd == 3) {
                if (op.itemCount == op.positionStart || op.itemCount < 0) {
                    this.mPostponedList.remove(i2);
                    recycleUpdateOp(op);
                }
            } else if (op.itemCount <= 0) {
                this.mPostponedList.remove(i2);
                recycleUpdateOp(op);
            }
        }
        return pos;
    }

    private boolean canFindInPreLayout(int position) {
        int count = this.mPostponedList.size();
        for (int i = 0; i < count; i++) {
            UpdateOp op = this.mPostponedList.get(i);
            if (op.cmd == 3) {
                if (findPositionOffset(op.itemCount, i + 1) == position) {
                    return true;
                }
            } else if (op.cmd == 0) {
                int end = op.positionStart + op.itemCount;
                for (int pos = op.positionStart; pos < end; pos++) {
                    if (findPositionOffset(pos, i + 1) == position) {
                        return true;
                    }
                }
            } else {
                continue;
            }
        }
        return false;
    }

    private void applyAdd(UpdateOp op) {
        postponeAndUpdateViewHolders(op);
    }

    private void postponeAndUpdateViewHolders(UpdateOp op) {
        this.mPostponedList.add(op);
        switch (op.cmd) {
            case 0:
                this.mCallback.offsetPositionsForAdd(op.positionStart, op.itemCount);
                return;
            case 1:
                this.mCallback.offsetPositionsForRemovingLaidOutOrNewView(op.positionStart, op.itemCount);
                return;
            case 2:
                this.mCallback.markViewHoldersUpdated(op.positionStart, op.itemCount, op.payload);
                return;
            case 3:
                this.mCallback.offsetPositionsForMove(op.positionStart, op.itemCount);
                return;
            default:
                throw new IllegalArgumentException("Unknown update op type for " + op);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean hasPendingUpdates() {
        return this.mPendingUpdates.size() > 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int findPositionOffset(int position) {
        return findPositionOffset(position, 0);
    }

    int findPositionOffset(int position, int firstPostponedItem) {
        int count = this.mPostponedList.size();
        for (int i = firstPostponedItem; i < count; i++) {
            UpdateOp op = this.mPostponedList.get(i);
            if (op.cmd == 3) {
                if (op.positionStart == position) {
                    position = op.itemCount;
                } else {
                    if (op.positionStart < position) {
                        position--;
                    }
                    if (op.itemCount <= position) {
                        position++;
                    }
                }
            } else if (op.positionStart > position) {
                continue;
            } else if (op.cmd == 1) {
                if (position < op.positionStart + op.itemCount) {
                    return -1;
                }
                position -= op.itemCount;
            } else if (op.cmd == 0) {
                position += op.itemCount;
            }
        }
        return position;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeChanged(int positionStart, int itemCount, Object payload) {
        this.mPendingUpdates.add(obtainUpdateOp(2, positionStart, itemCount, payload));
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeInserted(int positionStart, int itemCount) {
        this.mPendingUpdates.add(obtainUpdateOp(0, positionStart, itemCount, null));
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeRemoved(int positionStart, int itemCount) {
        this.mPendingUpdates.add(obtainUpdateOp(1, positionStart, itemCount, null));
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean onItemRangeMoved(int from, int to, int itemCount) {
        if (from == to) {
            return false;
        }
        if (itemCount != 1) {
            throw new IllegalArgumentException("Moving more than 1 item is not supported yet");
        }
        this.mPendingUpdates.add(obtainUpdateOp(3, from, to, null));
        return this.mPendingUpdates.size() == 1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0016. Please report as an issue. */
    public void consumeUpdatesInOnePass() {
        consumePostponedUpdates();
        int count = this.mPendingUpdates.size();
        for (int i = 0; i < count; i++) {
            UpdateOp op = this.mPendingUpdates.get(i);
            switch (op.cmd) {
                case 0:
                    this.mCallback.onDispatchSecondPass(op);
                    this.mCallback.offsetPositionsForAdd(op.positionStart, op.itemCount);
                    break;
                case 1:
                    this.mCallback.onDispatchSecondPass(op);
                    this.mCallback.offsetPositionsForRemovingInvisible(op.positionStart, op.itemCount);
                    break;
                case 2:
                    this.mCallback.onDispatchSecondPass(op);
                    this.mCallback.markViewHoldersUpdated(op.positionStart, op.itemCount, op.payload);
                    break;
                case 3:
                    this.mCallback.onDispatchSecondPass(op);
                    this.mCallback.offsetPositionsForMove(op.positionStart, op.itemCount);
                    break;
            }
            if (this.mOnItemProcessedCallback != null) {
                this.mOnItemProcessedCallback.run();
            }
        }
        recycleUpdateOpsAndClearList(this.mPendingUpdates);
    }

    public int applyPendingUpdatesToPosition(int position) {
        int size = this.mPendingUpdates.size();
        for (int i = 0; i < size; i++) {
            UpdateOp op = this.mPendingUpdates.get(i);
            switch (op.cmd) {
                case 0:
                    if (op.positionStart <= position) {
                        position += op.itemCount;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (op.positionStart <= position) {
                        int end = op.positionStart + op.itemCount;
                        if (end > position) {
                            return -1;
                        }
                        position -= op.itemCount;
                        break;
                    } else {
                        continue;
                    }
                case 3:
                    if (op.positionStart == position) {
                        position = op.itemCount;
                        break;
                    } else {
                        if (op.positionStart < position) {
                            position--;
                        }
                        if (op.itemCount <= position) {
                            position++;
                            break;
                        } else {
                            break;
                        }
                    }
            }
        }
        return position;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class UpdateOp {
        static final int ADD = 0;
        static final int MOVE = 3;
        static final int POOL_SIZE = 30;
        static final int REMOVE = 1;
        static final int UPDATE = 2;
        int cmd;
        int itemCount;
        Object payload;
        int positionStart;

        UpdateOp(int cmd, int positionStart, int itemCount, Object payload) {
            this.cmd = cmd;
            this.positionStart = positionStart;
            this.itemCount = itemCount;
            this.payload = payload;
        }

        String cmdToString() {
            switch (this.cmd) {
                case 0:
                    return LauncherSettings.ExternalWidget.ARG_ADD_WIDGET;
                case 1:
                    return "rm";
                case 2:
                    return "up";
                case 3:
                    return "mv";
                default:
                    return "??";
            }
        }

        public String toString() {
            return Integer.toHexString(System.identityHashCode(this)) + "[" + cmdToString() + ",s:" + this.positionStart + "c:" + this.itemCount + ",p:" + this.payload + "]";
        }

        public boolean equals(Object o) {
            if (this == o) {
                return true;
            }
            if (o == null || getClass() != o.getClass()) {
                return false;
            }
            UpdateOp op = (UpdateOp) o;
            if (this.cmd != op.cmd) {
                return false;
            }
            if (this.cmd == 3 && Math.abs(this.itemCount - this.positionStart) == 1 && this.itemCount == op.positionStart && this.positionStart == op.itemCount) {
                return true;
            }
            if (this.itemCount == op.itemCount && this.positionStart == op.positionStart) {
                return this.payload != null ? this.payload.equals(op.payload) : op.payload == null;
            }
            return false;
        }

        public int hashCode() {
            int result = this.cmd;
            return (((result * 31) + this.positionStart) * 31) + this.itemCount;
        }
    }

    @Override // com.oneplus.lib.widget.recyclerview.OpReorderer.Callback
    public UpdateOp obtainUpdateOp(int cmd, int positionStart, int itemCount, Object payload) {
        UpdateOp op = this.mUpdateOpPool.acquire();
        if (op == null) {
            return new UpdateOp(cmd, positionStart, itemCount, payload);
        }
        op.cmd = cmd;
        op.positionStart = positionStart;
        op.itemCount = itemCount;
        op.payload = payload;
        return op;
    }

    @Override // com.oneplus.lib.widget.recyclerview.OpReorderer.Callback
    public void recycleUpdateOp(UpdateOp op) {
        if (!this.mDisableRecycler) {
            op.payload = null;
            this.mUpdateOpPool.release(op);
        }
    }

    void recycleUpdateOpsAndClearList(List<UpdateOp> ops) {
        int count = ops.size();
        for (int i = 0; i < count; i++) {
            recycleUpdateOp(ops.get(i));
        }
        ops.clear();
    }
}
