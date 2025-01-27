.class public Lcom/itextpdf/signatures/TSAClientBouncyCastle;
.super Ljava/lang/Object;
.source "TSAClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/signatures/ITSAClient;


# static fields
.field public static final DEFAULTHASHALGORITHM:Ljava/lang/String; = "SHA-256"

.field public static final DEFAULTTOKENSIZE:I = 0x1000

.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected digestAlgorithm:Ljava/lang/String;

.field protected tokenSizeEstimate:I

.field protected tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

.field protected tsaPassword:Ljava/lang/String;

.field private tsaReqPolicy:Ljava/lang/String;

.field protected tsaURL:Ljava/lang/String;

.field protected tsaUsername:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 87
    const-class v0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;

    .line 124
    const/4 v2, 0x0

    const/4 v3, 0x0

    const/16 v4, 0x1000

    const-string v5, "SHA-256"

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 125
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 6
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;

    .line 135
    const/16 v4, 0x1000

    const-string v5, "SHA-256"

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V

    .line 136
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .param p1, "url"    # Ljava/lang/String;
    .param p2, "username"    # Ljava/lang/String;
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "tokSzEstimate"    # I
    .param p5, "digestAlgorithm"    # Ljava/lang/String;

    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    .line 152
    iput-object p2, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    .line 153
    iput-object p3, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    .line 154
    iput p4, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    .line 155
    iput-object p5, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    .line 156
    return-void
.end method


