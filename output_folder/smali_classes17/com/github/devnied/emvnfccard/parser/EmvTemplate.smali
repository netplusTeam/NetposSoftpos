.class public Lcom/github/devnied/emvnfccard/parser/EmvTemplate;
.super Ljava/lang/Object;
.source "EmvTemplate.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;,
        Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final MAX_RECORD_SFI:I = 0x10

.field private static final PPSE:[B

.field private static final PSE:[B


# instance fields
.field private card:Lcom/github/devnied/emvnfccard/model/EmvCard;

.field private config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

.field private parsers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/parser/IParser;",
            ">;"
        }
    .end annotation
.end field

.field private provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

.field private terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    const-class v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    .line 62
    const-string v0, "2PAY.SYS.DDF01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->PPSE:[B

    .line 67
    const-string v0, "1PAY.SYS.DDF01"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->PSE:[B

    return-void
.end method

.method private constructor <init>(Lcom/github/devnied/emvnfccard/parser/IProvider;Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;)V
    .locals 1
    .param p1, "pProvider"    # Lcom/github/devnied/emvnfccard/parser/IProvider;
    .param p2, "pTerminal"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;
    .param p3, "pConfig"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    .line 307
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 308
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;

    invoke-direct {v0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/ProviderWrapper;-><init>(Lcom/github/devnied/emvnfccard/parser/IProvider;)V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    .line 309
    iput-object p2, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    .line 310
    iput-object p3, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    .line 311
    if-nez p3, :cond_0

    .line 312
    invoke-static {}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->Config()Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    move-result-object v0

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    .line 314
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    .line 315
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v0, v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->removeDefaultParsers:Z

    if-nez v0, :cond_1

    .line 316
    invoke-direct {p0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->addDefaultParsers()V

    .line 318
    :cond_1
    new-instance v0, Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/model/EmvCard;-><init>()V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    .line 319
    return-void
.end method

.method synthetic constructor <init>(Lcom/github/devnied/emvnfccard/parser/IProvider;Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/github/devnied/emvnfccard/parser/IProvider;
    .param p2, "x1"    # Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;
    .param p3, "x2"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .param p4, "x3"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate$1;

    .line 47
    invoke-direct {p0, p1, p2, p3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;-><init>(Lcom/github/devnied/emvnfccard/parser/IProvider;Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;)V

    return-void
.end method

.method public static Builder()Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;
    .locals 1

    .line 100
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Builder;-><init>()V

    return-object v0
.end method

.method public static Config()Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 1

    .line 109
    new-instance v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;-><init>()V

    return-object v0
.end method

.method private addDefaultParsers()V
    .locals 2

    .line 325
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    new-instance v1, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;

    invoke-direct {v1, p0}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;-><init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 326
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    new-instance v1, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;

    invoke-direct {v1, p0}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;-><init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 327
    return-void
.end method


# virtual methods
.method public varargs addParsers([Lcom/github/devnied/emvnfccard/parser/IParser;)Lcom/github/devnied/emvnfccard/parser/EmvTemplate;
    .locals 5
    .param p1, "pParsers"    # [Lcom/github/devnied/emvnfccard/parser/IParser;

    .line 337
    if-eqz p1, :cond_0

    .line 338
    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_0

    aget-object v3, p1, v2

    .line 339
    .local v3, "parser":Lcom/github/devnied/emvnfccard/parser/IParser;
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    invoke-interface {v4, v1, v3}, Ljava/util/List;->add(ILjava/lang/Object;)V

    .line 338
    .end local v3    # "parser":Lcom/github/devnied/emvnfccard/parser/IParser;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :cond_0
    return-object p0
.end method

.method protected getApplicationTemplate([B)Ljava/util/List;
    .locals 12
    .param p1, "pData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Application;",
            ">;"
        }
    .end annotation

    .line 479
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 481
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Application;>;"
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_TEMPLATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getlistTLV([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)Ljava/util/List;

    move-result-object v2

    .line 483
    .local v2, "listTlv":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TLV;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    .line 484
    .local v5, "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    new-instance v6, Lcom/github/devnied/emvnfccard/model/Application;

    invoke-direct {v6}, Lcom/github/devnied/emvnfccard/model/Application;-><init>()V

    .line 486
    .local v6, "application":Lcom/github/devnied/emvnfccard/model/Application;
    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v7

    const/4 v8, 0x3

    new-array v8, v8, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v9, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->AID_CARD:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v9, v8, v4

    sget-object v9, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_LABEL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v9, v8, v1

    const/4 v9, 0x2

    sget-object v10, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_PRIORITY_INDICATOR:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getlistTLV([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)Ljava/util/List;

    move-result-object v7

    .line 489
    .local v7, "listTlvData":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TLV;>;"
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;

    .line 490
    .local v9, "data":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v10

    sget-object v11, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_PRIORITY_INDICATOR:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v10, v11, :cond_0

    .line 491
    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v10

    invoke-static {v10}, Lfr/devnied/bitlib/BytesUtils;->byteArrayToInt([B)I

    move-result v10

    invoke-virtual {v6, v10}, Lcom/github/devnied/emvnfccard/model/Application;->setPriority(I)V

    goto :goto_2

    .line 492
    :cond_0
    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v10

    sget-object v11, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_LABEL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v10, v11, :cond_1

    .line 493
    new-instance v10, Ljava/lang/String;

    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v11

    invoke-direct {v10, v11}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v6, v10}, Lcom/github/devnied/emvnfccard/model/Application;->setApplicationLabel(Ljava/lang/String;)V

    goto :goto_2

    .line 495
    :cond_1
    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/iso7816emv/TLV;->getValueBytes()[B

    move-result-object v10

    invoke-virtual {v6, v10}, Lcom/github/devnied/emvnfccard/model/Application;->setAid([B)V

    .line 496
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 498
    .end local v9    # "data":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    :goto_2
    goto :goto_1

    .line 499
    .end local v5    # "tlv":Lcom/github/devnied/emvnfccard/iso7816emv/TLV;
    .end local v6    # "application":Lcom/github/devnied/emvnfccard/model/Application;
    .end local v7    # "listTlvData":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TLV;>;"
    :cond_2
    goto :goto_0

    .line 500
    :cond_3
    return-object v0
.end method

.method public getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;
    .locals 1

    .line 550
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    return-object v0
.end method

.method public getConfig()Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;
    .locals 1

    .line 568
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    return-object v0
.end method

.method public getParsers()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/parser/IParser;",
            ">;"
        }
    .end annotation

    .line 586
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;
    .locals 1

    .line 559
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    return-object v0
.end method

.method public getTerminal()Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;
    .locals 1

    .line 577
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->terminal:Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    return-object v0
.end method

.method protected parseFCIProprietaryTemplate([B)Ljava/util/List;
    .locals 9
    .param p1, "pData"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Application;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 436
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 438
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Application;>;"
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->SFI:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v1

    .line 441
    .local v1, "data":[B
    if-eqz v1, :cond_2

    .line 442
    invoke-static {v1}, Lfr/devnied/bitlib/BytesUtils;->byteArrayToInt([B)I

    move-result v2

    .line 443
    .local v2, "sfi":I
    sget-object v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 444
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "SFI found:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 447
    :cond_0
    const/4 v4, 0x0

    .local v4, "rec":I
    :goto_0
    const/16 v5, 0x10

    if-ge v4, v5, :cond_1

    .line 448
    iget-object v5, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    new-instance v6, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v7, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    shl-int/lit8 v8, v2, 0x3

    or-int/lit8 v8, v8, 0x4

    invoke-direct {v6, v7, v4, v8, v3}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v1

    .line 450
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 452
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getApplicationTemplate([B)Ljava/util/List;

    move-result-object v5

    invoke-interface {v0, v5}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 447
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 458
    .end local v2    # "sfi":I
    .end local v4    # "rec":I
    :cond_1
    goto :goto_1

    .line 460
    :cond_2
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getApplicationTemplate([B)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 461
    sget-object v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 462
    const-string v3, "(FCI) Issuer Discretionary Data is already present"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 465
    :cond_3
    :goto_1
    return-object v0
.end method

.method protected readCPLCInfos()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 379
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    new-instance v8, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v4, 0x9f

    const/16 v5, 0x7f

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v2, v8

    invoke-direct/range {v2 .. v7}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;II[BI)V

    invoke-virtual {v8}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v1

    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/CPLCUtils;->parse([B)Lcom/github/devnied/emvnfccard/model/CPLC;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setCplc(Lcom/github/devnied/emvnfccard/model/CPLC;)V

    .line 380
    return-void
.end method

.method public readEmvCard()Lcom/github/devnied/emvnfccard/model/EmvCard;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 353
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v0, v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readCplc:Z

    if-eqz v0, :cond_0

    .line 354
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->readCPLCInfos()V

    .line 358
    :cond_0
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v0, v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAt:Z

    if-eqz v0, :cond_2

    .line 359
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    invoke-interface {v1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->getAt()[B

    move-result-object v1

    invoke-static {v1}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setAt(Ljava/lang/String;)V

    .line 360
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v1, v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->getDescriptionFromAts(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getAt()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/AtrUtils;->getDescription(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setAtrDescription(Ljava/util/Collection;)V

    .line 363
    :cond_2
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->readWithPSE()Z

    move-result v0

    if-nez v0, :cond_3

    .line 365
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->readWithAID()V

    .line 368
    :cond_3
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    return-object v0
.end method

.method protected readWithAID()V
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 507
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 508
    const-string v1, "Try to read card with AID"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 511
    :cond_0
    new-instance v0, Lcom/github/devnied/emvnfccard/model/Application;

    invoke-direct {v0}, Lcom/github/devnied/emvnfccard/model/Application;-><init>()V

    .line 512
    .local v0, "app":Lcom/github/devnied/emvnfccard/model/Application;
    invoke-static {}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->values()[Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    aget-object v5, v1, v4

    .line 513
    .local v5, "type":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getAidByte()[[B

    move-result-object v6

    array-length v7, v6

    move v8, v3

    :goto_1
    if-ge v8, v7, :cond_3

    aget-object v9, v6, v8

    .line 514
    .local v9, "aid":[B
    invoke-virtual {v0, v9}, Lcom/github/devnied/emvnfccard/model/Application;->setAid([B)V

    .line 515
    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Lcom/github/devnied/emvnfccard/model/Application;->setApplicationLabel(Ljava/lang/String;)V

    .line 516
    invoke-static {v9}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v10

    .line 517
    .local v10, "applicationAid":Ljava/lang/String;
    iget-object v11, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/github/devnied/emvnfccard/parser/IParser;

    .line 518
    .local v12, "impl":Lcom/github/devnied/emvnfccard/parser/IParser;
    invoke-interface {v12}, Lcom/github/devnied/emvnfccard/parser/IParser;->getId()Ljava/util/regex/Pattern;

    move-result-object v13

    if-eqz v13, :cond_1

    invoke-interface {v12}, Lcom/github/devnied/emvnfccard/parser/IParser;->getId()Ljava/util/regex/Pattern;

    move-result-object v13

    invoke-virtual {v13, v10}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v13

    invoke-virtual {v13}, Ljava/util/regex/Matcher;->matches()Z

    move-result v13

    if-eqz v13, :cond_1

    invoke-interface {v12, v0}, Lcom/github/devnied/emvnfccard/parser/IParser;->parse(Lcom/github/devnied/emvnfccard/model/Application;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 520
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 522
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 523
    return-void

    .line 525
    .end local v12    # "impl":Lcom/github/devnied/emvnfccard/parser/IParser;
    :cond_1
    goto :goto_2

    .line 513
    .end local v9    # "aid":[B
    .end local v10    # "applicationAid":Ljava/lang/String;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 512
    .end local v5    # "type":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 528
    :cond_4
    return-void
.end method

.method protected readWithPSE()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 390
    const/4 v0, 0x0

    .line 391
    .local v0, "ret":Z
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 392
    const-string v2, "Try to read card with Payment System Environment"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 395
    :cond_0
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->selectPaymentEnvironment()[B

    move-result-object v2

    .line 396
    .local v2, "data":[B
    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 398
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v2}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parseFCIProprietaryTemplate([B)Ljava/util/List;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 399
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 401
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getApplications()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/model/Application;

    .line 402
    .local v3, "app":Lcom/github/devnied/emvnfccard/model/Application;
    const/4 v4, 0x0

    .line 403
    .local v4, "status":Z
    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/model/Application;->getAid()[B

    move-result-object v5

    invoke-static {v5}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v5

    .line 404
    .local v5, "applicationAid":Ljava/lang/String;
    iget-object v6, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->parsers:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/github/devnied/emvnfccard/parser/IParser;

    .line 405
    .local v7, "impl":Lcom/github/devnied/emvnfccard/parser/IParser;
    invoke-interface {v7}, Lcom/github/devnied/emvnfccard/parser/IParser;->getId()Ljava/util/regex/Pattern;

    move-result-object v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Lcom/github/devnied/emvnfccard/parser/IParser;->getId()Ljava/util/regex/Pattern;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    invoke-virtual {v8}, Ljava/util/regex/Matcher;->matches()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 406
    invoke-interface {v7, v3}, Lcom/github/devnied/emvnfccard/parser/IParser;->parse(Lcom/github/devnied/emvnfccard/model/Application;)Z

    move-result v4

    .line 407
    goto :goto_2

    .line 409
    .end local v7    # "impl":Lcom/github/devnied/emvnfccard/parser/IParser;
    :cond_1
    goto :goto_1

    .line 410
    :cond_2
    :goto_2
    if-nez v0, :cond_3

    if-eqz v4, :cond_3

    .line 411
    move v0, v4

    .line 412
    iget-object v6, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v6, v6, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readAllAids:Z

    if-nez v6, :cond_3

    .line 413
    goto :goto_3

    .line 416
    .end local v3    # "app":Lcom/github/devnied/emvnfccard/model/Application;
    .end local v4    # "status":Z
    .end local v5    # "applicationAid":Ljava/lang/String;
    :cond_3
    goto :goto_0

    .line 417
    :cond_4
    :goto_3
    if-nez v0, :cond_7

    .line 418
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->card:Lcom/github/devnied/emvnfccard/model/EmvCard;

    sget-object v3, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->LOCKED:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    invoke-virtual {v1, v3}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setState(Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;)V

    goto :goto_5

    .line 420
    :cond_5
    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 421
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v4, v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    if-eqz v4, :cond_6

    const-string v4, "PPSE"

    goto :goto_4

    :cond_6
    const-string v4, "PSE"

    :goto_4
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not found -> Use kown AID"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 424
    :cond_7
    :goto_5
    return v0
.end method

.method protected selectPaymentEnvironment()[B
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 537
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 538
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v2, v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    if-eqz v2, :cond_0

    const-string v2, "PPSE"

    goto :goto_0

    :cond_0
    const-string v2, "PSE"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " Application"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 541
    :cond_1
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->provider:Lcom/github/devnied/emvnfccard/parser/IProvider;

    new-instance v1, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->SELECT:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->config:Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    iget-boolean v3, v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->contactLess:Z

    if-eqz v3, :cond_2

    sget-object v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->PPSE:[B

    goto :goto_1

    :cond_2
    sget-object v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->PSE:[B

    :goto_1
    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;[BI)V

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    return-object v0
.end method
