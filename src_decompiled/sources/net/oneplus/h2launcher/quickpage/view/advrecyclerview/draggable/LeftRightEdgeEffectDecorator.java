package net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable;

import com.oneplus.lib.widget.recyclerview.RecyclerView;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class LeftRightEdgeEffectDecorator extends BaseEdgeEffectDecorator {
    public LeftRightEdgeEffectDecorator(RecyclerView recyclerView) {
        super(recyclerView);
    }

    @Override // net.oneplus.h2launcher.quickpage.view.advrecyclerview.draggable.BaseEdgeEffectDecorator
    protected int getEdgeDirection(int no) {
        switch (no) {
            case 0:
                return 0;
            case 1:
                return 2;
            default:
                throw new IllegalArgumentException();
        }
    }
}
