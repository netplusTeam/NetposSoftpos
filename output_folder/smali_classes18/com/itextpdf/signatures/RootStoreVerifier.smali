.class public Lcom/itextpdf/signatures/RootStoreVerifier;
.super Lcom/itextpdf/signatures/CertificateVerifier;
.source "RootStoreVerifier.java"


# instance fields
.field protected rootStore:Ljava/security/KeyStore;


# direct methods
.method public constructor <init>(Lcom/itextpdf/signatures/CertificateVerifier;)V
    .locals 1
    .param p1, "verifier"    # Lcom/itextpdf/signatures/CertificateVerifier;

    .line 70
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/CertificateVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 61
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    .line 71
    return-void
.end method


# virtual methods
.method public setRootStore(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;

    .line 80
    iput-object p1, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    .line 81
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

    .line 98
    iget-object v0, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    if-nez v0, :cond_0

    .line 99
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 101
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 103
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    iget-object v1, p0, Lcom/itextpdf/signatures/RootStoreVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_1

    .line 105
    .local v2, "anchor":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-virtual {v2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V

    .line 106
    new-instance v3, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string v5, "Certificate verified against root store."

    invoke-direct {v3, p1, v4, v5}, Lcom/itextpdf/signatures/VerificationOK;-><init>(Ljava/security/cert/X509Certificate;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_0

    .line 108
    return-object v0

    .line 109
    :catch_0
    move-exception v3

    .line 110
    .local v3, "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 113
    .end local v2    # "anchor":Ljava/security/cert/X509Certificate;
    .end local v3    # "e":Ljava/security/GeneralSecurityException;
    :cond_1
    :try_start_2
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 114
    return-object v0

    .line 115
    .end local v0    # "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    :catch_1
    move-exception v0

    .line 116
    .local v0, "e":Ljava/security/GeneralSecurityException;
    invoke-super {p0, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v1

    return-object v1
.end method
