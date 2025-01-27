.class public abstract Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;
.super Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;
.source "AbstractChannelExitRequestHandler.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;",
        "Lorg/apache/sshd/common/NamedResource;"
    }
.end annotation


# instance fields
.field protected final holder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;"
        }
    .end annotation
.end field

.field protected final notifier:Lorg/apache/sshd/common/util/EventNotifier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/sshd/common/util/EventNotifier<",
            "-",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/concurrent/atomic/AtomicReference;Lorg/apache/sshd/common/util/EventNotifier;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "TV;>;",
            "Lorg/apache/sshd/common/util/EventNotifier<",
            "-",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;, "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<TV;>;"
    .local p1, "holder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<TV;>;"
    .local p2, "notifier":Lorg/apache/sshd/common/util/EventNotifier;, "Lorg/apache/sshd/common/util/EventNotifier<-Ljava/lang/String;>;"
    invoke-direct {p0}, Lorg/apache/sshd/common/channel/AbstractChannelRequestHandler;-><init>()V

    .line 51
    const-string v0, "No exit status holder"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicReference;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->holder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 52
    const-string v0, "No event notifier"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/util/EventNotifier;

    iput-object v0, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->notifier:Lorg/apache/sshd/common/util/EventNotifier;

    .line 53
    return-void
.end method


# virtual methods
.method protected getEvent(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 1
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/Channel;",
            "Ljava/lang/String;",
            "TV;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;, "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected notifyStateChanged(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 8
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/Channel;",
            "Ljava/lang/String;",
            "TV;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;, "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<TV;>;"
    .local p3, "value":Ljava/lang/Object;, "TV;"
    invoke-virtual {p0, p1, p2, p3}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->getEvent(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "event":Ljava/lang/String;
    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    :try_start_0
    iget-object v5, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->notifier:Lorg/apache/sshd/common/util/EventNotifier;

    invoke-interface {v5, v0}, Lorg/apache/sshd/common/util/EventNotifier;->notifyEvent(Ljava/lang/Object;)V

    .line 104
    iget-object v5, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 105
    iget-object v5, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    const-string v6, "notifyStateChanged({})[{}] event={}"

    new-array v7, v1, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v3

    aput-object v0, v7, v2

    invoke-interface {v5, v6, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 120
    :cond_0
    nop

    .line 121
    return-void

    .line 107
    :catch_0
    move-exception v5

    .line 108
    .local v5, "e":Ljava/lang/Exception;
    iget-object v6, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x5

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v3

    .line 109
    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v2

    aput-object v0, v7, v1

    const/4 v1, 0x4

    invoke-virtual {v5}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v7, v1

    .line 108
    const-string v1, "notifyStateChanged({})[{}] Failed ({}) to notify event={}: {}"

    invoke-interface {v6, v1, v7}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 110
    iget-object v1, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyStateChanged("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "] event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " notification failure details"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 115
    :cond_1
    instance-of v1, v5, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_2

    .line 116
    move-object v1, v5

    check-cast v1, Ljava/lang/RuntimeException;

    throw v1

    .line 118
    :cond_2
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public bridge synthetic process(Ljava/lang/Object;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 39
    .local p0, "this":Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;, "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<TV;>;"
    check-cast p1, Lorg/apache/sshd/common/channel/Channel;

    invoke-virtual {p0, p1, p2, p3, p4}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;

    move-result-object p1

    return-object p1
.end method

.method public process(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;ZLorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/channel/RequestHandler$Result;
    .locals 8
    .param p1, "channel"    # Lorg/apache/sshd/common/channel/Channel;
    .param p2, "request"    # Ljava/lang/String;
    .param p3, "wantReply"    # Z
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 57
    .local p0, "this":Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;, "Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler<TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->getName()Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "name":Ljava/lang/String;
    invoke-virtual {v0, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-eqz v1, :cond_1

    .line 59
    invoke-virtual {p0, p1, p2, p4}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;

    move-result-object v1

    .line 60
    .local v1, "value":Ljava/lang/Object;, "TV;"
    if-eqz v1, :cond_1

    .line 61
    iget-object v6, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v6}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 62
    iget-object v6, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    const/4 v7, 0x4

    new-array v7, v7, [Ljava/lang/Object;

    aput-object p1, v7, v4

    aput-object p2, v7, v3

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v7, v2

    aput-object v1, v7, v5

    const-string v2, "process({})[{}] wantReply={}: {}"

    invoke-interface {v6, v2, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 65
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->holder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 66
    invoke-virtual {p0, p1, p2, v1}, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->notifyStateChanged(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Ljava/lang/Object;)V

    .line 67
    sget-object v2, Lorg/apache/sshd/common/channel/RequestHandler$Result;->ReplySuccess:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v2

    .line 71
    .end local v1    # "value":Ljava/lang/Object;, "TV;"
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 72
    iget-object v1, p0, Lorg/apache/sshd/client/channel/exit/AbstractChannelExitRequestHandler;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v4

    invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v5, v3

    aput-object p2, v5, v2

    const-string v2, "process({}) wantReply={} ignore request={}"

    invoke-interface {v1, v2, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 74
    :cond_2
    sget-object v1, Lorg/apache/sshd/common/channel/RequestHandler$Result;->Unsupported:Lorg/apache/sshd/common/channel/RequestHandler$Result;

    return-object v1
.end method

.method protected abstract processRequestValue(Lorg/apache/sshd/common/channel/Channel;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/channel/Channel;",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            ")TV;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
