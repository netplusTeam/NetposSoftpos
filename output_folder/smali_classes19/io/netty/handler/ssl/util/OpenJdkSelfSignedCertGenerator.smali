.class final Lio/netty/handler/ssl/util/OpenJdkSelfSignedCertGenerator;
.super Ljava/lang/Object;
.source "OpenJdkSelfSignedCertGenerator.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static generate(Ljava/lang/String;Ljava/security/KeyPair;Ljava/security/SecureRandom;Ljava/util/Date;Ljava/util/Date;)[Ljava/lang/String;
    .locals 8
    .param p0, "fqdn"    # Ljava/lang/String;
    .param p1, "keypair"    # Ljava/security/KeyPair;
    .param p2, "random"    # Ljava/security/SecureRandom;
    .param p3, "notBefore"    # Ljava/util/Date;
    .param p4, "notAfter"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 49
    const-string v0, "issuer"

    const-string v1, "subject"

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPrivate()Ljava/security/PrivateKey;

    move-result-object v2

    .line 52
    .local v2, "key":Ljava/security/PrivateKey;
    new-instance v3, Lsun/security/x509/X509CertInfo;

    invoke-direct {v3}, Lsun/security/x509/X509CertInfo;-><init>()V

    .line 53
    .local v3, "info":Lsun/security/x509/X509CertInfo;
    new-instance v4, Lsun/security/x509/X500Name;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "CN="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lsun/security/x509/X500Name;-><init>(Ljava/lang/String;)V

    .line 54
    .local v4, "owner":Lsun/security/x509/X500Name;
    new-instance v5, Lsun/security/x509/CertificateVersion;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lsun/security/x509/CertificateVersion;-><init>(I)V

    const-string v6, "version"

    invoke-virtual {v3, v6, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 55
    new-instance v5, Lsun/security/x509/CertificateSerialNumber;

    new-instance v6, Ljava/math/BigInteger;

    const/16 v7, 0x40

    invoke-direct {v6, v7, p2}, Ljava/math/BigInteger;-><init>(ILjava/util/Random;)V

    invoke-direct {v5, v6}, Lsun/security/x509/CertificateSerialNumber;-><init>(Ljava/math/BigInteger;)V

    const-string v6, "serialNumber"

    invoke-virtual {v3, v6, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 57
    :try_start_0
    new-instance v5, Lsun/security/x509/CertificateSubjectName;

    invoke-direct {v5, v4}, Lsun/security/x509/CertificateSubjectName;-><init>(Lsun/security/x509/X500Name;)V

    invoke-virtual {v3, v1, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    goto :goto_0

    .line 58
    :catch_0
    move-exception v5

    .line 59
    .local v5, "ignore":Ljava/security/cert/CertificateException;
    invoke-virtual {v3, v1, v4}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 62
    .end local v5    # "ignore":Ljava/security/cert/CertificateException;
    :goto_0
    :try_start_1
    new-instance v1, Lsun/security/x509/CertificateIssuerName;

    invoke-direct {v1, v4}, Lsun/security/x509/CertificateIssuerName;-><init>(Lsun/security/x509/X500Name;)V

    invoke-virtual {v3, v0, v1}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 65
    goto :goto_1

    .line 63
    :catch_1
    move-exception v1

    .line 64
    .local v1, "ignore":Ljava/security/cert/CertificateException;
    invoke-virtual {v3, v0, v4}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 66
    .end local v1    # "ignore":Ljava/security/cert/CertificateException;
    :goto_1
    new-instance v0, Lsun/security/x509/CertificateValidity;

    invoke-direct {v0, p3, p4}, Lsun/security/x509/CertificateValidity;-><init>(Ljava/util/Date;Ljava/util/Date;)V

    const-string v1, "validity"

    invoke-virtual {v3, v1, v0}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    new-instance v0, Lsun/security/x509/CertificateX509Key;

    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-direct {v0, v1}, Lsun/security/x509/CertificateX509Key;-><init>(Ljava/security/PublicKey;)V

    const-string v1, "key"

    invoke-virtual {v3, v1, v0}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 68
    new-instance v0, Lsun/security/x509/CertificateAlgorithmId;

    new-instance v1, Lsun/security/x509/AlgorithmId;

    sget-object v5, Lsun/security/x509/AlgorithmId;->sha256WithRSAEncryption_oid:Lsun/security/util/ObjectIdentifier;

    invoke-direct {v1, v5}, Lsun/security/x509/AlgorithmId;-><init>(Lsun/security/util/ObjectIdentifier;)V

    invoke-direct {v0, v1}, Lsun/security/x509/CertificateAlgorithmId;-><init>(Lsun/security/x509/AlgorithmId;)V

    const-string v1, "algorithmID"

    invoke-virtual {v3, v1, v0}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 72
    new-instance v0, Lsun/security/x509/X509CertImpl;

    invoke-direct {v0, v3}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/x509/X509CertInfo;)V

    .line 73
    .local v0, "cert":Lsun/security/x509/X509CertImpl;
    const-string v1, "SHA256withRSA"

    invoke-virtual {v0, v2, v1}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 76
    const-string v5, "x509.algorithm"

    invoke-virtual {v0, v5}, Lsun/security/x509/X509CertImpl;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    const-string v6, "algorithmID.algorithm"

    invoke-virtual {v3, v6, v5}, Lsun/security/x509/X509CertInfo;->set(Ljava/lang/String;Ljava/lang/Object;)V

    .line 77
    new-instance v5, Lsun/security/x509/X509CertImpl;

    invoke-direct {v5, v3}, Lsun/security/x509/X509CertImpl;-><init>(Lsun/security/x509/X509CertInfo;)V

    move-object v0, v5

    .line 78
    invoke-virtual {v0, v2, v1}, Lsun/security/x509/X509CertImpl;->sign(Ljava/security/PrivateKey;Ljava/lang/String;)V

    .line 79
    invoke-virtual {p1}, Ljava/security/KeyPair;->getPublic()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {v0, v1}, Lsun/security/x509/X509CertImpl;->verify(Ljava/security/PublicKey;)V

    .line 81
    invoke-static {p0, v2, v0}, Lio/netty/handler/ssl/util/SelfSignedCertificate;->newSelfSignedCertificate(Ljava/lang/String;Ljava/security/PrivateKey;Ljava/security/cert/X509Certificate;)[Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
