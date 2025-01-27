.class public final Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;
.super Ljavax/net/ssl/KeyManagerFactory;
.source "OpenSslCachingX509KeyManagerFactory.java"


# instance fields
.field private final maxCachedEntries:I


# direct methods
.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;)V
    .locals 1
    .param p1, "factory"    # Ljavax/net/ssl/KeyManagerFactory;

    .line 46
    const/16 v0, 0x400

    invoke-direct {p0, p1, v0}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactory;I)V

    .line 47
    return-void
.end method

.method public constructor <init>(Ljavax/net/ssl/KeyManagerFactory;I)V
    .locals 3
    .param p1, "factory"    # Ljavax/net/ssl/KeyManagerFactory;
    .param p2, "maxCachedEntries"    # I

    .line 50
    new-instance v0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;

    invoke-direct {v0, p1}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory$1;-><init>(Ljavax/net/ssl/KeyManagerFactory;)V

    .line 67
    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getProvider()Ljava/security/Provider;

    move-result-object v1

    invoke-virtual {p1}, Ljavax/net/ssl/KeyManagerFactory;->getAlgorithm()Ljava/lang/String;

    move-result-object v2

    .line 50
    invoke-direct {p0, v0, v1, v2}, Ljavax/net/ssl/KeyManagerFactory;-><init>(Ljavax/net/ssl/KeyManagerFactorySpi;Ljava/security/Provider;Ljava/lang/String;)V

    .line 68
    const-string v0, "maxCachedEntries"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    iput v0, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->maxCachedEntries:I

    .line 69
    return-void
.end method


# virtual methods
.method newProvider(Ljava/lang/String;)Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;
    .locals 4
    .param p1, "password"    # Ljava/lang/String;

    .line 72
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v0

    invoke-static {v0}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v0

    .line 73
    .local v0, "keyManager":Ljavax/net/ssl/X509KeyManager;
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "sun.security.ssl.X509KeyManagerImpl"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    new-instance v1, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;

    invoke-direct {v1, v0, p1}, Lio/netty/handler/ssl/OpenSslKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;)V

    return-object v1

    .line 78
    :cond_0
    new-instance v1, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;

    .line 79
    invoke-virtual {p0}, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->getKeyManagers()[Ljavax/net/ssl/KeyManager;

    move-result-object v2

    invoke-static {v2}, Lio/netty/handler/ssl/ReferenceCountedOpenSslContext;->chooseX509KeyManager([Ljavax/net/ssl/KeyManager;)Ljavax/net/ssl/X509KeyManager;

    move-result-object v2

    iget v3, p0, Lio/netty/handler/ssl/OpenSslCachingX509KeyManagerFactory;->maxCachedEntries:I

    invoke-direct {v1, v2, p1, v3}, Lio/netty/handler/ssl/OpenSslCachingKeyMaterialProvider;-><init>(Ljavax/net/ssl/X509KeyManager;Ljava/lang/String;I)V

    .line 78
    return-object v1
.end method
