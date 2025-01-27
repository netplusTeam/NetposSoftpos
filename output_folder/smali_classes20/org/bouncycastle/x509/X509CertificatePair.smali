.class public Lorg/bouncycastle/x509/X509CertificatePair;
.super Ljava/lang/Object;
.source "X509CertificatePair.java"


# instance fields
.field private final bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

.field private forward:Ljava/security/cert/X509Certificate;

.field private reverse:Ljava/security/cert/X509Certificate;


# direct methods
.method public constructor <init>(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 18
    iput-object p1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 19
    iput-object p2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/asn1/x509/CertificatePair;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateParsingException;
        }
    .end annotation

    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    new-instance v0, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;

    invoke-direct {v0}, Lorg/bouncycastle/jcajce/util/BCJcaJceHelper;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->bcHelper:Lorg/bouncycastle/jcajce/util/JcaJceHelper;

    .line 50
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 52
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getForward()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 54
    :cond_0
    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 56
    new-instance v0, Lorg/bouncycastle/jce/provider/X509CertificateObject;

    invoke-virtual {p1}, Lorg/bouncycastle/asn1/x509/CertificatePair;->getReverse()Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/bouncycastle/jce/provider/X509CertificateObject;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;)V

    iput-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    :cond_1
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;

    if-nez v1, :cond_1

    return v0

    .line 5
    :cond_1
    check-cast p1, Lorg/bouncycastle/x509/X509CertificatePair;

    .line 8
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 10
    iget-object v3, p1, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    invoke-virtual {v1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    goto :goto_0

    .line 14
    :cond_2
    iget-object v1, p1, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_3

    move v1, v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 19
    :goto_0
    iget-object v3, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v3, :cond_4

    .line 21
    iget-object p1, p1, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    invoke-virtual {v3, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    goto :goto_1

    .line 25
    :cond_4
    iget-object p1, p1, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz p1, :cond_5

    move p1, v0

    goto :goto_1

    :cond_5
    move p1, v2

    :goto_1
    if-eqz v1, :cond_6

    if-eqz p1, :cond_6

    move v0, v2

    :cond_6
    return v0
.end method

.method public getEncoded()[B
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateEncodingException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 3
    new-instance v0, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    .line 4
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v0, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v0}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v0

    .line 5
    invoke-static {v0}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "unable to get encoding for forward"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1
    :cond_1
    move-object v0, v1

    .line 12
    :goto_0
    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v2, :cond_3

    .line 14
    new-instance v1, Lorg/bouncycastle/asn1/ASN1InputStream;

    iget-object v2, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    .line 15
    invoke-virtual {v2}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/bouncycastle/asn1/ASN1InputStream;-><init>([B)V

    invoke-virtual {v1}, Lorg/bouncycastle/asn1/ASN1InputStream;->readObject()Lorg/bouncycastle/asn1/ASN1Primitive;

    move-result-object v1

    .line 16
    invoke-static {v1}, Lorg/bouncycastle/asn1/x509/Certificate;->getInstance(Ljava/lang/Object;)Lorg/bouncycastle/asn1/x509/Certificate;

    move-result-object v1

    if-eqz v1, :cond_2

    goto :goto_1

    .line 20
    :cond_2
    new-instance v0, Ljava/security/cert/CertificateEncodingException;

    const-string/jumbo v1, "unable to get encoding for reverse"

    invoke-direct {v0, v1}, Ljava/security/cert/CertificateEncodingException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 23
    :cond_3
    :goto_1
    new-instance v2, Lorg/bouncycastle/asn1/x509/CertificatePair;

    invoke-direct {v2, v0, v1}, Lorg/bouncycastle/asn1/x509/CertificatePair;-><init>(Lorg/bouncycastle/asn1/x509/Certificate;Lorg/bouncycastle/asn1/x509/Certificate;)V

    const-string v0, "DER"

    invoke-virtual {v2, v0}, Lorg/bouncycastle/asn1/ASN1Object;->getEncoded(Ljava/lang/String;)[B

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 31
    new-instance v1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :catch_1
    move-exception v0

    .line 32
    new-instance v1, Lorg/bouncycastle/x509/ExtCertificateEncodingException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/x509/ExtCertificateEncodingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getForward()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public getReverse()Ljava/security/cert/X509Certificate;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/x509/X509CertificatePair;->forward:Ljava/security/cert/X509Certificate;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    not-int v0, v0

    goto :goto_0

    .line 1
    :cond_0
    const/4 v0, -0x1

    .line 5
    :goto_0
    iget-object v1, p0, Lorg/bouncycastle/x509/X509CertificatePair;->reverse:Ljava/security/cert/X509Certificate;

    if-eqz v1, :cond_1

    mul-int/lit8 v0, v0, 0x11

    .line 8
    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    xor-int/2addr v0, v1

    :cond_1
    return v0
.end method
