package net.oneplus.h2launcher.iconrearrangement;

import android.view.ViewGroup;
import com.oneplus.lib.widget.recyclerview.RecyclerView;
import net.oneplus.h2launcher.BubbleTextView;

/* loaded from: classes.dex */
public class IconRearrangementRowViewHolder extends RecyclerView.ViewHolder {
    ViewGroup mContent;
    BubbleTextView mIconView;

    public IconRearrangementRowViewHolder(ViewGroup v, BubbleTextView iconView) {
        super(v);
        this.mContent = v;
        this.mIconView = iconView;
    }

    ViewGroup getContent() {
        return this.mContent;
    }
}
