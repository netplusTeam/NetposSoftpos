.class public Lcom/itextpdf/signatures/LtvVerification;
.super Ljava/lang/Object;
.source "LtvVerification.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/LtvVerification$ValidationData;,
        Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;,
        Lcom/itextpdf/signatures/LtvVerification$CertificateOption;,
        Lcom/itextpdf/signatures/LtvVerification$Level;
    }
.end annotation


# instance fields
.field private LOGGER:Lorg/slf4j/Logger;

.field private acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field private document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field private securityProviderCode:Ljava/lang/String;

.field private sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

.field private used:Z

.field private validated:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/itextpdf/kernel/pdf/PdfName;",
            "Lcom/itextpdf/signatures/LtvVerification$ValidationData;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 95
    const-class v0, Lcom/itextpdf/signatures/LtvVerification;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    .line 100
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    .line 101
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    .line 102
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    .line 161
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 162
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 163
    new-instance v0, Lcom/itextpdf/signatures/SignatureUtil;

    invoke-direct {v0, p1}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    .line 164
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "securityProviderCode"    # Ljava/lang/String;

    .line 175
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/LtvVerification;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 176
    iput-object p2, p0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    .line 177
    return-void
.end method

.method private static buildOCSPResponse([B)[B
    .locals 5
    .param p0, "basicOcspResponse"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 304
    new-instance v0, Lorg/bouncycastle/asn1/DEROctetString;

    invoke-direct {v0, p0}, Lorg/bouncycastle/asn1/DEROctetString;-><init>([B)V

    .line 305
    .local v0, "doctet":Lorg/bouncycastle/asn1/DEROctetString;
    new-instance v1, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;-><init>(I)V

    .line 306
    .local v1, "respStatus":Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;
    new-instance v2, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;

    sget-object v3, Lorg/bouncycastle/asn1/ocsp/OCSPObjectIdentifiers;->id_pkix_ocsp_basic:Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;

    invoke-direct {v2, v3, v0}, Lorg/bouncycastle/asn1/ocsp/ResponseBytes;-><init>(Lorg/bouncycastle/asn1/ASN1ObjectIdentifier;Lorg/bouncycastle/asn1/ASN1OctetString;)V

    .line 307
    .local v2, "responseBytes":Lorg/bouncycastle/asn1/ocsp/ResponseBytes;
    new-instance v3, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;

    invoke-direct {v3, v1, v2}, Lorg/bouncycastle/asn1/ocsp/OCSPResponse;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponseStatus;Lorg/bouncycastle/asn1/ocsp/ResponseBytes;)V

    .line 308
    .local v3, "ocspResponse":Lorg/bouncycastle/asn1/ocsp/OCSPResponse;
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-direct {v4, v3}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>(Lorg/bouncycastle/asn1/ocsp/OCSPResponse;)V

    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getEncoded()[B

    move-result-object v4

    return-object v4
.end method

.method public static convertToHex([B)Ljava/lang/String;
    .locals 4
    .param p0, "bytes"    # [B

    .line 496
    new-instance v0, Lcom/itextpdf/io/source/ByteBuffer;

    invoke-direct {v0}, Lcom/itextpdf/io/source/ByteBuffer;-><init>()V

    .line 497
    .local v0, "buf":Lcom/itextpdf/io/source/ByteBuffer;
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-byte v3, p0, v2

    .line 498
    .local v3, "b":B
    invoke-virtual {v0, v3}, Lcom/itextpdf/io/source/ByteBuffer;->appendHex(B)Lcom/itextpdf/io/source/ByteBuffer;

    .line 497
    .end local v3    # "b":B
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/io/source/ByteBuffer;->toByteArray()[B

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/itextpdf/io/font/PdfEncodings;->convertToString([BLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private createDss()V
    .locals 6

    .line 410
    new-instance v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v4}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v5}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/itextpdf/signatures/LtvVerification;->outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 411
    return-void
.end method

.method private static deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 7
    .param p0, "all"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "toDelete"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 385
    if-eqz p0, :cond_6

    if-nez p1, :cond_0

    goto :goto_3

    .line 387
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfArray;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 388
    .local v1, "pi":Lcom/itextpdf/kernel/pdf/PdfObject;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v2

    .line 390
    .local v2, "pir":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-nez v2, :cond_1

    .line 391
    goto :goto_0

    .line 394
    :cond_1
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v4

    if-ge v3, v4, :cond_4

    .line 395
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfObject;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    .line 397
    .local v4, "pod":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    if-nez v4, :cond_2

    .line 398
    goto :goto_2

    .line 401
    :cond_2
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v5

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->getObjNumber()I

    move-result v6

    if-ne v5, v6, :cond_3

    .line 402
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->remove(I)V

    .line 403
    add-int/lit8 v3, v3, -0x1

    .line 394
    .end local v4    # "pod":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    :cond_3
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 406
    .end local v1    # "pi":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "pir":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v3    # "k":I
    :cond_4
    goto :goto_0

    .line 407
    :cond_5
    return-void

    .line 386
    :cond_6
    :goto_3
    return-void
.end method

.method private getParent(Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;
    .locals 4
    .param p1, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "certs"    # [Ljava/security/cert/Certificate;

    .line 254
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_1

    .line 255
    aget-object v1, p2, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 256
    .local v1, "parent":Ljava/security/cert/X509Certificate;
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v2

    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/security/Principal;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 257
    goto :goto_1

    .line 259
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 260
    return-object v1

    .line 261
    :catch_0
    move-exception v2

    .line 254
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 265
    .end local v0    # "i":I
    .end local v1    # "parent":Ljava/security/cert/X509Certificate;
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method private getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;
    .locals 6
    .param p1, "signatureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 312
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    invoke-virtual {v0, p1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignature(Ljava/lang/String;)Lcom/itextpdf/signatures/PdfSignature;

    move-result-object v0

    .line 313
    .local v0, "sig":Lcom/itextpdf/signatures/PdfSignature;
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    .line 314
    .local v1, "contents":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/itextpdf/io/font/PdfEncodings;->convertToBytes(Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 315
    .local v2, "bc":[B
    const/4 v3, 0x0

    .line 316
    .local v3, "bt":[B
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->ETSI_RFC3161:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfSignature;->getSubFilter()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 317
    new-instance v4, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v5, Ljava/io/ByteArrayInputStream;

    invoke-direct {v5, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v4, v5}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 318
    .local v4, "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v4}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v5

    .line 319
    .local v5, "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    invoke-virtual {v5}, Lorg/bouncycastle/asn1/ASN1Primitive;->getEncoded()[B

    move-result-object v2

    .line 321
    .end local v4    # "din":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v5    # "pkcs":Lorg/bouncycastle/asn1/ASN1Primitive;
    :cond_0
    invoke-static {v2}, Lcom/itextpdf/signatures/LtvVerification;->hashBytesSha1([B)[B

    move-result-object v3

    .line 322
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-static {v3}, Lcom/itextpdf/signatures/LtvVerification;->convertToHex([B)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/itextpdf/kernel/pdf/PdfName;-><init>(Ljava/lang/String;)V

    return-object v4
.end method

.method private static hashBytesSha1([B)[B
    .locals 2
    .param p0, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 326
    const-string v0, "SHA1"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 327
    .local v0, "sh":Ljava/security/MessageDigest;
    invoke-virtual {v0, p0}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1

    return-object v1
.end method

.method private outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V
    .locals 17
    .param p1, "dss"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p2, "vrim"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .param p3, "ocsps"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p4, "crls"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p5, "certs"    # Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 414
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v5, p5

    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v6

    .line 415
    .local v6, "catalog":Lcom/itextpdf/kernel/pdf/PdfCatalog;
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPdfVersion()Lcom/itextpdf/kernel/pdf/PdfVersion;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    invoke-virtual {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfVersion;->compareTo(Lcom/itextpdf/kernel/pdf/PdfVersion;)I

    move-result v7

    if-gez v7, :cond_0

    .line 416
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;->ESIC_1_7_EXTENSIONLEVEL5:Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->addDeveloperExtension(Lcom/itextpdf/kernel/pdf/PdfDeveloperExtension;)V

    .line 418
    :cond_0
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 419
    .local v8, "vkey":Lcom/itextpdf/kernel/pdf/PdfName;
    new-instance v9, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 420
    .local v9, "ocsp":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v10, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 421
    .local v10, "crl":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v11, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    .line 422
    .local v11, "cert":Lcom/itextpdf/kernel/pdf/PdfArray;
    new-instance v12, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    .line 423
    .local v12, "vri":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    iget-object v13, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v13, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v13, v13, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_1
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_1

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, [B

    .line 424
    .local v14, "b":[B
    new-instance v15, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v15, v14}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 425
    .local v15, "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object/from16 v16, v7

    const/4 v7, -0x1

    invoke-virtual {v15, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 426
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v15, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 427
    invoke-virtual {v10, v15}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 428
    invoke-virtual {v4, v15}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 429
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 430
    .end local v14    # "b":[B
    .end local v15    # "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    move-object/from16 v7, v16

    goto :goto_1

    .line 431
    :cond_1
    move-object/from16 v16, v7

    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v7, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 432
    .local v13, "b":[B
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 433
    .local v14, "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 434
    invoke-virtual {v9, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 435
    invoke-virtual {v3, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 436
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 437
    .end local v13    # "b":[B
    .end local v14    # "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    goto :goto_2

    .line 438
    :cond_2
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    iget-object v7, v7, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [B

    .line 439
    .restart local v13    # "b":[B
    new-instance v14, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-direct {v14, v13}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 440
    .restart local v14    # "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    const/4 v15, -0x1

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 441
    iget-object v15, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v14, v15}, Lcom/itextpdf/kernel/pdf/PdfStream;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 442
    invoke-virtual {v11, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 443
    invoke-virtual {v5, v14}, Lcom/itextpdf/kernel/pdf/PdfArray;->add(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 444
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 445
    .end local v13    # "b":[B
    .end local v14    # "ps":Lcom/itextpdf/kernel/pdf/PdfStream;
    goto :goto_3

    .line 446
    :cond_3
    invoke-virtual {v9}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_4

    .line 447
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v9, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 448
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCSP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 450
    :cond_4
    invoke-virtual {v10}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_5

    .line 451
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v10, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 452
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CRL:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v10}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 454
    :cond_5
    invoke-virtual {v11}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_6

    .line 455
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v11, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 456
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v12, v7, v11}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 458
    :cond_6
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v12, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 459
    invoke-virtual {v2, v8, v12}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 460
    .end local v8    # "vkey":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v9    # "ocsp":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v10    # "crl":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v11    # "cert":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v12    # "vri":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    move-object/from16 v7, v16

    goto/16 :goto_0

    .line 461
    :cond_7
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 462
    invoke-virtual/range {p2 .. p2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 463
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->VRI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 464
    invoke-virtual/range {p3 .. p3}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_8

    .line 465
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 466
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 468
    :cond_8
    invoke-virtual/range {p4 .. p4}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_9

    .line 469
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v4, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 470
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 472
    :cond_9
    invoke-virtual/range {p5 .. p5}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v7

    if-lez v7, :cond_a

    .line 473
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 474
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v7, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 477
    :cond_a
    iget-object v7, v0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v1, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->makeIndirect(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 478
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 479
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v6, v7, v1}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfCatalog;

    .line 480
    return-void
.end method

.method private updateDss()V
    .locals 12

    .line 346
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 347
    .local v0, "catalog":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 348
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 349
    .local v1, "dss":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    .line 350
    .local v2, "ocsps":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 351
    .local v3, "crls":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v4

    .line 352
    .local v4, "certs":Lcom/itextpdf/kernel/pdf/PdfArray;
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 353
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 354
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Certs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->remove(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 355
    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->VRI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v5

    .line 357
    .local v5, "vrim":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v5, :cond_1

    .line 358
    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->keySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfName;

    .line 359
    .local v7, "n":Lcom/itextpdf/kernel/pdf/PdfName;
    iget-object v8, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v8, v7}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 360
    invoke-virtual {v5, v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v8

    .line 361
    .local v8, "vri":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v8, :cond_0

    .line 362
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->OCSP:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    invoke-static {v2, v9}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 363
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->CRL:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    invoke-static {v3, v9}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 364
    sget-object v9, Lcom/itextpdf/kernel/pdf/PdfName;->Cert:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v9

    invoke-static {v4, v9}, Lcom/itextpdf/signatures/LtvVerification;->deleteOldReferences(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 367
    .end local v7    # "n":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v8    # "vri":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :cond_0
    goto :goto_0

    .line 369
    :cond_1
    if-nez v2, :cond_2

    .line 370
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v6}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v2, v6

    move-object v8, v2

    goto :goto_1

    .line 369
    :cond_2
    move-object v8, v2

    .line 372
    .end local v2    # "ocsps":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v8, "ocsps":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_1
    if-nez v3, :cond_3

    .line 373
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v3, v2

    move-object v9, v3

    goto :goto_2

    .line 372
    :cond_3
    move-object v9, v3

    .line 375
    .end local v3    # "crls":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v9, "crls":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_2
    if-nez v4, :cond_4

    .line 376
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>()V

    move-object v4, v2

    move-object v10, v4

    goto :goto_3

    .line 375
    :cond_4
    move-object v10, v4

    .line 378
    .end local v4    # "certs":Lcom/itextpdf/kernel/pdf/PdfArray;
    .local v10, "certs":Lcom/itextpdf/kernel/pdf/PdfArray;
    :goto_3
    if-nez v5, :cond_5

    .line 379
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-direct {v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;-><init>()V

    move-object v5, v2

    move-object v11, v5

    goto :goto_4

    .line 378
    :cond_5
    move-object v11, v5

    .line 381
    .end local v5    # "vrim":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .local v11, "vrim":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    :goto_4
    move-object v2, p0

    move-object v3, v1

    move-object v4, v11

    move-object v5, v8

    move-object v6, v9

    move-object v7, v10

    invoke-direct/range {v2 .. v7}, Lcom/itextpdf/signatures/LtvVerification;->outputDss(Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfDictionary;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/kernel/pdf/PdfArray;)V

    .line 382
    return-void
.end method


# virtual methods
.method public addVerification(Ljava/lang/String;Lcom/itextpdf/signatures/IOcspClient;Lcom/itextpdf/signatures/ICrlClient;Lcom/itextpdf/signatures/LtvVerification$CertificateOption;Lcom/itextpdf/signatures/LtvVerification$Level;Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;)Z
    .locals 19
    .param p1, "signatureName"    # Ljava/lang/String;
    .param p2, "ocsp"    # Lcom/itextpdf/signatures/IOcspClient;
    .param p3, "crl"    # Lcom/itextpdf/signatures/ICrlClient;
    .param p4, "certOption"    # Lcom/itextpdf/signatures/LtvVerification$CertificateOption;
    .param p5, "level"    # Lcom/itextpdf/signatures/LtvVerification$Level;
    .param p6, "certInclude"    # Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 194
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p5

    iget-boolean v5, v0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v5, :cond_a

    .line 196
    iget-object v5, v0, Lcom/itextpdf/signatures/LtvVerification;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->securityProviderCode:Ljava/lang/String;

    invoke-virtual {v5, v1, v6}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v5

    .line 197
    .local v5, "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    iget-object v6, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Adding verification for "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 198
    invoke-virtual {v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getCertificates()[Ljava/security/cert/Certificate;

    move-result-object v6

    .line 200
    .local v6, "xc":[Ljava/security/cert/Certificate;
    invoke-virtual {v5}, Lcom/itextpdf/signatures/PdfPKCS7;->getSigningCertificate()Ljava/security/cert/X509Certificate;

    move-result-object v7

    .line 201
    .local v7, "signingCert":Ljava/security/cert/X509Certificate;
    new-instance v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    const/4 v9, 0x0

    invoke-direct {v8, v9}, Lcom/itextpdf/signatures/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/signatures/LtvVerification$1;)V

    .line 202
    .local v8, "vd":Lcom/itextpdf/signatures/LtvVerification$ValidationData;
    const/4 v10, 0x0

    .local v10, "k":I
    :goto_0
    array-length v11, v6

    if-ge v10, v11, :cond_8

    .line 203
    aget-object v11, v6, v10

    check-cast v11, Ljava/security/cert/X509Certificate;

    .line 204
    .local v11, "cert":Ljava/security/cert/X509Certificate;
    iget-object v12, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "Certificate: "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v12, v13}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 205
    sget-object v12, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    move-object/from16 v13, p4

    if-ne v13, v12, :cond_0

    .line 206
    invoke-virtual {v11, v7}, Ljava/security/cert/X509Certificate;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_0

    .line 207
    move-object/from16 v2, p6

    goto/16 :goto_4

    .line 209
    :cond_0
    const/4 v12, 0x0

    .line 210
    .local v12, "ocspEnc":[B
    if-eqz v2, :cond_1

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v14, :cond_1

    .line 211
    invoke-direct {v0, v11, v6}, Lcom/itextpdf/signatures/LtvVerification;->getParent(Ljava/security/cert/X509Certificate;[Ljava/security/cert/Certificate;)Ljava/security/cert/X509Certificate;

    move-result-object v14

    invoke-interface {v2, v11, v14, v9}, Lcom/itextpdf/signatures/IOcspClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/lang/String;)[B

    move-result-object v12

    .line 212
    if-eqz v12, :cond_1

    .line 213
    iget-object v14, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-static {v12}, Lcom/itextpdf/signatures/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 214
    iget-object v14, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    const-string v15, "OCSP added"

    invoke-interface {v14, v15}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 217
    :cond_1
    if-eqz v3, :cond_6

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v14, :cond_2

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-eq v4, v14, :cond_2

    sget-object v14, Lcom/itextpdf/signatures/LtvVerification$Level;->OCSP_OPTIONAL_CRL:Lcom/itextpdf/signatures/LtvVerification$Level;

    if-ne v4, v14, :cond_6

    if-nez v12, :cond_6

    .line 218
    :cond_2
    invoke-interface {v3, v11, v9}, Lcom/itextpdf/signatures/ICrlClient;->getEncoded(Ljava/security/cert/X509Certificate;Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v14

    .line 219
    .local v14, "cims":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    if-eqz v14, :cond_6

    .line 220
    invoke-interface {v14}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v15

    :goto_1
    invoke-interface {v15}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_6

    invoke-interface {v15}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    move-object/from16 v9, v16

    check-cast v9, [B

    .line 221
    .local v9, "cim":[B
    const/16 v16, 0x0

    .line 222
    .local v16, "dup":Z
    iget-object v1, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v18, v1

    move-object/from16 v1, v17

    check-cast v1, [B

    .line 223
    .local v1, "b":[B
    invoke-static {v1, v9}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v17

    if-eqz v17, :cond_3

    .line 224
    const/16 v16, 0x1

    .line 225
    goto :goto_3

    .line 227
    .end local v1    # "b":[B
    :cond_3
    move-object/from16 v1, v18

    goto :goto_2

    .line 228
    :cond_4
    :goto_3
    if-nez v16, :cond_5

    .line 229
    iget-object v1, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 230
    iget-object v1, v0, Lcom/itextpdf/signatures/LtvVerification;->LOGGER:Lorg/slf4j/Logger;

    const-string v2, "CRL added"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 232
    .end local v9    # "cim":[B
    .end local v16    # "dup":Z
    :cond_5
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v9, 0x0

    goto :goto_1

    .line 235
    .end local v14    # "cims":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    :cond_6
    sget-object v1, Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;->YES:Lcom/itextpdf/signatures/LtvVerification$CertificateInclusion;

    move-object/from16 v2, p6

    if-ne v2, v1, :cond_7

    .line 236
    iget-object v1, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-virtual {v11}, Ljava/security/cert/X509Certificate;->getEncoded()[B

    move-result-object v9

    invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 202
    .end local v12    # "ocspEnc":[B
    :cond_7
    :goto_4
    add-int/lit8 v10, v10, 0x1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v9, 0x0

    goto/16 :goto_0

    .end local v11    # "cert":Ljava/security/cert/X509Certificate;
    :cond_8
    move-object/from16 v13, p4

    move-object/from16 v2, p6

    .line 239
    .end local v10    # "k":I
    iget-object v1, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    iget-object v1, v8, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_9

    .line 240
    const/4 v1, 0x0

    return v1

    .line 241
    :cond_9
    iget-object v1, v0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-direct/range {p0 .. p1}, Lcom/itextpdf/signatures/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v9

    invoke-interface {v1, v9, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const/4 v1, 0x1

    return v1

    .line 195
    .end local v5    # "pk":Lcom/itextpdf/signatures/PdfPKCS7;
    .end local v6    # "xc":[Ljava/security/cert/Certificate;
    .end local v7    # "signingCert":Ljava/security/cert/X509Certificate;
    .end local v8    # "vd":Lcom/itextpdf/signatures/LtvVerification$ValidationData;
    :cond_a
    move-object/from16 v13, p4

    move-object/from16 v2, p6

    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v5, "Verification already output."

    invoke-direct {v1, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public addVerification(Ljava/lang/String;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .param p1, "signatureName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;",
            "Ljava/util/Collection<",
            "[B>;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 281
    .local p2, "ocsps":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p3, "crls":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    .local p4, "certs":Ljava/util/Collection;, "Ljava/util/Collection<[B>;"
    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v0, :cond_3

    .line 283
    new-instance v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/LtvVerification$ValidationData;-><init>(Lcom/itextpdf/signatures/LtvVerification$1;)V

    .line 284
    .local v0, "vd":Lcom/itextpdf/signatures/LtvVerification$ValidationData;
    if-eqz p2, :cond_0

    .line 285
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 286
    .local v2, "ocsp":[B
    iget-object v3, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->ocsps:Ljava/util/List;

    invoke-static {v2}, Lcom/itextpdf/signatures/LtvVerification;->buildOCSPResponse([B)[B

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    .end local v2    # "ocsp":[B
    goto :goto_0

    .line 289
    :cond_0
    if-eqz p3, :cond_1

    .line 290
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 291
    .local v2, "crl":[B
    iget-object v3, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->crls:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 292
    .end local v2    # "crl":[B
    goto :goto_1

    .line 294
    :cond_1
    if-eqz p4, :cond_2

    .line 295
    invoke-interface {p4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [B

    .line 296
    .local v2, "cert":[B
    iget-object v3, v0, Lcom/itextpdf/signatures/LtvVerification$ValidationData;->certs:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 297
    .end local v2    # "cert":[B
    goto :goto_2

    .line 299
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/LtvVerification;->getSignatureHashKey(Ljava/lang/String;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    const/4 v1, 0x1

    return v1

    .line 282
    .end local v0    # "vd":Lcom/itextpdf/signatures/LtvVerification$ValidationData;
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Verification already output."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public merge()V
    .locals 2

    .line 334
    iget-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->validated:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 336
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/signatures/LtvVerification;->used:Z

    .line 337
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerification;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 338
    .local v0, "catalog":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 339
    .local v1, "dss":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-nez v1, :cond_1

    .line 340
    invoke-direct {p0}, Lcom/itextpdf/signatures/LtvVerification;->createDss()V

    goto :goto_0

    .line 342
    :cond_1
    invoke-direct {p0}, Lcom/itextpdf/signatures/LtvVerification;->updateDss()V

    .line 343
    :goto_0
    return-void

    .line 335
    .end local v0    # "catalog":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    .end local v1    # "dss":Lcom/itextpdf/kernel/pdf/PdfObject;
    :cond_2
    :goto_1
    return-void
.end method
