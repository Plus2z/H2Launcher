package net.oneplus.h2launcher.oos;

import java.util.HashMap;

/* loaded from: classes.dex */
public class StyleResourceInfo {
    private HashMap<String, Integer> mResourceMap = new HashMap<>();

    public int getResourceId(String key) throws ResourceIdNotFoundException {
        Integer resourceId = this.mResourceMap.get(key);
        if (resourceId == null) {
            throw new ResourceIdNotFoundException(key);
        }
        return resourceId.intValue();
    }

    public void fillStyleResourceInfo(HashMap<String, Integer> resourceMap) {
        this.mResourceMap.clear();
        this.mResourceMap.putAll(resourceMap);
    }

    /* loaded from: classes.dex */
    public static class ResourceIdNotFoundException extends RuntimeException {
        public ResourceIdNotFoundException(String message) {
            super(message);
        }
    }
}
