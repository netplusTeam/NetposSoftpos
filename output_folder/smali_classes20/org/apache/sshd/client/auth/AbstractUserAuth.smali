.class public abstract Lorg/apache/sshd/client/auth/AbstractUserAuth;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractUserAuth.java"

# interfaces
.implements Lorg/apache/sshd/client/auth/UserAuth;


# instance fields
.field private clientSession:Lorg/apache/sshd/client/session/ClientSession;

.field private final name:Ljava/lang/String;

.field private service:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 38
    const-string v0, "No name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->name:Ljava/lang/String;

    .line 39
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 4

    .line 83
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->log:Lorg/slf4j/Logger;

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getService()Ljava/lang/String;

    move-result-object v2

    const-string v3, "destroy({})[{}]"

    invoke-interface {v0, v3, v1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 86
    :cond_0
    return-void
.end method

.method public getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 43
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->clientSession:Lorg/apache/sshd/client/session/ClientSession;

    return-object v0
.end method

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 53
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getService()Ljava/lang/String;
    .locals 1

    .line 57
    iget-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->service:Ljava/lang/String;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 48
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/SessionContext;
    .locals 1

    .line 32
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .param p2, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 62
    const-string v0, "No client session"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSession;

    iput-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->clientSession:Lorg/apache/sshd/client/session/ClientSession;

    .line 63
    const-string v0, "No service"

    invoke-static {p2, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/auth/AbstractUserAuth;->service:Ljava/lang/String;

    .line 64
    return-void
.end method

.method public process(Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 68
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 69
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getService()Ljava/lang/String;

    move-result-object v1

    .line 70
    .local v1, "service":Ljava/lang/String;
    if-nez p1, :cond_0

    .line 71
    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z

    move-result v2

    return v2

    .line 73
    :cond_0
    invoke-virtual {p0, v0, v1, p1}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    return v2
.end method

.method protected abstract processAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method protected abstract sendAuthDataRequest(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 90
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ": "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/apache/sshd/client/auth/AbstractUserAuth;->getService()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
