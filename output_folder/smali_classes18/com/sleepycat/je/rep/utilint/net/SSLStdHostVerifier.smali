.class public Lcom/sleepycat/je/rep/utilint/net/SSLStdHostVerifier;
.super Ljava/lang/Object;
.source "SSLStdHostVerifier.java"

# interfaces
.implements Ljavax/net/ssl/HostnameVerifier;


# static fields
.field private static final ALTNAME_DNS:I = 0x2

.field private static final ALTNAME_IP:I = 0x7


# instance fields
.field private final logger:Lcom/sleepycat/je/rep/net/InstanceLogger;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 2
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getLoggerFactory()Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/net/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/sleepycat/je/rep/net/InstanceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLStdHostVerifier;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 51
    return-void
.end method


# virtual methods
.method public verify(Ljava/lang/String;Ljavax/net/ssl/SSLSession;)Z
    .locals 13
    .param p1, "targetHost"    # Ljava/lang/String;
    .param p2, "sslSession"    # Ljavax/net/ssl/SSLSession;

    .line 55
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 56
    return v0

    .line 59
    :cond_0
    const/4 v1, 0x0

    .line 60
    .local v1, "principal":Ljava/security/Principal;
    const/4 v2, 0x0

    .line 62
    .local v2, "peerCerts":[Ljava/security/cert/Certificate;
    :try_start_0
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerPrincipal()Ljava/security/Principal;

    move-result-object v3

    move-object v1, v3

    .line 63
    invoke-interface {p2}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v3
    :try_end_0
    .catch Ljavax/net/ssl/SSLPeerUnverifiedException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 66
    nop

    .line 68
    const/4 v3, 0x1

    if-eqz v1, :cond_1

    instance-of v4, v1, Ljavax/security/auth/x500/X500Principal;

    if-eqz v4, :cond_1

    .line 69
    move-object v4, v1

    check-cast v4, Ljavax/security/auth/x500/X500Principal;

    .line 70
    .local v4, "x500Principal":Ljavax/security/auth/x500/X500Principal;
    const-string v5, "RFC1779"

    invoke-virtual {v4, v5}, Ljavax/security/auth/x500/X500Principal;->getName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 71
    .local v5, "name":Ljava/lang/String;
    invoke-virtual {p1, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 72
    return v3

    .line 77
    .end local v4    # "x500Principal":Ljavax/security/auth/x500/X500Principal;
    .end local v5    # "name":Ljava/lang/String;
    :cond_1
    aget-object v4, v2, v0

    instance-of v4, v4, Ljava/security/cert/X509Certificate;

    if-eqz v4, :cond_5

    .line 79
    aget-object v4, v2, v0

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 81
    .local v4, "peerCert":Ljava/security/cert/X509Certificate;
    const/4 v5, 0x0

    .line 83
    .local v5, "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :try_start_1
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectAlternativeNames()Ljava/util/Collection;

    move-result-object v6
    :try_end_1
    .catch Ljava/security/cert/CertificateParsingException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v5, v6

    .line 92
    goto :goto_0

    .line 84
    :catch_0
    move-exception v6

    .line 85
    .local v6, "cpe":Ljava/security/cert/CertificateParsingException;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getIssuerX500Principal()Ljavax/security/auth/x500/X500Principal;

    move-result-object v7

    .line 86
    .local v7, "issuerPrinc":Ljava/security/Principal;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSerialNumber()Ljava/math/BigInteger;

    move-result-object v8

    .line 88
    .local v8, "serNo":Ljava/math/BigInteger;
    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/net/SSLStdHostVerifier;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    sget-object v10, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Unable to parse peer certificate: issuer = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", serialNumber = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v9, v10, v11}, Lcom/sleepycat/je/rep/net/InstanceLogger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 94
    .end local v6    # "cpe":Ljava/security/cert/CertificateParsingException;
    .end local v7    # "issuerPrinc":Ljava/security/Principal;
    .end local v8    # "serNo":Ljava/math/BigInteger;
    :goto_0
    if-nez v5, :cond_2

    .line 95
    return v0

    .line 98
    :cond_2
    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/util/List;

    .line 104
    .local v7, "altName":Ljava/util/List;, "Ljava/util/List<*>;"
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 105
    .local v8, "nameType":I
    const/4 v9, 0x7

    if-eq v8, v9, :cond_3

    const/4 v9, 0x2

    if-ne v8, v9, :cond_4

    .line 106
    :cond_3
    invoke-interface {v7, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    .line 107
    .local v9, "nameValue":Ljava/lang/String;
    invoke-virtual {p1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 108
    return v3

    .line 111
    .end local v7    # "altName":Ljava/util/List;, "Ljava/util/List<*>;"
    .end local v8    # "nameType":I
    .end local v9    # "nameValue":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 113
    .end local v4    # "peerCert":Ljava/security/cert/X509Certificate;
    .end local v5    # "altNames":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<*>;>;"
    :cond_5
    return v0

    .line 64
    :catch_1
    move-exception v3

    .line 65
    .local v3, "pue":Ljavax/net/ssl/SSLPeerUnverifiedException;
    return v0
.end method
