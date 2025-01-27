.class public Lcom/itextpdf/signatures/CRLVerifier;
.super Lcom/itextpdf/signatures/RootStoreVerifier;
.source "CRLVerifier.java"


# static fields
.field protected static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field crls:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/security/cert/X509CRL;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 65
    const-class v0, Lcom/itextpdf/signatures/CRLVerifier;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/CRLVerifier;->LOGGER:Lorg/slf4j/Logger;

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
            "Ljava/security/cert/X509CRL;",
            ">;)V"
        }
    .end annotation

    .line 76
    .local p2, "crls":Ljava/util/List;, "Ljava/util/List<Ljava/security/cert/X509CRL;>;"
    invoke-direct {p0, p1}, Lcom/itextpdf/signatures/RootStoreVerifier;-><init>(Lcom/itextpdf/signatures/CertificateVerifier;)V

    .line 77
    iput-object p2, p0, Lcom/itextpdf/signatures/CRLVerifier;->crls:Ljava/util/List;

    .line 78
    return-void
.end method


# virtual methods
.method public getCRL(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRL;
    .locals 5
    .param p1, "signCert"    # Ljava/security/cert/X509Certificate;
    .param p2, "issuerCert"    # Ljava/security/cert/X509Certificate;

    .line 151
    if-nez p2, :cond_0

    .line 152
    move-object p2, p1

    .line 155
    :cond_0
    const/4 v0, 0x0

    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/signatures/CertificateUtil;->getCRLURL(Ljava/security/cert/X509Certificate;)Ljava/lang/String;

    move-result-object v1

    .line 156
    .local v1, "crlurl":Ljava/lang/String;
    if-nez v1, :cond_1

    .line 157
    return-object v0

    .line 158
    :cond_1
    sget-object v2, Lcom/itextpdf/signatures/CRLVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Getting CRL from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 159
    new-instance v2, Ljava/net/URL;

    invoke-direct {v2, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/signatures/SignUtils;->parseCrlFromStream(Ljava/io/InputStream;)Ljava/security/cert/CRL;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509CRL;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 164
    .end local v1    # "crlurl":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 165
    .local v1, "e":Ljava/security/GeneralSecurityException;
    return-object v0

    .line 161
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :catch_1
    move-exception v1

    .line 162
    .local v1, "e":Ljava/io/IOException;
    return-object v0
.end method

.method public isSignatureValid(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;)Z
    .locals 5
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "crlIssuer"    # Ljava/security/cert/X509Certificate;

    .line 177
    const/4 v0, 0x1

    if-eqz p2, :cond_0

    .line 179
    :try_start_0
    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_0
    .catch Ljava/security/GeneralSecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    return v0

    .line 181
    :catch_0
    move-exception v1

    .line 182
    .local v1, "e":Ljava/security/GeneralSecurityException;
    sget-object v2, Lcom/itextpdf/signatures/CRLVerifier;->LOGGER:Lorg/slf4j/Logger;

    const-string v3, "CRL not issued by the same authority as the certificate that is being checked"

    invoke-interface {v2, v3}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 186
    .end local v1    # "e":Ljava/security/GeneralSecurityException;
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/signatures/CRLVerifier;->rootStore:Ljava/security/KeyStore;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 187
    return v2

    .line 190
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/itextpdf/signatures/CRLVerifier;->rootStore:Ljava/security/KeyStore;

    invoke-static {v1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509Certificate;
    :try_end_1
    .catch Ljava/security/GeneralSecurityException; {:try_start_1 .. :try_end_1} :catch_2

    .line 193
    .local v3, "anchor":Ljava/security/cert/X509Certificate;
    :try_start_2
    invoke-virtual {v3}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/security/cert/X509CRL;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/security/GeneralSecurityException; {:try_start_2 .. :try_end_2} :catch_1

    .line 194
    return v0

    .line 195
    :catch_1
    move-exception v4

    .line 196
    .local v4, "e":Ljava/security/GeneralSecurityException;
    goto :goto_0

    .line 202
    .end local v3    # "anchor":Ljava/security/cert/X509Certificate;
    .end local v4    # "e":Ljava/security/GeneralSecurityException;
    :cond_2
    nop

    .line 203
    return v2

    .line 200
    :catch_2
    move-exception v0

    .line 201
    .local v0, "e":Ljava/security/GeneralSecurityException;
    return v2
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

    .line 92
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 93
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationOK;>;"
    const/4 v1, 0x0

    .line 95
    .local v1, "validCrlsFound":I
    iget-object v2, p0, Lcom/itextpdf/signatures/CRLVerifier;->crls:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 96
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/security/cert/X509CRL;

    .line 97
    .local v3, "crl":Ljava/security/cert/X509CRL;
    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/itextpdf/signatures/CRLVerifier;->verify(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 98
    add-int/lit8 v1, v1, 0x1

    .line 99
    .end local v3    # "crl":Ljava/security/cert/X509CRL;
    :cond_0
    goto :goto_0

    .line 102
    :cond_1
    const/4 v2, 0x0

    .line 103
    .local v2, "online":Z
    iget-boolean v3, p0, Lcom/itextpdf/signatures/CRLVerifier;->onlineCheckingAllowed:Z

    if-eqz v3, :cond_2

    if-nez v1, :cond_2

    .line 104
    invoke-virtual {p0, p1, p2}, Lcom/itextpdf/signatures/CRLVerifier;->getCRL(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;)Ljava/security/cert/X509CRL;

    move-result-object v3

    invoke-virtual {p0, v3, p1, p2, p3}, Lcom/itextpdf/signatures/CRLVerifier;->verify(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 105
    add-int/lit8 v1, v1, 0x1

    .line 106
    const/4 v2, 0x1

    .line 110
    :cond_2
    sget-object v3, Lcom/itextpdf/signatures/CRLVerifier;->LOGGER:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Valid CRLs found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 111
    if-lez v1, :cond_4

    .line 112
    new-instance v3, Lcom/itextpdf/signatures/VerificationOK;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

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

    .line 114
    :cond_4
    iget-object v3, p0, Lcom/itextpdf/signatures/CRLVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    if-eqz v3, :cond_5

    .line 115
    iget-object v3, p0, Lcom/itextpdf/signatures/CRLVerifier;->verifier:Lcom/itextpdf/signatures/CertificateVerifier;

    invoke-virtual {v3, p1, p2, p3}, Lcom/itextpdf/signatures/CertificateVerifier;->verify(Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 117
    :cond_5
    return-object v0
.end method

.method public verify(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;Ljava/security/cert/X509Certificate;Ljava/util/Date;)Z
    .locals 3
    .param p1, "crl"    # Ljava/security/cert/X509CRL;
    .param p2, "signCert"    # Ljava/security/cert/X509Certificate;
    .param p3, "issuerCert"    # Ljava/security/cert/X509Certificate;
    .param p4, "signDate"    # Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 130
    const/4 v0, 0x0

    if-eqz p1, :cond_4

    sget-object v1, Lcom/itextpdf/signatures/TimestampConstants;->UNDEFINED_TIMESTAMP_DATE:Ljava/lang/Object;

    if-ne p4, v1, :cond_0

    goto :goto_1

    .line 134
    :cond_0
    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v1

    invoke-virtual {p2}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavax/security/auth/x500/X500Principal;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-virtual {p1}, Ljava/security/cert/X509CRL;->getNextUpdate()Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p4, v1}, Ljava/util/Date;->before(Ljava/util/Date;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 136
    invoke-virtual {p0, p1, p3}, Lcom/itextpdf/signatures/CRLVerifier;->isSignatureValid(Ljava/security/cert/X509CRL;Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1, p2}, Ljava/security/cert/X509CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 137
    :cond_1
    new-instance v0, Lcom/itextpdf/signatures/VerificationException;

    const-string v1, "The certificate has been revoked."

    invoke-direct {v0, p2, v1}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_2
    :goto_0
    const/4 v0, 0x1

    return v0

    .line 141
    :cond_3
    return v0

    .line 131
    :cond_4
    :goto_1
    return v0
.end method
