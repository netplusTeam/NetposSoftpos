.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    check-cast p1, Lio/netty/channel/Channel;

    invoke-static {v0, p1}, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;->$r8$lambda$ylw2ztIFiHoPh6mZ5oXTamQhXY0(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;Lio/netty/channel/Channel;)V

    return-void
.end method
