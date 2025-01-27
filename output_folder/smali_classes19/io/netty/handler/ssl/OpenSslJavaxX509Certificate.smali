.class final Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;
.super Ljavax/security/cert/X509Certificate;
.source "OpenSslJavaxX509Certificate.java"


# instance fields
.field private final bytes:[B

.field private wrapped:Ljavax/security/cert/X509Certificate;


# direct methods
.method constructor <init>([B)V
    .locals 0
    .param p1, "bytes"    # [B

    .line 35
    invoke-direct {p0}, Ljavax/security/cert/X509Certificate;-><init>()V

    .line 36
    iput-object p1, p0, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->bytes:[B

    .line 37
    return-void
.end method

.method private unwrap()Ljavax/security/cert/X509Certificate;
    .locals 3

    .line 124
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->wrapped:Ljavax/security/cert/X509Certificate;

    .line 125
    .local v0, "wrapped":Ljavax/security/cert/X509Certificate;
    if-nez v0, :cond_0

    .line 127
    :try_start_0
    iget-object v1, p0, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->bytes:[B

    invoke-static {v1}, Ljavax/security/cert/X509Certificate;->getInstance([B)Ljavax/security/cert/X509Certificate;

    move-result-object v1

    iput-object v1, p0, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->wrapped:Ljavax/security/cert/X509Certificate;
    :try_end_0
    .catch Ljavax/security/cert/CertificateException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 130
    goto :goto_0

    .line 128
    :catch_0
    move-exception v1

    .line 129
    .local v1, "e":Ljavax/security/cert/CertificateException;
    new-instance v2, Ljava/lang/IllegalStateException;

    invoke-direct {v2, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 132
    .end local v1    # "e":Ljavax/security/cert/CertificateException;
    :cond_0
    :goto_0
    return-object v0
.end method


# virtual methods
.method public checkValidity()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 41
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->checkValidity()V

    .line 42
    return-void
.end method

.method public checkValidity(Ljava/util/Date;)V
    .locals 1
    .param p1, "date"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateExpiredException;,
            Ljavax/security/cert/CertificateNotYetValidException;
        }
    .end annotation

    .line 46
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 47
    return-void
.end method

.method public getEncoded()[B
    .locals 1

    .line 96
    iget-object v0, p0, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->bytes:[B

    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    return-object v0
.end method

.method public getIssuerDN()Ljava/security/Principal;
    .locals 1

    .line 61
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getIssuerDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getNotAfter()Ljava/util/Date;
    .locals 1

    .line 76
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotAfter()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getNotBefore()Ljava/util/Date;
    .locals 1

    .line 71
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getNotBefore()Ljava/util/Date;

    move-result-object v0

    return-object v0
.end method

.method public getPublicKey()Ljava/security/PublicKey;
    .locals 1

    .line 120
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    return-object v0
.end method

.method public getSerialNumber()Ljava/math/BigInteger;
    .locals 1

    .line 56
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgName()Ljava/lang/String;
    .locals 1

    .line 81
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgOID()Ljava/lang/String;
    .locals 1

    .line 86
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgOID()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSigAlgParams()[B
    .locals 1

    .line 91
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSigAlgParams()[B

    move-result-object v0

    return-object v0
.end method

.method public getSubjectDN()Ljava/security/Principal;
    .locals 1

    .line 66
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v0

    return-object v0
.end method

.method public getVersion()I
    .locals 1

    .line 51
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->getVersion()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 115
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/security/cert/X509Certificate;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public verify(Ljava/security/PublicKey;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 103
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 104
    return-void
.end method

.method public verify(Ljava/security/PublicKey;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/security/PublicKey;
    .param p2, "sigProvider"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/security/cert/CertificateException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/InvalidKeyException;,
            Ljava/security/NoSuchProviderException;,
            Ljava/security/SignatureException;
        }
    .end annotation

    .line 110
    invoke-direct {p0}, Lio/netty/handler/ssl/OpenSslJavaxX509Certificate;->unwrap()Ljavax/security/cert/X509Certificate;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Ljavax/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;Ljava/lang/String;)V

    .line 111
    return-void
.end method
