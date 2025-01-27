.class public abstract Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractConnectionServiceRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/session/ConnectionServiceRequestHandler;


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 36
    return-void
.end method


# virtual methods
.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 30
    check-cast p1, Lorg/apache/sshd/common/session/ConnectionService;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/session/ConnectionService;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 4
    .param p1, "connectionService"    # Lorg/apache/sshd/common/session/ConnectionService;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 40
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractConnectionServiceRequestHandler;->log:Lorg/slf4j/Logger;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const-string v2, "process({}) request={}, want-reply={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 44
    :cond_0
    sget-object v0, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v0
.end method
