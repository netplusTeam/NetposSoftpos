.class public Lcom/itextpdf/signatures/OCSPVerifier;
.super Lcom/itextpdf/signatures/RootStoreVerifier;
.source "OCSPVerifier.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;

.field protected static final id_kp_OCSPSigning:Ljava/lang/String; = "1.3.6.1.5.5.7.3.9"


# instance fields
.field protected ocsps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 74
    const-class v0, Lcom/itextpdf/signatures/OCSPVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V
    .locals 0
    .param p1, "verifier"    # Lcom/itextpdf/signatures/CertificateVerifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/itextpdf/signatures/CertificateVerifier;",
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;)V"
        }
    .end annotation

    .line 87
    .local p2, "ocsps":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 88
    iput-object p2, p0, Lcom/itextpdf/signatures/OCSPVerifier;->ocsps:Ljava/util/List;

    .line 89
    return-void
.end method


# virtual methods
.method public getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .locals 9
    .param p1, "signCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;

    .line 337
    const/4 v0, 0x0

    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 338
    return-object v0

    .line 340
    :cond_0
    new-instance v1, Lcom/itextpdf/signatures/OcspClientBouncyCastle;

    invoke-direct {v1, v0}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;-><init>(Lcom/itextpdf/signatures/OCSPVerifier;)V

    .line 341
    .local v1, "ocsp":Lcom/itextpdf/signatures/OcspClientBouncyCastle;
    invoke-virtual {v1, p1, p2, v0}, Lcom/itextpdf/signatures/OcspClientBouncyCastle;->getBasicOCSPResp(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object v2

    .line 342
    .local v2, "ocspResp":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    if-nez v2, :cond_1

    .line 343
    return-object v0

    .line 345
    :cond_1
    invoke-virtual {v2}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v3

    .line 346
    .local v3, "resps":[Lorg/bouncycastle/cert/ocsp/SingleResp;
    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 347
    .local v6, "resp":Lorg/bouncycastle/cert/ocsp/SingleResp;
    invoke-virtual {v6}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v7

    .line 348
    .local v7, "status":Ljava/lang/Object;
    sget-object v8, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v7, v8, :cond_2

    .line 349
    return-object v2

    .line 346
    .end local v6    # "resp":Lorg/bouncycastle/cert/ocsp/SingleResp;
    .end local v7    # "status":Ljava/lang/Object;
    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 352
    :cond_3
    return-object v0
.end method

.method public isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z
    .locals 2
    .param p1, "ocspResp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p2, "responderCert"    # Ljava/security/cert/Certificate;

    .line 323
    :try_start_0
    const-string v0, "BC"

    invoke-static {p1, p2, v0}, Lcom/itextpdf/signatures/SignUtils;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;Ljava/lang/String;)Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 324
    :catch_0
    move-exception v0

    .line 325
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    return v1
.end method

.method public isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;)V
    .locals 1
    .param p1, "ocspResp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/signatures/OCSPVerifier;->isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V

    .line 202
    return-void
.end method

