.class public Lorg/apache/sshd/client/session/ClientSessionImpl;
.super Lorg/apache/sshd/client/session/AbstractClientSession;
.source "ClientSessionImpl.java"


# instance fields
.field private authFuture:Lorg/apache/sshd/client/future/AuthFuture;

.field private currentServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

.field private initialServiceRequestSent:Z

.field private metadataMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private nextService:Lorg/apache/sshd/common/Service;

.field private nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/client/ClientFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V
    .locals 8
    .param p1, "client"    # Lorg/apache/sshd/client/ClientFactoryManager;
    .param p2, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 67
    invoke-direct {p0, p1, p2}, Lorg/apache/sshd/client/session/AbstractClientSession;-><init>(Lorg/apache/sshd/client/ClientFactoryManager;Lorg/apache/sshd/common/io/IoSession;)V

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->metadataMap:Ljava/util/Map;

    .line 68
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string v1, "Client session created: {}"

    invoke-interface {v0, v1, p2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_0
    invoke-interface {p1}, Lorg/apache/sshd/client/ClientFactoryManager;->getServiceFactories()Ljava/util/List;

    move-result-object v0

    .line 75
    .local v0, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/common/ServiceFactory;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 76
    .local v1, "numFactories":I
    const/4 v2, 0x1

    const/4 v3, 0x0

    if-lez v1, :cond_1

    const/4 v4, 0x2

    if-gt v1, v4, :cond_1

    move v4, v2

    goto :goto_0

    :cond_1
    move v4, v3

    :goto_0
    int-to-long v5, v1

    const-string v7, "One or two services must be configured: %d"

    invoke-static {v4, v7, v5, v6}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;J)V

    .line 78
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/ServiceFactory;

    iput-object v4, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    .line 79
    invoke-interface {v4, p0}, Lorg/apache/sshd/common/ServiceFactory;->create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;

    move-result-object v4

    iput-object v4, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentService:Lorg/apache/sshd/common/Service;

    .line 80
    if-le v1, v2, :cond_2

    .line 81
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/ServiceFactory;

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    .line 82
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/ServiceFactory;->create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextService:Lorg/apache/sshd/common/Service;

    goto :goto_1

    .line 84
    :cond_2
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    .line 87
    :goto_1
    new-instance v2, Lorg/apache/sshd/client/future/DefaultAuthFuture;

    invoke-interface {p2}, Lorg/apache/sshd/common/io/IoSession;->getRemoteAddress()Ljava/net/SocketAddress;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    invoke-direct {v2, v4, v5}, Lorg/apache/sshd/client/future/DefaultAuthFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    .line 88
    invoke-interface {v2, v3}, Lorg/apache/sshd/client/future/AuthFuture;->setAuthed(Z)V

    .line 90
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/session/ClientSessionImpl;->signalSessionCreated(Lorg/apache/sshd/common/io/IoSession;)V

    .line 98
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->initializeProxyConnector()V

    .line 100
    iget-boolean v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->sendImmediateClientIdentification:Z

    if-eqz v2, :cond_3

    .line 101
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->sendClientIdentification()Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 103
    iget-boolean v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->sendImmediateKexInit:Z

    if-eqz v2, :cond_3

    .line 104
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->initializeKeyExchangePhase()V

    .line 107
    :cond_3
    return-void
.end method


