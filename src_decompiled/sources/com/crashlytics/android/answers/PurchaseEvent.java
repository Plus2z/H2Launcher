package com.crashlytics.android.answers;

import java.math.BigDecimal;
import java.util.Currency;

/* loaded from: classes.dex */
public class PurchaseEvent extends PredefinedEvent<PurchaseEvent> {
    static final String CURRENCY_ATTRIBUTE = "currency";
    static final String ITEM_ID_ATTRIBUTE = "itemId";
    static final String ITEM_NAME_ATTRIBUTE = "itemName";
    static final String ITEM_PRICE_ATTRIBUTE = "itemPrice";
    static final String ITEM_TYPE_ATTRIBUTE = "itemType";
    static final BigDecimal MICRO_CONSTANT = BigDecimal.valueOf(1000000L);
    static final String SUCCESS_ATTRIBUTE = "success";
    static final String TYPE = "purchase";

    public PurchaseEvent putItemId(String itemId) {
        this.predefinedAttributes.put(ITEM_ID_ATTRIBUTE, itemId);
        return this;
    }

    public PurchaseEvent putItemName(String itemName) {
        this.predefinedAttributes.put(ITEM_NAME_ATTRIBUTE, itemName);
        return this;
    }

    public PurchaseEvent putItemType(String itemType) {
        this.predefinedAttributes.put("itemType", itemType);
        return this;
    }

    public PurchaseEvent putItemPrice(BigDecimal itemPrice) {
        if (!this.validator.isNull(itemPrice, ITEM_PRICE_ATTRIBUTE)) {
            this.predefinedAttributes.put(ITEM_PRICE_ATTRIBUTE, Long.valueOf(priceToMicros(itemPrice)));
        }
        return this;
    }

    public PurchaseEvent putCurrency(Currency currency) {
        if (!this.validator.isNull(currency, CURRENCY_ATTRIBUTE)) {
            this.predefinedAttributes.put(CURRENCY_ATTRIBUTE, currency.getCurrencyCode());
        }
        return this;
    }

    public PurchaseEvent putSuccess(boolean purchaseSucceeded) {
        this.predefinedAttributes.put("success", Boolean.toString(purchaseSucceeded));
        return this;
    }

    long priceToMicros(BigDecimal decimal) {
        return MICRO_CONSTANT.multiply(decimal).longValue();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // com.crashlytics.android.answers.PredefinedEvent
    public String getPredefinedType() {
        return TYPE;
    }
}
