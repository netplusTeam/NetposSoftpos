.class public interface abstract Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$ConnectionObject;,
        Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$InterfaceType;
    }
.end annotation


# virtual methods
.method public abstract connectReader()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation
.end method

.method public abstract disconnectReader()Z
.end method

.method public abstract getDescription()Ljava/lang/String;
.end method

.method public abstract getPreviousCommandExecutionTime()J
.end method

.method public abstract isCardPresent()Z
.end method

.method public abstract isReaderConnected()Z
.end method

.method public abstract removeCard()Z
.end method

.method public abstract sendReceive([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation
.end method

.method public abstract waitForCard()Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$ConnectionObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation
.end method
