.class public final Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideBootstrapFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lio/netty/bootstrap/Bootstrap;",
        ">;"
    }
.end annotation


# instance fields
.field private final channelInitializerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;",
            ">;)V"
        }
    .end annotation

    .line 22
    .local p1, "channelInitializerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;->channelInitializerProvider:Ljavax/inject/Provider;

    .line 24
    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;"
        }
    .end annotation

    .line 33
    .local p0, "channelInitializerProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;
    .locals 2
    .param p0, "channelInitializer"    # Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    .line 37
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;->provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/bootstrap/Bootstrap;

    return-object v0
.end method


# virtual methods
.method public get()Lio/netty/bootstrap/Bootstrap;
    .locals 1

    .line 28
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;->channelInitializerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;->provideBootstrap(Lcom/hivemq/client/internal/mqtt/handler/MqttChannelInitializer;)Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 10
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideBootstrapFactory;->get()Lio/netty/bootstrap/Bootstrap;

    move-result-object v0

    return-object v0
.end method
