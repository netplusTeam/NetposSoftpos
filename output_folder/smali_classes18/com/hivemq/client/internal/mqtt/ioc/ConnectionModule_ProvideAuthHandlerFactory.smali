.class public final Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;
.super Ljava/lang/Object;
.source "ConnectionModule_ProvideAuthHandlerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;",
        ">;"
    }
.end annotation


# instance fields
.field private final connectAuthHandlerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final connectProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;"
        }
    .end annotation
.end field

.field private final disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)V"
        }
    .end annotation

    .line 31
    .local p1, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    .local p2, "connectAuthHandlerLazyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;>;"
    .local p3, "disconnectOnAuthHandlerLazyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectProvider:Ljavax/inject/Provider;

    .line 33
    iput-object p2, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectAuthHandlerLazyProvider:Ljavax/inject/Provider;

    .line 34
    iput-object p3, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;

    .line 35
    return-void
.end method

.method public static create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;"
        }
    .end annotation

    .line 46
    .local p0, "connectProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;>;"
    .local p1, "connectAuthHandlerLazyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;>;"
    .local p2, "disconnectOnAuthHandlerLazyProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;>;"
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;

    invoke-direct {v0, p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 2
    .param p0, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;",
            ">;",
            "Ldagger/Lazy<",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;",
            ">;)",
            "Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;"
        }
    .end annotation

    .line 52
    .local p1, "connectAuthHandlerLazy":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttConnectAuthHandler;>;"
    .local p2, "disconnectOnAuthHandlerLazy":Ldagger/Lazy;, "Ldagger/Lazy<Lcom/hivemq/client/internal/mqtt/handler/auth/MqttDisconnectOnAuthHandler;>;"
    invoke-static {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule;->provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    return-object v0
.end method


# virtual methods
.method public get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;
    .locals 3

    .line 39
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->connectAuthHandlerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v1}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v1

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->disconnectOnAuthHandlerLazyProvider:Ljavax/inject/Provider;

    invoke-static {v2}, Ldagger/internal/DoubleCheck;->lazy(Ljavax/inject/Provider;)Ldagger/Lazy;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->provideAuthHandler(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Ldagger/Lazy;Ldagger/Lazy;)Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .locals 1

    .line 14
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/ioc/ConnectionModule_ProvideAuthHandlerFactory;->get()Lcom/hivemq/client/internal/mqtt/handler/auth/MqttAuthHandler;

    move-result-object v0

    return-object v0
.end method
