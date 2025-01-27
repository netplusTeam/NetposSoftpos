.class public Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;
.super Ljava/lang/Object;
.source "SSLChannelFactory.java"

# interfaces
.implements Lcom/sleepycat/je/rep/net/DataChannelFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    }
.end annotation


# static fields
.field private static final SSL_CONTEXT_PROTOCOL:Ljava/lang/String; = "TLS"

.field private static final X509_ALGO_NAME:Ljava/lang/String;

.field private static final X509_ALGO_NAME_PROPERTY:Ljava/lang/String; = "je.ssl.x509AlgoName"


# instance fields
.field private final baseSSLParameters:Ljavax/net/ssl/SSLParameters;

.field private final clientSSLContext:Ljavax/net/ssl/SSLContext;

.field private final logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

.field private final serverSSLContext:Ljavax/net/ssl/SSLContext;

.field private final sslAuthenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

.field private final sslHostVerifier:Ljavax/net/ssl/HostnameVerifier;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 76
    invoke-static {}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->getX509AlgoName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->X509_ALGO_NAME:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V
    .locals 2
    .param p1, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 113
    const/4 v0, 0x0

    invoke-static {p1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLContext(Lcom/sleepycat/je/rep/net/InstanceParams;Z)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->serverSSLContext:Ljavax/net/ssl/SSLContext;

    .line 114
    const/4 v1, 0x1

    invoke-static {p1, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLContext(Lcom/sleepycat/je/rep/net/InstanceParams;Z)Ljavax/net/ssl/SSLContext;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->clientSSLContext:Ljavax/net/ssl/SSLContext;

    .line 115
    nop

    .line 116
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLParameters(Lcom/sleepycat/je/rep/net/InstanceParams;)Ljavax/net/ssl/SSLParameters;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->filterSSLParameters(Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->baseSSLParameters:Ljavax/net/ssl/SSLParameters;

    .line 118
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLAuthenticator(Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslAuthenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    .line 119
    invoke-static {p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLHostVerifier(Lcom/sleepycat/je/rep/net/InstanceParams;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslHostVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 120
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getLoggerFactory()Lcom/sleepycat/je/rep/net/LoggerFactory;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/sleepycat/je/rep/net/LoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/sleepycat/je/rep/net/InstanceLogger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 121
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLContext;Ljavax/net/ssl/SSLParameters;Lcom/sleepycat/je/rep/net/SSLAuthenticator;Ljavax/net/ssl/HostnameVerifier;Lcom/sleepycat/je/rep/net/InstanceLogger;)V
    .locals 1
    .param p1, "serverSSLContext"    # Ljavax/net/ssl/SSLContext;
    .param p2, "clientSSLContext"    # Ljavax/net/ssl/SSLContext;
    .param p3, "baseSSLParameters"    # Ljavax/net/ssl/SSLParameters;
    .param p4, "sslAuthenticator"    # Lcom/sleepycat/je/rep/net/SSLAuthenticator;
    .param p5, "sslHostVerifier"    # Ljavax/net/ssl/HostnameVerifier;
    .param p6, "logger"    # Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 132
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 134
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->serverSSLContext:Ljavax/net/ssl/SSLContext;

    .line 135
    iput-object p2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->clientSSLContext:Ljavax/net/ssl/SSLContext;

    .line 136
    nop

    .line 137
    invoke-static {p3, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->filterSSLParameters(Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->baseSSLParameters:Ljavax/net/ssl/SSLParameters;

    .line 138
    iput-object p4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslAuthenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    .line 139
    iput-object p5, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslHostVerifier:Ljavax/net/ssl/HostnameVerifier;

    .line 140
    iput-object p6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    .line 141
    return-void
.end method

.method private static buildKeyManagerList(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;Ljava/lang/String;Z)[Ljavax/net/ssl/KeyManager;
    .locals 8
    .param p0, "ksInfo"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    .param p1, "ksAlias"    # Ljava/lang/String;
    .param p2, "clientMode"    # Z

    .line 353
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->X509_ALGO_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/KeyManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_3

    .line 357
    .local v0, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    nop

    .line 363
    :try_start_1
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$000(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$200(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)[C

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/security/UnrecoverableKeyException; {:try_start_1 .. :try_end_1} :catch_0

    .line 376
    nop

    .line 381
    invoke-virtual {v0}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 388
    .local v1, "kmList":[Ljavax/net/ssl/KeyManager;
    if-eqz p1, :cond_4

    .line 393
    const/4 v2, 0x0

    .line 394
    .local v2, "x509KeyManager":Ljavax/net/ssl/X509ExtendedKeyManager;
    array-length v3, v1

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v1, v5

    .line 395
    .local v6, "km":Ljavax/net/ssl/KeyManager;
    instance-of v7, v6, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-eqz v7, :cond_0

    .line 396
    move-object v2, v6

    check-cast v2, Ljavax/net/ssl/X509ExtendedKeyManager;

    .line 397
    goto :goto_1

    .line 394
    .end local v6    # "km":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 401
    :cond_1
    :goto_1
    if-eqz v2, :cond_3

    .line 407
    const/4 v3, 0x1

    new-array v3, v3, [Ljavax/net/ssl/KeyManager;

    const/4 v5, 0x0

    new-instance v6, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;

    if-eqz p2, :cond_2

    invoke-direct {v6, v2, v5, p1}, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;-><init>(Ljavax/net/ssl/X509ExtendedKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :cond_2
    invoke-direct {v6, v2, p1, v5}, Lcom/sleepycat/je/rep/utilint/net/AliasKeyManager;-><init>(Ljavax/net/ssl/X509ExtendedKeyManager;Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    aput-object v6, v3, v4

    move-object v1, v3

    goto :goto_3

    .line 402
    :cond_3
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to locate an X509ExtendedKeyManager corresponding to keyStore "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 404
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 413
    .end local v2    # "x509KeyManager":Ljavax/net/ssl/X509ExtendedKeyManager;
    :cond_4
    :goto_3
    return-object v1

    .line 372
    .end local v1    # "kmList":[Ljavax/net/ssl/KeyManager;
    :catch_0
    move-exception v1

    .line 373
    .local v1, "uke":Ljava/security/UnrecoverableKeyException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to recover key from keystore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 368
    .end local v1    # "uke":Ljava/security/UnrecoverableKeyException;
    :catch_1
    move-exception v1

    .line 369
    .local v1, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to find appropriate algorithm for keystore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 371
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 364
    .end local v1    # "nsae":Ljava/security/NoSuchAlgorithmException;
    :catch_2
    move-exception v1

    .line 365
    .local v1, "kse":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error processing keystore file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 366
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 354
    .end local v0    # "kmf":Ljavax/net/ssl/KeyManagerFactory;
    .end local v1    # "kse":Ljava/security/KeyStoreException;
    :catch_3
    move-exception v0

    .line 355
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find a suitable KeyManagerFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static buildTrustManagerList(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)[Ljavax/net/ssl/TrustManager;
    .locals 5
    .param p0, "tsInfo"    # Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    .line 513
    :try_start_0
    sget-object v0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->X509_ALGO_NAME:Ljava/lang/String;

    invoke-static {v0}, Ljavax/net/ssl/TrustManagerFactory;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_0 .. :try_end_0} :catch_1

    .line 517
    .local v0, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    nop

    .line 520
    :try_start_1
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$000(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/security/KeyStore;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V
    :try_end_1
    .catch Ljava/security/KeyStoreException; {:try_start_1 .. :try_end_1} :catch_0

    .line 524
    nop

    .line 526
    invoke-virtual {v0}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v1

    return-object v1

    .line 521
    :catch_0
    move-exception v1

    .line 522
    .local v1, "kse":Ljava/security/KeyStoreException;
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error initializing truststore "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 523
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$300(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 514
    .end local v0    # "tmf":Ljavax/net/ssl/TrustManagerFactory;
    .end local v1    # "kse":Ljava/security/KeyStoreException;
    :catch_1
    move-exception v0

    .line 515
    .local v0, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Unable to find a suitable TrustManagerFactory"

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method private static constructKSPasswordSource(Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/PasswordSource;
    .locals 4
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 857
    nop

    .line 858
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 860
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    nop

    .line 861
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStorePasswordClass()Ljava/lang/String;

    move-result-object v1

    .line 863
    .local v1, "pwSrcClassName":Ljava/lang/String;
    if-eqz v1, :cond_1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    .line 867
    :cond_0
    nop

    .line 868
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStorePasswordParams()Ljava/lang/String;

    move-result-object v2

    .line 870
    .local v2, "pwSrcParams":Ljava/lang/String;
    invoke-static {p0, v1, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructPasswordSource(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/PasswordSource;

    move-result-object v3

    return-object v3

    .line 864
    .end local v2    # "pwSrcParams":Ljava/lang/String;
    :cond_1
    :goto_0
    const/4 v2, 0x0

    return-object v2
.end method

.method private static constructPasswordSource(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/PasswordSource;
    .locals 7
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p1, "pwdSrcClassName"    # Ljava/lang/String;
    .param p2, "pwSrcParams"    # Ljava/lang/String;

    .line 838
    new-instance v0, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 839
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    .line 841
    .local v0, "objParams":Lcom/sleepycat/je/rep/net/InstanceParams;
    const-class v1, Lcom/sleepycat/je/rep/net/PasswordSource;

    new-instance v2, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;

    const/4 v3, 0x1

    new-array v4, v3, [Ljava/lang/Class;

    const-class v5, Lcom/sleepycat/je/rep/net/InstanceParams;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    new-array v3, v3, [Ljava/lang/Object;

    aput-object v0, v3, v6

    invoke-direct {v2, v4, v3}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    .line 842
    const-string v3, "password source"

    invoke-static {p1, v1, v3, v2}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->constructObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/net/PasswordSource;

    .line 841
    return-object v1
.end method

.method private static constructSSLAuthenticator(Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/SSLAuthenticator;
    .locals 6
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 702
    nop

    .line 703
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 705
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLAuthenticator()Ljava/lang/String;

    move-result-object v1

    .line 706
    .local v1, "authSpec":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLAuthenticatorClass()Ljava/lang/String;

    move-result-object v2

    .line 709
    .local v2, "authClassName":Ljava/lang/String;
    const-string v3, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 710
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 712
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot specify both authenticator and authenticatorClass"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 716
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 718
    invoke-static {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructStdAuthenticator(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    move-result-object v3

    return-object v3

    .line 721
    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 726
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLAuthenticatorParams()Ljava/lang/String;

    move-result-object v3

    .line 728
    .local v3, "authParams":Ljava/lang/String;
    const-class v4, Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    const-string v5, "authenticator"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLChecker(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    return-object v4

    .line 722
    .end local v3    # "authParams":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static constructSSLChecker(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;
    .locals 6
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p1, "checkerClassName"    # Ljava/lang/String;
    .param p2, "checkerClassParams"    # Ljava/lang/String;
    .param p4, "miDesc"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/net/InstanceParams;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 683
    .local p3, "mustImplement":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 684
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v1

    invoke-direct {v0, v1, p2}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    .line 686
    .local v0, "objParams":Lcom/sleepycat/je/rep/net/InstanceParams;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Lcom/sleepycat/je/rep/net/InstanceParams;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    invoke-direct {v1, v3, v2}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;-><init>([Ljava/lang/Class;[Ljava/lang/Object;)V

    invoke-static {p1, p3, p4, v1}, Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder;->constructObject(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;Lcom/sleepycat/je/rep/utilint/net/DataChannelFactoryBuilder$CtorArgSpec;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method private static constructSSLContext(Lcom/sleepycat/je/rep/net/InstanceParams;Z)Ljavax/net/ssl/SSLContext;
    .locals 9
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p1, "clientMode"    # Z

    .line 274
    nop

    .line 275
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 277
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    const/4 v1, 0x0

    .line 278
    .local v1, "kmList":[Ljavax/net/ssl/KeyManager;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v2

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->readKeyStoreInfo(Lcom/sleepycat/je/rep/net/InstanceContext;)Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    move-result-object v2

    .line 280
    .local v2, "ksInfo":Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    if-eqz v2, :cond_2

    .line 286
    if-eqz p1, :cond_0

    .line 287
    :try_start_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLClientKeyAlias()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    .line 288
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLServerKeyAlias()Ljava/lang/String;

    move-result-object v3

    :goto_0
    nop

    .line 289
    .local v3, "ksAliasProp":Ljava/lang/String;
    if-eqz v3, :cond_1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 290
    const/4 v3, 0x0

    .line 293
    :cond_1
    invoke-static {v2, v3, p1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->buildKeyManagerList(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;Ljava/lang/String;Z)[Ljavax/net/ssl/KeyManager;

    move-result-object v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 295
    .end local v3    # "ksAliasProp":Ljava/lang/String;
    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    .line 296
    goto :goto_1

    .line 295
    :catchall_0
    move-exception v3

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    throw v3

    .line 299
    :cond_2
    :goto_1
    const/4 v3, 0x0

    .line 300
    .local v3, "tmList":[Ljavax/net/ssl/TrustManager;
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->readTrustStoreInfo(Lcom/sleepycat/je/rep/net/InstanceContext;)Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    move-result-object v4

    .line 301
    .local v4, "tsInfo":Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    if-eqz v4, :cond_3

    .line 303
    :try_start_1
    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->buildTrustManagerList(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)[Ljavax/net/ssl/TrustManager;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v3, v5

    .line 305
    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    .line 306
    goto :goto_2

    .line 305
    :catchall_1
    move-exception v5

    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    throw v5

    .line 312
    :cond_3
    :goto_2
    const/4 v5, 0x0

    .line 314
    .local v5, "newContext":Ljavax/net/ssl/SSLContext;
    :try_start_2
    const-string v6, "TLS"

    invoke-static {v6}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v6
    :try_end_2
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_1

    move-object v5, v6

    .line 318
    nop

    .line 324
    const/4 v6, 0x0

    :try_start_3
    invoke-virtual {v5, v1, v3, v6}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V
    :try_end_3
    .catch Ljava/security/KeyManagementException; {:try_start_3 .. :try_end_3} :catch_0

    .line 328
    nop

    .line 330
    return-object v5

    .line 325
    :catch_0
    move-exception v6

    .line 326
    .local v6, "kme":Ljava/security/KeyManagementException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Error establishing SSLContext"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7

    .line 315
    .end local v6    # "kme":Ljava/security/KeyManagementException;
    :catch_1
    move-exception v6

    .line 316
    .local v6, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v7, Ljava/lang/IllegalStateException;

    const-string v8, "Unable to find a suitable SSLContext"

    invoke-direct {v7, v8, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v7
.end method

.method private static constructSSLHostVerifier(Lcom/sleepycat/je/rep/net/InstanceParams;)Ljavax/net/ssl/HostnameVerifier;
    .locals 6
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 766
    nop

    .line 767
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 768
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLHostVerifier()Ljava/lang/String;

    move-result-object v1

    .line 769
    .local v1, "hvSpec":Ljava/lang/String;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLHostVerifierClass()Ljava/lang/String;

    move-result-object v2

    .line 772
    .local v2, "hvClassName":Ljava/lang/String;
    const-string v3, ""

    if-eqz v1, :cond_1

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    if-eqz v2, :cond_1

    .line 773
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    .line 775
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "Cannot specify both hostVerifier and hostVerifierClass"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 779
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 781
    invoke-static {p0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructStdHostVerifier(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;

    move-result-object v3

    return-object v3

    .line 784
    :cond_2
    if-eqz v2, :cond_4

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    goto :goto_1

    .line 789
    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLHostVerifierParams()Ljava/lang/String;

    move-result-object v3

    .line 791
    .local v3, "hvParams":Ljava/lang/String;
    const-class v4, Ljavax/net/ssl/HostnameVerifier;

    const-string v5, "hostname verifier"

    invoke-static {p0, v2, v3, v4, v5}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructSSLChecker(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavax/net/ssl/HostnameVerifier;

    return-object v4

    .line 785
    .end local v3    # "hvParams":Ljava/lang/String;
    :cond_4
    :goto_1
    const/4 v3, 0x0

    return-object v3
.end method

.method private static constructSSLParameters(Lcom/sleepycat/je/rep/net/InstanceParams;)Ljavax/net/ssl/SSLParameters;
    .locals 7
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 573
    nop

    .line 574
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 579
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLCipherSuites()Ljava/lang/String;

    move-result-object v1

    .line 580
    .local v1, "cipherSuitesProp":Ljava/lang/String;
    const/4 v2, 0x0

    .line 581
    .local v2, "cipherSuites":[Ljava/lang/String;
    const-string v3, ","

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 582
    invoke-virtual {v1, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 588
    :cond_0
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLProtocols()Ljava/lang/String;

    move-result-object v4

    .line 589
    .local v4, "protocolsProp":Ljava/lang/String;
    const/4 v5, 0x0

    .line 590
    .local v5, "protocols":[Ljava/lang/String;
    if-eqz v4, :cond_1

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 591
    invoke-virtual {v4, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 594
    :cond_1
    new-instance v3, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v3, v2, v5}, Ljavax/net/ssl/SSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    return-object v3
.end method

.method private static constructStdAuthenticator(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;)Lcom/sleepycat/je/rep/net/SSLAuthenticator;
    .locals 4
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p1, "authSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 740
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 741
    const-string v0, "dnmatch("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 743
    nop

    .line 744
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 745
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 744
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 746
    .local v0, "match":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;

    new-instance v2, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 747
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 746
    return-object v1

    .line 748
    .end local v0    # "match":Ljava/lang/String;
    :cond_0
    const-string v0, "mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 750
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorAuthenticator;

    new-instance v1, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 751
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorAuthenticator;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 750
    return-object v0

    .line 754
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid authenticator specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static constructStdHostVerifier(Lcom/sleepycat/je/rep/net/InstanceParams;Ljava/lang/String;)Ljavax/net/ssl/HostnameVerifier;
    .locals 4
    .param p0, "params"    # Lcom/sleepycat/je/rep/net/InstanceParams;
    .param p1, "hvSpec"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 803
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 804
    const-string v0, "dnmatch("

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, ")"

    invoke-virtual {p1, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 806
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    .line 807
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    .line 806
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 808
    .local v0, "match":Ljava/lang/String;
    new-instance v1, Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;

    new-instance v2, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 809
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 808
    return-object v1

    .line 811
    .end local v0    # "match":Ljava/lang/String;
    :cond_0
    const-string v0, "mirror"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 813
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorHostVerifier;

    new-instance v2, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 814
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLMirrorHostVerifier;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 813
    return-object v0

    .line 816
    :cond_1
    const-string v0, "hostname"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 818
    new-instance v0, Lcom/sleepycat/je/rep/utilint/net/SSLStdHostVerifier;

    new-instance v2, Lcom/sleepycat/je/rep/net/InstanceParams;

    .line 819
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceParams;->getContext()Lcom/sleepycat/je/rep/net/InstanceContext;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    invoke-direct {v0, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLStdHostVerifier;-><init>(Lcom/sleepycat/je/rep/net/InstanceParams;)V

    .line 818
    return-object v0

    .line 822
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " is not a valid hostVerifier specification."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static filterConfig([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;
    .locals 9
    .param p0, "configChoices"    # [Ljava/lang/String;
    .param p1, "supported"    # [Ljava/lang/String;

    .line 646
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 647
    .local v0, "keep":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    array-length v1, p0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, p0, v3

    .line 648
    .local v4, "choice":Ljava/lang/String;
    array-length v5, p1

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, p1, v6

    .line 649
    .local v7, "supp":Ljava/lang/String;
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_0

    .line 650
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 651
    goto :goto_2

    .line 648
    .end local v7    # "supp":Ljava/lang/String;
    :cond_0
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 647
    .end local v4    # "choice":Ljava/lang/String;
    :cond_1
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 655
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    return-object v1
.end method

.method private static filterSSLParameters(Ljavax/net/ssl/SSLParameters;Ljavax/net/ssl/SSLContext;)Ljavax/net/ssl/SSLParameters;
    .locals 6
    .param p0, "configParams"    # Ljavax/net/ssl/SSLParameters;
    .param p1, "filterContext"    # Ljavax/net/ssl/SSLContext;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 605
    invoke-virtual {p1}, Ljavax/net/ssl/SSLContext;->getSupportedSSLParameters()Ljavax/net/ssl/SSLParameters;

    move-result-object v0

    .line 608
    .local v0, "suppParams":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v1

    .line 609
    .local v1, "configCipherSuites":[Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 610
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getCipherSuites()[Ljava/lang/String;

    move-result-object v2

    .line 611
    .local v2, "suppCipherSuites":[Ljava/lang/String;
    nop

    .line 612
    invoke-static {v1, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->filterConfig([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 613
    array-length v3, v1

    if-eqz v3, :cond_0

    goto :goto_0

    .line 614
    :cond_0
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string v4, "None of the configured SSL cipher suites are supported by the environment."

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 621
    .end local v2    # "suppCipherSuites":[Ljava/lang/String;
    :cond_1
    :goto_0
    nop

    .line 622
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v2

    .line 623
    .local v2, "configProtocols":[Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 624
    invoke-virtual {v0}, Ljavax/net/ssl/SSLParameters;->getProtocols()[Ljava/lang/String;

    move-result-object v3

    .line 625
    .local v3, "suppProtocols":[Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->filterConfig([Ljava/lang/String;[Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 626
    array-length v4, v2

    if-eqz v4, :cond_2

    goto :goto_1

    .line 627
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "None of the configured SSL protocols are supported by the environment."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 633
    .end local v3    # "suppProtocols":[Ljava/lang/String;
    :cond_3
    :goto_1
    new-instance v3, Ljavax/net/ssl/SSLParameters;

    invoke-direct {v3, v1, v2}, Ljavax/net/ssl/SSLParameters;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    .line 635
    .local v3, "newParams":Ljavax/net/ssl/SSLParameters;
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getWantClientAuth()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLParameters;->setWantClientAuth(Z)V

    .line 636
    invoke-virtual {p0}, Ljavax/net/ssl/SSLParameters;->getNeedClientAuth()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavax/net/ssl/SSLParameters;->setNeedClientAuth(Z)V

    .line 637
    return-object v3
.end method

.method private static getKeyStorePassword(Lcom/sleepycat/je/rep/net/InstanceContext;)[C
    .locals 5
    .param p0, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;

    .line 467
    nop

    .line 468
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 470
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    const/4 v1, 0x0

    .line 477
    .local v1, "ksPw":[C
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStorePasswordSource()Lcom/sleepycat/je/rep/net/PasswordSource;

    move-result-object v2

    .line 478
    .local v2, "ksPwSource":Lcom/sleepycat/je/rep/net/PasswordSource;
    if-nez v2, :cond_0

    .line 479
    new-instance v3, Lcom/sleepycat/je/rep/net/InstanceParams;

    const/4 v4, 0x0

    invoke-direct {v3, p0, v4}, Lcom/sleepycat/je/rep/net/InstanceParams;-><init>(Lcom/sleepycat/je/rep/net/InstanceContext;Ljava/lang/String;)V

    .line 480
    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->constructKSPasswordSource(Lcom/sleepycat/je/rep/net/InstanceParams;)Lcom/sleepycat/je/rep/net/PasswordSource;

    move-result-object v2

    .line 483
    :cond_0
    if-eqz v2, :cond_1

    .line 484
    invoke-interface {v2}, Lcom/sleepycat/je/rep/net/PasswordSource;->getPassword()[C

    move-result-object v1

    goto :goto_0

    .line 487
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStorePassword()Ljava/lang/String;

    move-result-object v3

    .line 488
    .local v3, "ksPwProp":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 494
    :cond_2
    nop

    .line 495
    const-string v4, "javax.net.ssl.keyStorePassword"

    invoke-static {v4}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 497
    :cond_3
    if-eqz v3, :cond_4

    .line 498
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 502
    .end local v3    # "ksPwProp":Ljava/lang/String;
    :cond_4
    :goto_0
    return-object v1
.end method

.method private static getX509AlgoName()Ljava/lang/String;
    .locals 3

    .line 945
    const-string v0, "je.ssl.x509AlgoName"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 946
    .local v0, "x509Name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 947
    return-object v0

    .line 949
    :cond_0
    const-string v1, "java.vendor"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 950
    .local v1, "jvmVendor":Ljava/lang/String;
    const-string v2, "IBM"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 951
    const-string v2, "IbmX509"

    return-object v2

    .line 953
    :cond_1
    const-string v2, "SunX509"

    return-object v2
.end method

.method public static isValidAuthenticator(Ljava/lang/String;)Z
    .locals 3
    .param p0, "authSpec"    # Ljava/lang/String;

    .line 224
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 226
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "mirror"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 230
    :cond_0
    const-string v0, "dnmatch("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 232
    :try_start_0
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNAuthenticator;->validate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    return v1

    .line 234
    :catch_0
    move-exception v0

    .line 235
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    return v2

    .line 239
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v2

    .line 227
    :cond_2
    :goto_0
    return v1
.end method

.method public static isValidHostVerifier(Ljava/lang/String;)Z
    .locals 3
    .param p0, "hvSpec"    # Ljava/lang/String;

    .line 247
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p0

    .line 249
    const-string v0, ""

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_2

    const-string v0, "mirror"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 250
    const-string v0, "hostname"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 254
    :cond_0
    const-string v0, "dnmatch("

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const-string v0, ")"

    invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    :try_start_0
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLDNHostVerifier;->validate(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    nop

    .line 260
    return v1

    .line 257
    :catch_0
    move-exception v0

    .line 258
    .local v0, "iae":Ljava/lang/IllegalArgumentException;
    return v2

    .line 262
    .end local v0    # "iae":Ljava/lang/IllegalArgumentException;
    :cond_1
    return v2

    .line 251
    :cond_2
    :goto_0
    return v1
.end method

.method private static loadStore(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;
    .locals 6
    .param p0, "storeName"    # Ljava/lang/String;
    .param p1, "storePassword"    # [C
    .param p2, "storeFlavor"    # Ljava/lang/String;
    .param p3, "storeType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 887
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 888
    :cond_0
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object p3

    .line 893
    :cond_1
    :try_start_0
    invoke-static {p3}, Ljava/security/KeyStore;->getInstance(Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v0
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_6

    .line 899
    .local v0, "ks":Ljava/security/KeyStore;
    nop

    .line 903
    :try_start_1
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_5

    .line 908
    .local v1, "fis":Ljava/io/FileInputStream;
    nop

    .line 911
    :try_start_2
    invoke-virtual {v0, v1, p1}, Ljava/security/KeyStore;->load(Ljava/io/InputStream;[C)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_3
    .catch Ljava/security/NoSuchAlgorithmException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/security/cert/CertificateException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 926
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 929
    goto :goto_0

    .line 927
    :catch_0
    move-exception v2

    .line 930
    nop

    .line 932
    :goto_0
    return-object v0

    .line 925
    :catchall_0
    move-exception v2

    goto :goto_1

    .line 920
    :catch_1
    move-exception v2

    .line 921
    .local v2, "ce":Ljava/security/cert/CertificateException;
    :try_start_4
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Not all certificates could be loaded: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "storeName":Ljava/lang/String;
    .end local p1    # "storePassword":[C
    .end local p2    # "storeFlavor":Ljava/lang/String;
    .end local p3    # "storeType":Ljava/lang/String;
    throw v3

    .line 916
    .end local v2    # "ce":Ljava/security/cert/CertificateException;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "storeName":Ljava/lang/String;
    .restart local p1    # "storePassword":[C
    .restart local p2    # "storeFlavor":Ljava/lang/String;
    .restart local p3    # "storeType":Ljava/lang/String;
    :catch_2
    move-exception v2

    .line 917
    .local v2, "nsae":Ljava/security/NoSuchAlgorithmException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unable to check "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " integrity: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "storeName":Ljava/lang/String;
    .end local p1    # "storePassword":[C
    .end local p2    # "storeFlavor":Ljava/lang/String;
    .end local p3    # "storeType":Ljava/lang/String;
    throw v3

    .line 912
    .end local v2    # "nsae":Ljava/security/NoSuchAlgorithmException;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "storeName":Ljava/lang/String;
    .restart local p1    # "storePassword":[C
    .restart local p2    # "storeFlavor":Ljava/lang/String;
    .restart local p3    # "storeType":Ljava/lang/String;
    :catch_3
    move-exception v2

    .line 913
    .local v2, "ioe":Ljava/io/IOException;
    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error reading from "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " file "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "fis":Ljava/io/FileInputStream;
    .end local p0    # "storeName":Ljava/lang/String;
    .end local p1    # "storePassword":[C
    .end local p2    # "storeFlavor":Ljava/lang/String;
    .end local p3    # "storeType":Ljava/lang/String;
    throw v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 926
    .end local v2    # "ioe":Ljava/io/IOException;
    .restart local v0    # "ks":Ljava/security/KeyStore;
    .restart local v1    # "fis":Ljava/io/FileInputStream;
    .restart local p0    # "storeName":Ljava/lang/String;
    .restart local p1    # "storePassword":[C
    .restart local p2    # "storeFlavor":Ljava/lang/String;
    .restart local p3    # "storeType":Ljava/lang/String;
    :goto_1
    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_4

    .line 929
    goto :goto_2

    .line 927
    :catch_4
    move-exception v3

    .line 929
    :goto_2
    throw v2

    .line 904
    .end local v1    # "fis":Ljava/io/FileInputStream;
    :catch_5
    move-exception v1

    .line 905
    .local v1, "fnfe":Ljava/io/FileNotFoundException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to locate specified "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 894
    .end local v0    # "ks":Ljava/security/KeyStore;
    .end local v1    # "fnfe":Ljava/io/FileNotFoundException;
    :catch_6
    move-exception v0

    .line 895
    .local v0, "kse":Ljava/security/KeyStoreException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to find a "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " instance of type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public static readKeyStore(Lcom/sleepycat/je/rep/net/InstanceContext;)Ljava/security/KeyStore;
    .locals 2
    .param p0, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;

    .line 212
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->readKeyStoreInfo(Lcom/sleepycat/je/rep/net/InstanceContext;)Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    move-result-object v0

    .line 214
    .local v0, "ksInfo":Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    :try_start_0
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$000(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)Ljava/security/KeyStore;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 216
    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    .line 214
    return-object v1

    .line 216
    :catchall_0
    move-exception v1

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;->access$100(Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;)V

    throw v1
.end method

.method private static readKeyStoreInfo(Lcom/sleepycat/je/rep/net/InstanceContext;)Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    .locals 8
    .param p0, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;

    .line 421
    nop

    .line 422
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 427
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStore()Ljava/lang/String;

    move-result-object v1

    .line 428
    .local v1, "ksProp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 429
    :cond_0
    const-string v2, "javax.net.ssl.keyStore"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 432
    :cond_1
    const/4 v2, 0x0

    if-nez v1, :cond_2

    .line 433
    return-object v2

    .line 440
    :cond_2
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLKeyStoreType()Ljava/lang/String;

    move-result-object v3

    .line 442
    .local v3, "ksTypeProp":Ljava/lang/String;
    invoke-static {p0}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->getKeyStorePassword(Lcom/sleepycat/je/rep/net/InstanceContext;)[C

    move-result-object v4

    .line 444
    .local v4, "ksPw":[C
    const/16 v5, 0x20

    if-eqz v4, :cond_4

    .line 452
    :try_start_0
    const-string v6, "keystore"

    invoke-static {v1, v4, v6, v3}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->loadStore(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v6

    .line 454
    .local v6, "ks":Ljava/security/KeyStore;
    new-instance v7, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    invoke-direct {v7, v1, v6, v4, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;-><init>(Ljava/lang/String;Ljava/security/KeyStore;[CLcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$1;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 456
    if-eqz v4, :cond_3

    .line 457
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    .line 454
    :cond_3
    return-object v7

    .line 456
    .end local v6    # "ks":Ljava/security/KeyStore;
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 445
    :cond_4
    :try_start_1
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string v6, "Unable to open keystore without a password"

    invoke-direct {v2, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local v0    # "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    .end local v1    # "ksProp":Ljava/lang/String;
    .end local v3    # "ksTypeProp":Ljava/lang/String;
    .end local v4    # "ksPw":[C
    .end local p0    # "context":Lcom/sleepycat/je/rep/net/InstanceContext;
    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 456
    .restart local v0    # "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    .restart local v1    # "ksProp":Ljava/lang/String;
    .restart local v3    # "ksTypeProp":Ljava/lang/String;
    .restart local v4    # "ksPw":[C
    .restart local p0    # "context":Lcom/sleepycat/je/rep/net/InstanceContext;
    :goto_0
    if-eqz v4, :cond_5

    .line 457
    invoke-static {v4, v5}, Ljava/util/Arrays;->fill([CC)V

    :cond_5
    throw v2
.end method

.method private static readTrustStoreInfo(Lcom/sleepycat/je/rep/net/InstanceContext;)Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;
    .locals 6
    .param p0, "context"    # Lcom/sleepycat/je/rep/net/InstanceContext;

    .line 534
    nop

    .line 535
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/net/InstanceContext;->getRepNetConfig()Lcom/sleepycat/je/rep/ReplicationNetworkConfig;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/ReplicationSSLConfig;

    .line 540
    .local v0, "config":Lcom/sleepycat/je/rep/ReplicationSSLConfig;
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLTrustStore()Ljava/lang/String;

    move-result-object v1

    .line 541
    .local v1, "tsProp":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 542
    :cond_0
    const-string v2, "javax.net.ssl.trustStore"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 548
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/ReplicationSSLConfig;->getSSLTrustStoreType()Ljava/lang/String;

    move-result-object v2

    .line 549
    .local v2, "tsTypeProp":Ljava/lang/String;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 550
    :cond_2
    invoke-static {}, Ljava/security/KeyStore;->getDefaultType()Ljava/lang/String;

    move-result-object v2

    .line 557
    :cond_3
    const/4 v3, 0x0

    if-eqz v1, :cond_4

    .line 558
    nop

    .line 559
    const-string/jumbo v4, "truststore"

    invoke-static {v1, v3, v4, v2}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->loadStore(Ljava/lang/String;[CLjava/lang/String;Ljava/lang/String;)Ljava/security/KeyStore;

    move-result-object v4

    .line 561
    .local v4, "ts":Ljava/security/KeyStore;
    new-instance v5, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;

    invoke-direct {v5, v1, v4, v3, v3}, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$KeyStoreInfo;-><init>(Ljava/lang/String;Ljava/security/KeyStore;[CLcom/sleepycat/je/rep/utilint/net/SSLChannelFactory$1;)V

    return-object v5

    .line 564
    .end local v4    # "ts":Ljava/security/KeyStore;
    :cond_4
    return-object v3
.end method


# virtual methods
.method public acceptChannel(Ljava/nio/channels/SocketChannel;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 11
    .param p1, "socketChannel"    # Ljava/nio/channels/SocketChannel;

    .line 149
    nop

    .line 150
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/Socket;->getRemoteSocketAddress()Ljava/net/SocketAddress;

    move-result-object v0

    .line 151
    .local v0, "socketAddress":Ljava/net/SocketAddress;
    const/4 v1, 0x0

    .line 152
    .local v1, "host":Ljava/lang/String;
    if-eqz v0, :cond_2

    .line 157
    instance-of v2, v0, Ljava/net/InetSocketAddress;

    if-eqz v2, :cond_0

    .line 158
    move-object v2, v0

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->serverSSLContext:Ljavax/net/ssl/SSLContext;

    .line 163
    invoke-virtual {p1}, Ljava/nio/channels/SocketChannel;->socket()Ljava/net/Socket;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/Socket;->getPort()I

    move-result v3

    .line 162
    invoke-virtual {v2, v1, v3}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v2

    .line 164
    .local v2, "engine":Ljavax/net/ssl/SSLEngine;
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->baseSSLParameters:Ljavax/net/ssl/SSLParameters;

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 165
    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 166
    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslAuthenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    if-eqz v3, :cond_1

    .line 167
    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavax/net/ssl/SSLEngine;->setWantClientAuth(Z)V

    .line 170
    :cond_1
    new-instance v3, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslAuthenticator:Lcom/sleepycat/je/rep/net/SSLAuthenticator;

    iget-object v10, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    move-object v4, v3

    move-object v5, p1

    move-object v6, v2

    invoke-direct/range {v4 .. v10}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Lcom/sleepycat/je/rep/net/SSLAuthenticator;Lcom/sleepycat/je/rep/net/InstanceLogger;)V

    return-object v3

    .line 153
    .end local v2    # "engine":Ljavax/net/ssl/SSLEngine;
    :cond_2
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "socketChannel is not connected"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public connect(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 11
    .param p1, "addr"    # Ljava/net/InetSocketAddress;
    .param p2, "localAddr"    # Ljava/net/InetSocketAddress;
    .param p3, "connectOptions"    # Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 184
    nop

    .line 185
    invoke-static {p1, p2, p3}, Lcom/sleepycat/je/rep/utilint/RepUtils;->openSocketChannel(Ljava/net/InetSocketAddress;Ljava/net/InetSocketAddress;Lcom/sleepycat/je/rep/net/DataChannelFactory$ConnectOptions;)Ljava/nio/channels/SocketChannel;

    move-result-object v7

    .line 192
    .local v7, "socketChannel":Ljava/nio/channels/SocketChannel;
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v0

    .line 193
    .local v0, "host":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 194
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object v0

    move-object v8, v0

    goto :goto_0

    .line 193
    :cond_0
    move-object v8, v0

    .line 197
    .end local v0    # "host":Ljava/lang/String;
    .local v8, "host":Ljava/lang/String;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->clientSSLContext:Ljavax/net/ssl/SSLContext;

    .line 198
    invoke-virtual {p1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v1

    invoke-virtual {v0, v8, v1}, Ljavax/net/ssl/SSLContext;->createSSLEngine(Ljava/lang/String;I)Ljavax/net/ssl/SSLEngine;

    move-result-object v9

    .line 199
    .local v9, "engine":Ljavax/net/ssl/SSLEngine;
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->baseSSLParameters:Ljavax/net/ssl/SSLParameters;

    invoke-virtual {v9, v0}, Ljavax/net/ssl/SSLEngine;->setSSLParameters(Ljavax/net/ssl/SSLParameters;)V

    .line 200
    const/4 v0, 0x1

    invoke-virtual {v9, v0}, Ljavax/net/ssl/SSLEngine;->setUseClientMode(Z)V

    .line 202
    new-instance v10, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;

    iget-object v4, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->sslHostVerifier:Ljavax/net/ssl/HostnameVerifier;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/net/SSLChannelFactory;->logger:Lcom/sleepycat/je/rep/net/InstanceLogger;

    move-object v0, v10

    move-object v1, v7

    move-object v2, v9

    move-object v3, v8

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/rep/utilint/net/SSLDataChannel;-><init>(Ljava/nio/channels/SocketChannel;Ljavax/net/ssl/SSLEngine;Ljava/lang/String;Ljavax/net/ssl/HostnameVerifier;Lcom/sleepycat/je/rep/net/SSLAuthenticator;Lcom/sleepycat/je/rep/net/InstanceLogger;)V

    return-object v10
.end method
