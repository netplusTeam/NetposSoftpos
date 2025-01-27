.class public Lcom/itextpdf/signatures/CertificateInfo;
.super Ljava/lang/Object;
.source "CertificateInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/signatures/CertificateInfo$X509NameTokenizer;,
        Lcom/itextpdf/signatures/CertificateInfo$X500Name;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "enc"    # [B

    .line 386
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 387
    .local v0, "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 388
    .local v1, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    const/4 v2, 0x3

    goto :goto_0

    :cond_0
    const/4 v2, 0x2

    :goto_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 390
    .end local v0    # "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 391
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getIssuerFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 371
    :try_start_0
    new-instance v0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getIssuer([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 373
    :catch_0
    move-exception v0

    .line 374
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSubject([B)Lorg/bouncycastle/asn1/ASN1Primitive;
    .locals 3
    .param p0, "enc"    # [B

    .line 422
    :try_start_0
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-direct {v1, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {v0, v1}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>(Ljava/io/InputStream;)V

    .line 423
    .local v0, "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    .line 424
    .local v1, "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    instance-of v2, v2, Lorg/bouncycastle/asn1/ASN1TaggedObject;

    if-eqz v2, :cond_0

    const/4 v2, 0x5

    goto :goto_0

    :cond_0
    const/4 v2, 0x4

    :goto_0
    invoke-virtual {v1, v2}, Lorg/bouncycastle/asn1/ASN1Sequence;->getObjectAt(I)Lorg/bouncycastle/asn1/ASN1Encodable;

    move-result-object v2

    check-cast v2, Lorg/bouncycastle/asn1/ASN1Primitive;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 426
    .end local v0    # "in":Lorg/bouncycastle/asn1/ASN1InputStream;
    .end local v1    # "seq":Lorg/bouncycastle/asn1/ASN1Sequence;
    :catch_0
    move-exception v0

    .line 427
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static getSubjectFields(Ljava/security/cert/X509Certificate;)Lcom/itextpdf/signatures/CertificateInfo$X500Name;
    .locals 2
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;

    .line 405
    if-eqz p0, :cond_0

    .line 406
    :try_start_0
    new-instance v0, Lcom/itextpdf/signatures/CertificateInfo$X500Name;

    invoke-virtual {p0}, Ljava/security/cert/X509Certificate;->getTBSCertificate()[B

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/signatures/CertificateInfo;->getSubject([B)Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    check-cast v1, Lorg/bouncycastle/asn1/ASN1Sequence;

    invoke-direct {v0, v1}, Lcom/itextpdf/signatures/CertificateInfo$X500Name;-><init>(Lorg/bouncycastle/asn1/ASN1Sequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 408
    :catch_0
    move-exception v0

    .line 409
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    nop

    .line 411
    const/4 v0, 0x0

    return-object v0
.end method
