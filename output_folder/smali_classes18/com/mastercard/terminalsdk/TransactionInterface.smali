.class public interface abstract Lcom/mastercard/terminalsdk/TransactionInterface;
.super Ljava/lang/Object;


# virtual methods
.method public abstract abortTransaction()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract clean()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract executeCommand(Lcom/mastercard/terminalsdk/internal/N;)Lcom/mastercard/terminalsdk/internal/Q;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;
        }
    .end annotation
.end method

.method public abstract initiatePayment(Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract proceedWithMastercardTransaction(Lcom/mastercard/terminalsdk/listeners/PaymentDataProvider;[B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract readCard(Ljava/util/ArrayList;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/mastercard/terminalsdk/emv/Tag;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method

.method public abstract resumeTransactionProcessing([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/ReaderBusyException;,
            Lcom/mastercard/terminalsdk/exception/LibraryCheckedException;
        }
    .end annotation
.end method
