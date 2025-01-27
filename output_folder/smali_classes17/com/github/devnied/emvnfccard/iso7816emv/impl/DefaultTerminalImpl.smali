.class public final Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;
.super Ljava/lang/Object;
.source "DefaultTerminalImpl.java"

# interfaces
.implements Lcom/github/devnied/emvnfccard/iso7816emv/ITerminal;


# static fields
.field private static final random:Ljava/security/SecureRandom;


# instance fields
.field private countryCode:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 45
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    sput-object v0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->random:Ljava/security/SecureRandom;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    sget-object v0, Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;->FR:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    iput-object v0, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->countryCode:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    return-void
.end method


# virtual methods
.method public constructValue(Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;)[B
    .locals 7
    .param p1, "pTagAndLength"    # Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;

    .line 61
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v0

    new-array v0, v0, [B

    .line 62
    .local v0, "ret":[B
    const/4 v1, 0x0

    .line 63
    .local v1, "val":[B
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_TRANSACTION_QUALIFIERS:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v2, v3, :cond_0

    .line 64
    new-instance v2, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;

    invoke-direct {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;-><init>()V

    .line 65
    .local v2, "terminalQual":Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setContactlessVSDCsupported(Z)V

    .line 66
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setContactEMVsupported(Z)V

    .line 68
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setMagneticStripeSupported(Z)V

    .line 69
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setContactlessEMVmodeSupported(Z)V

    .line 70
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setOnlinePINsupported(Z)V

    .line 71
    invoke-virtual {v2, v4}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setReaderIsOfflineOnly(Z)V

    .line 72
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setSignatureSupported(Z)V

    .line 73
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setContactChipOfflinePINsupported(Z)V

    .line 74
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setIssuerUpdateProcessingSupported(Z)V

    .line 75
    invoke-virtual {v2, v5}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->setConsumerDeviceCVMsupported(Z)V

    .line 76
    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;->getBytes()[B

    move-result-object v1

    .line 77
    .end local v2    # "terminalQual":Lcom/github/devnied/emvnfccard/iso7816emv/TerminalTransactionQualifiers;
    goto/16 :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_COUNTRY_CODE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const-string v6, "0"

    if-ne v2, v3, :cond_1

    .line 78
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->countryCode:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;->getNumeric()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    invoke-static {v2, v3, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_1

    .line 80
    :cond_1
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRANSACTION_CURRENCY_CODE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_2

    .line 81
    iget-object v2, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->countryCode:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    sget-object v3, Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;->EUR:Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    invoke-static {v2, v3}, Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;->find(Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;)Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;

    move-result-object v2

    invoke-virtual {v2}, Lcom/github/devnied/emvnfccard/model/enums/CurrencyEnum;->getISOCodeNumeric()I

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    .line 82
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getLength()I

    move-result v3

    mul-int/lit8 v3, v3, 0x2

    .line 81
    invoke-static {v2, v3, v6}, Lorg/apache/commons/lang3/StringUtils;->leftPad(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_1

    .line 83
    :cond_2
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRANSACTION_DATE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_3

    .line 84
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "yyMMdd"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 85
    .local v2, "sdf":Ljava/text/SimpleDateFormat;
    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    .line 86
    .end local v2    # "sdf":Ljava/text/SimpleDateFormat;
    goto/16 :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TRANSACTION_TYPE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-eq v2, v3, :cond_c

    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_TRANSACTION_TYPE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_4

    goto/16 :goto_0

    .line 88
    :cond_4
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->AMOUNT_AUTHORISED_NUMERIC:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_5

    .line 89
    const-string v2, "01"

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    goto/16 :goto_1

    .line 90
    :cond_5
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_TYPE:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_6

    .line 91
    new-array v2, v5, [B

    const/16 v3, 0x22

    aput-byte v3, v2, v4

    move-object v1, v2

    goto/16 :goto_1

    .line 92
    :cond_6
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_CAPABILITIES:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    const/4 v6, 0x3

    if-ne v2, v3, :cond_7

    .line 93
    new-array v2, v6, [B

    fill-array-data v2, :array_0

    move-object v1, v2

    goto :goto_1

    .line 94
    :cond_7
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->ADDITIONAL_TERMINAL_CAPABILITIES:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_8

    .line 95
    const/4 v2, 0x5

    new-array v2, v2, [B

    fill-array-data v2, :array_1

    move-object v1, v2

    goto :goto_1

    .line 96
    :cond_8
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->DS_REQUESTED_OPERATOR_ID:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_9

    .line 97
    const-string v2, "7A45123EE59C7F40"

    invoke-static {v2}, Lfr/devnied/bitlib/BytesUtils;->fromString(Ljava/lang/String;)[B

    move-result-object v1

    goto :goto_1

    .line 98
    :cond_9
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->UNPREDICTABLE_NUMBER:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_a

    .line 99
    sget-object v2, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->random:Ljava/security/SecureRandom;

    invoke-virtual {v2, v0}, Ljava/security/SecureRandom;->nextBytes([B)V

    goto :goto_1

    .line 100
    :cond_a
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->MERCHANT_TYPE_INDICATOR:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_b

    .line 101
    new-array v2, v5, [B

    aput-byte v5, v2, v4

    move-object v1, v2

    goto :goto_1

    .line 102
    :cond_b
    invoke-virtual {p1}, Lcom/github/devnied/emvnfccard/iso7816emv/TagAndLength;->getTag()Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    move-result-object v2

    sget-object v3, Lcom/github/devnied/emvnfccard/iso7816emv/EmvTags;->TERMINAL_TRANSACTION_INFORMATION:Lcom/github/devnied/emvnfccard/iso7816emv/ITag;

    if-ne v2, v3, :cond_d

    .line 103
    new-array v2, v6, [B

    fill-array-data v2, :array_2

    move-object v1, v2

    goto :goto_1

    .line 87
    :cond_c
    :goto_0
    new-array v2, v5, [B

    sget-object v3, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->PURCHASE:Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;

    invoke-virtual {v3}, Lcom/github/devnied/emvnfccard/model/enums/TransactionTypeEnum;->getKey()I

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, v2, v4

    move-object v1, v2

    .line 105
    :cond_d
    :goto_1
    if-eqz v1, :cond_e

    .line 106
    array-length v2, v0

    array-length v3, v1

    sub-int/2addr v2, v3

    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    move-result v2

    array-length v3, v1

    array-length v5, v0

    invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {v1, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 108
    :cond_e
    return-object v0

    :array_0
    .array-data 1
        -0x20t
        -0x60t
        0x0t
    .end array-data

    :array_1
    .array-data 1
        -0x72t
        0x0t
        -0x50t
        0x50t
        0x5t
    .end array-data

    nop

    :array_2
    .array-data 1
        -0x40t
        -0x80t
        0x0t
    .end array-data
.end method

.method public setCountryCode(Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;)V
    .locals 0
    .param p1, "countryCode"    # Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    .line 118
    if-eqz p1, :cond_0

    .line 119
    iput-object p1, p0, Lcom/github/devnied/emvnfccard/iso7816emv/impl/DefaultTerminalImpl;->countryCode:Lcom/github/devnied/emvnfccard/model/enums/CountryCodeEnum;

    .line 121
    :cond_0
    return-void
.end method
