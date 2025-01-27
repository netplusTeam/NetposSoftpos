.class Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;
.super Ljava/lang/Object;
.source "MqttDisconnectHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DisconnectingState"
.end annotation


# instance fields
.field private final channel:Lio/netty/channel/Channel;

.field private final disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

.field private final timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/concurrent/ScheduledFuture<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/channel/Channel;Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;)V
    .locals 4
    .param p1, "channel"    # Lio/netty/channel/Channel;
    .param p2, "disconnectEvent"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    .line 266
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 267
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    .line 268
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    .line 269
    invoke-interface {p1}, Lio/netty/channel/Channel;->eventLoop()Lio/netty/channel/EventLoop;

    move-result-object v0

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xa

    invoke-interface {v0, p0, v2, v3, v1}, Lio/netty/channel/EventLoop;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Lio/netty/util/concurrent/ScheduledFuture;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    .line 270
    return-void
.end method

.method static synthetic access$000(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/util/concurrent/ScheduledFuture;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    .line 260
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->timeoutFuture:Lio/netty/util/concurrent/ScheduledFuture;

    return-object v0
.end method

.method static synthetic access$100(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lio/netty/channel/Channel;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    .line 260
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    return-object v0
.end method

.method static synthetic access$200(Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;)Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;

    .line 260
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->disconnectEvent:Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectEvent$ByUser;

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 274
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/disconnect/MqttDisconnectHandler$DisconnectingState;->channel:Lio/netty/channel/Channel;

    invoke-interface {v0}, Lio/netty/channel/Channel;->close()Lio/netty/channel/ChannelFuture;

    .line 275
    return-void
.end method
