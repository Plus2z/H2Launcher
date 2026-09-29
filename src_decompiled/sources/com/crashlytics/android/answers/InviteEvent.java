package com.crashlytics.android.answers;

/* loaded from: classes.dex */
public class InviteEvent extends PredefinedEvent<InviteEvent> {
    static final String METHOD_ATTRIBUTE = "method";
    static final String TYPE = "invite";

    public InviteEvent putMethod(String inviteMethod) {
        this.predefinedAttributes.put(METHOD_ATTRIBUTE, inviteMethod);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }
}
