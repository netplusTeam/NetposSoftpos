.class final Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;
.super Ljavax/net/ssl/KeyManagerFactorySpi;
.source "SimpleKeyManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SimpleKeyManagerFactorySpi"
.end annotation


# instance fields
.field private volatile keyManagers:[Ljavax/net/ssl/KeyManager;

.field private parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 99
    invoke-direct {p0}, Ljavax/net/ssl/KeyManagerFactorySpi;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$1;

    .line 99
    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;-><init>()V

    return-void
.end method

.method private static wrapIfNeeded([Ljavax/net/ssl/KeyManager;)V
    .locals 4
    .param p0, "keyManagers"    # [Ljavax/net/ssl/KeyManager;

    .line 146
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 147
    aget-object v1, p0, v0

    .line 148
    .local v1, "tm":Ljavax/net/ssl/KeyManager;
    instance-of v2, v1, Ljavax/net/ssl/X509KeyManager;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedKeyManager;

    if-nez v2, :cond_0

    .line 149
    new-instance v2, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;

    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/X509KeyManager;

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/util/X509KeyManagerWrapper;-><init>(Ljavax/net/ssl/X509KeyManager;)V

    aput-object v2, p0, v0

    .line 146
    .end local v1    # "tm":Ljavax/net/ssl/KeyManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 152
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 133
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 134
    .local v0, "keyManagers":[Ljavax/net/ssl/KeyManager;
    if-nez v0, :cond_1

    .line 135
    iget-object v1, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v1}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    .line 136
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 137
    invoke-static {v0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->wrapIfNeeded([Ljavax/net/ssl/KeyManager;)V

    .line 139
    :cond_0
    iput-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->keyManagers:[Ljavax/net/ssl/KeyManager;

    .line 141
    :cond_1
    invoke-virtual {v0}, [Ljavax/net/ssl/KeyManager;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/KeyManager;

    return-object v1
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 2
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "pwd"    # [C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 111
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v0, p1, p2}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineInit(Ljava/security/KeyStore;[C)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    nop

    .line 117
    return-void

    .line 114
    :catch_0
    move-exception v0

    .line 115
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 112
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 113
    .local v0, "e":Ljava/security/KeyStoreException;
    throw v0
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 2
    .param p1, "managerFactoryParameters"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/InvalidAlgorithmParameterException;
        }
    .end annotation

    .line 123
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 128
    nop

    .line 129
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 124
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 125
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    throw v0
.end method

.method init(Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;)V
    .locals 0
    .param p1, "parent"    # Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    .line 105
    iput-object p1, p0, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory$SimpleKeyManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;

    .line 106
    return-void
.end method
