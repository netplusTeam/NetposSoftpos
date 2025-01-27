.class final Lio/netty/handler/ssl/TrustManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;
.source "TrustManagerFactoryWrapper.java"


# instance fields
.field private final tm:Ljavax/net/ssl/TrustManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/TrustManager;)V
    .locals 1
    .param p1, "tm"    # Ljavax/net/ssl/TrustManager;

    .line 29
    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleTrustManagerFactory;-><init>()V

    .line 30
    const-string v0, "tm"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/TrustManager;

    iput-object v0, p0, Lio/netty/handler/ssl/TrustManagerFactoryWrapper;->tm:Ljavax/net/ssl/TrustManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected engineGetTrustManagers()[Ljavax/net/ssl/TrustManager;
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/TrustManager;

    iget-object v1, p0, Lio/netty/handler/ssl/TrustManagerFactoryWrapper;->tm:Ljavax/net/ssl/TrustManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    return-void
.end method

.method protected engineInit(Ljavax/net/ssl/ManagerFactoryParameters;)V
    .locals 0
    .param p1, "managerFactoryParameters"    # Ljavax/net/ssl/ManagerFactoryParameters;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 38
    return-void
.end method
