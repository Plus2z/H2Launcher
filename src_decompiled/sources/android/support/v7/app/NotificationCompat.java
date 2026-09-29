package android.support.v7.app;

import android.app.Notification;
import android.app.PendingIntent;
import android.content.Context;
import android.content.res.ColorStateList;
import android.os.Build;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.annotation.RequiresApi;
import android.support.annotation.RestrictTo;
import android.support.v4.app.BundleCompat;
import android.support.v4.app.NotificationBuilderWithBuilderAccessor;
import android.support.v4.app.NotificationCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.text.BidiFormatter;
import android.support.v7.appcompat.R;
import android.text.SpannableStringBuilder;
import android.text.TextUtils;
import android.text.style.TextAppearanceSpan;
import android.widget.RemoteViews;
import java.util.List;

/* loaded from: classes.dex */
public class NotificationCompat extends android.support.v4.app.NotificationCompat {

    /* loaded from: classes.dex */
    public static class DecoratedCustomViewStyle extends NotificationCompat.Style {
    }

    /* loaded from: classes.dex */
    public static class DecoratedMediaCustomViewStyle extends MediaStyle {
    }

    public static MediaSessionCompat.Token getMediaSession(Notification notification) {
        Bundle extras = getExtras(notification);
        if (extras != null) {
            if (Build.VERSION.SDK_INT >= 21) {
                Parcelable tokenInner = extras.getParcelable(android.support.v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (tokenInner != null) {
                    return MediaSessionCompat.Token.fromToken(tokenInner);
                }
            } else {
                IBinder tokenInner2 = BundleCompat.getBinder(extras, android.support.v4.app.NotificationCompat.EXTRA_MEDIA_SESSION);
                if (tokenInner2 != null) {
                    Parcel p = Parcel.obtain();
                    p.writeStrongBinder(tokenInner2);
                    p.setDataPosition(0);
                    MediaSessionCompat.Token createFromParcel = MediaSessionCompat.Token.CREATOR.createFromParcel(p);
                    p.recycle();
                    return createFromParcel;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(24)
    public static void addStyleToBuilderApi24(NotificationBuilderWithBuilderAccessor builder, NotificationCompat.Builder b) {
        if (b.mStyle instanceof DecoratedCustomViewStyle) {
            NotificationCompatImpl24.addDecoratedCustomViewStyle(builder);
        } else if (b.mStyle instanceof DecoratedMediaCustomViewStyle) {
            NotificationCompatImpl24.addDecoratedMediaCustomViewStyle(builder);
        } else if (!(b.mStyle instanceof NotificationCompat.MessagingStyle)) {
            addStyleGetContentViewLollipop(builder, b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static RemoteViews addStyleGetContentViewLollipop(NotificationBuilderWithBuilderAccessor builder, NotificationCompat.Builder b) {
        if (b.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) b.mStyle;
            NotificationCompatImpl21.addMediaStyle(builder, mediaStyle.mActionsToShowInCompact, mediaStyle.mToken != null ? mediaStyle.mToken.getToken() : null);
            boolean hasContentView = b.getContentView() != null;
            boolean isMorL = Build.VERSION.SDK_INT >= 21 && Build.VERSION.SDK_INT <= 23;
            boolean createCustomContent = hasContentView || (isMorL && b.getBigContentView() != null);
            if ((b.mStyle instanceof DecoratedMediaCustomViewStyle) && createCustomContent) {
                RemoteViews contentViewMedia = NotificationCompatImplBase.overrideContentViewMedia(builder, b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), b.mActions, mediaStyle.mActionsToShowInCompact, false, null, hasContentView);
                if (hasContentView) {
                    NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, contentViewMedia, b.getContentView());
                }
                setBackgroundColor(b.mContext, contentViewMedia, b.getColor());
                return contentViewMedia;
            }
            return null;
        }
        if (b.mStyle instanceof DecoratedCustomViewStyle) {
            RemoteViews contentViewMedia2 = getDecoratedContentView(b);
            return contentViewMedia2;
        }
        RemoteViews contentViewMedia3 = addStyleGetContentViewJellybean(builder, b);
        return contentViewMedia3;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(16)
    public static RemoteViews addStyleGetContentViewJellybean(NotificationBuilderWithBuilderAccessor builder, NotificationCompat.Builder b) {
        if (b.mStyle instanceof NotificationCompat.MessagingStyle) {
            addMessagingFallBackStyle((NotificationCompat.MessagingStyle) b.mStyle, builder, b);
        }
        return addStyleGetContentViewIcs(builder, b);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static NotificationCompat.MessagingStyle.Message findLatestIncomingMessage(NotificationCompat.MessagingStyle style) {
        List<NotificationCompat.MessagingStyle.Message> messages = style.getMessages();
        for (int i = messages.size() - 1; i >= 0; i--) {
            NotificationCompat.MessagingStyle.Message m = messages.get(i);
            if (!TextUtils.isEmpty(m.getSender())) {
                return m;
            }
        }
        if (!messages.isEmpty()) {
            return messages.get(messages.size() - 1);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static CharSequence makeMessageLine(NotificationCompat.Builder b, NotificationCompat.MessagingStyle style, NotificationCompat.MessagingStyle.Message m) {
        BidiFormatter bidi = BidiFormatter.getInstance();
        SpannableStringBuilder sb = new SpannableStringBuilder();
        boolean afterLollipop = Build.VERSION.SDK_INT >= 21;
        int color = (afterLollipop || Build.VERSION.SDK_INT <= 10) ? -16777216 : -1;
        CharSequence replyName = m.getSender();
        if (TextUtils.isEmpty(m.getSender())) {
            replyName = style.getUserDisplayName() == null ? "" : style.getUserDisplayName();
            if (afterLollipop && b.getColor() != 0) {
                color = b.getColor();
            }
        }
        CharSequence senderText = bidi.unicodeWrap(replyName);
        sb.append(senderText);
        sb.setSpan(makeFontColorSpan(color), sb.length() - senderText.length(), sb.length(), 33);
        CharSequence text = m.getText() == null ? "" : m.getText();
        sb.append((CharSequence) "  ").append(bidi.unicodeWrap(text));
        return sb;
    }

    private static TextAppearanceSpan makeFontColorSpan(int color) {
        return new TextAppearanceSpan(null, 0, 0, ColorStateList.valueOf(color), null);
    }

    private static void addMessagingFallBackStyle(NotificationCompat.MessagingStyle style, NotificationBuilderWithBuilderAccessor builder, NotificationCompat.Builder b) {
        SpannableStringBuilder completeMessage = new SpannableStringBuilder();
        List<NotificationCompat.MessagingStyle.Message> messages = style.getMessages();
        boolean showNames = style.getConversationTitle() != null || hasMessagesWithoutSender(style.getMessages());
        for (int i = messages.size() - 1; i >= 0; i--) {
            NotificationCompat.MessagingStyle.Message m = messages.get(i);
            CharSequence line = showNames ? makeMessageLine(b, style, m) : m.getText();
            if (i != messages.size() - 1) {
                completeMessage.insert(0, (CharSequence) "\n");
            }
            completeMessage.insert(0, line);
        }
        NotificationCompatImplJellybean.addBigTextStyle(builder, completeMessage);
    }

    private static boolean hasMessagesWithoutSender(List<NotificationCompat.MessagingStyle.Message> messages) {
        for (int i = messages.size() - 1; i >= 0; i--) {
            NotificationCompat.MessagingStyle.Message m = messages.get(i);
            if (m.getSender() == null) {
                return true;
            }
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(14)
    public static RemoteViews addStyleGetContentViewIcs(NotificationBuilderWithBuilderAccessor builder, NotificationCompat.Builder b) {
        if (b.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) b.mStyle;
            boolean isDecorated = (b.mStyle instanceof DecoratedMediaCustomViewStyle) && b.getContentView() != null;
            RemoteViews contentViewMedia = NotificationCompatImplBase.overrideContentViewMedia(builder, b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), b.mActions, mediaStyle.mActionsToShowInCompact, mediaStyle.mShowCancelButton, mediaStyle.mCancelButtonIntent, isDecorated);
            if (isDecorated) {
                NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, contentViewMedia, b.getContentView());
                return contentViewMedia;
            }
        } else if (b.mStyle instanceof DecoratedCustomViewStyle) {
            return getDecoratedContentView(b);
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(16)
    public static void addBigStyleToBuilderJellybean(Notification n, NotificationCompat.Builder b) {
        RemoteViews innerView;
        if (b.mStyle instanceof MediaStyle) {
            MediaStyle mediaStyle = (MediaStyle) b.mStyle;
            if (b.getBigContentView() != null) {
                innerView = b.getBigContentView();
            } else {
                innerView = b.getContentView();
            }
            boolean isDecorated = (b.mStyle instanceof DecoratedMediaCustomViewStyle) && innerView != null;
            NotificationCompatImplBase.overrideMediaBigContentView(n, b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), 0, b.mActions, mediaStyle.mShowCancelButton, mediaStyle.mCancelButtonIntent, isDecorated);
            if (isDecorated) {
                NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, n.bigContentView, innerView);
                return;
            }
            return;
        }
        if (b.mStyle instanceof DecoratedCustomViewStyle) {
            addDecoratedBigStyleToBuilderJellybean(n, b);
        }
    }

    private static RemoteViews getDecoratedContentView(NotificationCompat.Builder b) {
        if (b.getContentView() == null) {
            return null;
        }
        RemoteViews remoteViews = NotificationCompatImplBase.applyStandardTemplateWithActions(b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mNotification.icon, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), b.getColor(), R.layout.notification_template_custom_big, false, null);
        NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, remoteViews, b.getContentView());
        return remoteViews;
    }

    @RequiresApi(16)
    private static void addDecoratedBigStyleToBuilderJellybean(Notification n, NotificationCompat.Builder b) {
        RemoteViews bigContentView = b.getBigContentView();
        RemoteViews innerView = bigContentView != null ? bigContentView : b.getContentView();
        if (innerView != null) {
            RemoteViews remoteViews = NotificationCompatImplBase.applyStandardTemplateWithActions(b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, n.icon, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), b.getColor(), R.layout.notification_template_custom_big, false, b.mActions);
            NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, remoteViews, innerView);
            n.bigContentView = remoteViews;
        }
    }

    @RequiresApi(21)
    private static void addDecoratedHeadsUpToBuilderLollipop(Notification n, NotificationCompat.Builder b) {
        RemoteViews headsUp = b.getHeadsUpContentView();
        RemoteViews innerView = headsUp != null ? headsUp : b.getContentView();
        if (headsUp != null) {
            RemoteViews remoteViews = NotificationCompatImplBase.applyStandardTemplateWithActions(b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, n.icon, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), b.getColor(), R.layout.notification_template_custom_big, false, b.mActions);
            NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, remoteViews, innerView);
            n.headsUpContentView = remoteViews;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static void addBigStyleToBuilderLollipop(Notification n, NotificationCompat.Builder b) {
        RemoteViews innerView;
        if (b.getBigContentView() != null) {
            innerView = b.getBigContentView();
        } else {
            innerView = b.getContentView();
        }
        if ((b.mStyle instanceof DecoratedMediaCustomViewStyle) && innerView != null) {
            NotificationCompatImplBase.overrideMediaBigContentView(n, b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), 0, b.mActions, false, null, true);
            NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, n.bigContentView, innerView);
            setBackgroundColor(b.mContext, n.bigContentView, b.getColor());
        } else if (b.mStyle instanceof DecoratedCustomViewStyle) {
            addDecoratedBigStyleToBuilderJellybean(n, b);
        }
    }

    private static void setBackgroundColor(Context context, RemoteViews views, int color) {
        if (color == 0) {
            color = context.getResources().getColor(R.color.notification_material_background_media_default_color);
        }
        views.setInt(R.id.status_bar_latest_event_content, "setBackgroundColor", color);
    }

    /* JADX INFO: Access modifiers changed from: private */
    @RequiresApi(21)
    public static void addHeadsUpToBuilderLollipop(Notification n, NotificationCompat.Builder b) {
        RemoteViews innerView;
        if (b.getHeadsUpContentView() != null) {
            innerView = b.getHeadsUpContentView();
        } else {
            innerView = b.getContentView();
        }
        if ((b.mStyle instanceof DecoratedMediaCustomViewStyle) && innerView != null) {
            n.headsUpContentView = NotificationCompatImplBase.generateMediaBigView(b.mContext, b.mContentTitle, b.mContentText, b.mContentInfo, b.mNumber, b.mLargeIcon, b.mSubText, b.mUseChronometer, b.getWhenIfShowing(), b.getPriority(), 0, b.mActions, false, null, true);
            NotificationCompatImplBase.buildIntoRemoteViews(b.mContext, n.headsUpContentView, innerView);
            setBackgroundColor(b.mContext, n.headsUpContentView, b.getColor());
        } else if (b.mStyle instanceof DecoratedCustomViewStyle) {
            addDecoratedHeadsUpToBuilderLollipop(n, b);
        }
    }

    /* loaded from: classes.dex */
    public static class Builder extends NotificationCompat.Builder {
        public Builder(Context context) {
            super(context);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.app.NotificationCompat.Builder
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public CharSequence resolveText() {
            if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
                NotificationCompat.MessagingStyle style = (NotificationCompat.MessagingStyle) this.mStyle;
                NotificationCompat.MessagingStyle.Message m = NotificationCompat.findLatestIncomingMessage(style);
                CharSequence conversationTitle = style.getConversationTitle();
                if (m != null) {
                    if (conversationTitle != null) {
                        return NotificationCompat.makeMessageLine(this, style, m);
                    }
                    return m.getText();
                }
            }
            return super.resolveText();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.app.NotificationCompat.Builder
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public CharSequence resolveTitle() {
            if (this.mStyle instanceof NotificationCompat.MessagingStyle) {
                NotificationCompat.MessagingStyle style = (NotificationCompat.MessagingStyle) this.mStyle;
                NotificationCompat.MessagingStyle.Message m = NotificationCompat.findLatestIncomingMessage(style);
                CharSequence conversationTitle = style.getConversationTitle();
                if (conversationTitle != null || m != null) {
                    if (conversationTitle == null) {
                        return m.getSender();
                    }
                    return conversationTitle;
                }
            }
            return super.resolveTitle();
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // android.support.v4.app.NotificationCompat.Builder
        @RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
        public NotificationCompat.BuilderExtender getExtender() {
            if (Build.VERSION.SDK_INT >= 24) {
                return new Api24Extender();
            }
            if (Build.VERSION.SDK_INT >= 21) {
                return new LollipopExtender();
            }
            if (Build.VERSION.SDK_INT >= 16) {
                return new JellybeanExtender();
            }
            if (Build.VERSION.SDK_INT >= 14) {
                return new IceCreamSandwichExtender();
            }
            return super.getExtender();
        }
    }

    /* loaded from: classes.dex */
    private static class IceCreamSandwichExtender extends NotificationCompat.BuilderExtender {
        IceCreamSandwichExtender() {
        }

        @Override // android.support.v4.app.NotificationCompat.BuilderExtender
        public Notification build(NotificationCompat.Builder b, NotificationBuilderWithBuilderAccessor builder) {
            RemoteViews contentView = NotificationCompat.addStyleGetContentViewIcs(builder, b);
            Notification n = builder.build();
            if (contentView != null) {
                n.contentView = contentView;
            } else if (b.getContentView() != null) {
                n.contentView = b.getContentView();
            }
            return n;
        }
    }

    /* loaded from: classes.dex */
    private static class JellybeanExtender extends NotificationCompat.BuilderExtender {
        JellybeanExtender() {
        }

        @Override // android.support.v4.app.NotificationCompat.BuilderExtender
        public Notification build(NotificationCompat.Builder b, NotificationBuilderWithBuilderAccessor builder) {
            RemoteViews contentView = NotificationCompat.addStyleGetContentViewJellybean(builder, b);
            Notification n = builder.build();
            if (contentView != null) {
                n.contentView = contentView;
            }
            NotificationCompat.addBigStyleToBuilderJellybean(n, b);
            return n;
        }
    }

    /* loaded from: classes.dex */
    private static class LollipopExtender extends NotificationCompat.BuilderExtender {
        LollipopExtender() {
        }

        @Override // android.support.v4.app.NotificationCompat.BuilderExtender
        public Notification build(NotificationCompat.Builder b, NotificationBuilderWithBuilderAccessor builder) {
            RemoteViews contentView = NotificationCompat.addStyleGetContentViewLollipop(builder, b);
            Notification n = builder.build();
            if (contentView != null) {
                n.contentView = contentView;
            }
            NotificationCompat.addBigStyleToBuilderLollipop(n, b);
            NotificationCompat.addHeadsUpToBuilderLollipop(n, b);
            return n;
        }
    }

    /* loaded from: classes.dex */
    private static class Api24Extender extends NotificationCompat.BuilderExtender {
        private Api24Extender() {
        }

        @Override // android.support.v4.app.NotificationCompat.BuilderExtender
        public Notification build(NotificationCompat.Builder b, NotificationBuilderWithBuilderAccessor builder) {
            NotificationCompat.addStyleToBuilderApi24(builder, b);
            return builder.build();
        }
    }

    /* loaded from: classes.dex */
    public static class MediaStyle extends NotificationCompat.Style {
        int[] mActionsToShowInCompact = null;
        PendingIntent mCancelButtonIntent;
        boolean mShowCancelButton;
        MediaSessionCompat.Token mToken;

        public MediaStyle() {
        }

        public MediaStyle(NotificationCompat.Builder builder) {
            setBuilder(builder);
        }

        public MediaStyle setShowActionsInCompactView(int... actions) {
            this.mActionsToShowInCompact = actions;
            return this;
        }

        public MediaStyle setMediaSession(MediaSessionCompat.Token token) {
            this.mToken = token;
            return this;
        }

        public MediaStyle setShowCancelButton(boolean show) {
            this.mShowCancelButton = show;
            return this;
        }

        public MediaStyle setCancelButtonIntent(PendingIntent pendingIntent) {
            this.mCancelButtonIntent = pendingIntent;
            return this;
        }
    }
}
