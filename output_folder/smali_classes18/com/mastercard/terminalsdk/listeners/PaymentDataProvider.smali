.class public interface abstract Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract getPaymentDataMap()Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;",
            ">;"
        }
    .end annotation
.end method

.method public abstract setPaymentDataEntry(Ljava/lang/Integer;Lcom/mastercard/terminalsdk/utility/ByteArrayWrapper;)V
.end method
