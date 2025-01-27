.class public abstract Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractSessionIoHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoHandler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method protected abstract createSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public exceptionCaught(Lorg/apache/sshd/common/io/IoSession;Ljava/lang/Throwable;)V
    .locals 4
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "cause"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 51
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;Z)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 52
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    if-eqz v0, :cond_0

    .line 53
    invoke-virtual {v0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 57
    return-void

    .line 55
    :cond_0
    new-instance v1, Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "No session available to signal caught exception="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lorg/apache/sshd/common/session/helpers/MissingAttachedSessionException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public messageReceived(Lorg/apache/sshd/common/io/IoSession;Lorg/apache/sshd/common/util/Readable;)V
    .locals 6
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .param p2, "message"    # Lorg/apache/sshd/common/util/Readable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 61
    invoke-static {p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 63
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    :try_start_0
    invoke-virtual {v0, p2}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->messageReceived(Lorg/apache/sshd/common/util/Readable;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    .line 74
    nop

    .line 75
    return-void

    .line 64
    :catch_0
    move-exception v1

    .line 65
    .local v1, "e":Ljava/lang/Error;
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 66
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;->log:Lorg/slf4j/Logger;

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    .line 67
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {v1}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 66
    const-string v4, "messageReceived({}) failed {} to handle message: {}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 70
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 71
    iget-object v2, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;->log:Lorg/slf4j/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "messageReceived("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ") message handling error details"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 73
    :cond_1
    new-instance v2, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v2, v1}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public sessionClosed(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 45
    invoke-static {p1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->getSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 46
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/session/helpers/AbstractSession;->close(Z)Lorg/apache/sshd/common/future/CloseFuture;

    .line 47
    return-void
.end method

.method public sessionCreated(Lorg/apache/sshd/common/io/IoSession;)V
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;->createSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    const-string v1, "No session created for %s"

    invoke-static {v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 41
    return-void
.end method
