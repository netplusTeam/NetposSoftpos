.class public abstract Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;
.super Ljava/lang/Object;
.source "AbstractParser.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/parser/IParser;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field public static final UNKNOW:I = -0x1


# instance fields
.field protected final template:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/github/devnied/emvnfccard/parser/EmvTemplate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V
    .locals 1
    .param p1, "pTemplate"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 69
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    .line 70
    return-void
.end method


# virtual methods
.method protected extractApplicationLabel([B)Ljava/lang/String;
    .locals 5
    .param p1, "pData"    # [B

    .line 96
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 97
    const-string v1, "Extract Application label"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 99
    :cond_0
    const/4 v0, 0x0

    .line 101
    .local v0, "label":Ljava/lang/String;
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_PREFERRED_NAME:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    .line 103
    .local v2, "labelByte":[B
    if-nez v2, :cond_1

    .line 104
    new-array v1, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_LABEL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v1, v4

    invoke-static {p1, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    .line 107
    :cond_1
    if-eqz v2, :cond_2

    .line 108
    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    move-object v0, v1

    .line 110
    :cond_2
    return-object v0
.end method

.method protected extractBankData([B)V
    .locals 5
    .param p1, "pData"    # [B

    .line 121
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->BANK_IDENTIFIER_CODE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v1

    .line 122
    .local v1, "bic":[B
    if-eqz v1, :cond_0

    .line 123
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v2

    new-instance v4, Ljava/lang/String;

    invoke-direct {v4, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v4}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setBic(Ljava/lang/String;)V

    .line 126
    :cond_0
    new-array v0, v0, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->IBAN:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v2, v0, v3

    invoke-static {p1, v0}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v0

    .line 127
    .local v0, "iban":[B
    if-eqz v0, :cond_1

    .line 128
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v2

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2, v3}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setIban(Ljava/lang/String;)V

    .line 130
    :cond_1
    return-void
.end method

.method protected extractCardHolderName([B)V
    .locals 5
    .param p1, "pData"    # [B

    .line 140
    const/4 v0, 0x1

    new-array v1, v0, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->CARDHOLDER_NAME:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {p1, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v1

    .line 141
    .local v1, "cardHolderByte":[B
    if-eqz v1, :cond_0

    .line 142
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v4, "/"

    invoke-static {v2, v4}, Lorg/apache/commons/lang3/StringUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 143
    .local v2, "name":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v4, v2

    if-lez v4, :cond_0

    .line 144
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v4

    aget-object v3, v2, v3

    invoke-static {v3}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setHolderLastname(Ljava/lang/String;)V

    .line 145
    array-length v3, v2

    const/4 v4, 0x2

    if-ne v3, v4, :cond_0

    .line 146
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v3

    aget-object v0, v2, v0

    invoke-static {v0}, Lorg/apache/commons/lang3/StringUtils;->trimToNull(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setHolderFirstname(Ljava/lang/String;)V

    .line 150
    .end local v2    # "name":[Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected extractLogEntry([B)Ljava/util/List;
    .locals 8
    .param p1, "pLogEntry"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 238
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 240
    .local v0, "listRecord":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;>;"
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getConfig()Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;

    move-result-object v1

    iget-boolean v1, v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate$Config;->readTransactions:Z

    if-eqz v1, :cond_4

    if-eqz p1, :cond_4

    .line 241
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->getLogFormat()Ljava/util/List;

    move-result-object v1

    .line 242
    .local v1, "tals":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    if-eqz v1, :cond_4

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_4

    .line 244
    const/4 v2, 0x1

    .local v2, "rec":I
    :goto_0
    const/4 v3, 0x1

    aget-byte v3, p1, v3

    if-gt v2, v3, :cond_4

    .line 245
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v3

    new-instance v4, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v5, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v6, 0x0

    aget-byte v7, p1, v6

    shl-int/lit8 v7, v7, 0x3

    or-int/lit8 v7, v7, 0x4

    invoke-direct {v4, v5, v2, v7, v6}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    .line 246
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v4

    invoke-interface {v3, v4}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v3

    .line 248
    .local v3, "response":[B
    invoke-static {v3}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 250
    :try_start_0
    new-instance v4, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;

    invoke-direct {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;-><init>()V

    .line 251
    .local v4, "record":Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;
    invoke-virtual {v4, v3, v1}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->parse([BLjava/util/Collection;)V

    .line 253
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getAmount()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 255
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getAmount()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const v6, 0x4eb2d05e    # 1.5E9f

    cmpl-float v5, v5, v6

    if-ltz v5, :cond_0

    .line 256
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getAmount()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setAmount(Ljava/lang/Float;)V

    .line 260
    :cond_0
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getAmount()Ljava/lang/Float;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getAmount()Ljava/lang/Float;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gtz v5, :cond_2

    .line 261
    :cond_1
    goto :goto_1

    .line 265
    :cond_2
    nop

    .line 267
    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->getCurrency()Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    move-result-object v5

    if-nez v5, :cond_3

    .line 268
    sget-object v5, Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;->XXX:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setCurrency(Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;)V

    .line 270
    :cond_3
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 274
    .end local v4    # "record":Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;
    goto :goto_1

    .line 272
    :catch_0
    move-exception v4

    .line 273
    .local v4, "e":Ljava/lang/Exception;
    sget-object v5, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Error in transaction format: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 244
    .end local v3    # "response":[B
    .end local v4    # "e":Ljava/lang/Exception;
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 282
    .end local v1    # "tals":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    .end local v2    # "rec":I
    :cond_4
    return-object v0
.end method

.method protected getLeftPinTry()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 192
    const/4 v0, -0x1

    .line 193
    .local v0, "ret":I
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 194
    const-string v2, "Get Left PIN try"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 197
    :cond_0
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v1

    new-instance v2, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v4, 0x9f

    const/16 v5, 0x17

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v1

    .line 198
    .local v1, "data":[B
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 200
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->PIN_TRY_COUNTER:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    .line 201
    .local v2, "val":[B
    if-eqz v2, :cond_1

    .line 202
    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->byteArrayToInt([B)I

    move-result v0

    .line 205
    .end local v2    # "val":[B
    :cond_1
    return v0
.end method

.method protected getLogEntry([B)[B
    .locals 3
    .param p1, "pSelectResponse"    # [B

    .line 160
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->LOG_ENTRY:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->VISA_LOG_ENTRY:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    invoke-static {p1, v0}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v0

    return-object v0
.end method

.method protected getLogFormat()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 215
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 216
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const-string v2, "GET log format"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 220
    :cond_0
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v2

    new-instance v3, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v4, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v5, 0x9f

    const/16 v6, 0x4f

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v2

    .line 221
    .local v2, "data":[B
    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 222
    const/4 v1, 0x1

    new-array v1, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->LOG_FORMAT:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v1, v7

    invoke-static {v2, v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v1

    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->parseTagAndLength([B)Ljava/util/List;

    move-result-object v0

    goto :goto_0

    .line 224
    :cond_1
    const-string v3, "No Log format found"

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 226
    :goto_0
    return-object v0
.end method

.method protected getTransactionCounter()I
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 170
    const/4 v0, -0x1

    .line 171
    .local v0, "ret":I
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 172
    const-string v2, "Get Transaction Counter ATC"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 174
    :cond_0
    iget-object v1, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v1

    new-instance v2, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GET_DATA:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v4, 0x9f

    const/16 v5, 0x36

    const/4 v6, 0x0

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v2

    invoke-interface {v1, v2}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v1

    .line 175
    .local v1, "data":[B
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 177
    const/4 v2, 0x1

    new-array v2, v2, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APP_TRANSACTION_COUNTER:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v2, v6

    invoke-static {v1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    .line 178
    .local v2, "val":[B
    if-eqz v2, :cond_1

    .line 179
    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->byteArrayToInt([B)I

    move-result v0

    .line 182
    .end local v2    # "val":[B
    :cond_1
    return v0
.end method

.method protected selectAID([B)[B
    .locals 4
    .param p1, "pAid"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 81
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 82
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Select AID: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lfr/devnied/bitlib/BytesUtils;->bytesToString([B)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 84
    :cond_0
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v0

    new-instance v1, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->SELECT:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v3, 0x0

    invoke-direct {v1, v2, p1, v3}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;[BI)V

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    return-object v0
.end method