.method public isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V
    .locals 7
    .param p1, "ocspResp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "signDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 217
    const/4 v0, 0x0

    .line 221
    .local v0, "responderCert":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 222
    move-object v0, p2

    .line 227
    :cond_0
    if-nez v0, :cond_c

    .line 228
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getCerts()[Lorg/bouncycastle/cert/X509CertificateHolder;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_7

    .line 230
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getCertsFromOcspResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;)Ljava/lang/Iterable;

    move-result-object v1

    .line 231
    .local v1, "certs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/cert/X509Certificate;>;"
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 232
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 234
    .local v5, "keyPurposes":Ljava/util/List;
    :try_start_0
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getExtendedKeyUsage()Ljava/util/List;

    move-result-object v6

    move-object v5, v6

    .line 235
    if-eqz v5, :cond_1

    const-string v6, "1.3.6.1.5.5.7.3.9"

    invoke-interface {v5, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-virtual {p0, p1, v4}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v6
    :try_end_0
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v6, :cond_1

    .line 236
    move-object v0, v4

    .line 237
    goto :goto_2

    .line 240
    :cond_1
    goto :goto_1

    .line 239
    :catch_0
    move-exception v6

    .line 241
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "keyPurposes":Ljava/util/List;
    :goto_1
    goto :goto_0

    .line 245
    :cond_2
    :goto_2
    if-eqz v0, :cond_6

    .line 255
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 258
    invoke-virtual {v0, p3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 263
    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_nocheck:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-virtual {v3}, Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;->getId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/security/cert/X509Certificate;->getExtensionValue(Ljava/lang/String;)[B

    move-result-object v3

    if-nez v3, :cond_5

    .line 268
    :try_start_1
    invoke-static {v0}, Lcom/itextpdf/signatures/CertificateUtil;->getCRL(Ljava/security/cert/X509Certificate;)Ljava/security/cert/CRL;

    move-result-object v3
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 271
    .local v3, "crl":Ljava/security/cert/CRL;
    goto :goto_3

    .line 269
    .end local v3    # "crl":Ljava/security/cert/CRL;
    :catch_1
    move-exception v3

    .line 270
    .local v3, "ignored":Ljava/lang/Exception;
    move-object v4, v2

    check-cast v4, Ljava/security/cert/CRL;

    move-object v3, v4

    .line 272
    .local v3, "crl":Ljava/security/cert/CRL;
    :goto_3
    if-eqz v3, :cond_4

    instance-of v4, v3, Ljava/security/cert/X509CRL;

    if-eqz v4, :cond_4

    .line 273
    new-instance v4, Lcom/itextpdf/signatures/CRLVerifier;

    invoke-direct {v4, v2, v2}, Lcom/itextpdf/signatures/CRLVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    move-object v2, v4

    .line 274
    .local v2, "crlVerifier":Lcom/itextpdf/signatures/CRLVerifier;
    iget-object v4, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v4}, Lcom/itextpdf/signatures/CRLVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 275
    iget-boolean v4, p0, Lcom/itextpdf/signatures/OCSPVerifier;->onlineCheckingAllowed:Z

    invoke-virtual {v2, v4}, Lcom/itextpdf/signatures/CRLVerifier;->setOnlineCheckingAllowed(Z)V

    .line 276
    move-object v4, v3

    check-cast v4, Ljava/security/cert/X509CRL;

    invoke-virtual {v2, v4, v0, p2, p3}, Lcom/itextpdf/signatures/CRLVerifier;->verify(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 279
    .end local v2    # "crlVerifier":Lcom/itextpdf/signatures/CRLVerifier;
    goto :goto_4

    .line 277
    .restart local v2    # "crlVerifier":Lcom/itextpdf/signatures/CRLVerifier;
    :cond_3
    new-instance v4, Lcom/itextpdf/signatures/VerificationException;

    const-string v5, "Authorized OCSP responder certificate was revoked."

    invoke-direct {v4, p2, v5}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v4

    .line 280
    .end local v2    # "crlVerifier":Lcom/itextpdf/signatures/CRLVerifier;
    :cond_4
    const-class v2, Lcom/itextpdf/signatures/OCSPVerifier;

    invoke-static {v2}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v2

    .line 281
    .local v2, "logger":Lorg/slf4j/Logger;
    const-string v4, "Authorized OCSP responder certificate revocation status cannot be checked"

    invoke-interface {v2, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;)V

    .line 287
    .end local v1    # "certs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/cert/X509Certificate;>;"
    .end local v2    # "logger":Lorg/slf4j/Logger;
    .end local v3    # "crl":Ljava/security/cert/CRL;
    :cond_5
    :goto_4
    goto :goto_8

    .line 246
    .restart local v1    # "certs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/cert/X509Certificate;>;"
    :cond_6
    new-instance v2, Lcom/itextpdf/signatures/VerificationException;

    const-string v3, "OCSP response could not be verified"

    invoke-direct {v2, p2, v3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v2

    .line 294
    .end local v1    # "certs":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/cert/X509Certificate;>;"
    :cond_7
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    if-eqz v1, :cond_a

    .line 296
    :try_start_2
    iget-object v1, p0, Lcom/itextpdf/signatures/OCSPVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_5
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 297
    .local v3, "anchor":Ljava/security/cert/X509Certificate;
    invoke-virtual {p0, p1, v3}, Lcom/itextpdf/signatures/OCSPVerifier;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;)Z

    move-result v4
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    if-eqz v4, :cond_8

    .line 299
    move-object v0, v3

    .line 300
    goto :goto_6

    .line 302
    .end local v3    # "anchor":Ljava/security/cert/X509Certificate;
    :cond_8
    goto :goto_5

    .line 305
    :cond_9
    :goto_6
    goto :goto_7

    .line 303
    :catch_2
    move-exception v1

    .line 304
    .local v1, "e":Ljava/lang/Exception;
    move-object v0, v2

    check-cast v0, Ljava/security/cert/X509Certificate;

    .line 308
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_a
    :goto_7
    if-eqz v0, :cond_b

    goto :goto_8

    .line 309
    :cond_b
    new-instance v1, Lcom/itextpdf/signatures/VerificationException;

    const-string v2, "OCSP response could not be verified: it does not contain certificate chain and response is not signed by issuer certificate or any from the root store."

    invoke-direct {v1, p2, v2}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v1

    .line 313
    :cond_c
    :goto_8
    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 7
    .param p1, "signCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "signDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Date;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 106
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    const/4 v1, 0x0

    .line 108
    .local v1, "validOCSPsFound":I
    iget-object v2, p0, Lcom/itextpdf/signatures/OCSPVerifier;->ocsps:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 109
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    .line 110
    .local v3, "ocspResp":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 111
    add-int/lit8 v1, v1, 0x1

    .line 112
    .end local v3    # "ocspResp":Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    :cond_0
    goto :goto_0

    .line 115
    :cond_1
    const/4 v2, 0x0

    .line 116
    .local v2, "online":Z
    iget-boolean v3, p0, Lcom/itextpdf/signatures/OCSPVerifier;->onlineCheckingAllowed:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 117
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/OCSPVerifier;->getOcspResponse(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 118
    add-int/lit8 v1, v1, 0x1

    .line 119
    const/4 v2, 0x1

    .line 123
    :cond_2
    sget-object v3, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Valid OCSPs found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 124
    if-lez v1, :cond_4

    .line 125
    new-instance v3, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Valid OCSPs Found: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    if-eqz v2, :cond_3

    const-string v6, " (online)"

    goto :goto_1

    :cond_3
    const-string v6, ""

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, p1, v4, v5}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/signatures/OCSPVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    if-eqz v3, :cond_5

    .line 127
    iget-object v3, p0, Lcom/itextpdf/signatures/OCSPVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    invoke-virtual {v3, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 129
    :cond_5
    return-object v0
.end method

.method public verify(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z
    .locals 10
    .param p1, "ocspResp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p2, "signCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "signDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 145
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 146
    return v0

    .line 148
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;->getResponses()[Lorg/bouncycastle/cert/ocsp/SingleResp;

    move-result-object v1

    .line 149
    .local v1, "resp":[Lorg/bouncycastle/cert/ocsp/SingleResp;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    if-ge v2, v3, :cond_8

    .line 151
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v3

    aget-object v4, v1, v2

    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v4

    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/CertificateID;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/math/BigInteger;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 152
    goto/16 :goto_2

    .line 156
    :cond_1
    if-nez p3, :cond_2

    move-object p3, p2

    .line 157
    :cond_2
    :try_start_0
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertID()Lorg/bouncycastle/cert/ocsp/CertificateID;

    move-result-object v3

    invoke-static {v3, p3}, Lcom/itextpdf/signatures/SignUtils;->checkIfIssuersMatch(Lorg/bouncycastle/cert/ocsp/CertificateID;Ljava/security/cert/X509Certificate;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 158
    sget-object v3, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "OCSP: Issuers doesn\'t match."

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/bouncycastle/cert/ocsp/OCSPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    goto :goto_2

    .line 163
    :cond_3
    nop

    .line 165
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    const/4 v4, 0x2

    const-string v5, "OCSP no longer valid: {0} after {1}"

    const/4 v6, 0x1

    if-nez v3, :cond_5

    .line 166
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getThisUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/signatures/SignUtils;->add180Sec(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v3

    .line 167
    .local v3, "nextUpdate":Ljava/util/Date;
    sget-object v7, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-array v8, v6, [Ljava/lang/Object;

    aput-object v3, v8, v0

    const-string v9, "No \'next update\' for OCSP Response; assuming {0}"

    invoke-static {v9, v8}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-interface {v7, v8}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 169
    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v0

    aput-object v3, v4, v6

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v7, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 170
    goto :goto_2

    .line 172
    .end local v3    # "nextUpdate":Ljava/util/Date;
    :cond_4
    goto :goto_1

    .line 173
    :cond_5
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {p4, v3}, Ljava/util/Date;->after(Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 174
    sget-object v3, Lcom/itextpdf/signatures/OCSPVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p4, v4, v0

    aget-object v7, v1, v2

    invoke-virtual {v7}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getNextUpdate()Ljava/util/Date;

    move-result-object v7

    aput-object v7, v4, v6

    invoke-static {v5, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 175
    goto :goto_2

    .line 179
    :cond_6
    :goto_1
    aget-object v3, v1, v2

    invoke-virtual {v3}, Lorg/bouncycastle/cert/ocsp/SingleResp;->getCertStatus()Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    move-result-object v3

    .line 180
    .local v3, "status":Ljava/lang/Object;
    sget-object v4, Lorg/bouncycastle/cert/ocsp/CertificateStatus;->GOOD:Lorg/bouncycastle/cert/ocsp/CertificateStatus;

    if-ne v3, v4, :cond_7

    .line 182
    invoke-virtual {p0, p1, p3, p4}, Lcom/itextpdf/signatures/OCSPVerifier;->isValidResponse(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/X509Certificate;Ljava/util/Date;)V

    .line 183
    return v6

    .line 161
    .end local v3    # "status":Ljava/lang/Object;
    :catch_0
    move-exception v3

    .line 162
    .local v3, "e":Lorg/bouncycastle/cert/ocsp/OCSPException;
    nop

    .line 149
    .end local v3    # "e":Lorg/bouncycastle/cert/ocsp/OCSPException;
    :cond_7
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 186
    .end local v2    # "i":I
    :cond_8
    return v0
.end method
