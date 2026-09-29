package com.oneplus.lib.widget.cardview;

import android.content.Context;
import android.view.View;

/* loaded from: classes.dex */
class CardViewApi21 implements CardViewImpl {
    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void initialize(CardViewDelegate cardViewDelegate, Context context, int backgroundColor, float radius, float op_elevation, float maxElevation) {
        RoundRectDrawable backgroundDrawable = new RoundRectDrawable(backgroundColor, radius);
        cardViewDelegate.setBackgroundDrawable(backgroundDrawable);
        View view = (View) cardViewDelegate;
        view.setClipToOutline(true);
        view.setElevation(op_elevation);
        setMaxElevation(cardViewDelegate, maxElevation);
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void setRadius(CardViewDelegate cardView, float radius) {
        ((RoundRectDrawable) cardView.getBackground()).setRadius(radius);
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void initStatic() {
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void setMaxElevation(CardViewDelegate cardView, float maxElevation) {
        ((RoundRectDrawable) cardView.getBackground()).setPadding(maxElevation, cardView.getUseCompatPadding(), cardView.getPreventCornerOverlap());
        updatePadding(cardView);
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public float getMaxElevation(CardViewDelegate cardView) {
        return ((RoundRectDrawable) cardView.getBackground()).getPadding();
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public float getMinWidth(CardViewDelegate cardView) {
        return getRadius(cardView) * 2.0f;
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public float getMinHeight(CardViewDelegate cardView) {
        return getRadius(cardView) * 2.0f;
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public float getRadius(CardViewDelegate cardView) {
        return ((RoundRectDrawable) cardView.getBackground()).getRadius();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void setElevation(CardViewDelegate cardViewDelegate, float op_elevation) {
        ((View) cardViewDelegate).setElevation(op_elevation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public float getElevation(CardViewDelegate cardViewDelegate) {
        return ((View) cardViewDelegate).getElevation();
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void updatePadding(CardViewDelegate cardView) {
        if (!cardView.getUseCompatPadding()) {
            cardView.setShadowPadding(0, 0, 0, 0);
            return;
        }
        float op_elevation = getMaxElevation(cardView);
        float radius = getRadius(cardView);
        int hPadding = (int) Math.ceil(RoundRectDrawableWithShadow.calculateHorizontalPadding(op_elevation, radius, cardView.getPreventCornerOverlap()));
        int vPadding = (int) Math.ceil(RoundRectDrawableWithShadow.calculateVerticalPadding(op_elevation, radius, cardView.getPreventCornerOverlap()));
        cardView.setShadowPadding(hPadding, vPadding, hPadding, vPadding);
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void onCompatPaddingChanged(CardViewDelegate cardView) {
        setMaxElevation(cardView, getMaxElevation(cardView));
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void onPreventCornerOverlapChanged(CardViewDelegate cardView) {
        setMaxElevation(cardView, getMaxElevation(cardView));
    }

    @Override // com.oneplus.lib.widget.cardview.CardViewImpl
    public void setBackgroundColor(CardViewDelegate cardView, int color) {
        ((RoundRectDrawable) cardView.getBackground()).setColor(color);
    }
}
