package com.crashlytics.android.answers;

/* loaded from: classes.dex */
public class LevelStartEvent extends PredefinedEvent<LevelStartEvent> {
    static final String LEVEL_NAME_ATTRIBUTE = "levelName";
    static final String TYPE = "levelStart";

    public LevelStartEvent putLevelName(String levelName) {
        this.predefinedAttributes.put(LEVEL_NAME_ATTRIBUTE, levelName);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }
}
