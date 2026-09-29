package com.crashlytics.android.answers;

/* loaded from: classes.dex */
public class LoginEvent extends PredefinedEvent<LoginEvent> {
    static final String METHOD_ATTRIBUTE = "method";
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "login";

    public LoginEvent putMethod(String loginMethod) {
        this.predefinedAttributes.put(METHOD_ATTRIBUTE, loginMethod);
        return this;
    }

    public LoginEvent putSuccess(boolean loginSucceeded) {
        this.predefinedAttributes.put("success", Boolean.toString(loginSucceeded));
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }
}
