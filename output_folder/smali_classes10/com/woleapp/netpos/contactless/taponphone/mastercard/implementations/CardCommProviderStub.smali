.class public Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;
.super Ljava/lang/Object;
.source "CardCommProviderStub.java"

# interfaces
.implements Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider;


# instance fields
.field private final TAG:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;->TAG:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public connectReader()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 33
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;->TAG:Ljava/lang/String;

    const-string v1, "connectReader: Utilizing Stub Implementation of CardCommunicationProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 34
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->PROTOCOL_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v2, "Stub Reader"

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0
.end method

.method public disconnectReader()Z
    .locals 1

    .line 39
    const/4 v0, 0x0

    return v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .line 54
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;->TAG:Ljava/lang/String;

    const-string v1, "Utilizing Stub Implementation of CardCommunicationProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    const-string v0, "Reader Stub"

    return-object v0
.end method

.method public getPreviousCommandExecutionTime()J
    .locals 2

    .line 60
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public isCardPresent()Z
    .locals 1

    .line 49
    const/4 v0, 0x0

    return v0
.end method

.method public isReaderConnected()Z
    .locals 1

    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public removeCard()Z
    .locals 1

    .line 28
    const/4 v0, 0x0

    return v0
.end method

.method public sendReceive([B)[B
    .locals 3
    .param p1, "bytes"    # [B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bytes"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 16
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;->TAG:Ljava/lang/String;

    const-string v1, "sendReceive: Utilizing Stub Implementation of CardCommunicationProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 17
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TIMEOUT_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v2, "Stub Reader"

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0
.end method

.method public waitForCard()Lcom/mastercard/terminalsdk/listeners/CardCommunicationProvider$ConnectionObject;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/mastercard/terminalsdk/exception/L1RSPException;
        }
    .end annotation

    .line 22
    iget-object v0, p0, Lcom/woleapp/netpos/contactless/taponphone/mastercard/implementations/CardCommProviderStub;->TAG:Ljava/lang/String;

    const-string v1, "connectCard: Utilizing Stub Implementation of CardCommunicationProvider"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    new-instance v0, Lcom/mastercard/terminalsdk/exception/L1RSPException;

    sget-object v1, Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;->TIMEOUT_ERROR:Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;

    const-string v2, "Stub Reader"

    invoke-direct {v0, v2, v1}, Lcom/mastercard/terminalsdk/exception/L1RSPException;-><init>(Ljava/lang/String;Lcom/mastercard/terminalsdk/objects/ErrorIndication$L1_Error_Code;)V

    throw v0
.end method
