.class public Lcom/itextpdf/signatures/LtvVerifier;
.super Lcom/itextpdf/signatures/RootStoreVerifier;
.source "LtvVerifier.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field protected acroForm:Lcom/itextpdf/forms/PdfAcroForm;

.field protected document:Lcom/itextpdf/kernel/pdf/PdfDocument;

.field protected dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

.field protected latestRevision:Z

.field protected metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

.field protected option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

.field protected pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

.field protected securityProviderCode:Ljava/lang/String;

.field private sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

.field protected signDate:Ljava/util/Date;

.field protected signatureName:Ljava/lang/String;

.field protected verifyRootCertificate:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 81
    const-class v0, Lcom/itextpdf/signatures/LtvVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 115
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 84
    sget-object v1, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    .line 99
    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 103
    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    .line 116
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/LtvVerifier;->initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 117
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)V
    .locals 2
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "securityProviderCode"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 119
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 84
    sget-object v1, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->SIGNING_CERTIFICATE:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    .line 86
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    .line 99
    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 103
    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    .line 120
    iput-object p2, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    .line 121
    invoke-virtual {p0, p1}, Lcom/itextpdf/signatures/LtvVerifier;->initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 122
    return-void
.end method


# virtual methods
.method protected coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 374
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->securityProviderCode:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;->readSignatureData(Ljava/lang/String;Ljava/lang/String;)Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v0

    .line 375
    .local v0, "pkcs7":Lcom/itextpdf/signatures/PdfPKCS7;
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/SignatureUtil;->signatureCoversWholeDocument(Ljava/lang/String;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 376
    sget-object v1, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "The timestamp covers whole document."

    invoke-interface {v1, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 381
    invoke-virtual {v0}, Lcom/itextpdf/signatures/PdfPKCS7;->verifySignatureIntegrityAndAuthenticity()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 382
    const-string v2, "The signed document has not been modified."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 383
    return-object v0

    .line 386
    :cond_0
    new-instance v1, Lcom/itextpdf/signatures/VerificationException;

    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    const-string v3, "The document was altered after the final signature was applied."

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v1

    .line 379
    :cond_1
    new-instance v1, Lcom/itextpdf/signatures/VerificationException;

    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    const-string v3, "Signature doesn\'t cover whole document."

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v1
.end method

.method public getCRLsFromDSS()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 317
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 318
    .local v0, "crls":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509CRL;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v1, :cond_0

    .line 319
    return-object v0

    .line 320
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->CRLs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 321
    .local v1, "crlarray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v1, :cond_1

    .line 322
    return-object v0

    .line 323
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 324
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    .line 325
    .local v3, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v4, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-static {v4}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509CRL;

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    .end local v3    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 327
    .end local v2    # "i":I
    :cond_2
    return-object v0
.end method

.method public getOCSPResponsesFromDSS()Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 337
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 338
    .local v0, "ocsps":Ljava/util/List;, "Ljava/util/List<Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    if-nez v1, :cond_0

    .line 339
    return-object v0

    .line 340
    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->OCSPs:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsArray(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 341
    .local v1, "ocsparray":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-nez v1, :cond_1

    .line 342
    return-object v0

    .line 343
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 344
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsStream(I)Lcom/itextpdf/kernel/pdf/PdfStream;

    move-result-object v3

    .line 345
    .local v3, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    new-instance v4, Lorg/bouncycastle/cert/ocsp/OCSPResp;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/bouncycastle/cert/ocsp/OCSPResp;-><init>([B)V

    .line 346
    .local v4, "ocspResponse":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getStatus()I

    move-result v5

    if-nez v5, :cond_2

    .line 348
    :try_start_0
    invoke-virtual {v4}, Lorg/bouncycastle/cert/ocsp/OCSPResp;->getResponseObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/bouncycastle/cert/ocsp/OCSPException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    goto :goto_1

    .line 349
    :catch_0
    move-exception v5

    .line 350
    .local v5, "e":Lorg/bouncycastle/cert/ocsp/OCSPException;
    new-instance v6, Ljava/security/GeneralSecurityException;

    invoke-virtual {v5}, Lorg/bouncycastle/cert/ocsp/OCSPException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 343
    .end local v3    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v4    # "ocspResponse":Lorg/bouncycastle/cert/ocsp/OCSPResp;
    .end local v5    # "e":Lorg/bouncycastle/cert/ocsp/OCSPException;
    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 353
    .end local v2    # "i":I
    :cond_3
    return-object v0
.end method

.method protected initLtvVerifier(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 6
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 357
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 358
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v1

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 359
    new-instance v1, Lcom/itextpdf/signatures/SignatureUtil;

    invoke-direct {v1, p1}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    .line 360
    invoke-virtual {v1}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v1

    .line 361
    .local v1, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 362
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeDate()Ljava/util/Date;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    .line 363
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    .line 364
    sget-object v3, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp()Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, "document-level timestamp "

    goto :goto_0

    :cond_0
    const-string v2, ""

    :goto_0
    const/4 v5, 0x0

    aput-object v2, v4, v5

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    aput-object v2, v4, v0

    const-string v0, "Checking {0}signature {1}"

    invoke-static {v0, v4}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v3, v0}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 365
    return-void
.end method

.method public setCertificateOption(Lcom/itextpdf/signatures/LtvVerification$CertificateOption;)V
    .locals 0
    .param p1, "option"    # Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    .line 137
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    .line 138
    return-void
.end method

.method public setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)V
    .locals 0
    .param p1, "metaInfo"    # Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 155
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    .line 156
    return-void
.end method

.method public setVerifier(Lcom/itextpdf/signatures/CertificateVerifier;)V
    .locals 0
    .param p1, "verifier"    # Lcom/itextpdf/signatures/CertificateVerifier;

    .line 129
    iput-object p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    .line 130
    return-void
.end method

.method public setVerifyRootCertificate(Z)V
    .locals 0
    .param p1, "verifyRootCertificate"    # Z

    .line 146
    iput-boolean p1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    .line 147
    return-void
.end method

.method public switchToPreviousRevision()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 283
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Switching to previous revision."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 284
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    .line 285
    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->DSS:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    iput-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->dss:Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 286
    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v2}, Lcom/itextpdf/signatures/PdfPKCS7;->getTimeStampDate()Ljava/util/Calendar;

    move-result-object v2

    .line 287
    .local v2, "cal":Ljava/util/Calendar;
    sget-object v3, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    if-ne v2, v3, :cond_0

    .line 288
    iget-object v3, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v3}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignDate()Ljava/util/Calendar;

    move-result-object v2

    .line 291
    :cond_0
    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    iput-object v3, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    .line 292
    iget-object v3, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    invoke-virtual {v3}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v3

    .line 293
    .local v3, "names":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_2

    .line 294
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    const/4 v6, 0x2

    sub-int/2addr v4, v6

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 295
    new-instance v4, Lcom/itextpdf/kernel/pdf/PdfDocument;

    new-instance v7, Lcom/itextpdf/kernel/pdf/PdfReader;

    iget-object v8, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v9, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Lcom/itextpdf/signatures/SignatureUtil;->extractRevision(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/itextpdf/kernel/pdf/PdfReader;-><init>(Ljava/io/InputStream;)V

    new-instance v8, Lcom/itextpdf/kernel/pdf/DocumentProperties;

    invoke-direct {v8}, Lcom/itextpdf/kernel/pdf/DocumentProperties;-><init>()V

    iget-object v9, p0, Lcom/itextpdf/signatures/LtvVerifier;->metaInfo:Lcom/itextpdf/kernel/counter/event/IMetaInfo;

    invoke-virtual {v8, v9}, Lcom/itextpdf/kernel/pdf/DocumentProperties;->setEventCountingMetaInfo(Lcom/itextpdf/kernel/counter/event/IMetaInfo;)Lcom/itextpdf/kernel/pdf/DocumentProperties;

    move-result-object v8

    invoke-direct {v4, v7, v8}, Lcom/itextpdf/kernel/pdf/PdfDocument;-><init>(Lcom/itextpdf/kernel/pdf/PdfReader;Lcom/itextpdf/kernel/pdf/DocumentProperties;)V

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 296
    invoke-static {v4, v5}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->acroForm:Lcom/itextpdf/forms/PdfAcroForm;

    .line 297
    new-instance v4, Lcom/itextpdf/signatures/SignatureUtil;

    iget-object v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->document:Lcom/itextpdf/kernel/pdf/PdfDocument;

    invoke-direct {v4, v7}, Lcom/itextpdf/signatures/SignatureUtil;-><init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->sgnUtil:Lcom/itextpdf/signatures/SignatureUtil;

    .line 298
    invoke-virtual {v4}, Lcom/itextpdf/signatures/SignatureUtil;->getSignatureNames()Ljava/util/List;

    move-result-object v3

    .line 299
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v5

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    .line 300
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->coversWholeDocument()Lcom/itextpdf/signatures/PdfPKCS7;

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    .line 301
    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4}, Lcom/itextpdf/signatures/PdfPKCS7;->isTsp()Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, "document-level timestamp "

    goto :goto_0

    :cond_1
    const-string v4, ""

    :goto_0
    aput-object v4, v6, v1

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->signatureName:Ljava/lang/String;

    aput-object v1, v6, v5

    const-string v1, "Checking {0}signature {1}"

    invoke-static {v1, v6}, Lcom/itextpdf/io/util/MessageFormatUtil;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_1

    .line 304
    :cond_2
    const-string v1, "No signatures in revision"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 305
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    .line 307
    :goto_1
    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 6
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

    .line 263
    new-instance v0, Lcom/itextpdf/signatures/RootStoreVerifier;

    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 264
    .local v0, "rootStoreVerifier":Lcom/itextpdf/signatures/RootStoreVerifier;
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v0, v1}, Lcom/itextpdf/signatures/RootStoreVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 266
    new-instance v1, Lcom/itextpdf/signatures/CRLVerifier;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->getCRLsFromDSS()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/signatures/CRLVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    .line 267
    .local v1, "crlVerifier":Lcom/itextpdf/signatures/CRLVerifier;
    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CRLVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 268
    iget-boolean v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v2, :cond_1

    iget-boolean v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->onlineCheckingAllowed:Z

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v2, v4

    :goto_1
    invoke-virtual {v1, v2}, Lcom/itextpdf/signatures/CRLVerifier;->setOnlineCheckingAllowed(Z)V

    .line 270
    new-instance v2, Lcom/itextpdf/signatures/OCSPVerifier;

    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->getOCSPResponsesFromDSS()Ljava/util/List;

    move-result-object v5

    invoke-direct {v2, v1, v5}, Lcom/itextpdf/signatures/OCSPVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;Ljava/util/List;)V

    .line 271
    .local v2, "ocspVerifier":Lcom/itextpdf/signatures/OCSPVerifier;
    iget-object v5, p0, Lcom/itextpdf/signatures/LtvVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-virtual {v2, v5}, Lcom/itextpdf/signatures/OCSPVerifier;->setRootStore(Ljava/security/KeyStore;)V

    .line 272
    iget-boolean v5, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    if-nez v5, :cond_2

    iget-boolean v5, p0, Lcom/itextpdf/signatures/LtvVerifier;->onlineCheckingAllowed:Z

    if-eqz v5, :cond_3

    :cond_2
    move v3, v4

    :cond_3
    invoke-virtual {v2, v3}, Lcom/itextpdf/signatures/OCSPVerifier;->setOnlineCheckingAllowed(Z)V

    .line 274
    invoke-virtual {v2, p1, p2, p3}, Lcom/itextpdf/signatures/OCSPVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    return-object v3
