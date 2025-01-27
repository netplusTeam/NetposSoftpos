.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/netty/util/concurrent/GenericFutureListener;


# instance fields
.field public final synthetic f$0:Ljavax/net/ssl/HostnameVerifier;

.field public final synthetic f$1:Ljava/net/InetSocketAddress;

.field public final synthetic f$2:Lio/netty/handler/ssl/SslHandler;

.field public final synthetic f$3:Ljava/util/function/BiConsumer;

.field public final synthetic f$4:Lio/netty/channel/Channel;

.field public final synthetic f$5:Ljava/util/function/Consumer;


# direct methods
.method public synthetic constructor <init>(Ljavax/net/ssl/HostnameVerifier;Ljava/net/InetSocketAddress;Lio/netty/handler/ssl/SslHandler;Ljava/util/function/BiConsumer;Lio/netty/channel/Channel;Ljava/util/function/Consumer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$0:Ljavax/net/ssl/HostnameVerifier;

    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$1:Ljava/net/InetSocketAddress;

    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$2:Lio/netty/handler/ssl/SslHandler;

    iput-object p4, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/BiConsumer;

    iput-object p5, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$4:Lio/netty/channel/Channel;

    iput-object p6, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/Consumer;

    return-void
.end method


# virtual methods
.method public final operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 7

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$0:Ljavax/net/ssl/HostnameVerifier;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$1:Ljava/net/InetSocketAddress;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$2:Lio/netty/handler/ssl/SslHandler;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$3:Ljava/util/function/BiConsumer;

    iget-object v4, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$4:Lio/netty/channel/Channel;

    iget-object v5, p0, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer$$ExternalSyntheticLambda0;->f$5:Ljava/util/function/Consumer;

    move-object v6, p1

    invoke-static/range {v0 .. v6}, Lcom/hivemq/client/internal/mqtt/handler/ssl/MqttSslInitializer;->lambda$initChannel$0(Ljavax/net/ssl/HostnameVerifier;Ljava/net/InetSocketAddress;Lio/netty/handler/ssl/SslHandler;Ljava/util/function/BiConsumer;Lio/netty/channel/Channel;Ljava/util/function/Consumer;Lio/netty/util/concurrent/Future;)V

    return-void
.end method
