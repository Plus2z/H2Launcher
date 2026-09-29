package com.crashlytics.android.answers;

/* loaded from: classes.dex */
public class ContentViewEvent extends PredefinedEvent<ContentViewEvent> {
    static final String CONTENT_ID_ATTRIBUTE = "contentId";
    static final String CONTENT_NAME_ATTRIBUTE = "contentName";
    static final String CONTENT_TYPE_ATTRIBUTE = "contentType";
    static final String TYPE = "contentView";

    public ContentViewEvent putContentId(String contentId) {
        this.predefinedAttributes.put(CONTENT_ID_ATTRIBUTE, contentId);
        return this;
    }

    public ContentViewEvent putContentName(String contentName) {
        this.predefinedAttributes.put(CONTENT_NAME_ATTRIBUTE, contentName);
        return this;
    }

    public ContentViewEvent putContentType(String contentType) {
        this.predefinedAttributes.put(CONTENT_TYPE_ATTRIBUTE, contentType);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }
}
