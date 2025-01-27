.class public interface abstract Lcom/mastercard/terminalsdk/listeners/ScriptProvider;
.super Ljava/lang/Object;


# virtual methods
.method public abstract onDataReceived(Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/mastercard/terminalsdk/objects/ApplicationInput;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/iso8825/BerTlv;",
            ">;)",
            "Lcom/mastercard/terminalsdk/objects/ApplicationInput;"
        }
    .end annotation
.end method
