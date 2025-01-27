.class public Lorg/apache/sshd/server/session/ServerUserAuthService;
.super Lorg/apache/sshd/common/util/closeable/AbstractCloseable;
.source "ServerUserAuthService.java"

# interfaces
.implements Lorg/apache/sshd/common/Service;
.implements Lorg/apache/sshd/server/session/ServerSessionHolder;


# instance fields
.field private authMethod:Ljava/lang/String;

.field private authMethods:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private authService:Ljava/lang/String;

.field private authUserName:Ljava/lang/String;

.field private currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

.field private maxAuthRequests:I

.field private nbAuthRequests:I

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

.field private final serverSession:Lorg/apache/sshd/server/session/ServerSession;

.field private userAuthFactories:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/server/auth/UserAuthFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final welcomePhase:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

.field private final welcomeSent:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public static synthetic $r8$lambda$pTVa4t35ZEUkQ6vEnmu6T80JUvQ(Ljava/util/Collection;)Z
    .locals 0

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/util/Collection;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/apache/sshd/common/session/Session;)V
    .locals 11
    .param p1, "s"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 84
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractCloseable;-><init>()V

    .line 70
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->welcomeSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 71
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->properties:Ljava/util/Map;

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 86
    .local v0, "debugEnabled":Z
    const-class v2, Lorg/apache/sshd/server/session/ServerSession;

    const-string v3, "Server side service used on client side: %s"

    invoke-static {p1, v2, v3, p1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkInstanceOf(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/server/session/ServerSession;

    iput-object v2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    .line 88
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->isAuthenticated()Z

    move-result v3

    if-nez v3, :cond_9

    .line 92
    const-string/jumbo v3, "welcome-banner-phase"

    invoke-virtual {p0, v3}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    .line 93
    .local v3, "phase":Ljava/lang/Object;
    const-class v4, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    sget-object v5, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->VALUES:Ljava/util/Set;

    invoke-static {v4, v3, v1, v5}, Lorg/apache/sshd/common/PropertyResolverUtils;->toEnum(Ljava/lang/Class;Ljava/lang/Object;ZLjava/util/Collection;)Ljava/lang/Enum;

    move-result-object v3

    .line 94
    if-nez v3, :cond_0

    sget-object v4, Lorg/apache/sshd/server/ServerAuthenticationManager;->DEFAULT_BANNER_PHASE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    goto :goto_0

    :cond_0
    move-object v4, v3

    check-cast v4, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    :goto_0
    iput-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->welcomePhase:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    .line 95
    const/16 v4, 0x14

    const-string v5, "max-auth-requests"

    invoke-virtual {p0, v5, v4}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getIntProperty(Ljava/lang/String;I)I

    move-result v4

    iput v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I

    .line 98
    nop

    .line 99
    invoke-interface {v2}, Lorg/apache/sshd/server/session/ServerSession;->getUserAuthFactories()Ljava/util/List;

    move-result-object v2

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object p1, v4, v1

    .line 98
    const-string v5, "No user auth factories for %s"

    invoke-static {v2, v5, v4}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/util/Collection;Ljava/lang/String;[Ljava/lang/Object;)Ljava/util/Collection;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 100
    .local v2, "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->userAuthFactories:Ljava/util/List;

    .line 102
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    iput-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    .line 104
    const-string v4, "auth-methods"

    invoke-virtual {p0, v4}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 105
    .local v4, "mths":Ljava/lang/String;
    invoke-static {v4}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 106
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/apache/sshd/server/auth/UserAuthFactory;

    .line 107
    .local v5, "uaf":Lorg/apache/sshd/server/auth/UserAuthFactory;
    iget-object v6, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    new-instance v7, Ljava/util/ArrayList;

    invoke-interface {v5}, Lorg/apache/sshd/server/auth/UserAuthFactory;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v6, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 108
    .end local v5    # "uaf":Lorg/apache/sshd/server/auth/UserAuthFactory;
    goto :goto_1

    :cond_1
    goto :goto_3

    .line 110
    :cond_2
    if-eqz v0, :cond_3

    .line 111
    iget-object v5, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v6, "ServerUserAuthService({}) using configured methods={}"

    invoke-interface {v5, v6, p1, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 113
    :cond_3
    const-string v5, "\\s"

    invoke-virtual {v4, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v6, v5

    :goto_2
    if-ge v1, v6, :cond_4

    aget-object v7, v5, v1

    .line 114
    .local v7, "mthl":Ljava/lang/String;
    iget-object v8, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    new-instance v9, Ljava/util/ArrayList;

    const/16 v10, 0x2c

    invoke-static {v7, v10}, Lorg/apache/sshd/common/util/GenericUtils;->split(Ljava/lang/String;C)[Ljava/lang/String;

    move-result-object v10

    invoke-static {v10}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 113
    .end local v7    # "mthl":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 118
    :cond_4
    :goto_3
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 119
    .local v5, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 120
    .local v7, "m":Ljava/lang/String;
    sget-object v8, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v9, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->userAuthFactories:Ljava/util/List;

    .line 121
    invoke-static {v7, v8, v9}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v8

    check-cast v8, Lorg/apache/sshd/server/auth/UserAuthFactory;

    .line 122
    .local v8, "factory":Lorg/apache/sshd/server/auth/UserAuthFactory;
    if-eqz v8, :cond_5

    .line 125
    .end local v7    # "m":Ljava/lang/String;
    .end local v8    # "factory":Lorg/apache/sshd/server/auth/UserAuthFactory;
    goto :goto_5

    .line 123
    .restart local v7    # "m":Ljava/lang/String;
    .restart local v8    # "factory":Lorg/apache/sshd/server/auth/UserAuthFactory;
    :cond_5
    new-instance v1, Lorg/apache/sshd/common/SshException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Configured method is not supported: "

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 126
    .end local v5    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v7    # "m":Ljava/lang/String;
    .end local v8    # "factory":Lorg/apache/sshd/server/auth/UserAuthFactory;
    :cond_6
    goto :goto_4

    .line 128
    :cond_7
    if-eqz v0, :cond_8

    .line 129
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    iget-object v5, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->userAuthFactories:Ljava/util/List;

    .line 130
    invoke-static {v5}, Lorg/apache/sshd/common/NamedResource;->getNames(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object v5

    .line 129
    const-string v6, "ServerUserAuthService({}) authorized authentication methods: {}"

    invoke-interface {v1, v6, p1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 133
    :cond_8
    invoke-interface {p1}, Lorg/apache/sshd/common/session/Session;->resetAuthTimeout()J

    .line 134
    return-void

    .line 89
    .end local v2    # "factories":Ljava/util/List;, "Ljava/util/List<Lorg/apache/sshd/server/auth/UserAuthFactory;>;"
    .end local v3    # "phase":Ljava/lang/Object;
    .end local v4    # "mths":Ljava/lang/String;
    :cond_9
    new-instance v1, Lorg/apache/sshd/common/SshException;

    const-string v2, "Session already authenticated"

    invoke-direct {v1, v2}, Lorg/apache/sshd/common/SshException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static synthetic lambda$handleAuthenticationSuccess$2(Ljava/util/List;)Ljava/lang/String;
    .locals 1
    .param p0, "l"    # Ljava/util/List;

    .line 439
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected declared-synchronized asyncAuth(ILorg/apache/sshd/common/util/buffer/Buffer;Z)V
    .locals 4
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "authed"    # Z

    monitor-enter p0

    .line 364
    if-eqz p3, :cond_0

    .line 365
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleAuthenticationSuccess(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    goto :goto_0

    .line 367
    .end local p0    # "this":Lorg/apache/sshd/server/session/ServerUserAuthService;
    :cond_0
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleAuthenticationFailure(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 371
    :goto_0
    goto :goto_1

    .line 363
    .end local p1    # "cmd":I
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p3    # "authed":Z
    :catchall_0
    move-exception p1

    goto :goto_2

    .line 369
    .restart local p1    # "cmd":I
    .restart local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .restart local p3    # "authed":Z
    :catch_0
    move-exception v0

    .line 370
    .local v0, "e":Ljava/lang/Exception;
    :try_start_1
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v2, "Error performing async authentication: {}"

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3, v0}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 372
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    monitor-exit p0

    return-void

    .line 363
    .end local p1    # "cmd":I
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    .end local p3    # "authed":Z
    :goto_2
    monitor-exit p0

    throw p1
.end method

.method public getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;
    .locals 1

    .line 615
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    invoke-interface {v0}, Lorg/apache/sshd/server/session/ServerSession;->getFactoryManager()Lorg/apache/sshd/server/ServerFactoryManager;

    move-result-object v0

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

    .line 157
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->properties:Ljava/util/Map;

    return-object v0
.end method

.method public getServerSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 152
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->serverSession:Lorg/apache/sshd/server/session/ServerSession;

    return-object v0
.end method

.method public bridge synthetic getSession()Lorg/apache/sshd/common/session/Session;
    .locals 1

    .line 69
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getSession()Lorg/apache/sshd/server/session/ServerSession;
    .locals 1

    .line 147
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    return-object v0
.end method

.method public getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;
    .locals 1

    .line 137
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->welcomePhase:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    return-object v0
.end method

.method protected handleAuthenticationFailure(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 13
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 460
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v0

    .line 461
    .local v0, "session":Lorg/apache/sshd/server/session/ServerSession;
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    .line 462
    .local v1, "debugEnabled":Z
    sget-object v2, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_FAILURE:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 463
    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 466
    :cond_0
    iget-object v2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    const/4 v3, 0x0

    if-nez v2, :cond_1

    move-object v2, v3

    goto :goto_0

    :cond_1
    invoke-interface {v2}, Lorg/apache/sshd/server/auth/UserAuth;->getUsername()Ljava/lang/String;

    move-result-object v2

    .line 467
    .local v2, "username":Ljava/lang/String;
    :goto_0
    const/4 v4, 0x2

    const/4 v5, 0x3

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v1, :cond_2

    .line 468
    iget-object v8, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v2, v9, v7

    aput-object v0, v9, v6

    .line 469
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v4

    .line 468
    const-string v10, "handleAuthenticationFailure({}@{}) {}"

    invoke-interface {v8, v10, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 472
    :cond_2
    new-instance v8, Ljava/lang/StringBuilder;

    iget-object v9, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v9

    add-int/2addr v9, v6

    mul-int/lit8 v9, v9, 0x8

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 473
    .local v8, "sb":Ljava/lang/StringBuilder;
    iget-object v9, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_1
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/List;

    .line 474
    .local v10, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v10}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v11

    if-lez v11, :cond_4

    .line 475
    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 476
    .local v11, "m":Ljava/lang/String;
    const-string v12, "none"

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-nez v12, :cond_4

    .line 477
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->length()I

    move-result v12

    if-lez v12, :cond_3

    .line 478
    const/16 v12, 0x2c

    invoke-virtual {v8, v12}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 480
    :cond_3
    invoke-virtual {v8, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 483
    .end local v10    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v11    # "m":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 485
    :cond_5
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 486
    .local v9, "remaining":Ljava/lang/String;
    if-eqz v1, :cond_6

    .line 487
    iget-object v10, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v2, v5, v7

    aput-object v0, v5, v6

    aput-object v9, v5, v4

    const-string v4, "handleAuthenticationFailure({}@{}) remaining methods: {}"

    invoke-interface {v10, v4, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 490
    :cond_6
    const/16 v4, 0x33

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x8

    invoke-interface {v0, v4, v5}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object p2

    .line 491
    invoke-virtual {p2, v9}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 492
    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 493
    invoke-interface {v0, p2}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 495
    iget-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    if-eqz v4, :cond_7

    .line 497
    :try_start_0
    invoke-interface {v4}, Lorg/apache/sshd/server/auth/UserAuth;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 499
    iput-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 500
    goto :goto_2

    .line 499
    :catchall_0
    move-exception v4

    iput-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 500
    throw v4

    .line 502
    :cond_7
    :goto_2
    return-void
.end method

.method protected handleAuthenticationInProgress(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 5
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lorg/apache/sshd/server/auth/UserAuth;->getUsername()Ljava/lang/String;

    move-result-object v0

    .line 376
    .local v0, "username":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v1}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 377
    iget-object v1, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    .line 378
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 377
    const-string v3, "handleAuthenticationInProgress({}@{}) {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 380
    :cond_1
    return-void
.end method

.method protected handleAuthenticationSuccess(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 20
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 383
    move-object/from16 v7, p0

    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    const-string v1, "No current auth"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v0}, Lorg/apache/sshd/server/auth/UserAuth;->getUsername()Ljava/lang/String;

    move-result-object v8

    .line 384
    .local v8, "username":Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v9

    .line 385
    .local v9, "session":Lorg/apache/sshd/server/session/ServerSession;
    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v10

    .line 386
    .local v10, "debugEnabled":Z
    const/4 v11, 0x2

    const/4 v12, 0x3

    const/4 v13, 0x1

    const/4 v14, 0x0

    if-eqz v10, :cond_0

    .line 387
    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v1, v12, [Ljava/lang/Object;

    aput-object v8, v1, v14

    aput-object v9, v1, v13

    .line 388
    invoke-static/range {p1 .. p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    .line 387
    const-string v2, "handleAuthenticationSuccess({}@{}) {}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 391
    :cond_0
    const/4 v0, 0x0

    .line 392
    .local v0, "success":Z
    iget-object v1, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    move v15, v0

    .end local v0    # "success":Z
    .local v15, "success":Z
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 393
    .local v0, "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v0, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    iget-object v3, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethod:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 394
    invoke-interface {v0, v14}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 395
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    or-int/2addr v2, v15

    move v15, v2

    .line 397
    .end local v0    # "l":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    goto :goto_0

    .line 399
    :cond_2
    if-eqz v15, :cond_b

    .line 400
    const-string v0, "max-concurrent-sessions"

    invoke-interface {v9, v0}, Lorg/apache/sshd/server/session/ServerSession;->getInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v6

    .line 401
    .local v6, "maxSessionCount":Ljava/lang/Integer;
    if-eqz v6, :cond_8

    .line 402
    invoke-interface {v9, v8}, Lorg/apache/sshd/server/session/ServerSession;->getActiveSessionCountForUser(Ljava/lang/String;)I

    move-result v5

    .line 403
    .local v5, "currentSessionCount":I
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v5, v0, :cond_7

    .line 404
    const/16 v16, 0x1

    .line 406
    .local v16, "disconnectSession":Z
    const/4 v4, 0x4

    :try_start_0
    invoke-interface {v9}, Lorg/apache/sshd/server/session/ServerSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v0

    .line 407
    .local v0, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v0, :cond_4

    .line 409
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v17
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_2

    .line 408
    move-object v1, v0

    move-object v2, v9

    move-object/from16 v3, p0

    move-object v4, v8

    move/from16 v18, v5

    .end local v5    # "currentSessionCount":I
    .local v18, "currentSessionCount":I
    move-object/from16 v19, v6

    .end local v6    # "maxSessionCount":Ljava/lang/Integer;
    .local v19, "maxSessionCount":Ljava/lang/Integer;
    move/from16 v6, v17

    :try_start_1
    invoke-interface/range {v1 .. v6}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleSessionsCountDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;II)Z

    move-result v1
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    move v1, v14

    goto :goto_2

    .line 410
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 407
    .end local v18    # "currentSessionCount":I
    .end local v19    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .restart local v5    # "currentSessionCount":I
    .restart local v6    # "maxSessionCount":Ljava/lang/Integer;
    :cond_4
    move/from16 v18, v5

    move-object/from16 v19, v6

    .line 408
    .end local v5    # "currentSessionCount":I
    .end local v6    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v18    # "currentSessionCount":I
    .restart local v19    # "maxSessionCount":Ljava/lang/Integer;
    :goto_1
    move v1, v13

    :goto_2
    move/from16 v16, v1

    .line 416
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    move-object/from16 v3, v19

    const/4 v4, 0x4

    goto :goto_5

    .line 410
    .end local v18    # "currentSessionCount":I
    .end local v19    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v5    # "currentSessionCount":I
    .restart local v6    # "maxSessionCount":Ljava/lang/Integer;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move/from16 v18, v5

    move-object/from16 v19, v6

    .line 411
    .end local v5    # "currentSessionCount":I
    .end local v6    # "maxSessionCount":Ljava/lang/Integer;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v18    # "currentSessionCount":I
    .restart local v19    # "maxSessionCount":Ljava/lang/Integer;
    :goto_4
    iget-object v1, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v8, v2, v14

    aput-object v9, v2, v13

    .line 412
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v11

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v12

    move-object/from16 v3, v19

    const/4 v4, 0x4

    .end local v19    # "maxSessionCount":Ljava/lang/Integer;
    .local v3, "maxSessionCount":Ljava/lang/Integer;
    aput-object v3, v2, v4

    const/4 v5, 0x5

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v2, v5

    .line 411
    const-string v5, "handleAuthenticationSuccess({}@{}) failed ({}) to invoke disconnect handler due to {}/{} sessions count: {}"

    invoke-interface {v1, v5, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 413
    if-eqz v10, :cond_5

    .line 414
    iget-object v1, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleAuthenticationSuccess("

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "@"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ") invocation handler exception details"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 418
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_5
    if-eqz v16, :cond_6

    .line 419
    const/16 v0, 0xc

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Too many concurrent connections ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move/from16 v2, v18

    .end local v18    # "currentSessionCount":I
    .local v2, "currentSessionCount":I
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, ") - max. allowed: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v9, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->disconnect(ILjava/lang/String;)V

    .line 421
    return-void

    .line 424
    .end local v2    # "currentSessionCount":I
    .restart local v18    # "currentSessionCount":I
    :cond_6
    move/from16 v2, v18

    .end local v18    # "currentSessionCount":I
    .restart local v2    # "currentSessionCount":I
    if-eqz v10, :cond_9

    .line 425
    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v1, v4, [Ljava/lang/Object;

    aput-object v8, v1, v14

    aput-object v9, v1, v13

    .line 426
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v1, v11

    aput-object v3, v1, v12

    .line 425
    const-string v4, "handleAuthenticationSuccess({}@{}) ignore {}/{} sessions count due to handler intervention"

    invoke-interface {v0, v4, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_6

    .line 403
    .end local v2    # "currentSessionCount":I
    .end local v3    # "maxSessionCount":Ljava/lang/Integer;
    .end local v16    # "disconnectSession":Z
    .restart local v5    # "currentSessionCount":I
    .restart local v6    # "maxSessionCount":Ljava/lang/Integer;
    :cond_7
    move v2, v5

    move-object v3, v6

    .end local v5    # "currentSessionCount":I
    .end local v6    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v2    # "currentSessionCount":I
    .restart local v3    # "maxSessionCount":Ljava/lang/Integer;
    goto :goto_6

    .line 401
    .end local v2    # "currentSessionCount":I
    .end local v3    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v6    # "maxSessionCount":Ljava/lang/Integer;
    :cond_8
    move-object v3, v6

    .line 431
    .end local v6    # "maxSessionCount":Ljava/lang/Integer;
    .restart local v3    # "maxSessionCount":Ljava/lang/Integer;
    :cond_9
    :goto_6
    sget-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->POST_SUCCESS:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 432
    invoke-virtual {v7, v9}, Lorg/apache/sshd/server/session/ServerUserAuthService;->sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 435
    :cond_a
    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    move-object/from16 v1, p2

    invoke-interface {v9, v8, v0, v1}, Lorg/apache/sshd/server/session/ServerSession;->signalAuthenticationSuccess(Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 436
    .end local v3    # "maxSessionCount":Ljava/lang/Integer;
    goto :goto_7

    .line 437
    :cond_b
    move-object/from16 v1, p2

    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethods:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda0;

    invoke-direct {v2}, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda0;-><init>()V

    .line 438
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda1;-><init>()V

    .line 439
    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 440
    const-string v2, ","

    invoke-static {v2}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 442
    .local v0, "remaining":Ljava/lang/String;
    if-eqz v10, :cond_c

    .line 443
    iget-object v2, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v3, v12, [Ljava/lang/Object;

    aput-object v8, v3, v14

    aput-object v9, v3, v13

    aput-object v0, v3, v11

    const-string v4, "handleAuthenticationSuccess({}@{}) remaining methods={}"

    invoke-interface {v2, v4, v3}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 446
    :cond_c
    const/16 v2, 0x33

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x8

    invoke-interface {v9, v2, v3}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    .line 447
    .local v2, "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 448
    invoke-virtual {v2, v13}, Lorg/apache/sshd/common/util/buffer/Buffer;->putBoolean(Z)V

    .line 449
    invoke-interface {v9, v2}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 453
    .end local v0    # "remaining":Ljava/lang/String;
    .end local v2    # "response":Lorg/apache/sshd/common/util/buffer/Buffer;
    :goto_7
    const/4 v2, 0x0

    :try_start_2
    iget-object v0, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v0}, Lorg/apache/sshd/server/auth/UserAuth;->destroy()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 455
    iput-object v2, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 456
    nop

    .line 457
    return-void

    .line 455
    :catchall_0
    move-exception v0

    iput-object v2, v7, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 456
    throw v0
.end method

.method protected handleUserAuthRequestMessage(Lorg/apache/sshd/server/session/ServerSession;Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/concurrent/atomic/AtomicReference;)Z
    .locals 25
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Lorg/apache/sshd/common/util/buffer/Buffer;",
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Ljava/lang/Boolean;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 218
    .local p3, "authHolder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Boolean;>;"
    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v12

    .line 227
    .local v12, "debugEnabled":Z
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/server/session/ServerSession;->isAuthenticated()Z

    move-result v0

    const/4 v13, 0x3

    const/4 v14, 0x4

    const/4 v15, 0x2

    const/16 v16, 0x1

    const/16 v17, 0x0

    if-eqz v0, :cond_1

    .line 228
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v0

    .line 229
    .local v0, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v1

    .line 230
    .local v1, "service":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v2

    .line 232
    .local v2, "method":Ljava/lang/String;
    if-eqz v12, :cond_0

    .line 233
    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v4, v14, [Ljava/lang/Object;

    aput-object v10, v4, v17

    aput-object v0, v4, v16

    aput-object v1, v4, v15

    aput-object v2, v4, v13

    const-string v5, "handleUserAuthRequestMessage({}) ignore user={}, service={}, method={} auth. request since session already authenticated"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 237
    :cond_0
    return v17

    .line 240
    .end local v0    # "username":Ljava/lang/String;
    .end local v1    # "service":Ljava/lang/String;
    .end local v2    # "method":Ljava/lang/String;
    :cond_1
    sget-object v0, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_REQUEST:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual/range {p0 .. p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-virtual/range {p0 .. p1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 244
    :cond_2
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    if-eqz v0, :cond_3

    .line 246
    const/4 v1, 0x0

    :try_start_0
    invoke-interface {v0}, Lorg/apache/sshd/server/auth/UserAuth;->destroy()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 248
    iput-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 249
    goto :goto_0

    .line 248
    :catchall_0
    move-exception v0

    move-object v2, v0

    iput-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 249
    throw v2

    .line 252
    :cond_3
    :goto_0
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v8

    .line 253
    .local v8, "username":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v7

    .line 254
    .local v7, "service":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->getString()Ljava/lang/String;

    move-result-object v6

    .line 255
    .local v6, "method":Ljava/lang/String;
    if-eqz v12, :cond_4

    .line 256
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v1, v14, [Ljava/lang/Object;

    aput-object v10, v1, v17

    aput-object v8, v1, v16

    aput-object v7, v1, v15

    aput-object v6, v1, v13

    const-string v2, "handleUserAuthRequestMessage({}) Received SSH_MSG_USERAUTH_REQUEST user={}, service={}, method={}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 260
    :cond_4
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    const-string v5, "handleUserAuthRequestMessage("

    const/4 v4, 0x6

    const/4 v3, 0x5

    if-eqz v0, :cond_12

    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    if-nez v1, :cond_5

    move-object/from16 v21, v6

    move-object v14, v7

    move-object/from16 v24, v5

    move v5, v4

    move-object/from16 v4, v24

    goto/16 :goto_c

    .line 263
    :cond_5
    invoke-virtual {v0, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x7

    if-eqz v0, :cond_c

    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 264
    iget v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    add-int/lit8 v0, v0, 0x1

    iput v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    .line 265
    iget v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I

    if-le v0, v1, :cond_b

    .line 266
    const/16 v18, 0x1

    .line 268
    .local v18, "disconnectSession":Z
    :try_start_1
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/server/session/ServerSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v0

    .line 269
    .local v0, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v0, :cond_7

    iget v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    iget v14, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_2

    .line 270
    move/from16 v19, v1

    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v3, p0

    move-object v4, v7

    move-object/from16 v20, v5

    move-object v5, v6

    move-object/from16 v21, v6

    .end local v6    # "method":Ljava/lang/String;
    .local v21, "method":Ljava/lang/String;
    move-object v6, v8

    move-object/from16 v22, v7

    .end local v7    # "service":Ljava/lang/String;
    .local v22, "service":Ljava/lang/String;
    move/from16 v7, v19

    move-object/from16 v23, v8

    .end local v8    # "username":Ljava/lang/String;
    .local v23, "username":Ljava/lang/String;
    move v8, v14

    :try_start_2
    invoke-interface/range {v1 .. v8}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleAuthCountDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;II)Z

    move-result v1
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    move/from16 v1, v17

    goto :goto_2

    .line 272
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :catch_0
    move-exception v0

    goto :goto_4

    :catch_1
    move-exception v0

    goto :goto_4

    .line 269
    .end local v21    # "method":Ljava/lang/String;
    .end local v22    # "service":Ljava/lang/String;
    .end local v23    # "username":Ljava/lang/String;
    .restart local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "service":Ljava/lang/String;
    .restart local v8    # "username":Ljava/lang/String;
    :cond_7
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 270
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "service":Ljava/lang/String;
    .end local v8    # "username":Ljava/lang/String;
    .restart local v21    # "method":Ljava/lang/String;
    .restart local v22    # "service":Ljava/lang/String;
    .restart local v23    # "username":Ljava/lang/String;
    :goto_1
    move/from16 v1, v16

    :goto_2
    move/from16 v18, v1

    .line 281
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    move-object/from16 v14, v22

    move-object/from16 v8, v23

    const/4 v5, 0x7

    const/4 v6, 0x6

    const/4 v7, 0x5

    goto :goto_5

    .line 272
    .end local v21    # "method":Ljava/lang/String;
    .end local v22    # "service":Ljava/lang/String;
    .end local v23    # "username":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "service":Ljava/lang/String;
    .restart local v8    # "username":Ljava/lang/String;
    :catch_2
    move-exception v0

    goto :goto_3

    :catch_3
    move-exception v0

    :goto_3
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object/from16 v22, v7

    move-object/from16 v23, v8

    .line 273
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "service":Ljava/lang/String;
    .end local v8    # "username":Ljava/lang/String;
    .local v0, "e":Ljava/lang/Exception;
    .restart local v21    # "method":Ljava/lang/String;
    .restart local v22    # "service":Ljava/lang/String;
    .restart local v23    # "username":Ljava/lang/String;
    :goto_4
    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/16 v2, 0x9

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v10, v2, v17

    .line 275
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    aput-object v3, v2, v15

    move-object/from16 v8, v23

    .end local v23    # "username":Ljava/lang/String;
    .restart local v8    # "username":Ljava/lang/String;
    aput-object v8, v2, v13

    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    move-object/from16 v14, v22

    const/4 v7, 0x5

    .end local v22    # "service":Ljava/lang/String;
    .local v14, "service":Ljava/lang/String;
    aput-object v14, v2, v7

    iget v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    .line 277
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v6, 0x6

    aput-object v3, v2, v6

    iget v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v5, 0x7

    aput-object v3, v2, v5

    const/16 v3, 0x8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 273
    const-string v3, "handleUserAuthRequestMessage({}) failed ({}) to invoke disconnect handler due to user={}/{}, service={}/{} - {}/{} auth requests: {}"

    invoke-interface {v1, v3, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 278
    if-eqz v12, :cond_8

    .line 279
    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "process("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") disconnect handler auth requests count invocation exception"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 283
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_8
    :goto_5
    if-eqz v18, :cond_9

    .line 284
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Too many authentication failures: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v15, v0}, Lorg/apache/sshd/server/session/ServerSession;->disconnect(ILjava/lang/String;)V

    .line 286
    return v17

    .line 289
    :cond_9
    if-eqz v12, :cond_a

    .line 290
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v1, v5, [Ljava/lang/Object;

    aput-object v10, v1, v17

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    aput-object v2, v1, v16

    aput-object v8, v1, v15

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    aput-object v2, v1, v13

    const/4 v2, 0x4

    aput-object v14, v1, v2

    iget v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    .line 291
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v7

    iget v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v1, v6

    .line 290
    const-string v2, "handleUserAuthRequestMessage({}) ignore mismatched authentication counts: user={}/{}, service={}/{}: {}/{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 293
    .end local v18    # "disconnectSession":Z
    :cond_a
    move v5, v6

    move v3, v7

    move-object/from16 v4, v20

    goto/16 :goto_d

    .line 265
    .end local v14    # "service":Ljava/lang/String;
    .end local v21    # "method":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "service":Ljava/lang/String;
    :cond_b
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v14, v7

    move v7, v3

    move v6, v4

    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "service":Ljava/lang/String;
    .restart local v14    # "service":Ljava/lang/String;
    .restart local v21    # "method":Ljava/lang/String;
    move v5, v6

    move-object/from16 v4, v20

    goto/16 :goto_d

    .line 263
    .end local v14    # "service":Ljava/lang/String;
    .end local v21    # "method":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "service":Ljava/lang/String;
    :cond_c
    move-object/from16 v20, v5

    move-object/from16 v21, v6

    move-object v14, v7

    move v5, v2

    move v7, v3

    move v6, v4

    .line 295
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "service":Ljava/lang/String;
    .restart local v14    # "service":Ljava/lang/String;
    .restart local v21    # "method":Ljava/lang/String;
    const/16 v18, 0x1

    .line 297
    .restart local v18    # "disconnectSession":Z
    :try_start_3
    invoke-interface/range {p1 .. p1}, Lorg/apache/sshd/server/session/ServerSession;->getSessionDisconnectHandler()Lorg/apache/sshd/common/session/SessionDisconnectHandler;

    move-result-object v0

    .line 298
    .local v0, "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    if-eqz v0, :cond_e

    iget-object v4, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_7
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_6

    .line 299
    move-object v1, v0

    move-object/from16 v2, p1

    move-object/from16 v19, v3

    move-object/from16 v3, p0

    move v13, v5

    move-object v5, v8

    move-object/from16 v6, v19

    move-object v7, v14

    :try_start_4
    invoke-interface/range {v1 .. v7}, Lorg/apache/sshd/common/session/SessionDisconnectHandler;->handleAuthParamsDisconnectReason(Lorg/apache/sshd/common/session/Session;Lorg/apache/sshd/common/Service;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_4

    if-nez v1, :cond_d

    goto :goto_6

    :cond_d
    move/from16 v1, v17

    goto :goto_7

    .line 301
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :catch_4
    move-exception v0

    goto :goto_9

    :catch_5
    move-exception v0

    goto :goto_9

    .line 299
    .restart local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    :cond_e
    :goto_6
    move/from16 v1, v16

    :goto_7
    move/from16 v18, v1

    .line 309
    .end local v0    # "handler":Lorg/apache/sshd/common/session/SessionDisconnectHandler;
    const/4 v3, 0x5

    goto :goto_a

    .line 301
    :catch_6
    move-exception v0

    goto :goto_8

    :catch_7
    move-exception v0

    :goto_8
    move v13, v5

    .line 302
    .local v0, "e":Ljava/lang/Exception;
    :goto_9
    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v2, v13, [Ljava/lang/Object;

    aput-object v10, v2, v17

    .line 304
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v16

    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    aput-object v3, v2, v15

    const/4 v3, 0x3

    aput-object v8, v2, v3

    iget-object v3, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    const/4 v4, 0x4

    aput-object v3, v2, v4

    const/4 v3, 0x5

    aput-object v14, v2, v3

    .line 305
    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    aput-object v4, v2, v5

    .line 302
    const-string v4, "handleUserAuthRequestMessage({}) failed ({}) to invoke disconnect handler due to user={}/{}, service={}/{} mismatched parameters: {}"

    invoke-interface {v1, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 306
    if-eqz v12, :cond_f

    .line 307
    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v4, v20

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v4, ") disconnect handler auth mismatched parameters invocation exception"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 311
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_f
    :goto_a
    if-eqz v18, :cond_10

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Change of username or service is not allowed ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ") -> ("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v10, v15, v0}, Lorg/apache/sshd/server/session/ServerSession;->disconnect(ILjava/lang/String;)V

    goto :goto_b

    .line 316
    :cond_10
    if-eqz v12, :cond_11

    .line 317
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v1, v3, [Ljava/lang/Object;

    aput-object v10, v1, v17

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    aput-object v2, v1, v16

    aput-object v8, v1, v15

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    const/4 v3, 0x3

    aput-object v2, v1, v3

    const/4 v2, 0x4

    aput-object v14, v1, v2

    const-string v2, "handleUserAuthRequestMessage({}) ignore mismatched authentication parameters: user={}/{}, service={}/{}"

    invoke-interface {v0, v2, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 321
    :cond_11
    :goto_b
    return v17

    .line 260
    .end local v14    # "service":Ljava/lang/String;
    .end local v18    # "disconnectSession":Z
    .end local v21    # "method":Ljava/lang/String;
    .restart local v6    # "method":Ljava/lang/String;
    .restart local v7    # "service":Ljava/lang/String;
    :cond_12
    move-object/from16 v21, v6

    move-object v14, v7

    move-object/from16 v24, v5

    move v5, v4

    move-object/from16 v4, v24

    .line 261
    .end local v6    # "method":Ljava/lang/String;
    .end local v7    # "service":Ljava/lang/String;
    .restart local v14    # "service":Ljava/lang/String;
    .restart local v21    # "method":Ljava/lang/String;
    :goto_c
    iput-object v8, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authUserName:Ljava/lang/String;

    .line 262
    iput-object v14, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authService:Ljava/lang/String;

    .line 325
    :goto_d
    move-object/from16 v1, v21

    .end local v21    # "method":Ljava/lang/String;
    .local v1, "method":Ljava/lang/String;
    iput-object v1, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->authMethod:Ljava/lang/String;

    .line 326
    if-eqz v12, :cond_13

    .line 327
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-array v2, v5, [Ljava/lang/Object;

    aput-object v10, v2, v17

    aput-object v8, v2, v16

    aput-object v14, v2, v15

    const/4 v5, 0x3

    aput-object v1, v2, v5

    iget v5, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->nbAuthRequests:I

    .line 328
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const/4 v6, 0x4

    aput-object v5, v2, v6

    iget v5, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->maxAuthRequests:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v3

    .line 327
    const-string v3, "handleUserAuthRequestMessage({}) Authenticating user \'{}\' with service \'{}\' and method \'{}\' (attempt {} / {})"

    invoke-interface {v0, v3, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 331
    :cond_13
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    iget-object v2, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->userAuthFactories:Ljava/util/List;

    invoke-static {v1, v0, v2}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lorg/apache/sshd/server/auth/UserAuthFactory;

    .line 333
    .local v2, "factory":Lorg/apache/sshd/server/auth/UserAuthFactory;
    if-nez v2, :cond_15

    .line 334
    if-eqz v12, :cond_14

    .line 335
    iget-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v3, "handleUserAuthRequestMessage({}) no authentication factory for method={}"

    invoke-interface {v0, v3, v10, v1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 338
    :cond_14
    return v16

    .line 341
    :cond_15
    nop

    .line 342
    invoke-interface {v2, v10}, Lorg/apache/sshd/server/auth/UserAuthFactory;->createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;

    move-result-object v0

    .line 341
    const-string v3, "No authenticator created for method=%s"

    invoke-static {v0, v3, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/auth/UserAuth;

    iput-object v0, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    .line 344
    :try_start_5
    invoke-interface {v0, v10, v8, v14, v11}, Lorg/apache/sshd/server/auth/UserAuth;->auth(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_5
    .catch Lorg/apache/sshd/server/auth/AsyncAuthException; {:try_start_5 .. :try_end_5} :catch_b
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_a

    .line 345
    .local v0, "authed":Ljava/lang/Boolean;
    move-object/from16 v3, p3

    :try_start_6
    invoke-virtual {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V
    :try_end_6
    .catch Lorg/apache/sshd/server/auth/AsyncAuthException; {:try_start_6 .. :try_end_6} :catch_9
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_8

    .line 357
    .end local v0    # "authed":Ljava/lang/Boolean;
    goto :goto_f

    .line 349
    :catch_8
    move-exception v0

    goto :goto_e

    .line 346
    :catch_9
    move-exception v0

    goto :goto_10

    .line 349
    :catch_a
    move-exception v0

    move-object/from16 v3, p3

    .line 350
    .local v0, "e":Ljava/lang/Exception;
    :goto_e
    if-eqz v12, :cond_16

    .line 351
    iget-object v5, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v10, v6, v17

    .line 352
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v16

    aput-object v1, v6, v15

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    const/4 v13, 0x3

    aput-object v7, v6, v13

    .line 351
    const-string v7, "handleUserAuthRequestMessage({}) Failed ({}) to authenticate using factory method={}: {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 354
    :cond_16
    iget-object v5, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v5}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v5

    if-eqz v5, :cond_17

    .line 355
    iget-object v5, v9, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, ") factory authentication="

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " failure details"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v5, v4, v0}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 359
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_17
    :goto_f
    return v16

    .line 346
    :catch_b
    move-exception v0

    move-object/from16 v3, p3

    .line 347
    .local v0, "async":Lorg/apache/sshd/server/auth/AsyncAuthException;
    :goto_10
    new-instance v4, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;

    invoke-direct {v4, v9, v11}, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda2;-><init>(Lorg/apache/sshd/server/session/ServerUserAuthService;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    invoke-virtual {v0, v4}, Lorg/apache/sshd/server/auth/AsyncAuthException;->addListener(Ljava/util/function/Consumer;)V

    .line 348
    return v17
.end method

.method synthetic lambda$handleUserAuthRequestMessage$1$org-apache-sshd-server-session-ServerUserAuthService(Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/Boolean;)V
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "authenticated"    # Ljava/lang/Boolean;

    .line 347
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/16 v1, 0x32

    invoke-virtual {p0, v1, p1, v0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->asyncAuth(ILorg/apache/sshd/common/util/buffer/Buffer;Z)V

    return-void
.end method

.method synthetic lambda$process$0$org-apache-sshd-server-session-ServerUserAuthService(ILorg/apache/sshd/common/util/buffer/Buffer;Ljava/lang/Boolean;)V
    .locals 1
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p3, "authenticated"    # Ljava/lang/Boolean;

    .line 192
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->asyncAuth(ILorg/apache/sshd/common/util/buffer/Buffer;Z)V

    return-void
.end method

.method protected loadWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 4
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .param p2, "url"    # Ljava/net/URL;
    .param p3, "cs"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 608
    invoke-virtual {p2}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 609
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/io/IoUtils;->toByteArray(Ljava/io/InputStream;)[B

    move-result-object v1

    .line 610
    .local v1, "bytes":[B
    invoke-static {v1}, Lorg/apache/sshd/common/util/NumberUtils;->isEmpty([B)Z

    move-result v2

    if-eqz v2, :cond_0

    const-string v2, ""

    goto :goto_0

    :cond_0
    new-instance v2, Ljava/lang/String;

    invoke-direct {v2, v1, p3}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 611
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 610
    :cond_1
    return-object v2

    .line 608
    .end local v1    # "bytes":[B
    :catchall_0
    move-exception v1

    .end local v0    # "stream":Ljava/io/InputStream;
    .end local p1    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local p2    # "url":Ljava/net/URL;
    .end local p3    # "cs":Ljava/nio/charset/Charset;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 611
    .restart local v0    # "stream":Ljava/io/InputStream;
    .restart local p1    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .restart local p2    # "url":Ljava/net/URL;
    .restart local p3    # "cs":Ljava/nio/charset/Charset;
    :catchall_1
    move-exception v2

    if-eqz v0, :cond_2

    :try_start_2
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_1

    :catchall_2
    move-exception v3

    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public declared-synchronized process(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 11
    .param p1, "cmd"    # I
    .param p2, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    monitor-enter p0

    .line 162
    :try_start_0
    sget-object v0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    .line 163
    .local v0, "authed":Ljava/lang/Boolean;
    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getServerSession()Lorg/apache/sshd/server/session/ServerSession;

    move-result-object v1

    .line 164
    .local v1, "session":Lorg/apache/sshd/server/session/ServerSession;
    iget-object v2, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v2}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v2

    .line 166
    .local v2, "debugEnabled":Z
    const/16 v3, 0x32

    if-ne p1, v3, :cond_1

    .line 167
    new-instance v3, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v3, v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>(Ljava/lang/Object;)V

    .line 168
    .local v3, "authHolder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Boolean;>;"
    invoke-virtual {p0, v1, p2, v3}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleUserAuthRequestMessage(Lorg/apache/sshd/server/session/ServerSession;Lorg/apache/sshd/common/util/buffer/Buffer;Ljava/util/concurrent/atomic/AtomicReference;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v4, :cond_0

    .line 169
    monitor-exit p0

    return-void

    .line 172
    :cond_0
    :try_start_1
    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Boolean;

    move-object v0, v4

    .line 173
    .end local v3    # "authHolder":Ljava/util/concurrent/atomic/AtomicReference;, "Ljava/util/concurrent/atomic/AtomicReference<Ljava/lang/Boolean;>;"
    goto/16 :goto_0

    .line 174
    .end local p0    # "this":Lorg/apache/sshd/server/session/ServerUserAuthService;
    :cond_1
    sget-object v3, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->FIRST_AUTHCMD:Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    invoke-virtual {p0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getWelcomePhase()Lorg/apache/sshd/server/auth/WelcomeBannerPhase;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/apache/sshd/server/auth/WelcomeBannerPhase;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 175
    invoke-virtual {p0, v1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;

    .line 178
    :cond_2
    iget-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    if-eqz v3, :cond_8

    .line 183
    const/4 v3, 0x2

    const/4 v4, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x1

    if-eqz v2, :cond_3

    .line 184
    iget-object v7, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v8, "process({}) Received authentication message={} for mechanism={}"

    new-array v9, v5, [Ljava/lang/Object;

    aput-object v1, v9, v4

    .line 185
    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v6

    iget-object v10, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v10}, Lorg/apache/sshd/server/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v9, v3

    .line 184
    invoke-interface {v7, v8, v9}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 188
    :cond_3
    invoke-virtual {p2}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v7

    sub-int/2addr v7, v6

    invoke-virtual {p2, v7}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 190
    :try_start_2
    iget-object v7, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v7, p2}, Lorg/apache/sshd/server/auth/UserAuth;->next(Lorg/apache/sshd/common/util/buffer/Buffer;)Ljava/lang/Boolean;

    move-result-object v3
    :try_end_2
    .catch Lorg/apache/sshd/server/auth/AsyncAuthException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-object v0, v3

    .line 203
    goto :goto_0

    .line 194
    :catch_0
    move-exception v7

    .line 196
    .local v7, "e":Ljava/lang/Exception;
    if-eqz v2, :cond_4

    .line 197
    :try_start_3
    iget-object v8, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v9, "process({}) Failed ({}) to authenticate using current method={}: {}"

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v1, v10, v4

    .line 198
    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v6

    iget-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v4}, Lorg/apache/sshd/server/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v10, v3

    invoke-virtual {v7}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v10, v5

    .line 197
    invoke-interface {v8, v9, v10}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 200
    :cond_4
    iget-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 201
    iget-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "process("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") current authentication="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->currentAuth:Lorg/apache/sshd/server/auth/UserAuth;

    invoke-interface {v5}, Lorg/apache/sshd/server/auth/UserAuth;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " failure details"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v4, v7}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 206
    .end local v7    # "e":Ljava/lang/Exception;
    :cond_5
    :goto_0
    if-nez v0, :cond_6

    .line 207
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleAuthenticationInProgress(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    goto :goto_1

    .line 208
    :cond_6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 209
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleAuthenticationSuccess(ILorg/apache/sshd/common/util/buffer/Buffer;)V

    goto :goto_1

    .line 211
    :cond_7
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService;->handleAuthenticationFailure(ILorg/apache/sshd/common/util/buffer/Buffer;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 213
    :goto_1
    monitor-exit p0

    return-void

    .line 191
    :catch_1
    move-exception v3

    .line 192
    .local v3, "async":Lorg/apache/sshd/server/auth/AsyncAuthException;
    :try_start_4
    new-instance v4, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;

    invoke-direct {v4, p0, p1, p2}, Lorg/apache/sshd/server/session/ServerUserAuthService$$ExternalSyntheticLambda3;-><init>(Lorg/apache/sshd/server/session/ServerUserAuthService;ILorg/apache/sshd/common/util/buffer/Buffer;)V

    invoke-virtual {v3, v4}, Lorg/apache/sshd/server/auth/AsyncAuthException;->addListener(Ljava/util/function/Consumer;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 193
    monitor-exit p0

    return-void

    .line 180
    .end local v3    # "async":Lorg/apache/sshd/server/auth/AsyncAuthException;
    :cond_8
    :try_start_5
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No current authentication mechanism for cmd="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p1}, Lorg/apache/sshd/common/SshConstants;->getCommandMessageName(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 161
    .end local v0    # "authed":Ljava/lang/Boolean;
    .end local v1    # "session":Lorg/apache/sshd/server/session/ServerSession;
    .end local v2    # "debugEnabled":Z
    .end local p1    # "cmd":I
    .end local p2    # "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected resolveWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 540
    const-string/jumbo v0, "welcome-banner"

    invoke-virtual {p0, v0}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    .line 541
    .local v0, "bannerValue":Ljava/lang/Object;
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 542
    return-object v1

    .line 545
    :cond_0
    instance-of v2, v0, Ljava/lang/CharSequence;

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 546
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 547
    .local v2, "message":Ljava/lang/String;
    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 548
    return-object v1

    .line 551
    :cond_1
    const-string v4, "#auto-welcome-banner"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 553
    const/16 v1, 0x20

    :try_start_0
    invoke-interface {p1}, Lorg/apache/sshd/server/session/ServerSession;->getKeyPairProvider()Lorg/apache/sshd/common/keyprovider/KeyPairProvider;

    move-result-object v3

    invoke-static {p1, v1, v3}, Lorg/apache/sshd/common/config/keys/KeyRandomArt;->combine(Lorg/apache/sshd/common/session/SessionContext;CLorg/apache/sshd/common/keyprovider/KeyIdentityProvider;)Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 554
    :catch_0
    move-exception v1

    .line 555
    .local v1, "e":Ljava/lang/Exception;
    instance-of v3, v1, Ljava/io/IOException;

    if-eqz v3, :cond_2

    .line 556
    move-object v3, v1

    check-cast v3, Ljava/io/IOException;

    throw v3

    .line 559
    :cond_2
    new-instance v3, Ljava/io/IOException;

    invoke-direct {v3, v1}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 563
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_3
    const-string v4, "://"

    invoke-virtual {v2, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 564
    return-object v2

    .line 568
    :cond_4
    :try_start_1
    new-instance v4, Ljava/net/URI;

    invoke-direct {v4, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/net/URISyntaxException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v4

    .line 572
    nop

    .line 574
    const-string v4, "file:/"

    invoke-virtual {v2, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 575
    move-object v4, v0

    check-cast v4, Ljava/net/URI;

    invoke-static {v4}, Ljava/nio/file/Paths;->get(Ljava/net/URI;)Ljava/nio/file/Path;

    move-result-object v0

    goto :goto_0

    .line 569
    :catch_1
    move-exception v1

    .line 570
    .local v1, "e":Ljava/net/URISyntaxException;
    iget-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object p1, v5, v3

    const/4 v3, 0x1

    aput-object v2, v5, v3

    const/4 v3, 0x2

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v3

    const-string v3, "resolveWelcomeBanner({}) bad path URI {}: {}"

    invoke-interface {v4, v3, v5}, Lorg/slf4j/Logger;->error(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 571
    new-instance v3, Ljava/net/MalformedURLException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " - bad URI ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/net/MalformedURLException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 579
    .end local v1    # "e":Ljava/net/URISyntaxException;
    .end local v2    # "message":Ljava/lang/String;
    :cond_5
    :goto_0
    instance-of v2, v0, Ljava/io/File;

    if-eqz v2, :cond_6

    .line 580
    move-object v2, v0

    check-cast v2, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->toPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 583
    :cond_6
    instance-of v2, v0, Ljava/nio/file/Path;

    if-eqz v2, :cond_a

    .line 584
    move-object v2, v0

    check-cast v2, Ljava/nio/file/Path;

    .line 585
    .local v2, "path":Ljava/nio/file/Path;
    new-array v3, v3, [Ljava/nio/file/LinkOption;

    invoke-static {v2, v3}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v3

    if-eqz v3, :cond_8

    invoke-static {v2}, Ljava/nio/file/Files;->size(Ljava/nio/file/Path;)J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-gtz v3, :cond_7

    goto :goto_1

    .line 591
    :cond_7
    invoke-interface {v2}, Ljava/nio/file/Path;->toUri()Ljava/net/URI;

    move-result-object v0

    goto :goto_2

    .line 586
    :cond_8
    :goto_1
    iget-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v3}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 587
    iget-object v3, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v4, "resolveWelcomeBanner({}) file is empty/does not exist"

    invoke-interface {v3, v4, p1, v2}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 589
    :cond_9
    return-object v1

    .line 594
    .end local v2    # "path":Ljava/nio/file/Path;
    :cond_a
    :goto_2
    instance-of v1, v0, Ljava/net/URI;

    if-eqz v1, :cond_b

    .line 595
    move-object v1, v0

    check-cast v1, Ljava/net/URI;

    invoke-virtual {v1}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    .line 598
    :cond_b
    instance-of v1, v0, Ljava/net/URL;

    if-eqz v1, :cond_c

    .line 599
    nop

    .line 600
    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    .line 599
    const-string/jumbo v2, "welcome-banner-charset"

    invoke-virtual {p0, v2, v1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getCharset(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v1

    .line 601
    .local v1, "cs":Ljava/nio/charset/Charset;
    move-object v2, v0

    check-cast v2, Ljava/net/URL;

    invoke-virtual {p0, p1, v2, v1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->loadWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;Ljava/net/URL;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 604
    .end local v1    # "cs":Ljava/nio/charset/Charset;
    :cond_c
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public sendWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 7
    .param p1, "session"    # Lorg/apache/sshd/server/session/ServerSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 512
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->welcomeSent:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 513
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 514
    iget-object v0, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const-string v1, "sendWelcomeBanner({}) already sent"

    invoke-interface {v0, v1, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 516
    :cond_0
    return-object v2

    .line 519
    :cond_1
    invoke-virtual {p0, p1}, Lorg/apache/sshd/server/session/ServerUserAuthService;->resolveWelcomeBanner(Lorg/apache/sshd/server/session/ServerSession;)Ljava/lang/String;

    move-result-object v0

    .line 520
    .local v0, "welcomeBanner":Ljava/lang/String;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 521
    return-object v2

    .line 524
    :cond_2
    const-string/jumbo v2, "welcome-banner-language"

    const-string v3, "en"

    invoke-virtual {p0, v2, v3}, Lorg/apache/sshd/server/session/ServerUserAuthService;->getStringProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 527
    .local v2, "lang":Ljava/lang/String;
    const/16 v3, 0x35

    .line 528
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v2}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x40

    .line 527
    invoke-interface {p1, v3, v4}, Lorg/apache/sshd/server/session/ServerSession;->createBuffer(BI)Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v3

    .line 529
    .local v3, "buffer":Lorg/apache/sshd/common/util/buffer/Buffer;
    invoke-virtual {v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 530
    invoke-virtual {v3, v2}, Lorg/apache/sshd/common/util/buffer/Buffer;->putString(Ljava/lang/String;)V

    .line 532
    iget-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    invoke-interface {v4}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 533
    iget-object v4, p0, Lorg/apache/sshd/server/session/ServerUserAuthService;->log:Lorg/slf4j/Logger;

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p1, v5, v6

    .line 534
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v1

    const/4 v1, 0x2

    aput-object v2, v5, v1

    .line 533
    const-string v1, "sendWelcomeBanner({}) send banner (length={}, lang={})"

    invoke-interface {v4, v1, v5}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 536
    :cond_3
    invoke-interface {p1, v3}, Lorg/apache/sshd/server/session/ServerSession;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    return-object v1
.end method

.method public start()V
    .locals 0

    .line 143
    return-void
.end method