# virtual methods
.method public getMessageDigest()Ljava/security/MessageDigest;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 203
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->getMessageDigest(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    return-object v0
.end method

.method public getTSAReqPolicy()Ljava/lang/String;
    .locals 1

    .line 182
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    return-object v0
.end method

.method protected getTSAResponse([B)[B
    .locals 8
    .param p1, "requestBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 274
    iget-object v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    iget-object v1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaUsername:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaPassword:Ljava/lang/String;

    invoke-static {v0, p1, v1, v2}, Lcom/itextpdf/signatures/SignUtils;->getTsaResponseForUserRequest(Ljava/lang/String;[BLjava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/SignUtils$TsaResponse;

    move-result-object v0

    .line 276
    .local v0, "response":Lcom/itextpdf/signatures/SignUtils$TsaResponse;
    iget-object v1, v0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->tsaResponseStream:Ljava/io/InputStream;

    .line 277
    .local v1, "inp":Ljava/io/InputStream;
    new-instance v2, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v2}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 278
    .local v2, "baos":Ljava/io/ByteArrayOutputStream;
    const/16 v3, 0x400

    new-array v3, v3, [B

    .line 279
    .local v3, "buffer":[B
    const/4 v4, 0x0

    .line 280
    .local v4, "bytesRead":I
    :goto_0
    array-length v5, v3

    const/4 v6, 0x0

    invoke-virtual {v1, v3, v6, v5}, Ljava/io/InputStream;->read([BII)I

    move-result v5

    move v4, v5

    if-ltz v5, :cond_0

    .line 281
    invoke-virtual {v2, v3, v6, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 283
    :cond_0
    invoke-virtual {v2}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v5

    .line 285
    .local v5, "respBytes":[B
    iget-object v6, v0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    if-eqz v6, :cond_1

    iget-object v6, v0, Lcom/itextpdf/signatures/SignUtils$TsaResponse;->encoding:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "base64"

    invoke-virtual {v7}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 286
    new-instance v6, Ljava/lang/String;

    const-string v7, "US-ASCII"

    invoke-direct {v6, v5, v7}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-static {v6}, Lcom/itextpdf/io/codec/Base64;->decode(Ljava/lang/String;)[B

    move-result-object v5

    .line 288
    :cond_1
    return-object v5
.end method

.method public getTimeStampToken([B)[B
    .locals 14
    .param p1, "imprint"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/bouncycastle/tsp/TSPException;
        }
    .end annotation

    .line 218
    const/4 v0, 0x0

    .line 220
    .local v0, "respBytes":[B
    new-instance v1, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;

    invoke-direct {v1}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;-><init>()V

    .line 221
    .local v1, "tsqGenerator":Lorg/bouncycastle/tsp/TimeStampRequestGenerator;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setCertReq(Z)V

    .line 222
    iget-object v3, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    if-eqz v3, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 223
    iget-object v3, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    invoke-virtual {v1, v3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->setReqPolicy(Ljava/lang/String;)V

    .line 226
    :cond_0
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/math/BigInteger;->valueOf(J)Ljava/math/BigInteger;

    move-result-object v3

    .line 227
    .local v3, "nonce":Ljava/math/BigInteger;
    new-instance v4, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    iget-object v5, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->digestAlgorithm:Ljava/lang/String;

    invoke-static {v5}, Lcom/itextpdf/signatures/DigestAlgorithms;->getAllowedDigest(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v4, p1, v3}, Lorg/bouncycastle/tsp/TimeStampRequestGenerator;->generate(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;[BLjava/math/BigInteger;)Lorg/bouncycastle/tsp/TimeStampRequest;

    move-result-object v4

    .line 228
    .local v4, "request":Lorg/bouncycastle/tsp/TimeStampRequest;
    invoke-virtual {v4}, Lorg/bouncycastle/tsp/TimeStampRequest;->getEncoded()[B

    move-result-object v5

    .line 231
    .local v5, "requestBytes":[B
    invoke-virtual {p0, v5}, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->getTSAResponse([B)[B

    move-result-object v0

    .line 234
    new-instance v6, Lorg/bouncycastle/tsp/TimeStampResponse;

    invoke-direct {v6, v0}, Lorg/bouncycastle/tsp/TimeStampResponse;-><init>([B)V

    .line 237
    .local v6, "response":Lorg/bouncycastle/tsp/TimeStampResponse;
    invoke-virtual {v6, v4}, Lorg/bouncycastle/tsp/TimeStampResponse;->validate(Lorg/bouncycastle/tsp/TimeStampRequest;)V

    .line 238
    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampResponse;->getFailInfo()Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;

    move-result-object v7

    .line 239
    .local v7, "failure":Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;
    const/4 v8, 0x0

    if-nez v7, :cond_1

    move v9, v8

    goto :goto_0

    :cond_1
    invoke-virtual {v7}, Lorg/bouncycastle/asn1/cmp/PKIFailureInfo;->intValue()I

    move-result v9

    .line 240
    .local v9, "value":I
    :goto_0
    const/4 v10, 0x2

    if-nez v9, :cond_4

    .line 248
    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampResponse;->getTimeStampToken()Lorg/bouncycastle/tsp/TimeStampToken;

    move-result-object v11

    .line 249
    .local v11, "tsToken":Lorg/bouncycastle/tsp/TimeStampToken;
    if-eqz v11, :cond_3

    .line 252
    invoke-virtual {v11}, Lorg/bouncycastle/tsp/TimeStampToken;->getTimeStampInfo()Lorg/bouncycastle/tsp/TimeStampTokenInfo;

    move-result-object v2

    .line 253
    .local v2, "tsTokenInfo":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    invoke-virtual {v11}, Lorg/bouncycastle/tsp/TimeStampToken;->getEncoded()[B

    move-result-object v8

    .line 255
    .local v8, "encoded":[B
    sget-object v10, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Timestamp generated: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v2}, Lorg/bouncycastle/tsp/TimeStampTokenInfo;->getGenTime()Ljava/util/Date;

    move-result-object v13

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-interface {v10, v12}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 256
    iget-object v10, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

    if-eqz v10, :cond_2

    .line 257
    invoke-interface {v10, v2}, Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;->inspectTimeStampTokenInfo(Lorg/bouncycastle/tsp/TimeStampTokenInfo;)V

    .line 260
    :cond_2
    array-length v10, v8

    add-int/lit8 v10, v10, 0x20

    iput v10, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    .line 261
    return-object v8

    .line 250
    .end local v2    # "tsTokenInfo":Lorg/bouncycastle/tsp/TimeStampTokenInfo;
    .end local v8    # "encoded":[B
    :cond_3
    new-instance v12, Lcom/itextpdf/kernel/PdfException;

    const-string v13, "TSA {0} failed to return time stamp token: {1}."

    invoke-direct {v12, v13}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v13, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    aput-object v13, v10, v8

    invoke-virtual {v6}, Lorg/bouncycastle/tsp/TimeStampResponse;->getStatusString()Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v2

    invoke-virtual {v12, v10}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v2

    throw v2

    .line 242
    .end local v11    # "tsToken":Lorg/bouncycastle/tsp/TimeStampToken;
    :cond_4
    new-instance v11, Lcom/itextpdf/kernel/PdfException;

    const-string v12, "Invalid TSA {0} response code {1}."

    invoke-direct {v11, v12}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/String;)V

    new-array v10, v10, [Ljava/lang/Object;

    iget-object v12, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaURL:Ljava/lang/String;

    aput-object v12, v10, v8

    invoke-static {v9}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v10, v2

    invoke-virtual {v11, v10}, Lcom/itextpdf/kernel/PdfException;->setMessageParams([Ljava/lang/Object;)Lcom/itextpdf/kernel/PdfException;

    move-result-object v2

    throw v2
.end method

.method public getTokenSizeEstimate()I
    .locals 1

    .line 173
    iget v0, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tokenSizeEstimate:I

    return v0
.end method

.method public setTSAInfo(Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;)V
    .locals 0
    .param p1, "tsaInfo"    # Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

    .line 162
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaInfo:Lcom/itextpdf/signatures/ITSAInfoBouncyCastle;

    .line 163
    return-void
.end method

.method public setTSAReqPolicy(Ljava/lang/String;)V
    .locals 0
    .param p1, "tsaReqPolicy"    # Ljava/lang/String;

    .line 191
    iput-object p1, p0, Lcom/itextpdf/signatures/TSAClientBouncyCastle;->tsaReqPolicy:Ljava/lang/String;

    .line 192
    return-void
.end method
