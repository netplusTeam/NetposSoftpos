.class public interface abstract Lcom/dspread/xpos/Service$c;
.super Ljava/lang/Object;
.source "Service.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dspread/xpos/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "c"
.end annotation


# virtual methods
.method public abstract a(Lcom/dspread/xpos/Service$Display;)V
.end method

.method public abstract onDoTradeResult(Lcom/dspread/xpos/QPOSService$DoTradeResult;Ljava/util/Hashtable;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dspread/xpos/QPOSService$DoTradeResult;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract onRequestBatchData(Ljava/lang/String;)V
.end method

.method public abstract onRequestOnlineProcess(Ljava/lang/String;)V
.end method

.method public abstract onRequestTime()V
.end method

.method public abstract onRequestTransactionResult(Lcom/dspread/xpos/QPOSService$TransactionResult;)V
.end method

.method public abstract onRequestWaitingUser()V
.end method
