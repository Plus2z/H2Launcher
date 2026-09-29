package net.oneplus.h2launcher.quickpage.view.advrecyclerview.swipeable.action;

/* loaded from: classes.dex */
public abstract class SwipeResultAction {
    private final int mResultAction;

    /* JADX INFO: Access modifiers changed from: protected */
    public SwipeResultAction(int resultAction) {
        this.mResultAction = resultAction;
    }

    public int getResultActionType() {
        return this.mResultAction;
    }

    public final void performAction() {
        onPerformAction();
    }

    public final void slideAnimationEnd() {
        onSlideAnimationEnd();
        onCleanUp();
    }

    protected void onPerformAction() {
    }

    protected void onSlideAnimationEnd() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onCleanUp() {
    }
}
