.class public Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;
.super Ljava/lang/Object;
.source "SSLContextFactoryBean.java"


# static fields
.field private static final JSSE_KEY_STORE_PROPERTY:Ljava/lang/String; = "javax.net.ssl.keyStore"

.field private static final JSSE_TRUST_STORE_PROPERTY:Ljava/lang/String; = "javax.net.ssl.trustStore"


# instance fields
.field private keyManagerFactory:Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

.field private keyStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

.field private protocol:Ljava/lang/String;

.field private provider:Ljava/lang/String;

.field private secureRandom:Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

.field private trustManagerFactory:Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

.field private trustStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private createKeyManagers(Lch/qos/logback/core/spi/ContextAware;)[Ljavax/net/ssl/KeyManager;
    .locals 5
    .param p1, "context"    # Lch/qos/logback/core/spi/ContextAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 103
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getKeyStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 106
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getKeyStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->createKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 107
    .local v0, "keyStore":Ljava/security/KeyStore;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "key store of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getKeyStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 109
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getKeyManagerFactory()Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;->createKeyManagerFactory()Ljavax/net/ssl/KeyManagerFactory;

    move-result-object v1

    .line 110
    .local v1, "kmf":Ljavax/net/ssl/KeyManagerFactory;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "key manager algorithm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 112
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getKeyStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getPassword()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 113
    .local v2, "passphrase":[C
    invoke-virtual {v1, v0, v2}, Ljavax/net/ssl/KeyManagerFactory;->init(Ljava/security/KeyStore;[C)V

    .line 114
    invoke-virtual {v1}, Ljavax/net/ssl/KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v3

    return-object v3
.end method

.method private createSecureRandom(Lch/qos/logback/core/spi/ContextAware;)Ljava/security/SecureRandom;
    .locals 3
    .param p1, "context"    # Lch/qos/logback/core/spi/ContextAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;
        }
    .end annotation

    .line 147
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getSecureRandom()Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;->createSecureRandom()Ljava/security/SecureRandom;

    move-result-object v0

    .line 148
    .local v0, "secureRandom":Ljava/security/SecureRandom;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "secure random algorithm \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/SecureRandom;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 150
    return-object v0
.end method

.method private createTrustManagers(Lch/qos/logback/core/spi/ContextAware;)[Ljavax/net/ssl/TrustManager;
    .locals 5
    .param p1, "context"    # Lch/qos/logback/core/spi/ContextAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 132
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getTrustStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    if-nez v0, :cond_0

    .line 133
    const/4 v0, 0x0

    return-object v0

    .line 135
    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getTrustStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    invoke-virtual {v0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->createKeyStore()Ljava/security/KeyStore;

    move-result-object v0

    .line 136
    .local v0, "trustStore":Ljava/security/KeyStore;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "trust store of type \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljava/security/KeyStore;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "\': "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getTrustStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v3

    invoke-virtual {v3}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->getLocation()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 138
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getTrustManagerFactory()Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    move-result-object v1

    invoke-virtual {v1}, Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;->createTrustManagerFactory()Ljavax/net/ssl/TrustManagerFactory;

    move-result-object v1

    .line 139
    .local v1, "tmf":Ljavax/net/ssl/TrustManagerFactory;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "trust manager algorithm \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 141
    invoke-virtual {v1, v0}, Ljavax/net/ssl/TrustManagerFactory;->init(Ljava/security/KeyStore;)V

    .line 142
    invoke-virtual {v1}, Ljavax/net/ssl/TrustManagerFactory;->getTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    return-object v2
.end method

.method private keyStoreFromSystemProperties(Ljava/lang/String;)Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;
    .locals 3
    .param p1, "property"    # Ljava/lang/String;

    .line 200
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    .line 201
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    new-instance v0, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;-><init>()V

    .line 203
    .local v0, "keyStore":Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;
    invoke-direct {p0, p1}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->locationFromSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->setLocation(Ljava/lang/String;)V

    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Provider"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->setProvider(Ljava/lang/String;)V

    .line 205
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Password"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->setPassword(Ljava/lang/String;)V

    .line 206
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "Type"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;->setType(Ljava/lang/String;)V

    .line 207
    return-object v0
.end method

.method private locationFromSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 217
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 218
    .local v0, "location":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, "file:"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 219
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 221
    :cond_0
    return-object v0
.end method


# virtual methods
.method public createContext(Lch/qos/logback/core/spi/ContextAware;)Ljavax/net/ssl/SSLContext;
    .locals 4
    .param p1, "context"    # Lch/qos/logback/core/spi/ContextAware;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/NoSuchProviderException;,
            Ljava/security/NoSuchAlgorithmException;,
            Ljava/security/KeyManagementException;,
            Ljava/security/UnrecoverableKeyException;,
            Ljava/security/KeyStoreException;,
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 77
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getProvider()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->getProtocol()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljavax/net/ssl/SSLContext;->getInstance(Ljava/lang/String;)Ljavax/net/ssl/SSLContext;

    move-result-object v0

    .line 79
    .local v0, "sslContext":Ljavax/net/ssl/SSLContext;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "SSL protocol \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getProtocol()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\' provider \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v0}, Ljavax/net/ssl/SSLContext;->getProvider()Ljava/security/Provider;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v1}, Lch/qos/logback/core/spi/ContextAware;->addInfo(Ljava/lang/String;)V

    .line 81
    invoke-direct {p0, p1}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->createKeyManagers(Lch/qos/logback/core/spi/ContextAware;)[Ljavax/net/ssl/KeyManager;

    move-result-object v1

    .line 82
    .local v1, "keyManagers":[Ljavax/net/ssl/KeyManager;
    invoke-direct {p0, p1}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->createTrustManagers(Lch/qos/logback/core/spi/ContextAware;)[Ljavax/net/ssl/TrustManager;

    move-result-object v2

    .line 83
    .local v2, "trustManagers":[Ljavax/net/ssl/TrustManager;
    invoke-direct {p0, p1}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->createSecureRandom(Lch/qos/logback/core/spi/ContextAware;)Ljava/security/SecureRandom;

    move-result-object v3

    .line 84
    .local v3, "secureRandom":Ljava/security/SecureRandom;
    invoke-virtual {v0, v1, v2, v3}, Ljavax/net/ssl/SSLContext;->init([Ljavax/net/ssl/KeyManager;[Ljavax/net/ssl/TrustManager;Ljava/security/SecureRandom;)V

    .line 85
    return-object v0
.end method

.method public getKeyManagerFactory()Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;
    .locals 1

    .line 250
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyManagerFactory:Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    if-nez v0, :cond_0

    .line 251
    new-instance v0, Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;-><init>()V

    return-object v0

    .line 253
    :cond_0
    return-object v0
.end method

.method public getKeyStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;
    .locals 1

    .line 159
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    if-nez v0, :cond_0

    .line 160
    const-string v0, "javax.net.ssl.keyStore"

    invoke-direct {p0, v0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStoreFromSystemProperties(Ljava/lang/String;)Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 162
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    return-object v0
.end method

.method public getProtocol()Ljava/lang/String;
    .locals 1

    .line 291
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->protocol:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 292
    const-string v0, "SSL"

    return-object v0

    .line 294
    :cond_0
    return-object v0
.end method

.method public getProvider()Ljava/lang/String;
    .locals 1

    .line 312
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->provider:Ljava/lang/String;

    return-object v0
.end method

.method public getSecureRandom()Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;
    .locals 1

    .line 230
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->secureRandom:Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    if-nez v0, :cond_0

    .line 231
    new-instance v0, Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;-><init>()V

    return-object v0

    .line 233
    :cond_0
    return-object v0
.end method

.method public getTrustManagerFactory()Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;
    .locals 1

    .line 270
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustManagerFactory:Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    if-nez v0, :cond_0

    .line 271
    new-instance v0, Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    invoke-direct {v0}, Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;-><init>()V

    return-object v0

    .line 273
    :cond_0
    return-object v0
.end method

.method public getTrustStore()Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;
    .locals 1

    .line 179
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    if-nez v0, :cond_0

    .line 180
    const-string v0, "javax.net.ssl.trustStore"

    invoke-direct {p0, v0}, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStoreFromSystemProperties(Ljava/lang/String;)Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 182
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    return-object v0
.end method

.method public setKeyManagerFactory(Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;)V
    .locals 0
    .param p1, "keyManagerFactory"    # Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    .line 261
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyManagerFactory:Lch/qos/logback/core/net/ssl/KeyManagerFactoryFactoryBean;

    .line 262
    return-void
.end method

.method public setKeyStore(Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;)V
    .locals 0
    .param p1, "keyStore"    # Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 170
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->keyStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 171
    return-void
.end method

.method public setProtocol(Ljava/lang/String;)V
    .locals 0
    .param p1, "protocol"    # Ljava/lang/String;

    .line 304
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->protocol:Ljava/lang/String;

    .line 305
    return-void
.end method

.method public setProvider(Ljava/lang/String;)V
    .locals 0
    .param p1, "provider"    # Ljava/lang/String;

    .line 321
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->provider:Ljava/lang/String;

    .line 322
    return-void
.end method

.method public setSecureRandom(Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;)V
    .locals 0
    .param p1, "secureRandom"    # Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    .line 241
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->secureRandom:Lch/qos/logback/core/net/ssl/SecureRandomFactoryBean;

    .line 242
    return-void
.end method

.method public setTrustManagerFactory(Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;)V
    .locals 0
    .param p1, "trustManagerFactory"    # Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    .line 281
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustManagerFactory:Lch/qos/logback/core/net/ssl/TrustManagerFactoryFactoryBean;

    .line 282
    return-void
.end method

.method public setTrustStore(Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;)V
    .locals 0
    .param p1, "trustStore"    # Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 190
    iput-object p1, p0, Lch/qos/logback/core/net/ssl/SSLContextFactoryBean;->trustStore:Lch/qos/logback/core/net/ssl/KeyStoreFactoryBean;

    .line 191
    return-void
.end method
