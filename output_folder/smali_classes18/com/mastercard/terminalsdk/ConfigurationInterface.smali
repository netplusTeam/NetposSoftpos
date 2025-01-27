.class public interface abstract Lcom/mastercard/terminalsdk/ConfigurationInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract initializeLibrary()Lcom/mastercard/terminalsdk/TransactionInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract selectProfile(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryUncheckedException;
        }
    .end annotation
.end method

.method public abstract setInterface(Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public varargs abstract update([Lcom/mastercard/terminalsdk/iso8825/BerTlv;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract updateContactBehaviour(Lcom/mastercard/terminalsdk/objects/ContactBehavior;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public varargs abstract withCardCommunication([Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract withCardholderApplicationConfirmation(Lcom/mastercard/terminalsdk/listeners/CardholderConfirmationProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method

.method public abstract withDekListner(Lcom/mastercard/terminalsdk/listeners/DEKListener;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method

.method public abstract withLogger(Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method

.method public abstract withMessageDisplayProvider(Lcom/mastercard/terminalsdk/listeners/DisplayProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method

.method public abstract withResourceProvider(Lcom/mastercard/terminalsdk/listeners/ResourceProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract withScriptProvider(Lcom/mastercard/terminalsdk/listeners/ScriptProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method

.method public abstract withTransactionObserver(Lcom/mastercard/terminalsdk/listeners/TransactionOutcomeObserver;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract withUnpredictableNumberProvider(Lcom/mastercard/terminalsdk/listeners/UnpredictableNumberProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ConfigurationException;
        }
    .end annotation
.end method

.method public abstract withVerificationMethodProvider(Lcom/mastercard/terminalsdk/listeners/VerificationMethodProvider;)Lcom/mastercard/terminalsdk/ConfigurationInterface;
.end method