.end method

.method public verify(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationOK;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 167
    .local p1, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    if-nez p1, :cond_0

    .line 168
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object p1, v0

    .line 169
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    if-eqz v0, :cond_1

    .line 170
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->verifySignature()Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 172
    :cond_1
    return-object p1
.end method

.method public verifyChain([Ljava/security/cert/Certificate;)V
    .locals 4
    .param p1, "chain"    # [Ljava/security/cert/Certificate;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 240
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 241
    aget-object v1, p1, v0

    check-cast v1, Ljava/security/cert/X509Certificate;

    .line 243
    .local v1, "cert":Ljava/security/cert/X509Certificate;
    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {v1, v2}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 245
    if-lez v0, :cond_0

    .line 246
    add-int/lit8 v2, v0, -0x1

    aget-object v2, p1, v2

    aget-object v3, p1, v0

    invoke-virtual {v3}, Ljava/security/cert/Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/security/cert/Certificate;->verify(Ljava/security/PublicKey;)V

    .line 240
    .end local v1    # "cert":Ljava/security/cert/X509Certificate;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    .end local v0    # "i":I
    :cond_1
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "All certificates are valid on "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {v2}, Ljava/util/Date;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 249
    return-void
.end method

.method public verifySignature()Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
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

    .line 183
    sget-object v0, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v1, "Verifying signature."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 184
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 186
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/LtvVerifier;->pkcs7:Lcom/itextpdf/signatures/PdfPKCS7;

    invoke-virtual {v1}, Lcom/itextpdf/signatures/PdfPKCS7;->getSignCertificateChain()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 187
    .local v1, "chain":[Ljava/security/cert/Certificate;
    invoke-virtual {p0, v1}, Lcom/itextpdf/signatures/LtvVerifier;->verifyChain([Ljava/security/cert/Certificate;)V

    .line 189
    const/4 v2, 0x1

    .line 190
    .local v2, "total":I
    sget-object v3, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->WHOLE_CHAIN:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    iget-object v4, p0, Lcom/itextpdf/signatures/LtvVerifier;->option:Lcom/itextpdf/signatures/LtvVerification$CertificateOption;

    invoke-virtual {v3, v4}, Lcom/itextpdf/signatures/LtvVerification$CertificateOption;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 191
    array-length v2, v1

    .line 196
    :cond_0
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_7

    .line 198
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    aget-object v3, v1, v3

    check-cast v3, Ljava/security/cert/X509Certificate;

    .line 200
    .local v3, "signCert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 201
    .local v5, "issuerCert":Ljava/security/cert/X509Certificate;
    array-length v6, v1

    if-ge v4, v6, :cond_1

    .line 202
    aget-object v6, v1, v4

    move-object v5, v6

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 204
    :cond_1
    sget-object v6, Lcom/itextpdf/signatures/LtvVerifier;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v7

    invoke-interface {v7}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 205
    iget-object v6, p0, Lcom/itextpdf/signatures/LtvVerifier;->signDate:Ljava/util/Date;

    invoke-virtual {p0, v3, v5, v6}, Lcom/itextpdf/signatures/LtvVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v6

    .line 206
    .local v6, "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_6

    .line 208
    :try_start_0
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 209
    iget-boolean v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->latestRevision:Z

    const/4 v8, 0x1

    if-eqz v7, :cond_2

    array-length v7, v1

    if-le v7, v8, :cond_2

    .line 210
    new-instance v7, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    const-string v10, "Root certificate in final revision"

    invoke-direct {v7, v3, v9, v10}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 212
    :cond_2
    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    if-nez v7, :cond_4

    iget-boolean v7, p0, Lcom/itextpdf/signatures/LtvVerifier;->verifyRootCertificate:Z

    if-nez v7, :cond_3

    goto :goto_1

    .line 213
    :cond_3
    new-instance v7, Ljava/security/GeneralSecurityException;

    invoke-direct {v7}, Ljava/security/GeneralSecurityException;-><init>()V

    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    .end local v1    # "chain":[Ljava/security/cert/Certificate;
    .end local v2    # "total":I
    .end local v3    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "i":I
    .end local v5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    throw v7

    .line 215
    .restart local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    .restart local v1    # "chain":[Ljava/security/cert/Certificate;
    .restart local v2    # "total":I
    .restart local v3    # "signCert":Ljava/security/cert/X509Certificate;
    .restart local v4    # "i":I
    .restart local v5    # "issuerCert":Ljava/security/cert/X509Certificate;
    .restart local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    :cond_4
    :goto_1
    array-length v7, v1

    if-le v7, v8, :cond_5

    .line 216
    new-instance v7, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    const-string v9, "Root certificate passed without checking"

    invoke-direct {v7, v3, v8, v9}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 220
    :cond_5
    goto :goto_2

    .line 218
    :catch_0
    move-exception v7

    .line 219
    .local v7, "e":Ljava/security/GeneralSecurityException;
    new-instance v8, Lcom/itextpdf/signatures/VerificationException;

    const-string v9, "Couldn\'t verify with CRL or OCSP or trusted anchor"

    invoke-direct {v8, v3, v9}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v8

    .line 222
    .end local v7    # "e":Ljava/security/GeneralSecurityException;
    :cond_6
    :goto_2
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 223
    .end local v6    # "list":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    move v3, v4

    goto :goto_0

    .line 225
    .end local v3    # "signCert":Ljava/security/cert/X509Certificate;
    .end local v4    # "i":I
    .end local v5    # "issuerCert":Ljava/security/cert/X509Certificate;
    :cond_7
    invoke-virtual {p0}, Lcom/itextpdf/signatures/LtvVerifier;->switchToPreviousRevision()V

    .line 226
    return-object v0
.end method
