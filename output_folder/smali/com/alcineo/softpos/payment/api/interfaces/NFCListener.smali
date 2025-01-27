.class public interface abstract Lcom/alcineo/softpos/payment/api/interfaces/NFCListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract activateNFC()V
.end method

.method public abstract deactivateNFC()V
.end method

.method public abstract getCardStatus()Lcom/alcineo/softpos/payment/model/CardStatus;
.end method

.method public abstract onNfcTagDiscovered(Landroid/nfc/Tag;)V
.end method

.method public abstract resetNFCField()Z
.end method

.method public abstract setTimeout(I)V
.end method

.method public abstract transceiveApdu([B)[B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
