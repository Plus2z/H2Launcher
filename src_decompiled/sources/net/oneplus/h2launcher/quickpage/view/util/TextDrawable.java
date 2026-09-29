package net.oneplus.h2launcher.quickpage.view.util;

import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import android.graphics.Typeface;
import android.graphics.drawable.ShapeDrawable;
import android.graphics.drawable.shapes.OvalShape;
import android.graphics.drawable.shapes.RectShape;
import android.graphics.drawable.shapes.RoundRectShape;

/* loaded from: classes.dex */
public class TextDrawable extends ShapeDrawable {
    private static final float SHADE_FACTOR = 0.9f;
    private final Paint borderPaint;
    private final int borderThickness;
    private final int color;
    private final int fontSize;
    private final int height;
    private final float radius;
    private final RectShape shape;
    private final String text;
    private final Paint textPaint;
    private final int width;

    /* loaded from: classes.dex */
    public interface IBuilder {
        TextDrawable build(String str, int i);
    }

    /* loaded from: classes.dex */
    public interface IConfigBuilder {
        IConfigBuilder bold();

        IShapeBuilder endConfig();

        IConfigBuilder fontSize(int i);

        IConfigBuilder height(int i);

        IConfigBuilder textColor(int i);

        IConfigBuilder toUpperCase();

        IConfigBuilder useFont(Typeface typeface);

        IConfigBuilder width(int i);

        IConfigBuilder withBorder(int i);
    }

    /* loaded from: classes.dex */
    public interface IShapeBuilder {
        IConfigBuilder beginConfig();

        TextDrawable buildRect(String str, int i);

        TextDrawable buildRound(String str, int i);

        TextDrawable buildRoundRect(String str, int i, int i2);

        IBuilder rect();

        IBuilder round();

        IBuilder roundRect(int i);
    }

    private TextDrawable(Builder builder) {
        super(builder.shape);
        this.shape = builder.shape;
        this.height = builder.height;
        this.width = builder.width;
        this.radius = builder.radius;
        this.text = builder.toUpperCase ? builder.text.toUpperCase() : builder.text;
        this.color = builder.color;
        this.fontSize = builder.fontSize;
        this.textPaint = new Paint();
        this.textPaint.setColor(builder.textColor);
        this.textPaint.setAntiAlias(true);
        this.textPaint.setFakeBoldText(builder.isBold);
        this.textPaint.setStyle(Paint.Style.FILL);
        this.textPaint.setTypeface(builder.font);
        this.textPaint.setTextAlign(Paint.Align.CENTER);
        this.textPaint.setStrokeWidth(builder.borderThickness);
        this.borderThickness = builder.borderThickness;
        this.borderPaint = new Paint();
        this.borderPaint.setColor(getDarkerShade(this.color));
        this.borderPaint.setStyle(Paint.Style.STROKE);
        this.borderPaint.setStrokeWidth(this.borderThickness);
        Paint paint = getPaint();
        paint.setColor(this.color);
    }

    private int getDarkerShade(int color) {
        return Color.rgb((int) (Color.red(color) * SHADE_FACTOR), (int) (Color.green(color) * SHADE_FACTOR), (int) (Color.blue(color) * SHADE_FACTOR));
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void draw(Canvas canvas) {
        super.draw(canvas);
        Rect r = getBounds();
        if (this.borderThickness > 0) {
            drawBorder(canvas);
        }
        int count = canvas.save();
        canvas.translate(r.left, r.top);
        int width = this.width < 0 ? r.width() : this.width;
        int height = this.height < 0 ? r.height() : this.height;
        int fontSize = this.fontSize < 0 ? Math.min(width, height) / 2 : this.fontSize;
        this.textPaint.setTextSize(fontSize);
        canvas.drawText(this.text, width / 2, (height / 2) - ((this.textPaint.descent() + this.textPaint.ascent()) / 2.0f), this.textPaint);
        canvas.restoreToCount(count);
    }

    private void drawBorder(Canvas canvas) {
        RectF rect = new RectF(getBounds());
        rect.inset(this.borderThickness / 2, this.borderThickness / 2);
        if (this.shape instanceof OvalShape) {
            canvas.drawOval(rect, this.borderPaint);
        } else if (this.shape instanceof RoundRectShape) {
            canvas.drawRoundRect(rect, this.radius, this.radius, this.borderPaint);
        } else {
            canvas.drawRect(rect, this.borderPaint);
        }
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void setAlpha(int alpha) {
        this.textPaint.setAlpha(alpha);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public void setColorFilter(ColorFilter cf) {
        this.textPaint.setColorFilter(cf);
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getOpacity() {
        return -3;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicWidth() {
        return this.width;
    }

    @Override // android.graphics.drawable.ShapeDrawable, android.graphics.drawable.Drawable
    public int getIntrinsicHeight() {
        return this.height;
    }

    public static IShapeBuilder builder() {
        return new Builder();
    }

    /* loaded from: classes.dex */
    public static class Builder implements IConfigBuilder, IShapeBuilder, IBuilder {
        private int borderThickness;
        private int color;
        private Typeface font;
        private int fontSize;
        private int height;
        private boolean isBold;
        public float radius;
        private RectShape shape;
        private String text;
        public int textColor;
        private boolean toUpperCase;
        private int width;

        private Builder() {
            this.text = "";
            this.color = -7829368;
            this.textColor = -1;
            this.borderThickness = 0;
            this.width = -1;
            this.height = -1;
            this.shape = new RectShape();
            this.font = Typeface.create("sans-serif-light", 0);
            this.fontSize = -1;
            this.isBold = false;
            this.toUpperCase = false;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder width(int width) {
            this.width = width;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder height(int height) {
            this.height = height;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder textColor(int color) {
            this.textColor = color;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder withBorder(int thickness) {
            this.borderThickness = thickness;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder useFont(Typeface font) {
            this.font = font;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder fontSize(int size) {
            this.fontSize = size;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder bold() {
            this.isBold = true;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IConfigBuilder toUpperCase() {
            this.toUpperCase = true;
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public IConfigBuilder beginConfig() {
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IConfigBuilder
        public IShapeBuilder endConfig() {
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public IBuilder rect() {
            this.shape = new RectShape();
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public IBuilder round() {
            this.shape = new OvalShape();
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public IBuilder roundRect(int radius) {
            this.radius = radius;
            float[] radii = {radius, radius, radius, radius, radius, radius, radius, radius};
            this.shape = new RoundRectShape(radii, null, null);
            return this;
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public TextDrawable buildRect(String text, int color) {
            rect();
            return build(text, color);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public TextDrawable buildRoundRect(String text, int color, int radius) {
            roundRect(radius);
            return build(text, color);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IShapeBuilder
        public TextDrawable buildRound(String text, int color) {
            round();
            return build(text, color);
        }

        @Override // net.oneplus.h2launcher.quickpage.view.util.TextDrawable.IBuilder
        public TextDrawable build(String text, int color) {
            this.color = color;
            this.text = text;
            return new TextDrawable(this);
        }
    }
}
