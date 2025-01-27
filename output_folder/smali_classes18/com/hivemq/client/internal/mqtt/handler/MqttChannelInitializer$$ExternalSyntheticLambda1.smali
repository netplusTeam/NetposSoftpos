.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    check-cast p1, Lio/netty/channel/Channel;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->$r8$lambda$XQlz3AUNu4UDytbqGgVsrQ7e61s(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;Ljava/lang/Throwable;)V

    return-void
.end method
