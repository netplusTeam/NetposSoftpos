.class public Lcom/itextpdf/signatures/CertificateVerifier;
.super Ljava/lang/Object;
.source "CertificateVerifier.java"


# instance fields
.field protected onlineCheckingAllowed:Z

.field protected verifier:Lcom/itextpdf/signatures/CertificateVerifier;


# direct methods
.method public constructor <init>(Lcom/itextpdf/signatures/CertificateVerifier;)V
    .locals 1
    .param p1, "verifier"    # Lcom/itextpdf/signatures/CertificateVerifier;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/itextpdf/signatures/CertificateVerifier;->onlineCheckingAllowed:Z

    .line 74
    iput-object p1, p0, Lcom/itextpdf/signatures/CertificateVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    .line 75
    return-void
.end method


# virtual methods
.method public setOnlineCheckingAllowed(Z)V
    .locals 0
    .param p1, "onlineCheckingAllowed"    # Z

    .line 83
    iput-boolean p1, p0, Lcom/itextpdf/signatures/CertificateVerifier;->onlineCheckingAllowed:Z

    .line 84
    return-void
.end method

.method public verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;
    .locals 2
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

    .line 99
    if-eqz p3, :cond_0

    .line 100
    invoke-virtual {p1, p3}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V

    .line 102
    :cond_0
    if-eqz p2, :cond_1

    .line 103
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    goto :goto_0

    .line 107
    :cond_1
    invoke-virtual {p1}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 109
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 110
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/CertificateVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    if-eqz v1, :cond_2

    .line 111
    invoke-virtual {v1, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 112
    :cond_2
    return-object v0
.end method