# virtual methods
.method public auth()Lorg/apache/sshd/client/future/AuthFuture;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->getUsername()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->getUserAuthService()Lorg/apache/sshd/client/session/ClientUserAuthService;

    move-result-object v0

    .line 125
    .local v0, "authService":Lorg/apache/sshd/client/session/ClientUserAuthService;
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->sessionLock:Ljava/lang/Object;

    monitor-enter v1

    .line 126
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceName()Ljava/lang/String;

    move-result-object v2

    .line 127
    .local v2, "serviceName":Ljava/lang/String;
    nop

    .line 129
    invoke-virtual {v0, v2}, Lorg/apache/sshd/client/session/ClientUserAuthService;->auth(Ljava/lang/String;)Lorg/apache/sshd/client/future/AuthFuture;

    move-result-object v3

    const-string v4, "No auth future generated by service=%s"

    .line 128
    invoke-static {v3, v4, v2}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/client/future/AuthFuture;

    iput-object v3, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    .line 130
    monitor-exit v1

    return-object v3

    .line 131
    .end local v2    # "serviceName":Ljava/lang/String;
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 121
    .end local v0    # "authService":Lorg/apache/sshd/client/session/ClientUserAuthService;
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No username specified when the session was created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public exceptionCaught(Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "t"    # Ljava/lang/Throwable;

    .line 136
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    invoke-virtual {p0, v0, p1}, Lorg/apache/sshd/client/session/ClientSessionImpl;->signalAuthFailure(Lorg/apache/sshd/client/future/AuthFuture;Ljava/lang/Throwable;)V

    .line 137
    invoke-super {p0, p1}, Lorg/apache/sshd/client/session/AbstractClientSession;->exceptionCaught(Ljava/lang/Throwable;)V

    .line 138
    return-void
.end method

.method public getMetadataMap()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 324
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->metadataMap:Ljava/util/Map;

    return-object v0
.end method

.method protected getServices()Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/Service;",
            ">;"
        }
    .end annotation

    .line 111
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextService:Lorg/apache/sshd/common/Service;

    if-eqz v0, :cond_0

    .line 112
    const/4 v0, 0x2

    new-array v0, v0, [Lorg/apache/sshd/common/Service;

    const/4 v1, 0x0

    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentService:Lorg/apache/sshd/common/Service;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextService:Lorg/apache/sshd/common/Service;

    aput-object v2, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 114
    :cond_0
    invoke-super {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->getServices()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getSessionState()Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;"
        }
    .end annotation

    .line 301
    const-class v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 302
    .local v0, "state":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    monitor-enter v1

    .line 303
    :try_start_0
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->updateCurrentSessionState(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/Set;

    monitor-exit v1

    return-object v2

    .line 304
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method protected handleDisconnect(ILjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    new-instance v1, Lorg/apache/sshd/common/SshException;

    invoke-direct {v1, p1, p2}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/session/ClientSessionImpl;->signalAuthFailure(Lorg/apache/sshd/client/future/AuthFuture;Ljava/lang/Throwable;)V

    .line 149
    invoke-super {p0, p1, p2, p3, p4}, Lorg/apache/sshd/client/session/AbstractClientSession;->handleDisconnect(ILjava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 150
    return-void
.end method

.method protected nextServiceName()Ljava/lang/String;
    .locals 2

    .line 177
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 178
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    invoke-interface {v1}, Lorg/apache/sshd/common/ServiceFactory;->getName()Ljava/lang/String;

    move-result-object v1

    monitor-exit v0

    return-object v1

    .line 179
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected preClose()V
    .locals 3

    .line 142
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "Session is being closed"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/client/session/ClientSessionImpl;->signalAuthFailure(Lorg/apache/sshd/client/future/AuthFuture;Ljava/lang/Throwable;)V

    .line 143
    invoke-super {p0}, Lorg/apache/sshd/client/session/AbstractClientSession;->preClose()V

    .line 144
    return-void
.end method

.method protected sendInitialServiceRequest()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 207
    iget-boolean v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->initialServiceRequestSent:Z

    if-eqz v0, :cond_0

    .line 208
    return-void

    .line 210
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->initialServiceRequestSent:Z

    .line 211
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    invoke-interface {v0}, Lorg/apache/sshd/common/ServiceFactory;->getName()Ljava/lang/String;

    move-result-object v0

    .line 212
    .local v0, "serviceName":Ljava/lang/String;
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 213
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "sendInitialServiceRequest({}) Send SSH_MSG_SERVICE_REQUEST for {}"

    invoke-interface {v1, v2, p0, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 216
    :cond_1
    const/4 v1, 0x5

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x8

    invoke-virtual {p0, v1, v2}, Lorg/apache/sshd/client/session/ClientSessionImpl;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v1

    .line 217
    .local v1, "request":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 218
    invoke-virtual {p0, v1}, Lorg/apache/sshd/client/session/ClientSessionImpl;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 223
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentService:Lorg/apache/sshd/common/Service;

    invoke-interface {v2}, Lorg/apache/sshd/common/Service;->start()V

    .line 224
    return-void
.end method

.method protected signalAuthFailure(Lorg/apache/sshd/client/future/AuthFuture;Ljava/lang/Throwable;)V
    .locals 6
    .param p1, "future"    # Lorg/apache/sshd/client/future/AuthFuture;
    .param p2, "t"    # Ljava/lang/Throwable;

    .line 153
    const/4 v0, 0x0

    .line 154
    .local v0, "signalled":Z
    if-eqz p1, :cond_1

    .line 162
    monitor-enter p1

    .line 163
    :try_start_0
    invoke-interface {p1}, Lorg/apache/sshd/client/future/AuthFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-interface {p1, p2}, Lorg/apache/sshd/client/future/AuthFuture;->setException(Ljava/lang/Throwable;)V

    .line 165
    const/4 v0, 0x1

    .line 167
    :cond_0
    monitor-exit p1

    goto :goto_0

    :catchall_0
    move-exception v1

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    .line 170
    :cond_1
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 171
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string v2, "signalAuthFailure({}) type={}, signalled={}: {}"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p0, v3, v4

    const/4 v4, 0x1

    .line 172
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 171
    invoke-interface {v1, v2, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 174
    :cond_2
    return-void
.end method

.method protected signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V
    .locals 2
    .param p1, "event"    # Lorg/apache/sshd/common/session/SessionListener$Event;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 197
    sget-object v0, Lorg/apache/sshd/common/session/SessionListener$Event;->KeyEstablished:Lorg/apache/sshd/common/session/SessionListener$Event;

    invoke-virtual {v0, p1}, Lorg/apache/sshd/common/session/SessionListener$Event;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->sendInitialServiceRequest()V

    .line 200
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    monitor-enter v0

    .line 201
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 202
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    invoke-super {p0, p1}, Lorg/apache/sshd/client/session/AbstractClientSession;->signalSessionEvent(Lorg/apache/sshd/common/session/SessionListener$Event;)V

    .line 204
    return-void

    .line 202
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method public switchToNextService()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 183
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->sessionLock:Ljava/lang/Object;

    monitor-enter v0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextService:Lorg/apache/sshd/common/Service;

    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    .line 188
    iput-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentService:Lorg/apache/sshd/common/Service;

    .line 189
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextServiceFactory:Lorg/apache/sshd/common/ServiceFactory;

    .line 190
    iput-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->nextService:Lorg/apache/sshd/common/Service;

    .line 191
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->currentService:Lorg/apache/sshd/common/Service;

    invoke-interface {v1}, Lorg/apache/sshd/common/Service;->start()V

    .line 192
    monitor-exit v0

    .line 193
    return-void

    .line 185
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "No service available"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 192
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected updateCurrentSessionState(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C::",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;>(TC;)TC;"
        }
    .end annotation

    .line 309
    .local p1, "state":Ljava/util/Collection;, "TC;"
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->closeFuture:Lorg/apache/sshd/common/future/CloseFuture;

    invoke-interface {v0}, Lorg/apache/sshd/common/future/CloseFuture;->isClosed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    sget-object v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;->CLOSED:Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->isAuthenticated()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 313
    sget-object v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;->AUTHED:Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 315
    :cond_1
    sget-object v0, Lorg/apache/sshd/common/kex/KexState;->DONE:Lorg/apache/sshd/common/kex/KexState;

    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->kexState:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/kex/KexState;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientSessionImpl;->authFuture:Lorg/apache/sshd/client/future/AuthFuture;

    invoke-interface {v0}, Lorg/apache/sshd/client/future/AuthFuture;->isFailure()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 316
    sget-object v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;->WAIT_AUTH:Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 319
    :cond_2
    return-object p1
.end method

.method public waitFor(Ljava/util/Collection;J)Ljava/util/Set;
    .locals 24
    .param p2, "timeout"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;J)",
            "Ljava/util/Set<",
            "Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;",
            ">;"
        }
    .end annotation

    .line 228
    .local p1, "mask":Ljava/util/Collection;, "Ljava/util/Collection<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    const-string v0, "No mask specified"

    invoke-static {v2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 229
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    .line 230
    .local v3, "traceEnabled":Z
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 235
    .local v4, "startTime":J
    iget-object v6, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    monitor-enter v6

    .line 236
    move-wide/from16 v7, p2

    .line 237
    .local v7, "remWait":J
    :try_start_0
    const-class v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    move-object v9, v0

    .line 238
    .local v9, "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    :goto_0
    invoke-virtual {v1, v9}, Lorg/apache/sshd/client/session/ClientSessionImpl;->updateCurrentSessionState(Ljava/util/Collection;)Ljava/util/Collection;

    .line 240
    invoke-static {v9, v2}, Ljava/util/Collections;->disjoint(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move v10, v0

    .line 241
    .local v10, "nothingInCommon":Z
    const/4 v11, 0x2

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/4 v14, 0x3

    if-nez v10, :cond_1

    .line 242
    if-eqz v3, :cond_0

    .line 243
    :try_start_1
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string/jumbo v15, "waitFor({}) call return mask={}, cond={}"

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v13

    aput-object v2, v14, v12

    aput-object v9, v14, v11

    invoke-interface {v0, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 245
    :cond_0
    monitor-exit v6

    return-object v9

    .line 248
    :cond_1
    const-wide/16 v15, 0x0

    cmp-long v0, p2, v15

    if-lez v0, :cond_4

    .line 249
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    .line 250
    .local v18, "now":J
    sub-long v20, v18, v4

    .line 251
    .local v20, "usedTime":J
    cmp-long v0, v20, p2

    if-gez v0, :cond_2

    cmp-long v0, v7, v15

    if-gtz v0, :cond_4

    .line 252
    :cond_2
    if-eqz v3, :cond_3

    .line 253
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string/jumbo v15, "waitFor({}) call timeout {}/{} for mask={}: {}"

    const/4 v14, 0x5

    new-array v14, v14, [Ljava/lang/Object;

    aput-object v1, v14, v13

    .line 254
    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v13

    aput-object v13, v14, v12

    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v14, v11

    const/4 v11, 0x3

    aput-object v2, v14, v11

    const/4 v11, 0x4

    aput-object v9, v14, v11

    .line 253
    invoke-interface {v0, v15, v14}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 256
    :cond_3
    sget-object v0, Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;->TIMEOUT:Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;

    invoke-interface {v9, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 257
    monitor-exit v6

    return-object v9

    .line 296
    .end local v7    # "remWait":J
    .end local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .end local v10    # "nothingInCommon":Z
    .end local v18    # "now":J
    .end local v20    # "usedTime":J
    :catchall_0
    move-exception v0

    move/from16 v19, v3

    move-wide/from16 v22, v4

    goto/16 :goto_6

    .line 261
    .restart local v7    # "remWait":J
    .restart local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .restart local v10    # "nothingInCommon":Z
    :cond_4
    if-eqz v3, :cond_5

    .line 262
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string/jumbo v14, "waitFor({}) Waiting {} millis for lock on mask={}, cond={}"

    const/4 v15, 0x4

    new-array v15, v15, [Ljava/lang/Object;

    aput-object v1, v15, v13

    .line 263
    invoke-static/range {p2 .. p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    aput-object v16, v15, v12

    aput-object v2, v15, v11

    const/16 v16, 0x3

    aput-object v9, v15, v16

    .line 262
    invoke-interface {v0, v14, v15}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 266
    :cond_5
    :try_start_2
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 268
    .local v14, "nanoStart":J
    const-wide/16 v18, 0x0

    cmp-long v0, p2, v18

    if-lez v0, :cond_6

    .line 269
    :try_start_3
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Object;->wait(J)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 288
    :catch_0
    move-exception v0

    move-wide/from16 v22, v4

    goto :goto_4

    .line 271
    :cond_6
    :try_start_4
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->futureLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V

    .line 274
    :goto_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v20

    .line 275
    .local v20, "nanoEnd":J
    sub-long v11, v20, v14

    .line 276
    .local v11, "nanoDuration":J
    if-eqz v3, :cond_7

    .line 277
    iget-object v0, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    const-string/jumbo v13, "waitFor({}) Lock notified after {} nanos"
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    move-wide/from16 v22, v4

    .end local v4    # "startTime":J
    .local v22, "startTime":J
    :try_start_5
    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v0, v13, v1, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_2

    .line 276
    .end local v22    # "startTime":J
    .restart local v4    # "startTime":J
    :cond_7
    move-wide/from16 v22, v4

    .line 280
    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    :goto_2
    const-wide/16 v4, 0x0

    cmp-long v0, p2, v4

    if-lez v0, :cond_9

    .line 281
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    sget-object v4, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    .line 282
    invoke-virtual {v0, v11, v12, v4}, Ljava/util/concurrent/TimeUnit;->convert(JLjava/util/concurrent/TimeUnit;)J

    move-result-wide v4
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 283
    .local v4, "waitDuration":J
    const-wide/16 v16, 0x0

    cmp-long v0, v4, v16

    if-gtz v0, :cond_8

    .line 284
    const-wide/16 v4, 0x7b

    .line 286
    :cond_8
    sub-long/2addr v7, v4

    goto :goto_3

    .line 296
    .end local v4    # "waitDuration":J
    .end local v7    # "remWait":J
    .end local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .end local v10    # "nothingInCommon":Z
    .end local v11    # "nanoDuration":J
    .end local v14    # "nanoStart":J
    .end local v20    # "nanoEnd":J
    :catchall_1
    move-exception v0

    move/from16 v19, v3

    goto :goto_6

    .line 288
    .restart local v7    # "remWait":J
    .restart local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .restart local v10    # "nothingInCommon":Z
    .restart local v14    # "nanoStart":J
    :catch_1
    move-exception v0

    goto :goto_4

    .line 294
    :cond_9
    :goto_3
    move/from16 v19, v3

    goto :goto_5

    .line 296
    .end local v7    # "remWait":J
    .end local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .end local v10    # "nothingInCommon":Z
    .end local v14    # "nanoStart":J
    .end local v22    # "startTime":J
    .local v4, "startTime":J
    :catchall_2
    move-exception v0

    move-wide/from16 v22, v4

    move/from16 v19, v3

    .end local v4    # "startTime":J
    .restart local v22    # "startTime":J
    goto :goto_6

    .line 288
    .end local v22    # "startTime":J
    .restart local v4    # "startTime":J
    .restart local v7    # "remWait":J
    .restart local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .restart local v10    # "nothingInCommon":Z
    .restart local v14    # "nanoStart":J
    :catch_2
    move-exception v0

    move-wide/from16 v22, v4

    .line 289
    .end local v4    # "startTime":J
    .local v0, "e":Ljava/lang/InterruptedException;
    .restart local v22    # "startTime":J
    :goto_4
    :try_start_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 290
    .local v4, "nanoEnd":J
    sub-long v11, v4, v14

    .line 291
    .restart local v11    # "nanoDuration":J
    if-eqz v3, :cond_a

    .line 292
    iget-object v13, v1, Lorg/apache/sshd/client/session/ClientSessionImpl;->log:Lorg/slf4j/Logger;

    move-object/from16 v18, v0

    .end local v0    # "e":Ljava/lang/InterruptedException;
    .local v18, "e":Ljava/lang/InterruptedException;
    const-string/jumbo v0, "waitFor({}) mask={} - ignoring interrupted exception after {} nanos"
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    move/from16 v19, v3

    const/4 v3, 0x3

    .end local v3    # "traceEnabled":Z
    .local v19, "traceEnabled":Z
    :try_start_7
    new-array v3, v3, [Ljava/lang/Object;

    const/16 v17, 0x0

    aput-object v1, v3, v17

    const/16 v16, 0x1

    aput-object v2, v3, v16

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v16

    const/16 v17, 0x2

    aput-object v16, v3, v17

    invoke-interface {v13, v0, v3}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 291
    .end local v18    # "e":Ljava/lang/InterruptedException;
    .end local v19    # "traceEnabled":Z
    .restart local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v3    # "traceEnabled":Z
    :cond_a
    move-object/from16 v18, v0

    move/from16 v19, v3

    .line 237
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .end local v3    # "traceEnabled":Z
    .end local v4    # "nanoEnd":J
    .end local v10    # "nothingInCommon":Z
    .end local v11    # "nanoDuration":J
    .end local v14    # "nanoStart":J
    .restart local v19    # "traceEnabled":Z
    :goto_5
    invoke-interface {v9}, Ljava/util/Set;->clear()V

    move/from16 v3, v19

    move-wide/from16 v4, v22

    goto/16 :goto_0

    .line 296
    .end local v7    # "remWait":J
    .end local v9    # "cond":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/sshd/client/session/ClientSession$ClientSessionEvent;>;"
    .end local v19    # "traceEnabled":Z
    .restart local v3    # "traceEnabled":Z
    :catchall_3
    move-exception v0

    move/from16 v19, v3

    .end local v3    # "traceEnabled":Z
    .restart local v19    # "traceEnabled":Z
    goto :goto_6

    .end local v19    # "traceEnabled":Z
    .end local v22    # "startTime":J
    .restart local v3    # "traceEnabled":Z
    .local v4, "startTime":J
    :catchall_4
    move-exception v0

    move/from16 v19, v3

    move-wide/from16 v22, v4

    .end local v3    # "traceEnabled":Z
    .end local v4    # "startTime":J
    .restart local v19    # "traceEnabled":Z
    .restart local v22    # "startTime":J
    :goto_6
    monitor-exit v6
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_5

    throw v0

    :catchall_5
    move-exception v0

    goto :goto_6
.end method
