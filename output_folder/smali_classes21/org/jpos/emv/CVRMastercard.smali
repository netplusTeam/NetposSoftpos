.class public Lorg/jpos/emv/CVRMastercard;
.super Ljava/lang/Object;
.source "CVRMastercard.java"

# interfaces
.implements Lorg/jpos/util/Loggeable;


# instance fields
.field private final cvr:[B


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "cvr"    # Ljava/lang/String;

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    const-string v0, "cvr"

    const-string v1, "CVR cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 52
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 53
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    .line 56
    invoke-static {p1}, Lorg/jpos/iso/ISOUtil;->hex2byte(Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    .line 57
    return-void

    .line 54
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 55
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid length. Expected = 12, actual = %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>([B)V
    .locals 4
    .param p1, "cvr"    # [B

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const-string v0, "cvr"

    const-string v1, "CVR cannot be null."

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 40
    array-length v0, p1

    const/4 v1, 0x6

    if-ne v0, v1, :cond_0

    .line 43
    iput-object p1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    .line 44
    return-void

    .line 41
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    array-length v3, p1

    .line 42
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "Invalid length. Expected = 6, actual = %s."

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private isBitOn(BI)Z
    .locals 2
    .param p1, "value"    # B
    .param p2, "position"    # I

    .line 198
    add-int/lit8 v0, p2, -0x1

    shr-int v0, p1, v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method


# virtual methods
.method public aacReturnedInFirstGenerateAC()Z
    .locals 3

    .line 64
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public aacReturnedInSecondGenerateAC()Z
    .locals 3

    .line 60
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public arqcReturnedInFirstGenerateAC()Z
    .locals 3

    .line 72
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public ciacDefaultSkippedOnCAT3()Z
    .locals 2

    .line 112
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public combinedDDAACGenerationReturnedInFirstGenerateAC()Z
    .locals 2

    .line 92
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public combinedDDAACGenerationReturnedInSecondGenerateAC()Z
    .locals 2

    .line 96
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public ddaReturned()Z
    .locals 2

    .line 88
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public domesticTransaction()Z
    .locals 2

    .line 154
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public dump(Ljava/io/PrintStream;Ljava/lang/String;)V
    .locals 8
    .param p1, "p"    # Ljava/io/PrintStream;
    .param p2, "indent"    # Ljava/lang/String;

    .line 203
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "  "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 204
    .local v0, "inner":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 205
    .local v1, "inner2":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 206
    .local v2, "sb":Ljava/lang/StringBuilder;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    iget-object v5, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    invoke-static {v5}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v3, v6

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    const/4 v7, 0x2

    aput-object v5, v3, v7

    const-string v5, "%s<cvr-mastercard value=\'%s\'>%s%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 208
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%sBYTE 1:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 209
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->aacReturnedInSecondGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 210
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sACC RETURNED IN SECOND GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 211
    :cond_0
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->tcReturnedInSecondGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 212
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sTC RETURNED IN SECOND GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 213
    :cond_1
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->secondGenerateACNotRequested()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 214
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sSECOND GENERATE AC NOT REQUESTED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 215
    :cond_2
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->aacReturnedInFirstGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 216
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sACC RETURNED IN FIRST GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 217
    :cond_3
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->tcReturnedInFirstGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 218
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sTC RETURNED IN FIRST GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 219
    :cond_4
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->arqcReturnedInFirstGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 220
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sARQC RETURNED IN FIRST GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 221
    :cond_5
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->offlinePINVerificationPerformed()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 222
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sOFFLINE PIN VERIFICATION PERFORMED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 223
    :cond_6
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->offlineEncryptedPINVerificationPerformed()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 224
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sOFFLINE ENCRYPTED PIN VERIFICATION PERFORMED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 226
    :cond_7
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%n%sBYTE 2:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 227
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->ddaReturned()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 228
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sDDA RETURNED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 229
    :cond_8
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->combinedDDAACGenerationReturnedInFirstGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 230
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sCOMBINED DDA/AC GENERATION RETURNED IN FIRST GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 231
    :cond_9
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->combinedDDAACGenerationReturnedInSecondGenerateAC()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 232
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sCOMBINED DDA/AC GENERATION RETURNED IN SECOND GENERATE AC%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 233
    :cond_a
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->issuerAuthenticationPerformed()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 234
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sISSUER AUTHENTICATION PEFORMED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 235
    :cond_b
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->ciacDefaultSkippedOnCAT3()Z

    move-result v3

    if-eqz v3, :cond_c

    .line 236
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sCIAC-DEFAULT SKIPPED ON CAT3%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 238
    :cond_c
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%n%sBYTE 3:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 239
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->rightNibbleOfScriptCounter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "%sRIGHT NIBBLE OF SCRIPT COUNTER = %s%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 240
    new-array v3, v7, [Ljava/lang/Object;

    aput-object v1, v3, v4

    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->rightNibbleOfPINTryCounter()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v6

    const-string v5, "%sRIGHT NIBBLE OF PIN TRY COUNTER = %s%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 242
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%n%sBYTE 4:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 243
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->unableToGoOnline()Z

    move-result v3

    if-eqz v3, :cond_d

    .line 244
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sUNABLE TO GO ONLINE INDICATED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 245
    :cond_d
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->offlinePINVerificationNotPerformed()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 246
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sOFFLINE PIN VERIFICATION NOT PERFORMED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 247
    :cond_e
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->offlinePINVerificationFailed()Z

    move-result v3

    if-eqz v3, :cond_f

    .line 248
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sOFFLINE PIN VERIFICATION FAILED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 249
    :cond_f
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->ptlExceeded()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 250
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sPTL EXCEEDED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 251
    :cond_10
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->internationalTransaction()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 252
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sINTERNATIONAL TRANSACTION%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 253
    :cond_11
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->domesticTransaction()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 254
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sDOMESTIC TRANSACTION%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 255
    :cond_12
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->terminalErroneouslyConsidersOfflinePINOK()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 256
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sTERMINAL ERRONEOUSLY CONSIDERS OFFLINE PIN OK%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 258
    :cond_13
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%n%sBYTE 5:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 259
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->lowerConsecutiveOfflineLimitExceeded()Z

    move-result v3

    if-eqz v3, :cond_14

    .line 260
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sLOWER CONSECUTIVE OFFLINE LIMIT EXCEEDED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 261
    :cond_14
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->upperConsecutiveOfflineLimitExceeded()Z

    move-result v3

    if-eqz v3, :cond_15

    .line 262
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sUPPER CONSECUTIVE OFFLINE LIMIT EXCEEDED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 263
    :cond_15
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->lowerCumulativeOfflineLimitExceeded()Z

    move-result v3

    if-eqz v3, :cond_16

    .line 264
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sLOWER CUMULATIVE OFFLINE LIMIT EXCEEDED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 265
    :cond_16
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->upperCumulativeOfflineLimitExceeded()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 266
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sUPPER CUMULATIVE OFFLINE LIMIT EXCEEDED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 267
    :cond_17
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->goOnlineOnNextTransactionSet()Z

    move-result v3

    if-eqz v3, :cond_18

    .line 268
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sGO ONLINE ON NEXT TRANSACTION WAS SET%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 269
    :cond_18
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->issuerAuthenticationFailed()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 270
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sISSUER AUTHENTICATION FAILED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 271
    :cond_19
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->scriptReceived()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 272
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sSCRIPT RECEIVED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 273
    :cond_1a
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->scriptFailed()Z

    move-result v3

    if-eqz v3, :cond_1b

    .line 274
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sSCRIPT FAILED%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 276
    :cond_1b
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v0, v3, v4

    const-string v5, "%n%sBYTE 6:%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 277
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->matchFoundInAdditionalCheckTable()Z

    move-result v3

    if-eqz v3, :cond_1c

    .line 278
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sMATCH FOUND IN ADDITIONAL CHECK TABLE%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 279
    :cond_1c
    invoke-virtual {p0}, Lorg/jpos/emv/CVRMastercard;->noMatchFoundInAdditionalCheckTable()Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 280
    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v4

    const-string v5, "%sNO MATCH FOUND IN ADDITIONAL CHECK TABLE%n"

    invoke-virtual {p1, v5, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 282
    :cond_1d
    new-array v3, v6, [Ljava/lang/Object;

    aput-object p2, v3, v4

    const-string v4, "%s</cvr-mastercard>%n"

    invoke-virtual {p1, v4, v3}, Ljava/io/PrintStream;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintStream;

    .line 283
    return-void
.end method

.method public goOnlineOnNextTransactionSet()Z
    .locals 2

    .line 178
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public internationalTransaction()Z
    .locals 2

    .line 150
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public issuerAuthenticationFailed()Z
    .locals 2

    .line 100
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public issuerAuthenticationPerformed()Z
    .locals 2

    .line 190
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x1

    aget-byte v0, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public lowerConsecutiveOfflineLimitExceeded()Z
    .locals 2

    .line 162
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/16 v1, 0x8

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public lowerCumulativeOfflineLimitExceeded()Z
    .locals 2

    .line 170
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public matchFoundInAdditionalCheckTable()Z
    .locals 2

    .line 116
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public noMatchFoundInAdditionalCheckTable()Z
    .locals 2

    .line 120
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x5

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public offlineEncryptedPINVerificationPerformed()Z
    .locals 2

    .line 194
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public offlinePINVerificationFailed()Z
    .locals 2

    .line 142
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public offlinePINVerificationNotPerformed()Z
    .locals 2

    .line 84
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x6

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public offlinePINVerificationPerformed()Z
    .locals 2

    .line 80
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public ptlExceeded()Z
    .locals 2

    .line 146
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public rightNibbleOfPINTryCounter()I
    .locals 6

    .line 133
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 134
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/4 v3, 0x4

    invoke-direct {p0, v1, v3}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x3

    invoke-direct {p0, v1, v5}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    invoke-direct {p0, v1, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x1

    invoke-direct {p0, v1, v5}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public rightNibbleOfScriptCounter()I
    .locals 6

    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 125
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v2, 0x2

    aget-byte v1, v1, v2

    const/16 v3, 0x8

    invoke-direct {p0, v1, v3}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    const-string v3, "1"

    const-string v4, "0"

    if-eqz v1, :cond_0

    move-object v1, v3

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x7

    invoke-direct {p0, v1, v5}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v3

    goto :goto_1

    :cond_1
    move-object v1, v4

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x6

    invoke-direct {p0, v1, v5}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_2

    move-object v1, v3

    goto :goto_2

    :cond_2
    move-object v1, v4

    :goto_2
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    iget-object v1, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v1, v1, v2

    const/4 v5, 0x5

    invoke-direct {p0, v1, v5}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v1

    if-eqz v1, :cond_3

    goto :goto_3

    :cond_3
    move-object v3, v4

    :goto_3
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v1

    return v1
.end method

.method public scriptFailed()Z
    .locals 2

    .line 108
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public scriptReceived()Z
    .locals 2

    .line 104
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x2

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public secondGenerateACNotRequested()Z
    .locals 3

    .line 186
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public tcReturnedInFirstGenerateAC()Z
    .locals 3

    .line 76
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/4 v2, 0x6

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x5

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public tcReturnedInSecondGenerateAC()Z
    .locals 3

    .line 68
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x0

    aget-byte v0, v0, v1

    const/16 v2, 0x8

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    aget-byte v0, v0, v1

    const/4 v2, 0x7

    invoke-direct {p0, v0, v2}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method

.method public terminalErroneouslyConsidersOfflinePINOK()Z
    .locals 2

    .line 158
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public unableToGoOnline()Z
    .locals 2

    .line 182
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x3

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public upperConsecutiveOfflineLimitExceeded()Z
    .locals 2

    .line 166
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x7

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method

.method public upperCumulativeOfflineLimitExceeded()Z
    .locals 2

    .line 174
    iget-object v0, p0, Lorg/jpos/emv/CVRMastercard;->cvr:[B

    const/4 v1, 0x4

    aget-byte v0, v0, v1

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Lorg/jpos/emv/CVRMastercard;->isBitOn(BI)Z

    move-result v0

    return v0
.end method
