.class public Lorg/apache/sshd/server/session/SessionFactory;
.super Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;
.source "SessionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<",
        "Lorg/apache/sshd/server/ServerFactoryManager;",
        "Lorg/apache/sshd/server/session/ServerSessionImpl;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lorg/apache/sshd/server/ServerFactoryManager;)V
    .locals 0
    .param p1, "server"    # Lorg/apache/sshd/server/ServerFactoryManager;

    .line 35
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;-><init>(Lorg/apache/sshd/common/FactoryManager;)V

    .line 36
    return-void
.end method


# virtual methods
.method protected bridge synthetic doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/session/SessionFactory;->doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/server/session/ServerSessionImpl;

    move-result-object p1

    return-object p1
.end method

.method protected doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/server/session/ServerSessionImpl;
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 44
    new-instance v0, Lorg/apache/sshd/server/session/ServerSessionImpl;

    invoke-virtual {p0}, Lorg/apache/sshd/server/session/SessionFactory;->getServer()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/server/session/ServerSessionImpl;-><init>(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    return-object v0
.end method

.method public final getServer()Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 1

    .line 39
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/SessionFactory;->getFactoryManager()Lorg/apache/sshd/common/FactoryManager;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/ServerFactoryManager;

    return-object v0
.end method
