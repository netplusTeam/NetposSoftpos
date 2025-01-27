.class abstract Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;
.super Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;
.source "AbstractMqttAuthHandler.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;
    }
.end annotation


# static fields
.field static final LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;


# instance fields
.field final authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

.field final clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 53
    const-class v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;

    invoke-static {v0}, Lcom/hivemq/client/internal/logging/InternalLoggerFactory;->getLogger(Ljava/lang/Class;)Lcom/hivemq/client/internal/logging/InternalLogger;

    move-result-object v0

    sput-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    return-void
.end method

.method constructor <init>(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;)V
    .locals 1
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p2, "authMechanism"    # Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 68
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/handler/util/MqttTimeoutInboundHandler;-><init>()V

    .line 65
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->NONE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 70
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 71
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    .line 72
    return-void
.end method

.method static synthetic lambda$readAuthContinue$2(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V
    .locals 4
    .param p0, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .param p1, "ctx2"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "throwable"    # Ljava/lang/Throwable;

    .line 141
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Server auth not accepted."

    invoke-direct {v2, p0, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    return-void
.end method

.method private readAuthContinue(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 128
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    if-eq v0, v1, :cond_0

    .line 129
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Must not receive AUTH with reason code CONTINUE_AUTHENTICATION if client side AUTH is pending."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 132
    return-void

    .line 135
    :cond_0
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->CONTINUE_AUTHENTICATION:Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V

    .line 136
    .local v0, "authBuilder":Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->IN_PROGRESS_RESPONSE:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 137
    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0, p2, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda0;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V

    new-instance v2, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda1;

    invoke-direct {v2, p0, v0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda1;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)V

    new-instance v3, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda2;

    invoke-direct {v3, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda2;-><init>(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    invoke-virtual {p0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V

    .line 143
    return-void
.end method

.method private validateAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Z
    .locals 4
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 108
    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 109
    invoke-interface {p1}, Lio/netty/channel/ChannelHandlerContext;->channel()Lio/netty/channel/Channel;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->PROTOCOL_ERROR:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    new-instance v2, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;

    const-string v3, "Auth method in AUTH must be the same as in the CONNECT."

    invoke-direct {v2, p2, v3}, Lcom/hivemq/client/mqtt/mqtt5/exceptions/Mqtt5AuthException;-><init>(Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectUtil;->disconnect(Lio/netty/channel/Channel;Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;Ljava/lang/Throwable;)V

    .line 111
    const/4 v0, 0x0

    return v0

    .line 113
    :cond_0
    const/4 v0, 0x1

    return v0
.end method


# virtual methods
.method callMechanism(Ljava/lang/Runnable;)V
    .locals 3
    .param p1, "call"    # Ljava/lang/Runnable;

    .line 163
    :try_start_0
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 166
    goto :goto_0

    .line 164
    :catchall_0
    move-exception v0

    .line 165
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v1, v2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 167
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method callMechanismFuture(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Void;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 174
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Void;>;>;"
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/ChannelHandlerContext;>;"
    .local p3, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 175
    return-void

    .line 178
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;

    invoke-direct {v1, p0, p3, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda6;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 192
    goto :goto_0

    .line 189
    :catchall_0
    move-exception v0

    .line 190
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v1, v2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 191
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 193
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method callMechanismFutureResult(Ljava/util/function/Supplier;Ljava/util/function/Consumer;Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Supplier<",
            "Ljava/util/concurrent/CompletableFuture<",
            "Ljava/lang/Boolean;",
            ">;>;",
            "Ljava/util/function/Consumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            ">;",
            "Ljava/util/function/BiConsumer<",
            "Lio/netty/channel/ChannelHandlerContext;",
            "Ljava/lang/Throwable;",
            ">;)V"
        }
    .end annotation

    .line 200
    .local p1, "supplier":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<Ljava/util/concurrent/CompletableFuture<Ljava/lang/Boolean;>;>;"
    .local p2, "onSuccess":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<Lio/netty/channel/ChannelHandlerContext;>;"
    .local p3, "onError":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 201
    return-void

    .line 204
    :cond_0
    :try_start_0
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/CompletableFuture;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p3, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda3;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CompletableFuture;->whenComplete(Ljava/util/function/BiConsumer;)Ljava/util/concurrent/CompletableFuture;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    goto :goto_0

    .line 221
    :catchall_0
    move-exception v0

    .line 222
    .local v0, "throwable":Ljava/lang/Throwable;
    sget-object v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v2, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v1, v2, v0}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 223
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3, v1, v0}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 225
    .end local v0    # "throwable":Ljava/lang/Throwable;
    :goto_0
    return-void
.end method

.method getMethod()Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;
    .locals 3

    .line 228
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    move-result-object v0

    const-class v1, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    const-string v2, "Auth method"

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/util/Checks;->notImplemented(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    return-object v0
.end method

.method protected final getTimeoutMs()J
    .locals 3

    .line 233
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    invoke-interface {v1}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->getTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0
.end method

.method protected final getTimeoutReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;
    .locals 1

    .line 238
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;->NOT_AUTHORIZED:Lcom/hivemq/client/mqtt/mqtt5/message/disconnect/Mqtt5DisconnectReasonCode;

    return-object v0
.end method

.method synthetic lambda$callMechanismFuture$4$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Void;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "onError"    # Ljava/util/function/BiConsumer;
    .param p2, "onSuccess"    # Ljava/util/function/Consumer;
    .param p3, "aVoid"    # Ljava/lang/Void;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 178
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v1, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda5;

    invoke-direct {v1, p0, p4, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda5;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v1}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$callMechanismFutureResult$6$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;Ljava/lang/Boolean;Ljava/lang/Throwable;)V
    .locals 8
    .param p1, "onError"    # Ljava/util/function/BiConsumer;
    .param p2, "onSuccess"    # Ljava/util/function/Consumer;
    .param p3, "accepted"    # Ljava/lang/Boolean;
    .param p4, "throwable"    # Ljava/lang/Throwable;

    .line 204
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    new-instance v7, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p4

    move-object v4, p1

    move-object v5, p3

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$$ExternalSyntheticLambda4;-><init>(Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V

    invoke-virtual {v0, v7}, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;->executeInEventLoop(Ljava/lang/Runnable;)Z

    return-void
.end method

.method synthetic lambda$null$3$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/util/function/Consumer;)V
    .locals 2
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "onError"    # Ljava/util/function/BiConsumer;
    .param p3, "onSuccess"    # Ljava/util/function/Consumer;

    .line 179
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 180
    return-void

    .line 182
    :cond_0
    if-eqz p1, :cond_1

    .line 183
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 184
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p3, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 188
    :goto_0
    return-void
.end method

.method synthetic lambda$null$5$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Ljava/lang/Throwable;Ljava/util/function/BiConsumer;Ljava/lang/Boolean;Ljava/util/function/Consumer;)V
    .locals 3
    .param p1, "throwable"    # Ljava/lang/Throwable;
    .param p2, "onError"    # Ljava/util/function/BiConsumer;
    .param p3, "accepted"    # Ljava/lang/Boolean;
    .param p4, "onSuccess"    # Ljava/util/function/Consumer;

    .line 205
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    if-nez v0, :cond_0

    .line 206
    return-void

    .line 208
    :cond_0
    if-eqz p1, :cond_1

    .line 209
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Auth cancelled. Unexpected exception thrown by auth mechanism."

    invoke-interface {v0, v1, p1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 210
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p2, v0, p1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 211
    :cond_1
    if-nez p3, :cond_2

    .line 212
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->LOGGER:Lcom/hivemq/client/internal/logging/InternalLogger;

    const-string v1, "Auth cancelled. Unexpected null result returned by auth mechanism."

    invoke-interface {v0, v1}, Lcom/hivemq/client/internal/logging/InternalLogger;->error(Ljava/lang/String;)V

    .line 213
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "Result returned by auth mechanism must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 215
    :cond_2
    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_3

    .line 216
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    const/4 v1, 0x0

    invoke-interface {p2, v0, v1}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_0

    .line 218
    :cond_3
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->ctx:Lio/netty/channel/ChannelHandlerContext;

    invoke-interface {p4, v0}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 220
    :goto_0
    return-void
.end method

.method synthetic lambda$readAuthContinue$0$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;)Ljava/util/concurrent/CompletableFuture;
    .locals 2
    .param p1, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;
    .param p2, "authBuilder"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;

    .line 137
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->authMechanism:Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-interface {v0, v1, p1, p2}, Lcom/hivemq/client/mqtt/mqtt5/auth/Mqtt5EnhancedAuthMechanism;->onContinue(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5ClientConfig;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5Auth;Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthBuilder;)Ljava/util/concurrent/CompletableFuture;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$readAuthContinue$1$com-hivemq-client-internal-mqtt-handler-auth-AbstractMqttAuthHandler(Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;Lio/netty/channel/ChannelHandlerContext;)V
    .locals 1
    .param p1, "authBuilder"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;
    .param p2, "ctx2"    # Lio/netty/channel/ChannelHandlerContext;

    .line 138
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;->WAIT_FOR_SERVER:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->state:Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$MqttAuthState;

    .line 139
    invoke-virtual {p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuthBuilder;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    move-result-object v0

    invoke-interface {p2, v0}, Lio/netty/channel/ChannelHandlerContext;->writeAndFlush(Ljava/lang/Object;)Lio/netty/channel/ChannelFuture;

    move-result-object v0

    invoke-interface {v0, p0}, Lio/netty/channel/ChannelFuture;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/channel/ChannelFuture;

    .line 141
    return-void
.end method

.method final readAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
    .locals 2
    .param p1, "ctx"    # Lio/netty/channel/ChannelHandlerContext;
    .param p2, "auth"    # Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;

    .line 81
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->cancelTimeout()V

    .line 83
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->validateAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 84
    sget-object v0, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler$1;->$SwitchMap$com$hivemq$client$mqtt$mqtt5$message$auth$Mqtt5AuthReasonCode:[I

    invoke-virtual {p2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;->getReasonCode()Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;

    move-result-object v1

    check-cast v1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;

    invoke-virtual {v1}, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5AuthReasonCode;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 92
    :pswitch_0
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    goto :goto_0

    .line 89
    :pswitch_1
    invoke-virtual {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    .line 90
    goto :goto_0

    .line 86
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/AbstractMqttAuthHandler;->readAuthContinue(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V

    .line 96
    :cond_0
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method abstract readAuthSuccess(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
.end method

.method abstract readReAuth(Lio/netty/channel/ChannelHandlerContext;Lcom/hivemq/client/internal/mqtt/message/auth/MqttAuth;)V
.end method
