.class public interface abstract Lcom/alcineo/softpos/payment/api/interfaces/TransactionEventListener;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract onBeep(Lcom/alcineo/softpos/payment/model/beep/BeepStatus;IIII)V
.end method

.method public abstract onDekRequest([B)V
.end method

.method public abstract onDisplayLed([ZIZII)V
.end method

.method public abstract onDisplayLogo(Z)V
.end method

.method public abstract onDisplayPin()V
.end method

.method public abstract onDisplayText(Ljava/lang/String;)V
.end method

.method public abstract onNotifyKernelId(Lcom/alcineo/administrative/Kernel;)V
.end method

.method public abstract onOnlineRequest([B)[B
.end method

.method public abstract onTransactionFinish(Lcom/alcineo/softpos/payment/model/transaction/TransactionResult;)V
.end method

.method public abstract onUpdateTagsBeforeKernelActivation([BLcom/alcineo/administrative/Kernel;Ljava/util/List;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B",
            "Lcom/alcineo/administrative/Kernel;",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/alcineo/utils/tlv/TlvItem;",
            ">;"
        }
    .end annotation
.end method
