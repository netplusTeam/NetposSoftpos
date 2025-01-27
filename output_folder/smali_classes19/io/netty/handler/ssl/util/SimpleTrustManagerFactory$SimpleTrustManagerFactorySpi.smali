.class final Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;
.super Ljavax/net/ssl/TrustManagerFactorySpi;
.source "SimpleTrustManagerFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "SimpleTrustManagerFactorySpi"
.end annotation


# instance fields
.field private parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

.field private volatile trustManagers:[Ljavax/net/ssl/TrustManager;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 101
    invoke-direct {p0}, Ljavax/net/ssl/TrustManagerFactorySpi;-><init>()V

    return-void
.end method

.method private static wrapIfNeeded([Ljavax/net/ssl/TrustManager;)V
    .locals 4
    .param p0, "trustManagers"    # [Ljavax/net/ssl/TrustManager;

    .line 148
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p0

    if-ge v0, v1, :cond_1

    .line 149
    aget-object v1, p0, v0

    .line 150
    .local v1, "tm":Ljavax/net/ssl/TrustManager;
    instance-of v2, v1, Ljavax/net/ssl/X509TrustManager;

    if-eqz v2, :cond_0

    instance-of v2, v1, Ljavax/net/ssl/X509ExtendedTrustManager;

    if-nez v2, :cond_0

    .line 151
    new-instance v2, Lio/netty/handler/ssl/util/X509TrustManagerWrapper;

    move-object v3, v1

    check-cast v3, Ljavax/net/ssl/X509TrustManager;

    invoke-direct {v2, v3}, Lio/netty/handler/ssl/util/X509TrustManagerWrapper;-><init>(Ljavax/net/ssl/X509TrustManager;)V

    aput-object v2, p0, v0

    .line 148
    .end local v1    # "tm":Ljavax/net/ssl/TrustManager;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 154
    .end local v0    # "i":I
    :cond_1
    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .line 135
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 136
    .local v0, "trustManagers":[Ljavax/net/ssl/TrustManager;
    if-nez v0, :cond_1

    .line 137
    iget-object v1, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v1}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;

    move-result-object v0

    .line 138
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->javaVersion()I

    move-result v1

    const/4 v2, 0x7

    if-lt v1, v2, :cond_0

    .line 139
    invoke-static {v0}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->wrapIfNeeded([Ljavax/net/ssl/TrustManager;)V

    .line 141
    :cond_0
    iput-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->trustManagers:[Ljavax/net/ssl/TrustManager;

    .line 143
    :cond_1
    invoke-virtual {v0}, [Ljavax/net/ssl/TrustManager;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljavax/net/ssl/TrustManager;

    return-object v1
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 2
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/KeyStoreException;
        }
    .end annotation

    .line 113
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineInit(Ljava/security/KeyStore;)V
    :try_end_0
    .catch Ljava/security/KeyStoreException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 118
    nop

    .line 119
    return-void

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/KeyStoreException;

    invoke-direct {v1, v0}, Ljava/security/KeyStoreException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 114
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 115
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

    .line 125
    :try_start_0
    iget-object v0, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    invoke-virtual {v0, p1}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;->engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    :try_end_0
    .catch Ljava/security/InvalidAlgorithmParameterException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 130
    nop

    .line 131
    return-void

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/security/InvalidAlgorithmParameterException;

    invoke-direct {v1, v0}, Ljava/security/InvalidAlgorithmParameterException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 126
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v0

    .line 127
    .local v0, "e":Ljava/security/InvalidAlgorithmParameterException;
    throw v0
.end method

.method init(Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;)V
    .locals 0
    .param p1, "parent"    # Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    .line 107
    iput-object p1, p0, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory$SimpleTrustManagerFactorySpi;->parent:Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;

    .line 108
    return-void
.end method
