.class final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;
.super Ljava/lang/Object;
.source "DaggerSingletonComponent.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientComponentImpl"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;,
        Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
    }
.end annotation


# instance fields
.field private clientConfigProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/MqttClientConfig;",
            ">;"
        }
    .end annotation
.end field

.field private mqttIncomingPublishFlowsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows;",
            ">;"
        }
    .end annotation
.end field

.field private mqttIncomingQosHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttOutgoingQosHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mqttSessionProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/MqttSession;",
            ">;"
        }
    .end annotation
.end field

.field private mqttSubscriptionHandlerProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 0
    .param p2, "clientConfigParam"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 335
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 337
    invoke-direct {p0, p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->initialize(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    .line 338
    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;
    .param p3, "x2"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;

    .line 322
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    .line 322
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttSessionProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$600(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)Ljavax/inject/Provider;
    .locals 1
    .param p0, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    .line 322
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->clientConfigProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method private initialize(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)V
    .locals 3
    .param p1, "clientConfigParam"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 342
    invoke-static {p1}, Ldagger/internal/InstanceFactory;->create(Ljava/lang/Object;)Ldagger/internal/Factory;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->clientConfigProvider:Ljavax/inject/Provider;

    .line 343
    invoke-static {}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;->create()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingPublishFlows_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttIncomingPublishFlowsProvider:Ljavax/inject/Provider;

    .line 344
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-static {v1, v0}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttSubscriptionHandlerProvider:Ljavax/inject/Provider;

    .line 345
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->clientConfigProvider:Ljavax/inject/Provider;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttIncomingPublishFlowsProvider:Ljavax/inject/Provider;

    invoke-static {v0, v1}, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttIncomingQosHandlerProvider:Ljavax/inject/Provider;

    .line 346
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->clientConfigProvider:Ljavax/inject/Provider;

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler_Factory;->create(Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttOutgoingQosHandlerProvider:Ljavax/inject/Provider;

    .line 347
    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttSubscriptionHandlerProvider:Ljavax/inject/Provider;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttIncomingQosHandlerProvider:Ljavax/inject/Provider;

    invoke-static {v1, v2, v0}, Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;->create(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljavax/inject/Provider;)Lcom/hivemq/client/internal/mqtt/handler/MqttSession_Factory;

    move-result-object v0

    invoke-static {v0}, Ldagger/internal/DoubleCheck;->provider(Ljavax/inject/Provider;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttSessionProvider:Ljavax/inject/Provider;

    .line 348
    return-void
.end method


# virtual methods
.method public connectionComponentBuilder()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    .locals 2

    .line 352
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method

.method public incomingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttIncomingQosHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/incoming/MqttIncomingQosHandler;

    return-object v0
.end method

.method public outgoingQosHandler()Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;
    .locals 1

    .line 364
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttOutgoingQosHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/publish/outgoing/MqttOutgoingQosHandler;

    return-object v0
.end method

.method public subscriptionHandler()Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;
    .locals 1

    .line 356
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;->mqttSubscriptionHandlerProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;

    return-object v0
.end method
