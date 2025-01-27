.class public interface abstract Lcom/woleapp/netpos/contactless/taponphone/mastercard/listener/TransactionListener;
.super Ljava/lang/Object;
.source "TransactionListener.java"


# virtual methods
.method public abstract logToScreen(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "s"
        }
    .end annotation
.end method

.method public abstract onApplicationEnded()V
.end method

.method public abstract onOnlineReferral(Lcom/danbamitale/epmslib/entities/CardData;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cardData",
            "pan"
        }
    .end annotation
.end method

.method public abstract onTransactionCancelled()V
.end method

.method public abstract onTransactionDeclined()V
.end method

.method public abstract onTransactionError(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation
.end method

.method public abstract onTransactionSuccessful()V
.end method
