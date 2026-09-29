.class public Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;
.super Ljava/lang/Object;
.source "FirebaseAnalyticsEventMapper.java"


# static fields
.field private static final EVENT_NAMES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final FIREBASE_LEVEL_NAME:Ljava/lang/String; = "level_name"

.field private static final FIREBASE_METHOD:Ljava/lang/String; = "method"

.field private static final FIREBASE_RATING:Ljava/lang/String; = "rating"

.field private static final FIREBASE_SUCCESS:Ljava/lang/String; = "success"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 23
    new-instance v0, Ljava/util/HashSet;

    const/16 v1, 0x1a

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "app_clear_data"

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const-string v3, "app_exception"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "app_remove"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "app_upgrade"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "app_install"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "app_update"

    aput-object v3, v1, v2

    const/4 v2, 0x6

    const-string v3, "firebase_campaign"

    aput-object v3, v1, v2

    const/4 v2, 0x7

    const-string v3, "error"

    aput-object v3, v1, v2

    const/16 v2, 0x8

    const-string v3, "first_open"

    aput-object v3, v1, v2

    const/16 v2, 0x9

    const-string v3, "first_visit"

    aput-object v3, v1, v2

    const/16 v2, 0xa

    const-string v3, "in_app_purchase"

    aput-object v3, v1, v2

    const/16 v2, 0xb

    const-string v3, "notification_dismiss"

    aput-object v3, v1, v2

    const/16 v2, 0xc

    const-string v3, "notification_foreground"

    aput-object v3, v1, v2

    const/16 v2, 0xd

    const-string v3, "notification_open"

    aput-object v3, v1, v2

    const/16 v2, 0xe

    const-string v3, "notification_receive"

    aput-object v3, v1, v2

    const/16 v2, 0xf

    const-string v3, "os_update"

    aput-object v3, v1, v2

    const/16 v2, 0x10

    const-string v3, "session_start"

    aput-object v3, v1, v2

    const/16 v2, 0x11

    const-string v3, "user_engagement"

    aput-object v3, v1, v2

    const/16 v2, 0x12

    const-string v3, "ad_exposure"

    aput-object v3, v1, v2

    const/16 v2, 0x13

    const-string v3, "adunit_exposure"

    aput-object v3, v1, v2

    const/16 v2, 0x14

    const-string v3, "ad_query"

    aput-object v3, v1, v2

    const/16 v2, 0x15

    const-string v3, "ad_activeview"

    aput-object v3, v1, v2

    const/16 v2, 0x16

    const-string v3, "ad_impression"

    aput-object v3, v1, v2

    const/16 v2, 0x17

    const-string v3, "ad_click"

    aput-object v3, v1, v2

    const/16 v2, 0x18

    const-string v3, "screen_view"

    aput-object v3, v1, v2

    const/16 v2, 0x19

    const-string v3, "firebase_extra_parameter"

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->EVENT_NAMES:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private mapAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "attributeName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x0

    .line 117
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 118
    :cond_0
    const-string v0, "fabric_unnamed_parameter"

    .line 134
    :goto_0
    return-object v0

    .line 121
    :cond_1
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 123
    const-string v0, "ga_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "google_"

    .line 124
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "firebase_"

    .line 125
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 126
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_3

    .line 127
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabric_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 130
    :cond_3
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_4

    .line 131
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    move-object v0, p1

    .line 134
    goto :goto_0
.end method

