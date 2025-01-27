.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda11;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda11;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler$$ExternalSyntheticLambda11;->f$0:Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;

    check-cast p1, Lio/netty/channel/ChannelHandlerContext;

    check-cast p2, Ljava/lang/Throwable;

    invoke-virtual {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttReAuthHandler;->lambda$writeReAuth$4$com-hivemq-client-internal-mqtt-handler-auth-MqttReAuthHandler(Lio/netty/channel/ChannelHandlerContext;Ljava/lang/Throwable;)V

    return-void
.end method
