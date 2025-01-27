.class public final Lorg/jpos/emv/IssuerApplicationData;
.super Ljava/lang/Object;
.source "IssuerApplicationData.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/emv/IssuerApplicationData$Format;
    }
.end annotation


# instance fields
.field private cci:Ljava/lang/String;

.field private counters:Ljava/lang/String;

.field private cvn:Ljava/lang/String;

.field private cvr:Ljava/lang/String;

.field private dac:Ljava/lang/String;

.field private dki:Ljava/lang/String;

.field private format:Lorg/jpos/emv/IssuerApplicationData$Format;

.field private final iad:Ljava/lang/String;

.field private idd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 5
    .param p1, "hexIAD"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    const-string v0, "IAD data cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 54
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->iad:Ljava/lang/String;

    .line 56
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0xe

    if-lt v1, v2, :cond_6

    .line 59
    sget-object v1, Lorg/jpos/emv/IssuerApplicationData$Format;->UNKNOWN:Lorg/jpos/emv/IssuerApplicationData$Format;

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 61
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x24

    if-eq v1, v2, :cond_5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x34

    if-ne v1, v2, :cond_0

    goto :goto_0

    .line 63
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_1

    .line 64
    const-string v1, "0F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/16 v3, 0x20

    const/16 v4, 0x22

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 65
    invoke-direct {p0, v0}, Lorg/jpos/emv/IssuerApplicationData;->unpackEMVFormatA(Ljava/lang/String;)V

    goto :goto_1

    .line 66
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v3, 0x2e

    if-gt v1, v3, :cond_2

    const-string v1, "06"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 67
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v2, :cond_4

    const-string v1, "1F"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 68
    :cond_3
    invoke-direct {p0, v0}, Lorg/jpos/emv/IssuerApplicationData;->unpackVIS(Ljava/lang/String;)V

    goto :goto_1

    .line 70
    :cond_4
    invoke-direct {p0, v0}, Lorg/jpos/emv/IssuerApplicationData;->unpackOther(Ljava/lang/String;)V

    goto :goto_1

    .line 62
    :cond_5
    :goto_0
    invoke-direct {p0, v0}, Lorg/jpos/emv/IssuerApplicationData;->unpackMCHIP(Ljava/lang/String;)V

    .line 71
    :goto_1
    return-void

    .line 57
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Invalid IAD length."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 1
    .param p1, "iad"    # [B

    .line 79
    const-string v0, "IAD data cannot be null."

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->byte2hex([B)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jpos/emv/IssuerApplicationData;-><init>(Ljava/lang/String;)V

    .line 80
    return-void
.end method

.method private unpackEMVFormatA(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 115
    sget-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->EMV_FORMAT_A:Lorg/jpos/emv/IssuerApplicationData$Format;

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 116
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cci:Ljava/lang/String;

    .line 117
    const/4 v0, 0x6

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 118
    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    .line 119
    const/16 v0, 0x22

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    .line 120
    return-void
.end method

.method private unpackMCHIP(Ljava/lang/String;)V
    .locals 2
    .param p1, "data"    # Ljava/lang/String;

    .line 84
    sget-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->M_CHIP:Lorg/jpos/emv/IssuerApplicationData$Format;

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 85
    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 86
    const/4 v0, 0x4

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    .line 87
    const/16 v1, 0x10

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    .line 88
    const/16 v0, 0x14

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dac:Ljava/lang/String;

    .line 89
    const/16 v1, 0x24

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->counters:Ljava/lang/String;

    .line 90
    return-void
.end method

.method private unpackOther(Ljava/lang/String;)V
    .locals 3
    .param p1, "data"    # Ljava/lang/String;

    .line 124
    sget-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->OTHER:Lorg/jpos/emv/IssuerApplicationData$Format;

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 125
    const/4 v0, 0x2

    const/4 v1, 0x4

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 126
    const/4 v2, 0x6

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    .line 128
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-ne v1, v2, :cond_0

    .line 129
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 130
    .local v1, "bridge":Ljava/lang/String;
    iget-object v2, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    iput-object v2, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 131
    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    .line 134
    .end local v1    # "bridge":Ljava/lang/String;
    :cond_0
    const/4 v1, 0x0

    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x10

    invoke-static {v0, v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 135
    .local v0, "cvrLength":I
    add-int/lit8 v1, v0, 0x8

    const/16 v2, 0x8

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    .line 137
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 138
    add-int/lit8 v1, v0, 0xa

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    .line 139
    :cond_1
    return-void
.end method

.method private unpackVIS(Ljava/lang/String;)V
    .locals 4
    .param p1, "iad"    # Ljava/lang/String;

    .line 94
    sget-object v0, Lorg/jpos/emv/IssuerApplicationData$Format;->VIS:Lorg/jpos/emv/IssuerApplicationData$Format;

    iput-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    .line 95
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 97
    .local v0, "format2":Z
    :goto_0
    const/4 v1, 0x2

    const/4 v2, 0x6

    const/4 v3, 0x4

    if-eqz v0, :cond_1

    .line 98
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    .line 99
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 100
    const/16 v1, 0x10

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    .line 101
    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    goto :goto_1

    .line 104
    :cond_1
    invoke-virtual {p1, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    .line 105
    invoke-virtual {p1, v3, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    .line 106
    const/16 v1, 0xe

    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    .line 108
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_2

    .line 109
    const/16 v1, 0xd

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    .line 111
    :cond_2
    :goto_1
    return-void
.end method


# virtual methods
.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 213
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 215
    .local v0, "inner":Ljava/lang/String;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getFormat()Lorg/jpos/emv/IssuerApplicationData$Format;

    move-result-object v3

    invoke-virtual {v3}, Lorg/jpos/emv/IssuerApplicationData$Format;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v1, v4

    iget-object v3, p0, Lorg/jpos/emv/IssuerApplicationData;->iad:Ljava/lang/String;

    const/4 v5, 0x2

    aput-object v3, v1, v5

    const-string v3, "%s<iad format=\'%s\' value=\'%s\'>"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 217
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cci:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 218
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getCommonCoreIdentifier()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sCommon core identifier: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 220
    :cond_0
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 221
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getDerivationKeyIndex()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sKey derivation index: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 223
    :cond_1
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 224
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getCryptogramVersionNumber()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sCryptogram version number: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 226
    :cond_2
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 227
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getCardVerificationResults()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sCard verification results: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 229
    :cond_3
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 230
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getIssuerDiscretionaryData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sIssuer discretionary data: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 232
    :cond_4
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->dac:Ljava/lang/String;

    if-eqz v1, :cond_5

    .line 233
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getDAC()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sDAC/ICC dynamic number: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 235
    :cond_5
    iget-object v1, p0, Lorg/jpos/emv/IssuerApplicationData;->counters:Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 236
    new-array v1, v5, [Ljava/lang/Object;

    aput-object v0, v1, v2

    invoke-virtual {p0}, Lorg/jpos/emv/IssuerApplicationData;->getCounters()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v4

    const-string v3, "%n%sPlaintext/Encrypted counters: \'%s\'"

    invoke-virtual {p1, v3, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 238
    :cond_6
    new-array v1, v4, [Ljava/lang/Object;

    aput-object p2, v1, v2

    const-string v2, "%n%s</iad>%n"

    invoke-virtual {p1, v2, v1}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 239
    return-void
.end method

.method public getCardVerificationResults()Ljava/lang/String;
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cvr:Ljava/lang/String;

    return-object v0
.end method

.method public getCommonCoreIdentifier()Ljava/lang/String;
    .locals 1

    .line 162
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cci:Ljava/lang/String;

    return-object v0
.end method

.method public getCounters()Ljava/lang/String;
    .locals 1

    .line 186
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->counters:Ljava/lang/String;

    return-object v0
.end method

.method public getCryptogramVersionNumber()Ljava/lang/String;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->cvn:Ljava/lang/String;

    return-object v0
.end method

.method public getDAC()Ljava/lang/String;
    .locals 1

    .line 178
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->dac:Ljava/lang/String;

    return-object v0
.end method

.method public getDerivationKeyIndex()Ljava/lang/String;
    .locals 1

    .line 146
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->dki:Ljava/lang/String;

    return-object v0
.end method

.method public getFormat()Lorg/jpos/emv/IssuerApplicationData$Format;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->format:Lorg/jpos/emv/IssuerApplicationData$Format;

    return-object v0
.end method

.method public getIssuerDiscretionaryData()Ljava/lang/String;
    .locals 1

    .line 202
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->idd:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 207
    iget-object v0, p0, Lorg/jpos/emv/IssuerApplicationData;->iad:Ljava/lang/String;

    return-object v0
.end method
