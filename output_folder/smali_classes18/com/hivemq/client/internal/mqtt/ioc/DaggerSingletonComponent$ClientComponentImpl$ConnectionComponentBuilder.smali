.class final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSingletonComponent.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ConnectionComponentBuilder"
.end annotation


# instance fields
.field private connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

.field private connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

.field final synthetic this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)V
    .locals 0

    .line 366
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;

    .line 366
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent;
    .locals 5

    .line 385
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    const-class v1, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 386
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    const-class v1, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 387
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->this$1:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iget-object v3, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    const/4 v4, 0x0

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentImpl;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public connAckFlow(Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
    .locals 1
    .param p1, "connAckFlow"    # Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 379
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connAckFlow:Lcom/hivemq/client/internal/mqtt/handler/connect/MqttConnAckFlow;

    .line 380
    return-object p0
.end method

.method public bridge synthetic connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/ConnectionComponent$Builder;
    .locals 0

    .line 366
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public connect(Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;
    .locals 1
    .param p1, "connect"    # Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 373
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl$ConnectionComponentBuilder;->connect:Lcom/hivemq/client/internal/mqtt/message/connect/MqttConnect;

    .line 374
    return-object p0
.end method
