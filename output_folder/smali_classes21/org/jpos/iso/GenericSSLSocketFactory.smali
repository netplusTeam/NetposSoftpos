.class public Lorg/jpos/iso/GenericSSLSocketFactory;
.super Lorg/jpos/util/SimpleLogSource;
.source "GenericSSLSocketFactory.java"

# interfaces
.implements Lorg/jpos/iso/ISOServerSocketFactory;
.implements Lorg/jpos/iso/ISOClientSocketFactory;
.implements Lorg/jpos/core/Configurable;


# instance fields
.field private cfg:Lorg/jpos/core/Configuration;

.field private clientAuthNeeded:Z

.field private enabledCipherSuites:[Ljava/lang/String;

.field private enabledProtocols:[Ljava/lang/String;

.field private keyPassword:Ljava/lang/String;

.field private keyStore:Ljava/lang/String;

.field private password:Ljava/lang/String;

.field private serverAuthNeeded:Z

.field private serverFactory:Ljavax/net/ssl/SSLServerSocketFactory;

.field private serverName:Ljava/lang/String;

.field private socketFactory:Ljavax/net/ssl/SSLSocketFactory;

.field private sslc:Ljavax/net/ssl/SSLContext;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 52
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogSource;-><init>()V

    .line 57
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    .line 58
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 59
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 61
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    .line 62
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 63
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 65
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->clientAuthNeeded:Z

    .line 66
    iput-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    return-void
.end method

.method private getCN(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "dn"    # Ljava/lang/String;

    .line 299
    const-string v0, "CN="

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v0

    .line 300
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 301
    const/4 v1, 0x0

    return-object v1

    .line 304
    :cond_0
    add-int/lit8 v1, v0, 0x3

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    .line 306
    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 307
    .local v1, "dncs":[C
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_2

    .line 308
    aget-char v2, v1, v0

    const/16 v3, 0x2c

    if-ne v2, v3, :cond_1

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    aget-char v2, v1, v2

    const/16 v3, 0x5c

    if-eq v2, v3, :cond_1

    .line 309
    goto :goto_1

    .line 307
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 312
    :cond_2
    :goto_1
    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private getSSLContext()Ljavax/net/ssl/SSLContext;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 126
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->getPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 127
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->getKeyPassword()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 128
    :cond_1
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    .line 129
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "user.home"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".keystore"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    .line 133
    :cond_3
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "JKS"

    invoke-static {v1}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v1

    .line 134
    .local v1, "ks":Ljava/security/KeyStore;
    new-instance v2, Ljava/io/FileInputStream;

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 135
    .local v2, "fis":Ljava/io/FileInputStream;
    iget-object v3, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V

    .line 136
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    .line 137
    invoke-static {}, Ljavax/net/ssl/KeyManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v3

    .line 138
    .local v3, "km":Ljavax/net/ssl/KeyManagerFactory;
    iget-object v4, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->toCharArray()[C

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 139
    invoke-virtual {v3}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v4

    .line 140
    .local v4, "kma":[Ljavax/net/ssl/KeyManager;
    invoke-direct {p0, v1}, Lorg/jpos/iso/GenericSSLSocketFactory;->getTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;

    move-result-object v5

    .line 141
    .local v5, "tma":[Ljavax/net/ssl/TrustManager;
    const-string v6, "SSL"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6

    .line 142
    .local v6, "sslc":Ljavax/net/ssl/SSLContext;
    new-instance v7, Ljava/security/SecureRandom;

    invoke-direct {v7}, Ljava/security/SecureRandom;-><init>()V

    invoke-virtual {v6, v4, v5, v7}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 143
    nop

    .line 147
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 143
    return-object v6

    .line 147
    .end local v1    # "ks":Ljava/security/KeyStore;
    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local v3    # "km":Ljavax/net/ssl/KeyManagerFactory;
    .end local v4    # "kma":[Ljavax/net/ssl/KeyManager;
    .end local v5    # "tma":[Ljavax/net/ssl/TrustManager;
    .end local v6    # "sslc":Ljavax/net/ssl/SSLContext;
    :catchall_0
    move-exception v1

    goto :goto_0

    .line 144
    :catch_0
    move-exception v1

    .line 145
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v2, Lorg/jpos/iso/ISOException;

    invoke-direct {v2, v1}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 147
    .end local v1    # "e":Ljava/lang/Exception;
    :goto_0
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 148
    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 149
    throw v1
.end method

.method private getTrustManagers(Ljava/security/KeyStore;)[Ljavax/net/ssl/TrustManager;
    .locals 3
    .param p1, "ks"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 98
    iget-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    if-eqz v0, :cond_0

    .line 99
    invoke-static {}, Ljavax/net/ssl/TrustManagerFactory;->getDefaultAlgorithm()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0

    .line 100
    .local v0, "tm":Ljavax/net/ssl/TrustManagerFactory;
    invoke-virtual {v0, p1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 101
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1

    .line 104
    .end local v0    # "tm":Ljavax/net/ssl/TrustManagerFactory;
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    const/4 v1, 0x0

    new-instance v2, Lorg/jpos/iso/GenericSSLSocketFactory$1;

    invoke-direct {v2, p0}, Lorg/jpos/iso/GenericSSLSocketFactory$1;-><init>(Lorg/jpos/iso/GenericSSLSocketFactory;)V

    aput-object v2, v0, v1

    return-object v0
.end method

.method private verifyHostname(Ljavax/net/ssl/SSLSocket;)V
    .locals 10
    .param p1, "socket"    # Ljavax/net/ssl/SSLSocket;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/net/ssl/SSLPeerUnverifiedException;,
            Ljava/net/UnknownHostException;
        }
    .end annotation

    .line 241
    iget-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    if-nez v0, :cond_0

    .line 242
    return-void

    .line 245
    :cond_0
    invoke-virtual {p1}, Ljavax/net/ssl/SSLSocket;->getSession()Ljavax/net/ssl/SSLSession;

    move-result-object v0

    .line 247
    .local v0, "session":Ljavax/net/ssl/SSLSession;
    iget-object v1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_2

    .line 248
    :cond_1
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerHost()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    .line 250
    :try_start_0
    invoke-static {v1}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    nop

    .line 258
    :cond_2
    invoke-interface {v0}, Ljavax/net/ssl/SSLSession;->getPeerCertificates()[Ljava/security/cert/Certificate;

    move-result-object v1

    .line 259
    .local v1, "certs":[Ljava/security/cert/Certificate;
    if-eqz v1, :cond_4

    array-length v2, v1

    if-eqz v2, :cond_4

    .line 263
    :try_start_1
    const-string v2, "X.509"

    invoke-static {v2}, Ljava/security/cert/CertificateFactory;->getInstance(Ljava/lang/String;)Ljava/security/cert/CertificateFactory;

    move-result-object v2

    .line 264
    .local v2, "cf":Ljava/security/cert/CertificateFactory;
    new-instance v3, Ljava/io/ByteArrayInputStream;

    const/4 v4, 0x0

    aget-object v4, v1, v4

    invoke-virtual {v4}, Ljava/security/cert/Certificate;->getEncoded()[B

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 265
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    invoke-virtual {v2, v3}, Ljava/security/cert/CertificateFactory;->generateCertificate(Ljava/io/InputStream;)Ljava/security/cert/Certificate;

    move-result-object v4

    check-cast v4, Ljava/security/cert/X509Certificate;

    .line 268
    .local v4, "cert":Ljava/security/cert/X509Certificate;
    invoke-virtual {v4}, Ljava/security/cert/X509Certificate;->getSubjectDN()Ljava/security/Principal;

    move-result-object v5

    invoke-interface {v5}, Ljava/security/Principal;->getName()Ljava/lang/String;

    move-result-object v5

    .line 271
    .local v5, "dn":Ljava/lang/String;
    invoke-direct {p0, v5}, Lorg/jpos/iso/GenericSSLSocketFactory;->getCN(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 272
    .local v6, "cn":Ljava/lang/String;
    iget-object v7, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    invoke-virtual {v7, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 279
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "dn":Ljava/lang/String;
    .end local v6    # "cn":Ljava/lang/String;
    nop

    .line 280
    return-void

    .line 273
    .restart local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "cert":Ljava/security/cert/X509Certificate;
    .restart local v5    # "dn":Ljava/lang/String;
    .restart local v6    # "cn":Ljava/lang/String;
    :cond_3
    new-instance v7, Ljavax/net/ssl/SSLPeerUnverifiedException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid SSL server name. Expected \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\', got \'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\'"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    .end local v0    # "session":Ljavax/net/ssl/SSLSession;
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    .end local p1    # "socket":Ljavax/net/ssl/SSLSocket;
    throw v7
    :try_end_1
    .catch Ljava/security/cert/CertificateException; {:try_start_1 .. :try_end_1} :catch_0

    .line 277
    .end local v2    # "cf":Ljava/security/cert/CertificateFactory;
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "cert":Ljava/security/cert/X509Certificate;
    .end local v5    # "dn":Ljava/lang/String;
    .end local v6    # "cn":Ljava/lang/String;
    .restart local v0    # "session":Ljavax/net/ssl/SSLSession;
    .restart local v1    # "certs":[Ljava/security/cert/Certificate;
    .restart local p1    # "socket":Ljavax/net/ssl/SSLSocket;
    :catch_0
    move-exception v2

    .line 278
    .local v2, "e":Ljava/security/cert/CertificateException;
    new-instance v3, Ljavax/net/ssl/SSLPeerUnverifiedException;

    invoke-virtual {v2}, Ljava/security/cert/CertificateException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 260
    .end local v2    # "e":Ljava/security/cert/CertificateException;
    :cond_4
    new-instance v2, Ljavax/net/ssl/SSLPeerUnverifiedException;

    const-string v3, "No server certificates found"

    invoke-direct {v2, v3}, Ljavax/net/ssl/SSLPeerUnverifiedException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 251
    .end local v1    # "certs":[Ljava/security/cert/Certificate;
    :catch_1
    move-exception v1

    .line 252
    .local v1, "uhe":Ljava/net/UnknownHostException;
    new-instance v2, Ljava/net/UnknownHostException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not resolve SSL server name "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/net/UnknownHostException;-><init>(Ljava/lang/String;)V

    throw v2
.end method


# virtual methods
.method public createServerSocket(I)Ljava/net/ServerSocket;
    .locals 4
    .param p1, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->createServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    .line 191
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverFactory:Ljavax/net/ssl/SSLServerSocketFactory;

    invoke-virtual {v0, p1}, Ljavax/net/ssl/SSLServerSocketFactory;->createServerSocket(I)Ljava/net/ServerSocket;

    move-result-object v0

    .line 192
    .local v0, "socket":Ljava/net/ServerSocket;
    move-object v1, v0

    check-cast v1, Ljavax/net/ssl/SSLServerSocket;

    .line 193
    .local v1, "serverSocket":Ljavax/net/ssl/SSLServerSocket;
    iget-boolean v2, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->clientAuthNeeded:Z

    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLServerSocket;->setNeedClientAuth(Z)V

    .line 194
    iget-object v2, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    if-eqz v2, :cond_1

    array-length v3, v2

    if-lez v3, :cond_1

    .line 195
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLServerSocket;->setEnabledCipherSuites([Ljava/lang/String;)V

    .line 197
    :cond_1
    iget-object v2, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    if-eqz v2, :cond_2

    array-length v3, v2

    if-lez v3, :cond_2

    .line 198
    invoke-virtual {v1, v2}, Ljavax/net/ssl/SSLServerSocket;->setEnabledProtocols([Ljava/lang/String;)V

    .line 200
    :cond_2
    return-object v0
.end method

.method protected createServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 161
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    .line 162
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getServerSocketFactory()Ljavax/net/ssl/SSLServerSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public createSocket(Ljava/lang/String;I)Ljava/net/Socket;
    .locals 1
    .param p1, "host"    # Ljava/lang/String;
    .param p2, "port"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 214
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->createSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    .line 215
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->socketFactory:Ljavax/net/ssl/SSLSocketFactory;

    invoke-virtual {v0, p1, p2}, Ljavax/net/ssl/SSLSocketFactory;->createSocket(Ljava/lang/String;I)Ljava/net/Socket;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/SSLSocket;

    .line 216
    .local v0, "s":Ljavax/net/ssl/SSLSocket;
    invoke-direct {p0, v0}, Lorg/jpos/iso/GenericSSLSocketFactory;->verifyHostname(Ljavax/net/ssl/SSLSocket;)V

    .line 217
    return-object v0
.end method

.method protected createSocketFactory()Ljavax/net/ssl/SSLSocketFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 174
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jpos/iso/GenericSSLSocketFactory;->getSSLContext()Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    .line 175
    :cond_0
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->sslc:Ljavax/net/ssl/SSLContext;

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getSocketFactory()Ljavax/net/ssl/SSLSocketFactory;

    move-result-object v0

    return-object v0
.end method

.method public getClientAuthNeeded()Z
    .locals 1

    .line 334
    iget-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->clientAuthNeeded:Z

    return v0
.end method

.method public getConfiguration()Lorg/jpos/core/Configuration;
    .locals 1

    .line 362
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->cfg:Lorg/jpos/core/Configuration;

    return-object v0
.end method

.method public getEnabledCipherSuites()[Ljava/lang/String;
    .locals 1

    .line 346
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    return-object v0
.end method

.method protected getKeyPassword()Ljava/lang/String;
    .locals 2

    .line 326
    const-string v0, "jpos.ssl.keypass"

    const-string v1, "password"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKeyStore()Ljava/lang/String;
    .locals 1

    .line 316
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    return-object v0
.end method

.method protected getPassword()Ljava/lang/String;
    .locals 2

    .line 322
    const-string v0, "jpos.ssl.storepass"

    const-string v1, "password"

    invoke-static {v0, v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getServerAuthNeeded()Z
    .locals 1

    .line 338
    iget-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    return v0
.end method

.method public getServerName()Ljava/lang/String;
    .locals 1

    .line 330
    iget-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    return-object v0
.end method

.method public setClientAuthNeeded(Z)V
    .locals 0
    .param p1, "clientAuthNeeded"    # Z

    .line 89
    iput-boolean p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->clientAuthNeeded:Z

    .line 90
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 351
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->cfg:Lorg/jpos/core/Configuration;

    .line 352
    const-string v0, "keystore"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    .line 353
    const-string v0, "clientauth"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->clientAuthNeeded:Z

    .line 354
    const-string v0, "serverauth"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    .line 355
    const-string v0, "servername"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    .line 356
    const-string v0, "storepassword"

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 357
    const-string v0, "keypassword"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 358
    const-string v0, "addEnabledCipherSuite"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    .line 359
    const-string v0, "addEnabledProtocol"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->getAll(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledProtocols:[Ljava/lang/String;

    .line 360
    return-void
.end method

.method public setEnabledCipherSuites([Ljava/lang/String;)V
    .locals 0
    .param p1, "enabledCipherSuites"    # [Ljava/lang/String;

    .line 342
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->enabledCipherSuites:[Ljava/lang/String;

    .line 343
    return-void
.end method

.method public setKeyPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyPassword"    # Ljava/lang/String;

    .line 81
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyPassword:Ljava/lang/String;

    .line 82
    return-void
.end method

.method public setKeyStore(Ljava/lang/String;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/lang/String;

    .line 73
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->keyStore:Ljava/lang/String;

    .line 74
    return-void
.end method

.method public setPassword(Ljava/lang/String;)V
    .locals 0
    .param p1, "password"    # Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->password:Ljava/lang/String;

    .line 78
    return-void
.end method

.method public setServerAuthNeeded(Z)V
    .locals 0
    .param p1, "serverAuthNeeded"    # Z

    .line 93
    iput-boolean p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverAuthNeeded:Z

    .line 94
    return-void
.end method

.method public setServerName(Ljava/lang/String;)V
    .locals 0
    .param p1, "serverName"    # Ljava/lang/String;

    .line 85
    iput-object p1, p0, Lorg/jpos/iso/GenericSSLSocketFactory;->serverName:Ljava/lang/String;

    .line 86
    return-void
.end method
