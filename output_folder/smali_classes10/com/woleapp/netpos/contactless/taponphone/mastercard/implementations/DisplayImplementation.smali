.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/DisplayImplementation;
.super Ljava/lang/Object;
.source "DisplayImplementation.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/DisplayProvider;


# instance fields
.field logger:Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;


# direct methods
.method public constructor <init>(Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;)V
    .locals 0
    .param p1, "transactionProcessLogger"    # Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "transactionProcessLogger"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/DisplayImplementation;->logger:Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;

    .line 19
    return-void
.end method


# virtual methods
.method public displayMessage(Lcom/mastercard/terminalsdk/objects/UserInterfaceData;)V
    .locals 4
    .param p1, "userInterfaceData"    # Lcom/mastercard/terminalsdk/objects/UserInterfaceData;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userInterfaceData"
        }
    .end annotation

    .line 24
    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->getStatus()Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    move-result-object v0

    sget-object v1, Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;->CARD_READ_SUCCESSFULLY:Lcom/mastercard/terminalsdk/objects/UserInterfaceData$UIRDStatus;

    const/16 v2, 0x64

    const/4 v3, 0x3

    if-ne v0, v1, :cond_0

    .line 25
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v3, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 26
    .local v0, "toneGen1":Landroid/media/ToneGenerator;
    const/16 v1, 0xb

    const/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 27
    .end local v0    # "toneGen1":Landroid/media/ToneGenerator;
    goto :goto_0

    .line 28
    :cond_0
    new-instance v0, Landroid/media/ToneGenerator;

    invoke-direct {v0, v3, v2}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 29
    .restart local v0    # "toneGen1":Landroid/media/ToneGenerator;
    const/16 v1, 0x12

    const/16 v2, 0x258

    invoke-virtual {v0, v1, v2}, Landroid/media/ToneGenerator;->startTone(II)Z

    .line 32
    .end local v0    # "toneGen1":Landroid/media/ToneGenerator;
    :goto_0
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/DisplayImplementation;->logger:Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Transaction Summary : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/mastercard/terminalsdk/objects/UserInterfaceData;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/mastercard/terminalsdk/listeners/TransactionProcessLogger;->logInfo(Ljava/lang/String;)V

    .line 34
    return-void
.end method
