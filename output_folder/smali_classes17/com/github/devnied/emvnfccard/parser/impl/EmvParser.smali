.class public Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;
.super Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;
.source "EmvParser.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 61
    const-class v0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->LOGGER:Lorg/slf4j/Logger;

    .line 66
    const-string v0, ".*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V
    .locals 0
    .param p1, "pTemplate"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    .line 75
    invoke-direct {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;-><init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V

    .line 76
    return-void
.end method


# virtual methods
.method protected extractAfl([B)Ljava/util/List;
    .locals 5
    .param p1, "pAfl"    # [B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)",
            "Ljava/util/List<",
            "Lcom/github/devnied/emvnfccard/model/Afl;",
            ">;"
        }
    .end annotation

    .line 254
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 255
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Afl;>;"
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 256
    .local v1, "bai":Ljava/io/ByteArrayInputStream;
    :goto_0
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->available()I

    move-result v2

    const/4 v3, 0x4

    if-lt v2, v3, :cond_1

    .line 257
    new-instance v2, Lcom/github/devnied/emvnfccard/model/Afl;

    invoke-direct {v2}, Lcom/github/devnied/emvnfccard/model/Afl;-><init>()V

    .line 258
    .local v2, "afl":Lcom/github/devnied/emvnfccard/model/Afl;
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    shr-int/lit8 v3, v3, 0x3

    invoke-virtual {v2, v3}, Lcom/github/devnied/emvnfccard/model/Afl;->setSfi(I)V

    .line 259
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/devnied/emvnfccard/model/Afl;->setFirstRecord(I)V

    .line 260
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/github/devnied/emvnfccard/model/Afl;->setLastRecord(I)V

    .line 261
    invoke-virtual {v1}, Ljava/io/ByteArrayInputStream;->read()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    invoke-virtual {v2, v4}, Lcom/github/devnied/emvnfccard/model/Afl;->setOfflineAuthentication(Z)V

    .line 262
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 263
    .end local v2    # "afl":Lcom/github/devnied/emvnfccard/model/Afl;
    goto :goto_0

    .line 264
    :cond_1
    return-object v0
.end method

.method protected extractCommonsCardData([B)Z
    .locals 12
    .param p1, "pGpo"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 209
    const/4 v0, 0x0

    .line 211
    .local v0, "ret":Z
    const/4 v1, 0x1

    new-array v2, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->RESPONSE_MESSAGE_TEMPLATE_1:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    .line 212
    .local v2, "data":[B
    if-eqz v2, :cond_0

    .line 213
    const/4 v3, 0x2

    array-length v5, v2

    invoke-static {v2, v3, v5}, Lorg/apache/commons/lang3/ArrayUtils;->subarray([BII)[B

    move-result-object v2

    goto :goto_0

    .line 215
    :cond_0
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v3

    invoke-virtual {p0, v3, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractTrackData(Lcom/github/devnied/emvnfccard/model/EmvCard;[B)Z

    move-result v0

    .line 216
    if-nez v0, :cond_1

    .line 217
    new-array v3, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v5, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->APPLICATION_FILE_LOCATOR:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v5, v3, v4

    invoke-static {p1, v3}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    goto :goto_0

    .line 219
    :cond_1
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractCardHolderName([B)V

    .line 223
    :goto_0
    if-eqz v2, :cond_4

    .line 225
    invoke-virtual {p0, v2}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractAfl([B)Ljava/util/List;

    move-result-object v3

    .line 227
    .local v3, "listAfl":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Afl;>;"
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/devnied/emvnfccard/model/Afl;

    .line 229
    .local v6, "afl":Lcom/github/devnied/emvnfccard/model/Afl;
    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/model/Afl;->getFirstRecord()I

    move-result v7

    .local v7, "index":I
    :goto_2
    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/model/Afl;->getLastRecord()I

    move-result v8

    if-gt v7, v8, :cond_3

    .line 230
    iget-object v8, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v8}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v8

    new-instance v9, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v10, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    .line 231
    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/model/Afl;->getSfi()I

    move-result v11

    shl-int/lit8 v11, v11, 0x3

    or-int/lit8 v11, v11, 0x4

    invoke-direct {v9, v10, v7, v11, v4}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v9

    invoke-interface {v8, v9}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v8

    .line 233
    .local v8, "info":[B
    invoke-static {v8}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 234
    invoke-virtual {p0, v8}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractCardHolderName([B)V

    .line 235
    iget-object v9, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v9}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v9}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v9

    invoke-virtual {p0, v9, v8}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractTrackData(Lcom/github/devnied/emvnfccard/model/EmvCard;[B)Z

    move-result v9

    if-eqz v9, :cond_2

    .line 236
    return v1

    .line 229
    .end local v8    # "info":[B
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 240
    .end local v6    # "afl":Lcom/github/devnied/emvnfccard/model/Afl;
    .end local v7    # "index":I
    :cond_3
    goto :goto_1

    .line 242
    .end local v3    # "listAfl":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/Afl;>;"
    :cond_4
    return v0
.end method

.method protected extractPublicData(Lcom/github/devnied/emvnfccard/model/Application;)Z
    .locals 7
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 97
    const/4 v0, 0x0

    .line 99
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getAid()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->selectAID([B)[B

    move-result-object v1

    .line 102
    .local v1, "data":[B
    const/4 v2, 0x2

    new-array v2, v2, [Lcom/github/devnied/emvnfccard/enums/SwEnum;

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/SwEnum;->SW_9000:Lcom/github/devnied/emvnfccard/enums/SwEnum;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    sget-object v3, Lcom/github/devnied/emvnfccard/enums/SwEnum;->SW_6285:Lcom/github/devnied/emvnfccard/enums/SwEnum;

    const/4 v5, 0x1

    aput-object v3, v2, v5

    invoke-static {v1, v2}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->contains([B[Lcom/github/devnied/emvnfccard/enums/SwEnum;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    sget-object v2, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-virtual {p1, v2}, Lcom/github/devnied/emvnfccard/model/Application;->setReadingStep(Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)V

    .line 106
    invoke-virtual {p0, v1, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->parse([BLcom/github/devnied/emvnfccard/model/Application;)Z

    move-result v0

    .line 107
    if-eqz v0, :cond_2

    .line 109
    new-array v2, v5, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->DEDICATED_FILE_NAME:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v2

    .line 110
    .local v2, "aid":Ljava/lang/String;
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractApplicationLabel([B)Ljava/lang/String;

    move-result-object v3

    .line 111
    .local v3, "applicationLabel":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 112
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getApplicationLabel()Ljava/lang/String;

    move-result-object v3

    .line 114
    :cond_0
    sget-object v4, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 115
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Application label:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " with Aid:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 117
    :cond_1
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v4

    iget-object v5, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v5

    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getCardNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v2, v5}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->findCardScheme(Ljava/lang/String;Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setType(Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;)V

    .line 118
    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {p1, v4}, Lcom/github/devnied/emvnfccard/model/Application;->setAid([B)V

    .line 119
    invoke-virtual {p1, v3}, Lcom/github/devnied/emvnfccard/model/Application;->setApplicationLabel(Ljava/lang/String;)V

    .line 120
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->getLeftPinTry()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/devnied/emvnfccard/model/Application;->setLeftPinTry(I)V

    .line 121
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->getTransactionCounter()I

    move-result v4

    invoke-virtual {p1, v4}, Lcom/github/devnied/emvnfccard/model/Application;->setTransactionCounter(I)V

    .line 122
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v4

    sget-object v5, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->ACTIVE:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    invoke-virtual {v4, v5}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setState(Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;)V

    .line 125
    .end local v2    # "aid":Ljava/lang/String;
    .end local v3    # "applicationLabel":Ljava/lang/String;
    :cond_2
    return v0
.end method

.method protected extractTrackData(Lcom/github/devnied/emvnfccard/model/EmvCard;[B)Z
    .locals 5
    .param p1, "pEmvCard"    # Lcom/github/devnied/emvnfccard/model/EmvCard;
    .param p2, "pData"    # [B

    .line 304
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v0

    const/4 v1, 0x1

    new-array v2, v1, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRACK1_DATA:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-static {p2, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->extractTrack1Data([B)Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setTrack1(Lcom/github/devnied/emvnfccard/model/EmvTrack1;)V

    .line 305
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v0

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRACK_2_EQV_DATA:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v2, v4

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRACK2_DATA:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v3, v2, v1

    invoke-static {p2, v2}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v2

    invoke-static {v2}, Lcom/github/devnied/emvnfccard/utils/TrackUtils;->extractTrack2EquivalentData([B)Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setTrack2(Lcom/github/devnied/emvnfccard/model/EmvTrack2;)V

    .line 306
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getTrack1()Lcom/github/devnied/emvnfccard/model/EmvTrack1;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/EmvCard;->getTrack2()Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move v1, v4

    :cond_1
    :goto_0
    return v1
.end method

.method protected findCardScheme(Ljava/lang/String;Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    .locals 4
    .param p1, "pAid"    # Ljava/lang/String;
    .param p2, "pCardNumber"    # Ljava/lang/String;

    .line 138
    invoke-static {p1}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getCardTypeByAid(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v0

    .line 140
    .local v0, "type":Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;
    sget-object v1, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->CB:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    if-ne v0, v1, :cond_0

    .line 141
    invoke-static {p2}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getCardTypeByCardNumber(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v0

    .line 142
    if-eqz v0, :cond_0

    .line 143
    sget-object v1, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->LOGGER:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Real type:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;)V

    .line 146
    :cond_0
    return-object v0
.end method

.method protected getGetProcessingOptions([B)[B
    .locals 7
    .param p1, "pPdol"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 277
    invoke-static {p1}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->parseTagAndLength([B)Ljava/util/List;

    move-result-object v0

    .line 278
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;>;"
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 280
    .local v1, "out":Ljava/io/ByteArrayOutputStream;
    :try_start_0
    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->COMMAND_TEMPLATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    invoke-interface {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/ITag;->getTagBytes()[B

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 282
    invoke-static {v0}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getLength(Ljava/util/List;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/io/ByteArrayOutputStream;->write(I)V

    .line 283
    if-eqz v0, :cond_0

    .line 284
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;

    .line 285
    .local v3, "tl":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getTerminal()Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;

    move-result-object v4

    invoke-interface {v4, v3}, Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;->constructValue(Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;)[B

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 286
    .end local v3    # "tl":Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;
    goto :goto_0

    .line 290
    :cond_0
    goto :goto_1

    .line 288
    :catch_0
    move-exception v2

    .line 289
    .local v2, "ioe":Ljava/io/IOException;
    sget-object v3, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->LOGGER:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Construct GPO Command:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 291
    .end local v2    # "ioe":Ljava/io/IOException;
    :goto_1
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v2

    new-instance v3, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v4, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->GPO:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;[BI)V

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v3

    invoke-interface {v2, v3}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v2

    return-object v2
.end method

.method public getId()Ljava/util/regex/Pattern;
    .locals 1

    .line 80
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method public parse(Lcom/github/devnied/emvnfccard/model/Application;)Z
    .locals 1
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 85
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractPublicData(Lcom/github/devnied/emvnfccard/model/Application;)Z

    move-result v0

    return v0
.end method

.method protected parse([BLcom/github/devnied/emvnfccard/model/Application;)Z
    .locals 10
    .param p1, "pSelectResponse"    # [B
    .param p2, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 162
    const/4 v0, 0x0

    .line 164
    .local v0, "ret":Z
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->getLogEntry([B)[B

    move-result-object v1

    .line 166
    .local v1, "logEntry":[B
    const/4 v2, 0x1

    new-array v3, v2, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    sget-object v4, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->PDOL:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-static {p1, v3}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v3

    .line 168
    .local v3, "pdol":[B
    invoke-virtual {p0, v3}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->getGetProcessingOptions([B)[B

    move-result-object v4

    .line 170
    .local v4, "gpo":[B
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractBankData([B)V

    .line 173
    invoke-static {v4}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v6

    if-nez v6, :cond_2

    .line 174
    if-eqz v3, :cond_0

    .line 175
    const/4 v6, 0x0

    invoke-virtual {p0, v6}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->getGetProcessingOptions([B)[B

    move-result-object v4

    .line 179
    :cond_0
    if-eqz v3, :cond_1

    invoke-static {v4}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v6

    if-nez v6, :cond_2

    .line 181
    :cond_1
    iget-object v6, p0, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v6}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v6}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v6

    new-instance v7, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v8, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v9, 0xc

    invoke-direct {v7, v8, v2, v9, v5}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v7}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v2

    invoke-interface {v6, v2}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v4

    .line 182
    invoke-static {v4}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v2

    if-nez v2, :cond_2

    .line 183
    return v5

    .line 188
    :cond_2
    sget-object v2, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->READ:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-virtual {p2, v2}, Lcom/github/devnied/emvnfccard/model/Application;->setReadingStep(Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)V

    .line 191
    invoke-virtual {p0, v4}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractCommonsCardData([B)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 193
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/EmvParser;->extractLogEntry([B)Ljava/util/List;

    move-result-object v2

    invoke-virtual {p2, v2}, Lcom/github/devnied/emvnfccard/model/Application;->setListTransactions(Ljava/util/List;)V

    .line 194
    const/4 v0, 0x1

    .line 197
    :cond_3
    return v0
.end method
