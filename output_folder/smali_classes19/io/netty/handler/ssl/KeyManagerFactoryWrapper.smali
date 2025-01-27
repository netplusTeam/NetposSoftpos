.class final Lio/netty/handler/ssl/KeyManagerFactoryWrapper;
.super Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;
.source "KeyManagerFactoryWrapper.java"


# instance fields
.field private final km:Ljavax/net/ssl/KeyManager;


# direct methods
.method constructor <init>(Ljavax/net/ssl/KeyManager;)V
    .locals 1
    .param p1, "km"    # Ljavax/net/ssl/KeyManager;

    .line 29
    invoke-direct {p0}, Lio/netty/handler/ssl/util/SimpleKeyManagerFactory;-><init>()V

    .line 30
    const-string v0, "km"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/KeyManager;

    iput-object v0, p0, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    .line 31
    return-void
.end method


# virtual methods
.method protected engineGetKeyManagers()[Ljavax/net/ssl/KeyManager;
    .locals 3

    .line 42
    const/4 v0, 0x1

    new-array v0, v0, [Ljavax/net/ssl/KeyManager;

    iget-object v1, p0, Lio/netty/handler/ssl/KeyManagerFactoryWrapper;->km:Ljavax/net/ssl/KeyManager;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    return-object v0
.end method

.method protected engineInit(Ljava/security/KeyStore;[C)V
    .locals 0
    .param p1, "keyStore"    # Ljava/security/KeyStore;
    .param p2, "var2"    # [C
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
