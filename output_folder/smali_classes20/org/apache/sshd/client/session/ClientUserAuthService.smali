.class public Lorg/apache/sshd/client/session/ClientUserAuthService;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "ClientUserAuthService.java"

# interfaces
.implements Lorg/apache/sshd/common/Service;
.implements Lorg/apache/sshd/client/session/ClientSessionHolder;


# instance fields
.field private final authFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/client/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/client/future/AuthFuture;",
            ">;"
        }
    .end annotation
.end field

.field private final clientMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final clientSession:Lorg/apache/sshd/client/session/ClientSessionImpl;

.field private currentMethod:I

.field private final properties:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private serverMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private service:Ljava/lang/String;

.field private userAuth:Lorg/apache/sshd/client/auth/UserAuth;


# direct methods
.method public constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 9
    .param p1, "s"    # Lorg/apache/sshd/common/session/Session;

    .line 71
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 60
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->properties:Ljava/util/Map;

    .line 72
    const-class v0, Lorg/apache/sshd/client/session/ClientSessionImpl;

    const-string v1, "Client side service used on server side: %s"

    invoke-static {p1, v0, v1, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/session/ClientSessionImpl;

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientSession:Lorg/apache/sshd/client/session/ClientSessionImpl;

    .line 74
    nop

    .line 75
    invoke-virtual {v0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->getUserAuthFactories()Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 74
    const-string v3, "No user auth factories for %s"

    invoke-static {v0, v3, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFactories:Ljava/util/List;

    .line 76
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    .line 78
    const-string v1, "preferred-auths"

    invoke-interface {p1, v1}, Lorg/apache/sshd/common/session/Session;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "prefs":Ljava/lang/String;
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 80
    .local v3, "debugEnabled":Z
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 81
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/auth/UserAuthFactory;

    .line 82
    .local v2, "factory":Lorg/apache/sshd/client/auth/UserAuthFactory;
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    invoke-interface {v2}, Lorg/apache/sshd/client/auth/UserAuthFactory;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    .end local v2    # "factory":Lorg/apache/sshd/client/auth/UserAuthFactory;
    goto :goto_0

    :cond_0
    goto :goto_3

    .line 85
    :cond_1
    if-eqz v3, :cond_2

    .line 86
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v4, "ClientUserAuthService({}) use configured preferences: {}"

    invoke-interface {v0, v4, p1, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    :cond_2
    const/16 v0, 0x2c

    invoke-static {v1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v0

    array-length v4, v0

    :goto_1
    if-ge v2, v4, :cond_5

    aget-object v5, v0, v2

    .line 90
    .local v5, "pref":Ljava/lang/String;
    sget-object v6, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFactories:Ljava/util/List;

    .line 91
    invoke-static {v5, v6, v7}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/client/auth/UserAuthFactory;

    .line 92
    .local v6, "factory":Lorg/apache/sshd/client/auth/UserAuthFactory;
    if-eqz v6, :cond_3

    .line 93
    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 95
    :cond_3
    if-eqz v3, :cond_4

    .line 96
    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v8, "ClientUserAuthService({}) skip unknown preferred authentication method: {}"

    invoke-interface {v7, v8, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 89
    .end local v5    # "pref":Ljava/lang/String;
    .end local v6    # "factory":Lorg/apache/sshd/client/auth/UserAuthFactory;
    :cond_4
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 102
    :cond_5
    :goto_3
    if-eqz v3, :cond_6

    .line 103
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    const-string v4, "ClientUserAuthService({}) client methods: {}"

    invoke-interface {v0, v4, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 106
    :cond_6
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientSession:Lorg/apache/sshd/client/session/ClientSessionImpl;

    invoke-virtual {v0}, Lorg/apache/sshd/client/session/ClientSessionImpl;->resetAuthTimeout()J

    .line 107
    return-void
.end method


# virtual methods
.method public auth(Ljava/lang/String;)Lorg/apache/sshd/client/future/AuthFuture;
    .locals 8
    .param p1, "service"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 130
    const-string v0, "No service name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->service:Ljava/lang/String;

    .line 132
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 134
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    new-instance v1, Lorg/apache/sshd/client/future/DefaultAuthFuture;

    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientSession:Lorg/apache/sshd/client/session/ClientSessionImpl;

    invoke-virtual {v2}, Lorg/apache/sshd/client/session/ClientSessionImpl;->getFutureLock()Ljava/lang/Object;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lorg/apache/sshd/client/future/DefaultAuthFuture;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 135
    .local v1, "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/future/AuthFuture;

    .line 136
    .local v2, "currentFuture":Lorg/apache/sshd/client/future/AuthFuture;
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    .line 137
    .local v3, "debugEnabled":Z
    if-eqz v2, :cond_1

    .line 138
    invoke-interface {v2}, Lorg/apache/sshd/client/future/AuthFuture;->isDone()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 139
    if-eqz v3, :cond_1

    .line 140
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v5, "auth({})[{}] request new authentication"

    invoke-interface {v4, v5, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 143
    :cond_0
    new-instance v4, Ljava/io/InterruptedIOException;

    const-string v5, "New authentication started before previous completed"

    invoke-direct {v4, v5}, Ljava/io/InterruptedIOException;-><init>(Ljava/lang/String;)V

    invoke-interface {v2, v4}, Lorg/apache/sshd/client/future/AuthFuture;->setException(Ljava/lang/Throwable;)V

    .line 149
    :cond_1
    :goto_0
    const/4 v4, 0x0

    iput-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    .line 150
    const/4 v5, 0x0

    iput v5, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    .line 151
    iget-object v5, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    if-eqz v5, :cond_2

    .line 153
    :try_start_0
    invoke-interface {v5}, Lorg/apache/sshd/client/auth/UserAuth;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    iput-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 156
    goto :goto_1

    .line 155
    :catchall_0
    move-exception v5

    iput-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 156
    throw v5

    .line 159
    :cond_2
    :goto_1
    if-eqz v3, :cond_3

    .line 160
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v5, "auth({})[{}] send SSH_MSG_USERAUTH_REQUEST for \'none\'"

    invoke-interface {v4, v5, v0, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 163
    :cond_3
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->getUsername()Ljava/lang/String;

    move-result-object v4

    .line 164
    .local v4, "username":Ljava/lang/String;
    const/16 v5, 0x32

    .line 165
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v6, v7

    add-int/lit8 v6, v6, 0x20

    .line 164
    invoke-interface {v0, v5, v6}, Lorg/apache/sshd/client/session/ClientSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v5

    .line 166
    .local v5, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v5, v4}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 167
    invoke-virtual {v5, p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 168
    const-string v6, "none"

    invoke-virtual {v5, v6}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 169
    invoke-interface {v0, v5}, Lorg/apache/sshd/client/session/ClientSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 171
    return-object v1
.end method

.method public getClientSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 116
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientSession:Lorg/apache/sshd/client/session/ClientSessionImpl;

    return-object v0
.end method

.method public getProperties()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 121
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/client/session/ClientSession;
    .locals 1

    .line 111
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    return-object v0
.end method

.method protected preClose()V
    .locals 3

    .line 355
    iget-object v0, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/client/future/AuthFuture;

    .line 356
    .local v0, "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lorg/apache/sshd/client/future/AuthFuture;->isDone()Z

    move-result v1

    if-nez v1, :cond_0

    .line 357
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "Session is closed"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    invoke-interface {v0, v1}, Lorg/apache/sshd/client/future/AuthFuture;->setException(Ljava/lang/Throwable;)V

    .line 360
    :cond_0
    invoke-super {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;->preClose()V

    .line 361
    return-void
.end method

.method public process(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 12
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 176
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 177
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/client/future/AuthFuture;

    .line 178
    .local v1, "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 179
    .local v2, "debugEnabled":Z
    if-eqz v1, :cond_1

    invoke-interface {v1}, Lorg/apache/sshd/client/future/AuthFuture;->isSuccess()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    .line 181
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    .line 180
    const-string v5, "process({}) unexpected authenticated client command: {}"

    invoke-interface {v3, v5, v0, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 182
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "UserAuth message delivered to authenticated client"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 183
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    invoke-interface {v1}, Lorg/apache/sshd/client/future/AuthFuture;->isDone()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 185
    if-eqz v2, :cond_7

    .line 186
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    .line 187
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    .line 186
    const-string v5, "process({}) Ignoring random message - cmd={}"

    invoke-interface {v3, v5, v0, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    goto/16 :goto_2

    .line 189
    :cond_2
    const/16 v3, 0x35

    const/4 v4, 0x1

    if-ne p1, v3, :cond_6

    .line 190
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v3

    .line 191
    .local v3, "welcome":Ljava/lang/String;
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v5

    .line 192
    .local v5, "lang":Ljava/lang/String;
    const/4 v6, 0x2

    const/4 v7, 0x0

    const/4 v8, 0x3

    if-eqz v2, :cond_3

    .line 193
    iget-object v9, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v10, v8, [Ljava/lang/Object;

    aput-object v0, v10, v7

    aput-object v5, v10, v4

    aput-object v3, v10, v6

    const-string v11, "process({}) Welcome banner(lang={}): {}"

    invoke-interface {v9, v11, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 196
    :cond_3
    invoke-interface {v0}, Lorg/apache/sshd/client/session/ClientSession;->getUserInteraction()Lorg/apache/sshd/client/auth/keyboard/UserInteraction;

    move-result-object v9

    .line 198
    .local v9, "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    if-eqz v9, :cond_5

    :try_start_0
    invoke-interface {v9, v0}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->isInteractionAllowed(Lorg/apache/sshd/client/session/ClientSession;)Z

    move-result v10

    if-eqz v10, :cond_5

    .line 199
    invoke-interface {v9, v0, v3, v5}, Lorg/apache/sshd/client/auth/keyboard/UserInteraction;->welcome(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 201
    :catch_0
    move-exception v10

    .line 202
    .local v10, "e":Ljava/lang/Error;
    iget-object v11, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v0, v8, v7

    .line 203
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v8, v4

    invoke-virtual {v10}, Ljava/lang/Error;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v8, v6

    .line 202
    const-string v4, "process({}) failed ({}) to consult interaction: {}"

    invoke-interface {v11, v4, v8}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 204
    if-eqz v2, :cond_4

    .line 205
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "process("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") interaction consultation failure details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v6, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 208
    :cond_4
    new-instance v4, Lorg/apache/sshd/common/RuntimeSshException;

    invoke-direct {v4, v10}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 209
    .end local v10    # "e":Ljava/lang/Error;
    :cond_5
    :goto_1
    nop

    .line 210
    .end local v3    # "welcome":Ljava/lang/String;
    .end local v5    # "lang":Ljava/lang/String;
    .end local v9    # "ui":Lorg/apache/sshd/client/auth/keyboard/UserInteraction;
    goto :goto_2

    .line 211
    :cond_6
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {p2, v3}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 212
    invoke-virtual {p0, p2}, Lorg/apache/sshd/client/session/ClientUserAuthService;->processUserAuth(Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 214
    :cond_7
    :goto_2
    return-void
.end method

.method protected processUserAuth(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 11
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 223
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getUByte()I

    move-result v0

    .line 224
    .local v0, "cmd":I
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v1

    .line 225
    .local v1, "session":Lorg/apache/sshd/client/session/ClientSession;
    const/4 v2, 0x0

    const/4 v3, 0x1

    const/16 v4, 0x34

    if-ne v0, v4, :cond_3

    .line 226
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 227
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    iget-object v5, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    if-nez v5, :cond_0

    const-string v5, "<unknown>"

    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v5}, Lorg/apache/sshd/client/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v5

    .line 227
    :goto_0
    const-string v6, "processUserAuth({}) SSH_MSG_USERAUTH_SUCCESS Succeeded with {}"

    invoke-interface {v4, v6, v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 230
    :cond_1
    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    if-eqz v4, :cond_2

    .line 232
    :try_start_0
    invoke-interface {v4}, Lorg/apache/sshd/client/auth/UserAuth;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 234
    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 235
    goto :goto_1

    .line 234
    :catchall_0
    move-exception v3

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 235
    throw v3

    .line 237
    :cond_2
    :goto_1
    invoke-interface {v1}, Lorg/apache/sshd/client/session/ClientSession;->setAuthenticated()V

    .line 238
    move-object v2, v1

    check-cast v2, Lorg/apache/sshd/client/session/ClientSessionImpl;

    invoke-virtual {v2}, Lorg/apache/sshd/client/session/ClientSessionImpl;->switchToNextService()V

    .line 240
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 241
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    const-string v4, "No current future"

    invoke-static {v2, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/client/future/AuthFuture;

    .line 243
    .local v2, "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    invoke-interface {v2, v3}, Lorg/apache/sshd/client/future/AuthFuture;->setAuthed(Z)V

    .line 244
    return-void

    .line 247
    .end local v2    # "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    :cond_3
    const/16 v4, 0x33

    const/4 v5, 0x2

    const/4 v6, 0x3

    const/4 v7, 0x0

    if-ne v0, v4, :cond_7

    .line 248
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v4

    .line 249
    .local v4, "mths":Ljava/lang/String;
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->getBoolean()Z

    move-result v8

    .line 250
    .local v8, "partial":Z
    iget-object v9, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 251
    iget-object v9, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v1, v6, v7

    .line 252
    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v10

    aput-object v10, v6, v3

    aput-object v4, v6, v5

    .line 251
    const-string v3, "processUserAuth({}) Received SSH_MSG_USERAUTH_FAILURE - partial={}, methods={}"

    invoke-interface {v9, v3, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 254
    :cond_4
    if-nez v8, :cond_5

    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    if-nez v3, :cond_6

    .line 255
    :cond_5
    const/16 v3, 0x2c

    invoke-static {v4, v3}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    iput-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    .line 256
    iput v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    .line 257
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    if-eqz v3, :cond_6

    .line 259
    :try_start_1
    invoke-interface {v3}, Lorg/apache/sshd/client/auth/UserAuth;->destroy()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 261
    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 262
    goto :goto_2

    .line 261
    :catchall_1
    move-exception v3

    iput-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 262
    throw v3

    .line 266
    :cond_6
    :goto_2
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->tryNext(I)V

    .line 267
    return-void

    .line 270
    .end local v4    # "mths":Ljava/lang/String;
    .end local v8    # "partial":Z
    :cond_7
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    if-eqz v2, :cond_a

    .line 275
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 276
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v1, v4, v7

    .line 277
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v3

    iget-object v6, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    invoke-interface {v6}, Lorg/apache/sshd/client/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    .line 276
    const-string v5, "processUserAuth({}) delegate processing of {} to {}"

    invoke-interface {v2, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 280
    :cond_8
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    sub-int/2addr v2, v3

    invoke-virtual {p1, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V

    .line 281
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    invoke-interface {v2, p1}, Lorg/apache/sshd/client/auth/UserAuth;->process(Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 282
    invoke-virtual {p0, v0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->tryNext(I)V

    .line 284
    :cond_9
    return-void

    .line 271
    :cond_a
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received unknown packet: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 272
    invoke-static {v0}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public start()V
    .locals 0

    .line 127
    return-void
.end method

.method protected tryNext(I)V
    .locals 10
    .param p1, "cmd"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 287
    invoke-virtual {p0}, Lorg/apache/sshd/client/session/ClientUserAuthService;->getClientSession()Lorg/apache/sshd/client/session/ClientSession;

    move-result-object v0

    .line 288
    .local v0, "session":Lorg/apache/sshd/client/session/ClientSession;
    iget-object v1, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 291
    .local v1, "debugEnabled":Z
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-nez v2, :cond_0

    .line 292
    if-eqz v1, :cond_2

    .line 293
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v7, v5, [Ljava/lang/Object;

    aput-object v0, v7, v4

    iget-object v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    aput-object v8, v7, v6

    iget-object v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    aput-object v8, v7, v3

    const-string/jumbo v8, "tryNext({}) starting authentication mechanisms: client={}, server={}"

    invoke-interface {v2, v8, v7}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 296
    :cond_0
    const/4 v7, 0x0

    invoke-interface {v2, v7}, Lorg/apache/sshd/client/auth/UserAuth;->process(Lorg/apache/sshd/common/util/buffer/Buffer;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 297
    if-eqz v1, :cond_1

    .line 298
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    iget-object v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    invoke-interface {v8}, Lorg/apache/sshd/client/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v8

    const-string/jumbo v9, "tryNext({}) no initial request sent by method={}"

    invoke-interface {v2, v9, v0, v8}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 302
    :cond_1
    :try_start_0
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    invoke-interface {v2}, Lorg/apache/sshd/client/auth/UserAuth;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 304
    iput-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 305
    nop

    .line 307
    iget v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    add-int/2addr v2, v6

    iput v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    .line 316
    :cond_2
    :goto_1
    const/4 v2, 0x0

    .line 317
    .local v2, "method":Ljava/lang/String;
    :goto_2
    iget v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    iget-object v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 318
    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    iget v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    move-object v2, v7

    check-cast v2, Ljava/lang/String;

    .line 319
    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    invoke-interface {v7, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 320
    goto :goto_3

    .line 317
    :cond_3
    iget v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    add-int/2addr v7, v6

    iput v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    goto :goto_2

    .line 324
    :cond_4
    :goto_3
    iget v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->currentMethod:I

    iget-object v8, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    if-lt v7, v8, :cond_6

    .line 325
    if-eqz v1, :cond_5

    .line 326
    iget-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v4

    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->clientMethods:Ljava/util/List;

    aput-object v4, v5, v6

    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->serverMethods:Ljava/util/List;

    aput-object v4, v5, v3

    const-string/jumbo v3, "tryNext({}) exhausted all methods - client={}, server={}"

    invoke-interface {v7, v3, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_5
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFutureHolder:Ljava/util/concurrent/atomic/AtomicReference;

    .line 332
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    const-string v4, "No current future"

    invoke-static {v3, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/client/future/AuthFuture;

    .line 333
    .local v3, "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    new-instance v4, Lorg/apache/sshd/common/SshException;

    const/16 v5, 0xe

    const-string v6, "No more authentication methods available"

    invoke-direct {v4, v5, v6}, Lorg/apache/sshd/common/SshException;-><init>(ILjava/lang/String;)V

    invoke-interface {v3, v4}, Lorg/apache/sshd/client/future/AuthFuture;->setException(Ljava/lang/Throwable;)V

    .line 336
    return-void

    .line 339
    .end local v3    # "authFuture":Lorg/apache/sshd/client/future/AuthFuture;
    :cond_6
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->authFactories:Ljava/util/List;

    invoke-static {v0, v3, v2}, Lorg/apache/sshd/common/auth/UserAuthMethodFactory;->createUserAuth(Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/common/auth/UserAuthInstance;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/client/auth/UserAuth;

    iput-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 340
    if-eqz v3, :cond_8

    .line 345
    if-eqz v1, :cond_7

    .line 346
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    const-string/jumbo v4, "tryNext({}) attempting method={}"

    invoke-interface {v3, v4, v0, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 349
    :cond_7
    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    iget-object v4, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->service:Ljava/lang/String;

    invoke-interface {v3, v0, v4}, Lorg/apache/sshd/client/auth/UserAuth;->init(Lorg/apache/sshd/client/session/ClientSession;Ljava/lang/String;)V

    .line 350
    .end local v2    # "method":Ljava/lang/String;
    goto/16 :goto_0

    .line 341
    .restart local v2    # "method":Ljava/lang/String;
    :cond_8
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to find a user-auth factory for method="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 304
    .end local v2    # "method":Ljava/lang/String;
    :catchall_0
    move-exception v2

    iput-object v7, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 305
    throw v2

    .line 309
    :cond_9
    if-eqz v1, :cond_a

    .line 310
    iget-object v2, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->log:Lorg/slf4j/Logger;

    iget-object v3, p0, Lorg/apache/sshd/client/session/ClientUserAuthService;->userAuth:Lorg/apache/sshd/client/auth/UserAuth;

    .line 311
    invoke-interface {v3}, Lorg/apache/sshd/client/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v3

    .line 310
    const-string/jumbo v4, "tryNext({}) successfully processed initial buffer by method={}"

    invoke-interface {v2, v4, v0, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 313
    :cond_a
    return-void
.end method
