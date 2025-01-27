.class public Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;
.super Ljava/lang/Object;
.source "ProviderWrapper.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/parser/IProvider;


# instance fields
.field private provider:Lcom/github/devnied/emvnfccard/parser/IProvider;


# direct methods
.method public constructor <init>(Lcom/github/devnied/emvnfccard/parser/IProvider;)V
    .locals 0
    .param p1, "pProvider"    # Lcom/github/devnied/emvnfccard/parser/IProvider;

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    .line 43
    return-void
.end method


# virtual methods
.method public getAt()[B
    .locals 1

    .line 60
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    invoke-interface {v0}, Lcom/github/devnied/emvnfccard/parser/IProvider;->getAt()[B

    move-result-object v0

    return-object v0
.end method

.method public transceive([B)[B
    .locals 6
    .param p1, "pCommand"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 47
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    invoke-interface {v0, p1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    .line 49
    .local v0, "ret":[B
    sget-object v1, Lcom/github/devnied/emvnfccard/enums/SwEnum;->SW_6C:Lcom/github/devnied/emvnfccard/enums/SwEnum;

    invoke-static {v0, v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isEquals([BLcom/github/devnied/emvnfccard/enums/SwEnum;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 50
    array-length v1, p1

    add-int/lit8 v1, v1, -0x1

    array-length v2, v0

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, v0, v2

    aput-byte v2, p1, v1

    .line 51
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    invoke-interface {v1, p1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    goto :goto_0

    .line 52
    :cond_0
    sget-object v1, Lcom/github/devnied/emvnfccard/enums/SwEnum;->SW_61:Lcom/github/devnied/emvnfccard/enums/SwEnum;

    invoke-static {v0, v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isEquals([BLcom/github/devnied/emvnfccard/enums/SwEnum;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 53
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    new-instance v2, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_RESPONSE:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v4, 0x0

    array-length v5, v0

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v0, v5

    invoke-direct {v2, v3, v4, v5}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;[BI)V

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    .line 55
    :cond_1
    :goto_0
    return-object v0
.end method