.method private mapBooleanValue(Ljava/lang/String;)Ljava/lang/Integer;
    .locals 1
    .param p1, "truthyString"    # Ljava/lang/String;

    .prologue
    .line 282
    if-nez p1, :cond_0

    .line 283
    const/4 v0, 0x0

    .line 286
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "true"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method private mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V
    .locals 8
    .param p1, "mutatedBundle"    # Landroid/os/Bundle;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 300
    .local p2, "customAttributes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 301
    .local v1, "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    .line 302
    .local v2, "value":Ljava/lang/Object;
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-direct {p0, v3}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 303
    .local v0, "attributeKey":Ljava/lang/String;
    instance-of v3, v2, Ljava/lang/String;

    if-eqz v3, :cond_1

    .line 304
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 305
    :cond_1
    instance-of v3, v2, Ljava/lang/Double;

    if-eqz v3, :cond_2

    .line 306
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Double;

    invoke-virtual {v3}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0

    .line 307
    :cond_2
    instance-of v3, v2, Ljava/lang/Long;

    if-eqz v3, :cond_3

    .line 308
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 309
    :cond_3
    instance-of v3, v2, Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 310
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-virtual {p1, v0, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0

    .line 313
    .end local v0    # "attributeKey":Ljava/lang/String;
    .end local v1    # "o":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v2    # "value":Ljava/lang/Object;
    :cond_4
    return-void
.end method

.method private mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "eventName"    # Ljava/lang/String;

    .prologue
    const/16 v3, 0x28

    const/4 v2, 0x0

    .line 92
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 93
    :cond_0
    const-string v0, "fabric_unnamed_event"

    .line 113
    :goto_0
    return-object v0

    .line 96
    :cond_1
    sget-object v0, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->EVENT_NAMES:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabric_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 100
    :cond_2
    const-string v0, "[^\\p{Alnum}_]+"

    const-string v1, "_"

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 102
    const-string v0, "ga_"

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "google_"

    .line 103
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "firebase_"

    .line 104
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 105
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isLetter(C)Z

    move-result v0

    if-nez v0, :cond_4

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "fabric_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 109
    :cond_4
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v3, :cond_5

    .line 110
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    :cond_5
    move-object v0, p1

    .line 113
    goto :goto_0
.end method

.method private mapDouble(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 2
    .param p1, "doubleObj"    # Ljava/lang/Object;

    .prologue
    .line 273
    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 274
    .local v0, "doubleString":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 275
    const/4 v1, 0x0

    .line 278
    :goto_0
    return-object v1

    :cond_0
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method private mapPredefinedEvent(Lcom/crashlytics/android/answers/SessionEvent;)Landroid/os/Bundle;
    .locals 6
    .param p1, "event"    # Lcom/crashlytics/android/answers/SessionEvent;

    .prologue
    .line 185
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 186
    .local v0, "bundle":Landroid/os/Bundle;
    const-string v1, "purchase"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 187
    const-string v2, "item_id"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 188
    const-string v2, "item_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 189
    const-string v2, "item_category"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    const-string v1, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 191
    const-string v2, "currency"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 234
    :cond_0
    :goto_0
    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V

    .line 236
    return-object v0

    .line 192
    :cond_1
    const-string v1, "addToCart"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 193
    const-string v2, "item_id"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 194
    const-string v2, "item_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 195
    const-string v2, "item_category"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    const-string v1, "price"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 197
    const-string v1, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 198
    const-string v2, "currency"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    const-string v1, "quantity"

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0

    .line 200
    :cond_2
    const-string v1, "startCheckout"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 201
    const-string v2, "quantity"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "itemCount"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-long v4, v1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putLong(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V

    .line 202
    const-string v1, "value"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "totalPrice"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 203
    const-string v2, "currency"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "currency"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 204
    :cond_3
    const-string v1, "contentView"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 205
    const-string v2, "content_type"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 206
    const-string v2, "item_id"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 207
    const-string v2, "item_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 208
    :cond_4
    const-string v1, "search"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 209
    const-string v2, "search_term"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "query"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 210
    :cond_5
    const-string v1, "share"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 211
    const-string v2, "method"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 212
    const-string v2, "content_type"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 213
    const-string v2, "item_id"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v2, "item_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 215
    :cond_6
    const-string v1, "rating"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 216
    const-string v1, "rating"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "rating"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 217
    const-string v2, "content_type"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentType"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 218
    const-string v2, "item_id"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentId"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string v2, "item_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "contentName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 220
    :cond_7
    const-string v1, "signUp"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 221
    const-string v2, "method"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 222
    :cond_8
    const-string v1, "login"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 223
    const-string v2, "method"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 224
    :cond_9
    const-string v1, "invite"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 225
    const-string v2, "method"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "method"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 226
    :cond_a
    const-string v1, "levelStart"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 227
    const-string v2, "level_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 228
    :cond_b
    const-string v1, "levelEnd"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 229
    const-string v1, "score"

    iget-object v2, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "score"

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V

    .line 230
    const-string v2, "level_name"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "levelName"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string v2, "success"

    iget-object v1, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v3, "success"

    invoke-interface {v1, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapBooleanValue(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {p0, v0, v2, v1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->putInt(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V

    goto/16 :goto_0
.end method

.method private mapPredefinedEventName(Ljava/lang/String;Z)Ljava/lang/String;
    .locals 5
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "wasFailedEvent"    # Z

    .prologue
    const/4 v3, 0x2

    const/4 v2, 0x1

    const/4 v0, 0x0

    const/4 v1, -0x1

    .line 138
    if-eqz p2, :cond_1

    .line 139
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_0
    move v4, v1

    :goto_0
    packed-switch v4, :pswitch_data_0

    .line 151
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_2
    move v0, v1

    :goto_1
    packed-switch v0, :pswitch_data_1

    .line 179
    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_2
    return-object v0

    .line 139
    :sswitch_0
    const-string v4, "purchase"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v0

    goto :goto_0

    :sswitch_1
    const-string v4, "signUp"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v2

    goto :goto_0

    :sswitch_2
    const-string v4, "login"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v4, v3

    goto :goto_0

    .line 141
    :pswitch_0
    const-string v0, "failed_ecommerce_purchase"

    goto :goto_2

    .line 143
    :pswitch_1
    const-string v0, "failed_sign_up"

    goto :goto_2

    .line 145
    :pswitch_2
    const-string v0, "failed_login"

    goto :goto_2

    .line 151
    :sswitch_3
    const-string v2, "purchase"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    goto :goto_1

    :sswitch_4
    const-string v0, "addToCart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v2

    goto :goto_1

    :sswitch_5
    const-string v0, "startCheckout"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    move v0, v3

    goto :goto_1

    :sswitch_6
    const-string v0, "contentView"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x3

    goto :goto_1

    :sswitch_7
    const-string v0, "search"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x4

    goto :goto_1

    :sswitch_8
    const-string v0, "share"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x5

    goto :goto_1

    :sswitch_9
    const-string v0, "rating"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x6

    goto :goto_1

    :sswitch_a
    const-string v0, "signUp"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 v0, 0x7

    goto :goto_1

    :sswitch_b
    const-string v0, "login"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x8

    goto/16 :goto_1

    :sswitch_c
    const-string v0, "invite"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0x9

    goto/16 :goto_1

    :sswitch_d
    const-string v0, "levelStart"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xa

    goto/16 :goto_1

    :sswitch_e
    const-string v0, "levelEnd"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/16 v0, 0xb

    goto/16 :goto_1

    .line 153
    :pswitch_3
    const-string v0, "ecommerce_purchase"

    goto/16 :goto_2

    .line 155
    :pswitch_4
    const-string v0, "add_to_cart"

    goto/16 :goto_2

    .line 157
    :pswitch_5
    const-string v0, "begin_checkout"

    goto/16 :goto_2

    .line 159
    :pswitch_6
    const-string v0, "select_content"

    goto/16 :goto_2

    .line 161
    :pswitch_7
    const-string v0, "search"

    goto/16 :goto_2

    .line 163
    :pswitch_8
    const-string v0, "share"

    goto/16 :goto_2

    .line 165
    :pswitch_9
    const-string v0, "rate_content"

    goto/16 :goto_2

    .line 167
    :pswitch_a
    const-string v0, "sign_up"

    goto/16 :goto_2

    .line 169
    :pswitch_b
    const-string v0, "login"

    goto/16 :goto_2

    .line 171
    :pswitch_c
    const-string v0, "invite"

    goto/16 :goto_2

    .line 173
    :pswitch_d
    const-string v0, "level_start"

    goto/16 :goto_2

    .line 175
    :pswitch_e
    const-string v0, "level_end"

    goto/16 :goto_2

    .line 139
    nop

    :sswitch_data_0
    .sparse-switch
        -0x35ca92c8 -> :sswitch_1
        0x625ef69 -> :sswitch_2
        0x67e90501 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 151
    :sswitch_data_1
    .sparse-switch
        -0x7f0e6949 -> :sswitch_e
        -0x468dd0f7 -> :sswitch_c
        -0x37ea4e63 -> :sswitch_9
        -0x36059a58 -> :sswitch_7
        -0x35ca92c8 -> :sswitch_a
        -0x17310142 -> :sswitch_6
        0x165f03c -> :sswitch_4
        0x625ef69 -> :sswitch_b
        0x6854fdf -> :sswitch_8
        0xbaecb3e -> :sswitch_d
        0x632ef3c8 -> :sswitch_5
        0x67e90501 -> :sswitch_3
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
    .end packed-switch
.end method

.method private mapPriceValue(Ljava/lang/Object;)Ljava/lang/Double;
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 290
    move-object v0, p1

    check-cast v0, Ljava/lang/Long;

    .line 291
    .local v0, "longValue":Ljava/lang/Long;
    if-nez v0, :cond_0

    .line 292
    const/4 v1, 0x0

    .line 295
    .end local p1    # "o":Ljava/lang/Object;
    :goto_0
    return-object v1

    .restart local p1    # "o":Ljava/lang/Object;
    :cond_0
    new-instance v1, Ljava/math/BigDecimal;

    check-cast p1, Ljava/lang/Long;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/math/BigDecimal;-><init>(J)V

    sget-object v2, Lcom/crashlytics/android/answers/AddToCartEvent;->MICRO_CONSTANT:Ljava/math/BigDecimal;

    invoke-virtual {v1, v2}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;)Ljava/math/BigDecimal;

    move-result-object v1

    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_0
.end method

.method private putDouble(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Double;)V
    .locals 4
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "doubleValue"    # Ljava/lang/Double;

    .prologue
    .line 264
    invoke-direct {p0, p3}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapDouble(Ljava/lang/Object;)Ljava/lang/Double;

    move-result-object v0

    .line 265
    .local v0, "mappedDouble":Ljava/lang/Double;
    if-nez v0, :cond_0

    .line 270
    :goto_0
    return-void

    .line 269
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, p2, v2, v3}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    goto :goto_0
.end method

.method private putInt(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Integer;)V
    .locals 1
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "intValue"    # Ljava/lang/Integer;

    .prologue
    .line 248
    if-nez p3, :cond_0

    .line 253
    :goto_0
    return-void

    .line 252
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p1, p2, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method private putLong(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/Long;)V
    .locals 2
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "longValue"    # Ljava/lang/Long;

    .prologue
    .line 240
    if-nez p3, :cond_0

    .line 245
    :goto_0
    return-void

    .line 244
    :cond_0
    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    goto :goto_0
.end method

.method private putString(Landroid/os/Bundle;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "bundle"    # Landroid/os/Bundle;
    .param p2, "param"    # Ljava/lang/String;
    .param p3, "stringValue"    # Ljava/lang/String;

    .prologue
    .line 256
    if-nez p3, :cond_0

    .line 261
    :goto_0
    return-void

    .line 260
    :cond_0
    invoke-virtual {p1, p2, p3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method


# virtual methods
.method public mapEvent(Lcom/crashlytics/android/answers/SessionEvent;)Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;
    .locals 10
    .param p1, "event"    # Lcom/crashlytics/android/answers/SessionEvent;

    .prologue
    const/4 v6, 0x1

    const/4 v7, 0x0

    .line 56
    sget-object v8, Lcom/crashlytics/android/answers/SessionEvent$Type;->CUSTOM:Lcom/crashlytics/android/answers/SessionEvent$Type;

    iget-object v9, p1, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 57
    invoke-virtual {v8, v9}, Lcom/crashlytics/android/answers/SessionEvent$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    iget-object v8, p1, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    if-eqz v8, :cond_0

    move v2, v6

    .line 58
    .local v2, "isCustomEvent":Z
    :goto_0
    sget-object v8, Lcom/crashlytics/android/answers/SessionEvent$Type;->PREDEFINED:Lcom/crashlytics/android/answers/SessionEvent$Type;

    iget-object v9, p1, Lcom/crashlytics/android/answers/SessionEvent;->type:Lcom/crashlytics/android/answers/SessionEvent$Type;

    .line 59
    invoke-virtual {v8, v9}, Lcom/crashlytics/android/answers/SessionEvent$Type;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    iget-object v8, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    if-eqz v8, :cond_1

    move v3, v6

    .line 61
    .local v3, "isPredefinedEvent":Z
    :goto_1
    if-nez v2, :cond_2

    if-nez v3, :cond_2

    .line 63
    const/4 v6, 0x0

    .line 88
    :goto_2
    return-object v6

    .end local v2    # "isCustomEvent":Z
    .end local v3    # "isPredefinedEvent":Z
    :cond_0
    move v2, v7

    .line 57
    goto :goto_0

    .restart local v2    # "isCustomEvent":Z
    :cond_1
    move v3, v7

    .line 59
    goto :goto_1

    .line 67
    .restart local v3    # "isPredefinedEvent":Z
    :cond_2
    if-eqz v3, :cond_4

    .line 68
    invoke-direct {p0, p1}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPredefinedEvent(Lcom/crashlytics/android/answers/SessionEvent;)Landroid/os/Bundle;

    move-result-object v0

    .line 77
    .local v0, "bundle":Landroid/os/Bundle;
    :cond_3
    :goto_3
    if-eqz v3, :cond_6

    .line 78
    iget-object v8, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedAttributes:Ljava/util/Map;

    const-string v9, "success"

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 80
    .local v4, "successBoolean":Ljava/lang/String;
    if-eqz v4, :cond_5

    .line 81
    invoke-static {v4}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    move v5, v6

    .line 82
    .local v5, "wasFailedEvent":Z
    :goto_4
    iget-object v6, p1, Lcom/crashlytics/android/answers/SessionEvent;->predefinedType:Ljava/lang/String;

    invoke-direct {p0, v6, v5}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapPredefinedEventName(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 87
    .end local v4    # "successBoolean":Ljava/lang/String;
    .end local v5    # "wasFailedEvent":Z
    .local v1, "eventName":Ljava/lang/String;
    :goto_5
    invoke-static {}, Lio/fabric/sdk/android/Fabric;->getLogger()Lio/fabric/sdk/android/Logger;

    move-result-object v6

    const-string v7, "Answers"

    const-string v8, "Logging event into firebase..."

    invoke-interface {v6, v7, v8}, Lio/fabric/sdk/android/Logger;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 88
    new-instance v6, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;

    invoke-direct {v6, v1, v0}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEvent;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_2

    .line 70
    .end local v0    # "bundle":Landroid/os/Bundle;
    .end local v1    # "eventName":Ljava/lang/String;
    :cond_4
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 71
    .restart local v0    # "bundle":Landroid/os/Bundle;
    iget-object v8, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    if-eqz v8, :cond_3

    .line 72
    iget-object v8, p1, Lcom/crashlytics/android/answers/SessionEvent;->customAttributes:Ljava/util/Map;

    invoke-direct {p0, v0, v8}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventAttributes(Landroid/os/Bundle;Ljava/util/Map;)V

    goto :goto_3

    .restart local v4    # "successBoolean":Ljava/lang/String;
    :cond_5
    move v5, v7

    .line 81
    goto :goto_4

    .line 84
    .end local v4    # "successBoolean":Ljava/lang/String;
    :cond_6
    iget-object v6, p1, Lcom/crashlytics/android/answers/SessionEvent;->customType:Ljava/lang/String;

    invoke-direct {p0, v6}, Lcom/crashlytics/android/answers/FirebaseAnalyticsEventMapper;->mapCustomEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "eventName":Ljava/lang/String;
    goto :goto_5
.end method
