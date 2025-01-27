.class public Lorg/apache/sshd/server/session/ServerSessionImpl;
.super Lorg/apache/sshd/server/session/AbstractServerSession;
.source "ServerSessionImpl.java"


# direct methods
.method public constructor <init>(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "server"    # Lorg/apache/sshd/server/ServerFactoryManager;
    .param p2, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/server/session/AbstractServerSession;-><init>(Lorg/apache/sshd/server/ServerFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    .line 33
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/session/ServerSessionImpl;->signalSessionCreated(Lorg/apache/sshd/common/io/IoSession;)V

    .line 35
    const-string v0, "server-extra-identification-lines"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/ServerSessionImpl;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 36
    .local v0, "headerConfig":Ljava/lang/String;
    const/16 v1, 0x7c

    invoke-static {v0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v1

    .line 38
    .local v1, "headers":[Ljava/lang/String;
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/session/ServerSessionImpl;->sendServerIdentification([Ljava/lang/String;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 39
    return-void
.end method
