.class public Lcom/alcineo/softpos/payment/api/TransactionAPI;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "Softpos"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static native cancelTransaction()Z
.end method

.method public static native isTransactionActive()Z
.end method

.method public static native sendDET([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native sendPin([B)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native sendPinCancel()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public static native startTransaction(Lcom/alcineo/softpos/payment/model/transaction/TransactionParameters;Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;Landroidx/lifecycle/LifecycleOwner;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/alcineo/softpos/payment/error/TransactionException;
        }
    .end annotation
.end method

.method public static native stopTransactionAndConfirm()Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method
