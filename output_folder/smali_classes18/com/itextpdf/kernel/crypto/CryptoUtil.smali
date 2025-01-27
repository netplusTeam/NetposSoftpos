.class public Lcom/itextpdf/kernel/crypto/CryptoUtil;
.super Ljava/lang/Object;
.source "CryptoUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static readPrivateKeyFromPKCS12KeyStore(Ljava/io/InputStream;Ljava/lang/String;[C)Ljava/security/PrivateKey;
    .locals 2
    .param p0, "keyStore"    # Ljava/io/InputStream;
    .param p1, "pkAlias"    # Ljava/lang/String;
    .param p2, "pkPassword"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    const-string v0, "PKCS12"

    invoke-static {v0}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0

    .line 65
    .local v0, "keystore":Ljava/security/KeyStore;
    invoke-virtual {v0, p0, p2}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 66
    invoke-virtual {v0, p1, p2}, Ljava/security/KeyStore;->getKey(Ljava/lang/String;[C)Ljava/security/Key;

    move-result-object v1

    check-cast v1, Ljava/security/PrivateKey;

    return-object v1
.end method

.method public static readPublicCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;
    .locals 1
    .param p0, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 60
    const-string v0, "X.509"

    invoke-static {v0}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v0

    return-object v0
.end method
