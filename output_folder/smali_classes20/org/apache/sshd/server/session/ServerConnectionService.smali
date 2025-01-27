.class public Lorg/apache/sshd/server/session/ServerConnectionService;
.super Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;
.source "ServerConnectionService.java"

# interfaces
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/server/session/AbstractServerSession;)V
    .locals 2
    .param p1, "s"    # Lorg/apache/sshd/server/session/AbstractServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/sshd/common/SshException;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;-><init>(Lorg/apache/sshd/common/session/helpers/AbstractSession;)V

    .line 36
    invoke-virtual {p1}, Lorg/apache/sshd/server/session/AbstractServerSession;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 39
    return-void

    .line 37
    :cond_0
    new-instance v0, Lorg/apache/sshd/common/SshException;

    const-string v1, "Session is not authenticated"

    invoke-direct {v0, v1}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 43
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerConnectionService;->getSession()Lorg/apache/sshd/server/session/AbstractServerSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerConnectionService;->getSession()Lorg/apache/sshd/server/session/AbstractServerSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 1

    .line 29
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerConnectionService;->getSession()Lorg/apache/sshd/server/session/AbstractServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/AbstractServerSession;
    .locals 1

    .line 48
    invoke-super {p0}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionService;->getSession()Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/session/AbstractServerSession;

    return-object v0
.end method
