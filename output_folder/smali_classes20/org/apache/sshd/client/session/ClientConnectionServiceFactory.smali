.class public Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;
.super Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;
.source "ClientConnectionServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/ServiceFactory;


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 34
    new-instance v0, Lorg/apache/sshd/client/session/ClientConnectionServiceFactory$1;

    invoke-direct {v0}, Lorg/apache/sshd/client/session/ClientConnectionServiceFactory$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;->INSTANCE:Lorg/apache/sshd/client/session/ClientConnectionServiceFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/apache/sshd/common/session/AbstractConnectionServiceFactory;-><init>()V

    .line 53
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 62
    const-class v0, Lorg/apache/sshd/client/session/AbstractClientSession;

    .line 63
    const-string v1, "Not a client session: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/AbstractClientSession;

    .line 64
    .local v0, "abstractSession":Lorg/apache/sshd/client/session/AbstractClientSession;
    new-instance v1, Lorg/apache/sshd/client/session/ClientConnectionService;

    invoke-direct {v1, v0}, Lorg/apache/sshd/client/session/ClientConnectionService;-><init>(Lorg/apache/sshd/client/session/AbstractClientSession;)V

    .line 65
    .local v1, "service":Lorg/apache/sshd/client/session/ClientConnectionService;
    invoke-virtual {v1, p0}, Lorg/apache/sshd/client/session/ClientConnectionService;->addPortForwardingEventListenerManager(Lorg/apache/sshd/common/forward/PortForwardingEventListenerManager;)Z

    .line 66
    return-object v1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 57
    const-string v0, "ssh-connection"

    return-object v0
.end method
