.class public Lorg/apache/sshd/client/session/SessionFactory;
.super Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;
.source "SessionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<",
        "Lorg/apache/sshd/client/ClientFactoryManager;",
        "Lorg/apache/sshd/client/session/ClientSessionImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/ClientFactoryManager;)V
    .locals 0
    .param p1, "client"    # Lorg/apache/sshd/client/ClientFactoryManager;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;-><init>(Lorg/apache/sshd/common/FactoryManager;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/client/session/ClientSessionImpl;
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/sshd/client/session/ClientSessionImpl;

    invoke-virtual {p0}, Lorg/apache/sshd/client/session/SessionFactory;->getClient()Lorg/apache/sshd/client/ClientFactoryManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/client/session/ClientSessionImpl;-><init>(Lorg/apache/sshd/client/ClientFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    return-object v0
.end method

.method protected bridge synthetic doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/session/SessionFactory;->doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/client/session/ClientSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method public final getClient()Lorg/apache/sshd/client/ClientFactoryManager;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/SessionFactory;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/ClientFactoryManager;

    return-object v0
.end method
