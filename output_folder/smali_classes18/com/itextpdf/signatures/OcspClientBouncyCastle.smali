.class public Lcom/itextpdf/signatures/OcspClientBouncyCastle;
.super Ljava/lang/Object;
.source "OcspClientBouncyCastle.java"

# interfaces
.implements Lcom/itextpdf/signatures/IOcspClient;


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private final verifier:Lcom/itextpdf/signatures/OCSPVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 80
    const-class v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/signatures/OCSPVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lcom/itextpdf/signatures/OCSPVerifier;

    .line 90
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    iput-object p1, p0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->verifier:Lcom/itextpdf/signatures/OCSPVerifier;

    .line 92
    return-void
.end method

.method private static generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .locals 2
    .param p0, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p1, "serialNumber"    # Ljava/math/BigInteger;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/operator/OperatorException;,
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;

    invoke-direct {v0}, Lorg/bouncycastle/jce/provider/BouncyCastleProvider;-><init>()V

    invoke-static {v0}, Ljava/security/Security;->addProvider(Ljava/security/Provider;)I

    .line 172
    sget-object v0, Lorg/bouncycastle/cert/ocsp/CertificateID;->HASH_SHA1:Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;

    invoke-static {p0, p1, v0}, Lcom/itextpdf/signatures/SignUtils;->generateCertificateId(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;Lorg/bouncycastle/asn1/x509/AlgorithmIdentifier;)Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v0

    .line 175
    .local v0, "id":Lorg/bouncycastle/cert/ocsp/CertificateID;
    invoke-static {v0}, Lcom/itextpdf/signatures/SignUtils;->generateOcspRequestWithNonce(Lorg/bouncycastle/cert/ocsp/CertificateID;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 4
    .param p1, "checkCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "rootCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 105
    const/4 v0, 0x0

    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/OCSPResp;

    move-result-object v1

    .line 106
    .local v1, "ocspResponse":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    if-nez v1, :cond_0

    .line 107
    return-object v0

    .line 109
    :cond_0
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result v2

    if-eqz v2, :cond_1

    .line 110
    return-object v0

    .line 112
    :cond_1
    invoke-virtual {v1}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 113
    .local v2, "basicResponse":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    iget-object v3, p0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->verifier:Lcom/itextpdf/signatures/OCSPVerifier;

    if-eqz v3, :cond_2

    .line 114
    invoke-virtual {v3, v2, p2}, Lcom/itextpdf/signatures/OCSPVerifier;->isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :cond_2
    return-object v2

    .line 117
    .end local v1    # "ocspResponse":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .end local v2    # "basicResponse":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    :catch_0
    move-exception v1

    .line 118
    .local v1, "ex":Ljava/lang/Exception;
    sget-object v2, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 120
    .end local v1    # "ex":Ljava/lang/Exception;
    return-object v0
.end method

.method public getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B
    .locals 6
    .param p1, "checkCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "rootCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;

    .line 135
    :try_start_0
    invoke-virtual {p0, p1, p2, p3}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object v0

    .line 136
    .local v0, "basicResponse":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    if-eqz v0, :cond_2

    .line 137
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v1

    .line 138
    .local v1, "responses":[Lorg/bouncycastle/cert/ocsp/SingleResp;
    array-length v2, v1

    const/4 v3, 0x1

    if-ne v2, v3, :cond_2

    .line 139
    const/4 v2, 0x0

    aget-object v2, v1, v2

    .line 140
    .local v2, "resp":Lorg/bouncycastle/cert/ocsp/SingleResp;
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v3

    .line 141
    .local v3, "status":Ljava/lang/Object;
    sget-object v4, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v3, v4, :cond_0

    .line 142
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getEncoded()[B

    move-result-object v4

    return-object v4

    .line 143
    :cond_0
    instance-of v4, v3, Lorg/bouncycastle/cert/ocsp/RevokedStatus;

    if-eqz v4, :cond_1

    .line 144
    new-instance v4, Ljava/io/IOException;

    const-string v5, "OCSP status is revoked."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "url":Ljava/lang/String;
    throw v4

    .line 146
    .restart local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "url":Ljava/lang/String;
    :cond_1
    new-instance v4, Ljava/io/IOException;

    const-string v5, "OCSP status is unknown."

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    .end local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .end local p2    # "rootCert":Ljava/security/cert/X509Certificate;
    .end local p3    # "url":Ljava/lang/String;
    throw v4
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 152
    .end local v0    # "basicResponse":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .end local v1    # "responses":[Lorg/bouncycastle/cert/ocsp/SingleResp;
    .end local v2    # "resp":Lorg/bouncycastle/cert/ocsp/SingleResp;
    .end local v3    # "status":Ljava/lang/Object;
    .restart local p1    # "checkCert":Ljava/security/cert/X509Certificate;
    .restart local p2    # "rootCert":Ljava/security/cert/X509Certificate;
    .restart local p3    # "url":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 150
    :catch_0
    move-exception v0

    .line 151
    .local v0, "ex":Ljava/lang/Exception;
    sget-object v1, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 153
    .end local v0    # "ex":Ljava/lang/Exception;
    :goto_0
    const/4 v0, 0x0

    return-object v0
.end method

.method getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .locals 6
    .param p1, "checkCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "rootCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "url"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Lorg/bouncycastle/cert/ocsp/OCSPException;,
            Ljava/io/IOException;,
            Lorg/bouncycastle/operator/OperatorException;
        }
    .end annotation

    .line 193
    const/4 v0, 0x0

    if-eqz p1, :cond_3

    if-nez p2, :cond_0

    goto :goto_0

    .line 195
    :cond_0
    if-nez p3, :cond_1

    .line 196
    invoke-static {p1}, Lcom/itextpdf/signatures/CertificateUtil;->getOCSPURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object p3

    .line 198
    :cond_1
    if-nez p3, :cond_2

    .line 199
    return-object v0

    .line 200
    :cond_2
    sget-object v0, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Getting OCSP from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 201
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    invoke-static {p2, v0}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->generateOCSPRequest(Ljava/security/cert/X509Certificate;Ljava/math/BigInteger;)Lorg/bouncycastle/cert/ocsp/OCSPReq;

    move-result-object v0

    .line 202
    .local v0, "request":Lorg/bouncycastle/cert/ocsp/OCSPReq;
    invoke-virtual {v0}, Lorg/bouncycastle/cert/ocsp/OCSPReq;->getEncoded()[B

    move-result-object v1

    .line 203
    .local v1, "array":[B
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, p3}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 204
    .local v2, "urlt":Ljava/net/URL;
    invoke-static {v1, v2}, Lcom/itextpdf/signatures/SignUtils;->getHttpResponseForOcspRequest([BLjava/net/URL;)Ljava/io/InputStream;

    move-result-object v3

    .line 205
    .local v3, "in":Ljava/io/InputStream;
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-static {v3}, Lcom/itextpdf/io/util/StreamUtil;->inputStreamToArray(Ljava/io/InputStream;)[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    return-object v4

    .line 194
    .end local v0    # "request":Lorg/bouncycastle/cert/ocsp/OCSPReq;
    .end local v1    # "array":[B
    .end local v2    # "urlt":Ljava/net/URL;
    .end local v3    # "in":Ljava/io/InputStream;
    :cond_3
    :goto_0
    return-object v0
.end method
