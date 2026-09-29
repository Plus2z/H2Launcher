package net.oneplus.h2launcher.accessibility;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Bundle;
import android.util.SparseArray;
import android.view.View;
import android.view.accessibility.AccessibilityNodeInfo;
import net.oneplus.h2launcher.R;
import net.oneplus.h2launcher.Utilities;
import net.oneplus.h2launcher.Workspace;

@TargetApi(21)
/* loaded from: classes.dex */
public class OverviewScreenAccessibilityDelegate extends View.AccessibilityDelegate {
    private static final int MOVE_BACKWARD = 2131820552;
    private static final int MOVE_FORWARD = 2131820553;
    private final SparseArray<AccessibilityNodeInfo.AccessibilityAction> mActions;
    private final Workspace mWorkspace;

    public OverviewScreenAccessibilityDelegate(Workspace workspace) {
        int i = R.string.action_move_screen_left;
        this.mActions = new SparseArray<>();
        this.mWorkspace = workspace;
        Context context = this.mWorkspace.getContext();
        boolean isRtl = Utilities.isRtl(context.getResources());
        this.mActions.put(R.id.action_move_screen_backwards, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_screen_backwards, context.getText(isRtl ? R.string.action_move_screen_right : R.string.action_move_screen_left)));
        this.mActions.put(R.id.action_move_screen_forwards, new AccessibilityNodeInfo.AccessibilityAction(R.id.action_move_screen_forwards, context.getText(isRtl ? i : R.string.action_move_screen_right)));
    }

    @Override // android.view.View.AccessibilityDelegate
    public boolean performAccessibilityAction(View host, int action, Bundle args) {
        if (host != null) {
            if (action == 64) {
                int index = this.mWorkspace.indexOfChild(host);
                this.mWorkspace.setCurrentPage(index);
            } else {
                if (action == R.id.action_move_screen_forwards) {
                    movePage(this.mWorkspace.indexOfChild(host) + 1, host);
                    return true;
                }
                if (action == R.id.action_move_screen_backwards) {
                    movePage(this.mWorkspace.indexOfChild(host) - 1, host);
                    return true;
                }
            }
        }
        return super.performAccessibilityAction(host, action, args);
    }

    private void movePage(int finalIndex, View view) {
        this.mWorkspace.onStartReordering();
        this.mWorkspace.removeView(view);
        this.mWorkspace.addView(view, finalIndex);
        this.mWorkspace.onEndReordering();
        this.mWorkspace.announceForAccessibility(this.mWorkspace.getContext().getText(R.string.screen_moved));
        this.mWorkspace.updateAccessibilityFlags();
        view.performAccessibilityAction(64, null);
    }

    @Override // android.view.View.AccessibilityDelegate
    public void onInitializeAccessibilityNodeInfo(View host, AccessibilityNodeInfo info) {
        super.onInitializeAccessibilityNodeInfo(host, info);
        int index = this.mWorkspace.indexOfChild(host);
        if (index < this.mWorkspace.getChildCount() - 1) {
            info.addAction(this.mActions.get(R.id.action_move_screen_forwards));
        }
        if (index > this.mWorkspace.numCustomPages()) {
            info.addAction(this.mActions.get(R.id.action_move_screen_backwards));
        }
    }
}
