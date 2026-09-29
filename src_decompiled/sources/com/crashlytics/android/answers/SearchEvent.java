package com.crashlytics.android.answers;

/* loaded from: classes.dex */
public class SearchEvent extends PredefinedEvent<SearchEvent> {
    static final String QUERY_ATTRIBUTE = "query";
    static final String TYPE = "search";

    public SearchEvent putQuery(String query) {
        this.predefinedAttributes.put(QUERY_ATTRIBUTE, query);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return "search";
    }
}
