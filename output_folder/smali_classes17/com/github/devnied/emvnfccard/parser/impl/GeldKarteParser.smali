.class public Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;
.super Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;
.source "GeldKarteParser.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;

.field private static final PATTERN:Ljava/util/regex/Pattern;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 64
    const-class v0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->LOGGER:Lorg/slf4j/Logger;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->GELDKARTE:Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getAid()[Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    invoke-static {v1}, Lorg/apache/commons/lang3/StringUtils;->deleteWhitespace(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V
    .locals 0
    .param p1, "pTemplate"    # Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    .line 72
    invoke-direct {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/AbstractParser;-><init>(Lcom/github/devnied/emvnfccard/parser/EmvTemplate;)V

    .line 73
    return-void
.end method


# virtual methods
.method protected extractEF_ID(Lcom/github/devnied/emvnfccard/model/Application;)V
    .locals 8
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 197
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v0

    new-instance v1, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v3, 0x1

    const/16 v4, 0xbc

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    .line 198
    .local v0, "data":[B
    invoke-static {v0}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 199
    sget-object v1, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->READ:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-virtual {p1, v1}, Lcom/github/devnied/emvnfccard/model/Application;->setReadingStep(Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)V

    .line 201
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    const-string v4, "MM/yy"

    invoke-direct {v1, v4, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    .line 204
    .local v1, "format":Ljava/text/SimpleDateFormat;
    new-instance v2, Lcom/github/devnied/emvnfccard/model/EmvTrack2;

    invoke-direct {v2}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;-><init>()V

    .line 205
    .local v2, "track2":Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    const/4 v4, 0x4

    const/16 v6, 0x9

    invoke-static {v0, v4, v6}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v4

    invoke-static {v4}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setCardNumber(Ljava/lang/String;)V

    .line 207
    :try_start_0
    const-string v4, "%02x/%02x"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/16 v7, 0xb

    aget-byte v7, v0, v7

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v7

    aput-object v7, v6, v5

    const/16 v5, 0xa

    aget-byte v5, v0, v5

    invoke-static {v5}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v5

    aput-object v5, v6, v3

    invoke-static {v4, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/github/devnied/emvnfccard/model/EmvTrack2;->setExpireDate(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 210
    goto :goto_0

    .line 208
    :catch_0
    move-exception v3

    .line 209
    .local v3, "e":Ljava/text/ParseException;
    sget-object v4, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 211
    .end local v3    # "e":Ljava/text/ParseException;
    :goto_0
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setTrack2(Lcom/github/devnied/emvnfccard/model/EmvTrack2;)V

    .line 213
    .end local v1    # "format":Ljava/text/SimpleDateFormat;
    .end local v2    # "track2":Lcom/github/devnied/emvnfccard/model/EmvTrack2;
    :cond_0
    return-void
.end method

.method public getId()Ljava/util/regex/Pattern;
    .locals 1

    .line 77
    sget-object v0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->PATTERN:Ljava/util/regex/Pattern;

    return-object v0
.end method

.method protected getType(B)Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;
    .locals 1
    .param p1, "logstate"    # B

    .line 163
    and-int/lit8 v0, p1, 0x60

    shr-int/lit8 v0, v0, 0x5

    packed-switch v0, :pswitch_data_0

    .line 169
    const/4 v0, 0x0

    return-object v0

    .line 167
    :pswitch_0
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->REFUND:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0

    .line 166
    :pswitch_1
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->PURCHASE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0

    .line 165
    :pswitch_2
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->UNLOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0

    .line 164
    :pswitch_3
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->LOADED:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public parse(Lcom/github/devnied/emvnfccard/model/Application;)Z
    .locals 6
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 82
    const/4 v0, 0x0

    .line 84
    .local v0, "ret":Z
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getAid()[B

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->selectAID([B)[B

    move-result-object v1

    .line 86
    .local v1, "data":[B
    invoke-static {v1}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 87
    sget-object v2, Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;->SELECTED:Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;

    invoke-virtual {p1, v2}, Lcom/github/devnied/emvnfccard/model/Application;->setReadingStep(Lcom/github/devnied/emvnfccard/model/enums/ApplicationStepEnum;)V

    .line 89
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->getLogEntry([B)[B

    move-result-object v2

    .line 91
    .local v2, "logEntry":[B
    const/4 v3, 0x1

    new-array v3, v3, [Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    sget-object v5, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->DEDICATED_FILE_NAME:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    aput-object v5, v3, v4

    invoke-static {v1, v3}, Lcom/github/devnied/emvnfccard/utils/TlvUtil;->getValue([B[Lcom/github/devnied/emvnfccard/iso7816emv/ITag;)[B

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/github/devnied/emvnfccard/model/Application;->setAid([B)V

    .line 93
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->extractApplicationLabel([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/github/devnied/emvnfccard/model/Application;->setApplicationLabel(Ljava/lang/String;)V

    .line 95
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v3

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getAid()[B

    move-result-object v4

    invoke-static {v4}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;->getCardTypeByAid(Ljava/lang/String;)Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setType(Lcom/github/devnied/emvnfccard/enums/EmvCardScheme;)V

    .line 97
    invoke-virtual {p0, v1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->extractBankData([B)V

    .line 100
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->extractEF_ID(Lcom/github/devnied/emvnfccard/model/Application;)V

    .line 103
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->readEfBetrag(Lcom/github/devnied/emvnfccard/model/Application;)V

    .line 106
    invoke-virtual {p0, p1}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->readEF_BLOG(Lcom/github/devnied/emvnfccard/model/Application;)V

    .line 108
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->getLeftPinTry()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/github/devnied/emvnfccard/model/Application;->setLeftPinTry(I)V

    .line 109
    invoke-virtual {p0}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->getTransactionCounter()I

    move-result v3

    invoke-virtual {p1, v3}, Lcom/github/devnied/emvnfccard/model/Application;->setTransactionCounter(I)V

    .line 111
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/model/Application;->getListTransactions()Ljava/util/List;

    move-result-object v3

    invoke-virtual {p0, v2}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->extractLogEntry([B)Ljava/util/List;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 113
    iget-object v3, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v3}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getCard()Lcom/github/devnied/emvnfccard/model/EmvCard;

    move-result-object v3

    sget-object v4, Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;->ACTIVE:Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;

    invoke-virtual {v3, v4}, Lcom/github/devnied/emvnfccard/model/EmvCard;->setState(Lcom/github/devnied/emvnfccard/model/enums/CardStateEnum;)V

    .line 114
    const/4 v0, 0x1

    .line 117
    .end local v2    # "logEntry":[B
    :cond_0
    return v0
.end method

.method protected readEF_BLOG(Lcom/github/devnied/emvnfccard/model/Application;)V
    .locals 14
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 127
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 128
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;>;"
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "dd.MM.yyyy"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "dateFormat":Ljava/text/SimpleDateFormat;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "HH:mm:ss"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 131
    .local v2, "timeFormat":Ljava/text/SimpleDateFormat;
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    const/16 v4, 0x10

    if-ge v3, v4, :cond_1

    .line 132
    iget-object v4, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v4}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v4}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v4

    new-instance v5, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v6, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/16 v7, 0xec

    const/4 v8, 0x0

    invoke-direct {v5, v6, v3, v7, v8}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    invoke-virtual {v5}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v4

    .line 134
    .local v4, "data":[B
    invoke-static {v4}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 135
    array-length v5, v4

    const/16 v6, 0x23

    if-ge v5, v6, :cond_0

    .line 136
    goto/16 :goto_2

    .line 138
    :cond_0
    new-instance v5, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;

    invoke-direct {v5}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;-><init>()V

    .line 139
    .local v5, "record":Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;
    sget-object v7, Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;->EUR:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    invoke-virtual {v5, v7}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setCurrency(Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;)V

    .line 140
    aget-byte v7, v4, v8

    invoke-virtual {p0, v7}, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->getType(B)Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setTransactionType(Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;)V

    .line 141
    const/16 v7, 0x15

    const/16 v9, 0x18

    invoke-static {v4, v7, v9}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v7

    invoke-static {v7}, Lfr/devnied/bitlib/BytesUtils;->bytesToStringNoSpace([B)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v9, 0x42c80000    # 100.0f

    div-float/2addr v7, v9

    invoke-static {v7}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setAmount(Ljava/lang/Float;)V

    .line 144
    :try_start_0
    const-string v7, "%02x.%02x.%02x%02x"

    const/4 v9, 0x4

    new-array v9, v9, [Ljava/lang/Object;

    const/16 v10, 0x20

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v8

    const/16 v10, 0x1f

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/16 v10, 0x1d

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v12, 0x2

    aput-object v10, v9, v12

    const/16 v10, 0x1e

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    const/4 v13, 0x3

    aput-object v10, v9, v13

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v7

    invoke-virtual {v5, v7}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setDate(Ljava/util/Date;)V

    .line 145
    const-string v7, "%02x:%02x:%02x"

    new-array v9, v13, [Ljava/lang/Object;

    const/16 v10, 0x21

    aget-byte v10, v4, v10

    invoke-static {v10}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v10

    aput-object v10, v9, v8

    const/16 v8, 0x22

    aget-byte v8, v4, v8

    invoke-static {v8}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v8

    aput-object v8, v9, v11

    aget-byte v6, v4, v6

    invoke-static {v6}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v6

    aput-object v6, v9, v12

    invoke-static {v7, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 148
    goto :goto_1

    .line 146
    :catch_0
    move-exception v6

    .line 147
    .local v6, "e":Ljava/text/ParseException;
    sget-object v7, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v6}, Ljava/text/ParseException;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 149
    .end local v6    # "e":Ljava/text/ParseException;
    :goto_1
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    .end local v4    # "data":[B
    .end local v5    # "record":Lcom/github/devnied/emvnfccard/model/EmvTransactionRecord;
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 154
    .end local v3    # "i":I
    :cond_1
    invoke-virtual {p1, v0}, Lcom/github/devnied/emvnfccard/model/Application;->setListTransactions(Ljava/util/List;)V

    .line 155
    return-void
.end method

.method protected readEfBetrag(Lcom/github/devnied/emvnfccard/model/Application;)V
    .locals 6
    .param p1, "pApplication"    # Lcom/github/devnied/emvnfccard/model/Application;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/github/devnied/emvnfccard/exception/CommunicationException;
        }
    .end annotation

    .line 180
    iget-object v0, p0, Lcom/github/devnied/emvnfccard/parser/impl/GeldKarteParser;->template:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;

    invoke-virtual {v0}, Lcom/github/devnied/emvnfccard/parser/EmvTemplate;->getProvider()Lcom/github/devnied/emvnfccard/parser/IProvider;

    move-result-object v0

    new-instance v1, Lcom/github/devnied/emvnfccard/utils/CommandApdu;

    sget-object v2, Lcom/github/devnied/emvnfccard/enums/CommandEnum;->READ_RECORD:Lcom/github/devnied/emvnfccard/enums/CommandEnum;

    const/4 v3, 0x1

    const/16 v4, 0xc4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;-><init>(Lcom/github/devnied/emvnfccard/enums/CommandEnum;III)V

    .line 181
    invoke-virtual {v1}, Lcom/github/devnied/emvnfccard/utils/CommandApdu;->toBytes()[B

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/github/devnied/emvnfccard/parser/IProvider;->transceive([B)[B

    move-result-object v0

    .line 183
    .local v0, "data":[B
    invoke-static {v0}, Lcom/github/devnied/emvnfccard/utils/ResponseUtils;->isSucceed([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    aget-byte v2, v0, v5

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v5

    aget-byte v2, v0, v3

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aget-byte v3, v0, v2

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "%02x%02x%02x"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    const/high16 v2, 0x42c80000    # 100.0f

    div-float/2addr v1, v2

    invoke-virtual {p1, v1}, Lcom/github/devnied/emvnfccard/model/Application;->setAmount(F)V

    .line 186
    :cond_0
    return-void
.end method
