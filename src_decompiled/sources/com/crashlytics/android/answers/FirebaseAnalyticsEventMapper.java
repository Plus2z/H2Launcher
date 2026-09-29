package com.crashlytics.android.answers;

import android.os.Bundle;
import com.crashlytics.android.answers.SessionEvent;
import io.fabric.sdk.android.Fabric;
import io.fabric.sdk.android.services.events.EventsFilesManager;
import java.math.BigDecimal;
import java.util.Arrays;
import java.util.HashSet;
import java.util.Map;
import java.util.Set;
import net.oneplus.h2launcher.LauncherSettings;
import net.oneplus.h2launcher.Stats;
import net.oneplus.h2launcher.dynamicicon.DynamicIconTextConfig;

/* loaded from: classes.dex */
public class FirebaseAnalyticsEventMapper {
    private static final Set<String> EVENT_NAMES = new HashSet(Arrays.asList("app_clear_data", "app_exception", "app_remove", "app_upgrade", "app_install", "app_update", "firebase_campaign", "error", "first_open", "first_visit", "in_app_purchase", "notification_dismiss", "notification_foreground", "notification_open", "notification_receive", "os_update", "session_start", "user_engagement", "ad_exposure", "adunit_exposure", "ad_query", "ad_activeview", "ad_impression", "ad_click", "screen_view", "firebase_extra_parameter"));
    private static final String FIREBASE_LEVEL_NAME = "level_name";
    private static final String FIREBASE_METHOD = "method";
    private static final String FIREBASE_RATING = "rating";
    private static final String FIREBASE_SUCCESS = "success";

    public FirebaseAnalyticsEvent mapEvent(SessionEvent event) {
        Bundle bundle;
        String eventName;
        boolean isCustomEvent = SessionEvent.Type.CUSTOM.equals(event.type) && event.customType != null;
        boolean isPredefinedEvent = SessionEvent.Type.PREDEFINED.equals(event.type) && event.predefinedType != null;
        if (!isCustomEvent && !isPredefinedEvent) {
            return null;
        }
        if (isPredefinedEvent) {
            bundle = mapPredefinedEvent(event);
        } else {
            bundle = new Bundle();
            if (event.customAttributes != null) {
                mapCustomEventAttributes(bundle, event.customAttributes);
            }
        }
        if (isPredefinedEvent) {
            String successBoolean = (String) event.predefinedAttributes.get("success");
            boolean wasFailedEvent = (successBoolean == null || Boolean.parseBoolean(successBoolean)) ? false : true;
            eventName = mapPredefinedEventName(event.predefinedType, wasFailedEvent);
        } else {
            eventName = mapCustomEventName(event.customType);
        }
        Fabric.getLogger().d(Answers.TAG, "Logging event into firebase...");
        return new FirebaseAnalyticsEvent(eventName, bundle);
    }

