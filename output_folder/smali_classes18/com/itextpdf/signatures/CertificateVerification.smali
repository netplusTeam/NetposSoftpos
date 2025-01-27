.class public Lcom/itextpdf/signatures/CertificateVerification;
.super Ljava/lang/Object;
.source "CertificateVerification.java"


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 71
    const-class v0, Lcom/itextpdf/signatures/CrlClientOnline;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/signatures/CertificateVerification;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;)Ljava/lang/String;
    .locals 1
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 82
    .local p1, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;
    .locals 3
    .param p0, "cert"    # Ljava/security/cert/X509Certificate;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/security/cert/X509Certificate;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 95
    .local p1, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    invoke-static {p0}, Lcom/itextpdf/signatures/SignUtils;->hasUnsupportedCriticalExtension(Ljava/security/cert/X509Certificate;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 96
    const-string v0, "Has unsupported critical extension"

    return-object v0

    .line 98
    :cond_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/security/cert/X509Certificate;->checkValidity(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    nop

    .line 102
    if-eqz p1, :cond_2

    .line 103
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/security/cert/CRL;

    .line 104
    .local v1, "crl":Ljava/security/cert/CRL;
    invoke-virtual {v1, p0}, Ljava/security/cert/CRL;->isRevoked(Ljava/security/cert/Certificate;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 105
    const-string v0, "Certificate revoked"

    return-object v0

    .line 106
    .end local v1    # "crl":Ljava/security/cert/CRL;
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    const/4 v0, 0x0

    return-object v0

    .line 99
    :catch_0
    move-exception v0

    .line 100
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;)Ljava/util/List;
    .locals 1
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationException;",
            ">;"
        }
    .end annotation

    .line 190
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Calendar;)Ljava/util/List;
    .locals 1
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationException;",
            ">;"
        }
    .end annotation

    .line 204
    const/4 v0, 0x0

    invoke-static {p0, p1, v0, p2}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationException;",
            ">;"
        }
    .end annotation

    .line 123
    .local p2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    invoke-static {}, Lcom/itextpdf/io/util/DateTimeUtil;->getCurrentTimeCalendar()Ljava/util/Calendar;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static verifyCertificates([Ljava/security/cert/Certificate;Ljava/security/KeyStore;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/util/List;
    .locals 7
    .param p0, "certs"    # [Ljava/security/cert/Certificate;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p3, "calendar"    # Ljava/util/Calendar;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/security/cert/Certificate;",
            "Ljava/security/KeyStore;",
            "Ljava/util/Collection<",
            "Ljava/security/cert/CRL;",
            ">;",
            "Ljava/util/Calendar;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/signatures/VerificationException;",
            ">;"
        }
    .end annotation

    .line 138
    .local p2, "crls":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/security/cert/CRL;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 139
    .local v0, "result":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/signatures/VerificationException;>;"
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, p0

    if-ge v1, v2, :cond_6

    .line 140
    aget-object v2, p0, v1

    check-cast v2, Ljava/security/cert/X509Certificate;

    .line 141
    .local v2, "cert":Ljava/security/cert/X509Certificate;
    invoke-static {v2, p2, p3}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v3

    .line 142
    .local v3, "err":Ljava/lang/String;
    if-eqz v3, :cond_0

    .line 143
    new-instance v4, Lcom/itextpdf/signatures/VerificationException;

    invoke-direct {v4, v2, v3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 145
    :cond_0
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    .line 147
    .local v5, "certStoreX509":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-static {v5, p2, p3}, Lcom/itextpdf/signatures/CertificateVerification;->verifyCertificate(Ljava/security/cert/X509Certificate;Ljava/util/Collection;Ljava/util/Calendar;)Ljava/lang/String;

    move-result-object v6
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    if-eqz v6, :cond_1

    .line 148
    goto :goto_1

    .line 150
    :cond_1
    :try_start_2
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 151
    return-object v0

    .line 152
    :catch_0
    move-exception v6

    .line 153
    .local v6, "e":Ljava/lang/Exception;
    goto :goto_1

    .line 155
    .end local v6    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v6

    .line 157
    .end local v5    # "certStoreX509":Ljava/security/cert/X509Certificate;
    goto :goto_1

    .line 159
    :cond_2
    goto :goto_2

    .line 158
    :catch_2
    move-exception v4

    .line 161
    :goto_2
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_3
    array-length v5, p0

    if-ge v4, v5, :cond_4

    .line 162
    if-ne v4, v1, :cond_3

    .line 163
    goto :goto_4

    .line 164
    :cond_3
    aget-object v5, p0, v4

    check-cast v5, Ljava/security/cert/X509Certificate;

    .line 166
    .local v5, "certNext":Ljava/security/cert/X509Certificate;
    :try_start_3
    invoke-virtual {v5}, Ljava/security/cert/X509Certificate;->getPublicKey()Ljava/security/PublicKey;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/security/cert/X509Certificate;->verify(Ljava/security/PublicKey;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_3

    .line 167
    goto :goto_5

    .line 168
    :catch_3
    move-exception v6

    .line 161
    .end local v5    # "certNext":Ljava/security/cert/X509Certificate;
    :goto_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 171
    :cond_4
    :goto_5
    array-length v5, p0

    if-ne v4, v5, :cond_5

    .line 172
    new-instance v5, Lcom/itextpdf/signatures/VerificationException;

    const-string v6, "Cannot be verified against the KeyStore or the certificate chain"

    invoke-direct {v5, v2, v6}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 139
    .end local v2    # "cert":Ljava/security/cert/X509Certificate;
    .end local v3    # "err":Ljava/lang/String;
    .end local v4    # "j":I
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 175
    .end local v1    # "k":I
    :cond_6
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_7

    .line 176
    new-instance v1, Lcom/itextpdf/signatures/VerificationException;

    const/4 v2, 0x0

    move-object v3, v2

    check-cast v3, Ljava/security/cert/Certificate;

    const-string v3, "Invalid state. Possible circular certificate chain"

    invoke-direct {v1, v2, v3}, Lcom/itextpdf/signatures/VerificationException;-><init>(Ljava/security/cert/Certificate;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 177
    :cond_7
    return-object v0
.end method

.method public static verifyOcspCertificates(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ocsp"    # Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "provider"    # Ljava/lang/String;

    .line 216
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 218
    .local v0, "exceptionsThrown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 220
    .local v2, "certStoreX509":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/itextpdf/signatures/SignUtils;->isSignatureValid(Lorg/bouncycastle/cert/ocsp/BasicOCSPResp;Ljava/security/cert/Certificate;Ljava/lang/String;)Z

    move-result v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    return v1

    .line 221
    :catch_0
    move-exception v3

    .line 222
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 224
    nop

    .end local v2    # "certStoreX509":Ljava/security/cert/X509Certificate;
    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 227
    :cond_0
    goto :goto_1

    .line 225
    :catch_1
    move-exception v1

    .line 226
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 228
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 229
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/itextpdf/signatures/CertificateVerification;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 230
    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 231
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public static verifyTimestampCertificates(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/KeyStore;Ljava/lang/String;)Z
    .locals 5
    .param p0, "ts"    # Lorg/bouncycastle/tsp/TimeStampToken;
    .param p1, "keystore"    # Ljava/security/KeyStore;
    .param p2, "provider"    # Ljava/lang/String;

    .line 243
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 245
    .local v0, "exceptionsThrown":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Exception;>;"
    :try_start_0
    invoke-static {p1}, Lcom/itextpdf/signatures/SignUtils;->getCertificates(Ljava/security/KeyStore;)Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/security/cert/X509Certificate;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 248
    .local v2, "certStoreX509":Ljava/security/cert/X509Certificate;
    :try_start_1
    invoke-static {p0, v2, p2}, Lcom/itextpdf/signatures/SignUtils;->isSignatureValid(Lorg/bouncycastle/tsp/TimeStampToken;Ljava/security/cert/X509Certificate;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 249
    const/4 v1, 0x1

    return v1

    .line 250
    :catch_0
    move-exception v3

    .line 251
    .local v3, "ex":Ljava/lang/Exception;
    :try_start_2
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 254
    nop

    .end local v2    # "certStoreX509":Ljava/security/cert/X509Certificate;
    .end local v3    # "ex":Ljava/lang/Exception;
    goto :goto_0

    .line 257
    :cond_0
    goto :goto_1

    .line 255
    :catch_1
    move-exception v1

    .line 256
    .local v1, "e":Ljava/lang/Exception;
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 259
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Exception;

    .line 260
    .local v2, "ex":Ljava/lang/Exception;
    sget-object v3, Lcom/itextpdf/signatures/CertificateVerification;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 261
    .end local v2    # "ex":Ljava/lang/Exception;
    goto :goto_2

    .line 262
    :cond_1
    const/4 v1, 0x0

    return v1
.end method