    private String mapCustomEventName(String eventName) {
        if (eventName == null || eventName.length() == 0) {
            return "fabric_unnamed_event";
        }
        if (EVENT_NAMES.contains(eventName)) {
            return "fabric_" + eventName;
        }
        String eventName2 = eventName.replaceAll("[^\\p{Alnum}_]+", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (eventName2.startsWith("ga_") || eventName2.startsWith("google_") || eventName2.startsWith("firebase_") || !Character.isLetter(eventName2.charAt(0))) {
            eventName2 = "fabric_" + eventName2;
        }
        if (eventName2.length() > 40) {
            eventName2 = eventName2.substring(0, 40);
        }
        return eventName2;
    }

    private String mapAttribute(String attributeName) {
        if (attributeName == null || attributeName.length() == 0) {
            return "fabric_unnamed_parameter";
        }
        String attributeName2 = attributeName.replaceAll("[^\\p{Alnum}_]+", EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
        if (attributeName2.startsWith("ga_") || attributeName2.startsWith("google_") || attributeName2.startsWith("firebase_") || !Character.isLetter(attributeName2.charAt(0))) {
            attributeName2 = "fabric_" + attributeName2;
        }
        return attributeName2.length() > 40 ? attributeName2.substring(0, 40) : attributeName2;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x004e, code lost:
    
        if (r6.equals("purchase") != false) goto L11;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private java.lang.String mapPredefinedEventName(java.lang.String r6, boolean r7) {
        /*
            Method dump skipped, instructions count: 350
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.crashlytics.android.answers.FirebaseAnalyticsEventMapper.mapPredefinedEventName(java.lang.String, boolean):java.lang.String");
    }

    private Bundle mapPredefinedEvent(SessionEvent event) {
        Bundle bundle = new Bundle();
        if ("purchase".equals(event.predefinedType)) {
            putString(bundle, "item_id", (String) event.predefinedAttributes.get("itemId"));
            putString(bundle, "item_name", (String) event.predefinedAttributes.get("itemName"));
            putString(bundle, "item_category", (String) event.predefinedAttributes.get(LauncherSettings.BaseLauncherColumns.ITEM_TYPE));
            putDouble(bundle, "value", mapPriceValue(event.predefinedAttributes.get("itemPrice")));
            putString(bundle, "currency", (String) event.predefinedAttributes.get("currency"));
        } else if ("addToCart".equals(event.predefinedType)) {
            putString(bundle, "item_id", (String) event.predefinedAttributes.get("itemId"));
            putString(bundle, "item_name", (String) event.predefinedAttributes.get("itemName"));
            putString(bundle, "item_category", (String) event.predefinedAttributes.get(LauncherSettings.BaseLauncherColumns.ITEM_TYPE));
            putDouble(bundle, "price", mapPriceValue(event.predefinedAttributes.get("itemPrice")));
            putDouble(bundle, "value", mapPriceValue(event.predefinedAttributes.get("itemPrice")));
            putString(bundle, "currency", (String) event.predefinedAttributes.get("currency"));
            bundle.putLong("quantity", 1L);
        } else if ("startCheckout".equals(event.predefinedType)) {
            putLong(bundle, "quantity", Long.valueOf(((Integer) event.predefinedAttributes.get("itemCount")).intValue()));
            putDouble(bundle, "value", mapPriceValue(event.predefinedAttributes.get("totalPrice")));
            putString(bundle, "currency", (String) event.predefinedAttributes.get("currency"));
        } else if ("contentView".equals(event.predefinedType)) {
            putString(bundle, "content_type", (String) event.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) event.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) event.predefinedAttributes.get("contentName"));
        } else if (Stats.SUB_CONTAINER_ALL_APPS_SEARCH.equals(event.predefinedType)) {
            putString(bundle, "search_term", (String) event.predefinedAttributes.get("query"));
        } else if ("share".equals(event.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) event.predefinedAttributes.get(FIREBASE_METHOD));
            putString(bundle, "content_type", (String) event.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) event.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) event.predefinedAttributes.get("contentName"));
        } else if (FIREBASE_RATING.equals(event.predefinedType)) {
            putString(bundle, FIREBASE_RATING, String.valueOf(event.predefinedAttributes.get(FIREBASE_RATING)));
            putString(bundle, "content_type", (String) event.predefinedAttributes.get("contentType"));
            putString(bundle, "item_id", (String) event.predefinedAttributes.get("contentId"));
            putString(bundle, "item_name", (String) event.predefinedAttributes.get("contentName"));
        } else if ("signUp".equals(event.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) event.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("login".equals(event.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) event.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("invite".equals(event.predefinedType)) {
            putString(bundle, FIREBASE_METHOD, (String) event.predefinedAttributes.get(FIREBASE_METHOD));
        } else if ("levelStart".equals(event.predefinedType)) {
            putString(bundle, FIREBASE_LEVEL_NAME, (String) event.predefinedAttributes.get("levelName"));
        } else if ("levelEnd".equals(event.predefinedType)) {
            putDouble(bundle, "score", mapDouble(event.predefinedAttributes.get("score")));
            putString(bundle, FIREBASE_LEVEL_NAME, (String) event.predefinedAttributes.get("levelName"));
            putInt(bundle, "success", mapBooleanValue((String) event.predefinedAttributes.get("success")));
        }
        mapCustomEventAttributes(bundle, event.customAttributes);
        return bundle;
    }

    private void putLong(Bundle bundle, String param, Long longValue) {
        if (longValue != null) {
            bundle.putLong(param, longValue.longValue());
        }
    }

    private void putInt(Bundle bundle, String param, Integer intValue) {
        if (intValue != null) {
            bundle.putInt(param, intValue.intValue());
        }
    }

    private void putString(Bundle bundle, String param, String stringValue) {
        if (stringValue != null) {
            bundle.putString(param, stringValue);
        }
    }

    private void putDouble(Bundle bundle, String param, Double doubleValue) {
        Double mappedDouble = mapDouble(doubleValue);
        if (mappedDouble != null) {
            bundle.putDouble(param, mappedDouble.doubleValue());
        }
    }

    private Double mapDouble(Object doubleObj) {
        String doubleString = String.valueOf(doubleObj);
        if (doubleString == null) {
            return null;
        }
        return Double.valueOf(doubleString);
    }

    private Integer mapBooleanValue(String truthyString) {
        if (truthyString == null) {
            return null;
        }
        return Integer.valueOf(truthyString.equals(DynamicIconTextConfig.KEY_TRUE) ? 1 : 0);
    }

    private Double mapPriceValue(Object o) {
        Long longValue = (Long) o;
        if (longValue == null) {
            return null;
        }
        return Double.valueOf(new BigDecimal(((Long) o).longValue()).divide(AddToCartEvent.MICRO_CONSTANT).doubleValue());
    }

    private void mapCustomEventAttributes(Bundle mutatedBundle, Map<String, Object> customAttributes) {
        for (Map.Entry<String, Object> o : customAttributes.entrySet()) {
            Object value = o.getValue();
            String attributeKey = mapAttribute(o.getKey());
            if (value instanceof String) {
                mutatedBundle.putString(attributeKey, o.getValue().toString());
            } else if (value instanceof Double) {
                mutatedBundle.putDouble(attributeKey, ((Double) o.getValue()).doubleValue());
            } else if (value instanceof Long) {
                mutatedBundle.putLong(attributeKey, ((Long) o.getValue()).longValue());
            } else if (value instanceof Integer) {
                mutatedBundle.putInt(attributeKey, ((Integer) o.getValue()).intValue());
            }
        }
    }
}
