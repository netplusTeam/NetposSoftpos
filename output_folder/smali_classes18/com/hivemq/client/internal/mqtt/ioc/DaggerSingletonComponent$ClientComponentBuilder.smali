.class final Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;
.super Ljava/lang/Object;
.source "DaggerSingletonComponent.java"

# interfaces
.implements Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ClientComponentBuilder"
.end annotation


# instance fields
.field private clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

.field final synthetic this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;


# direct methods
.method private constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)V
    .locals 0

    .line 306
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;
    .param p2, "x1"    # Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;

    .line 306
    invoke-direct {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;)V

    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent;
    .locals 4

    .line 317
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    const-class v1, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    invoke-static {v0, v1}, Ldagger/internal/Preconditions;->checkBuilderRequirement(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 318
    new-instance v0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->this$0:Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentImpl;-><init>(Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent;Lcom/hivemq/client/internal/mqtt/MqttClientConfig;Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$1;)V

    return-object v0
.end method

.method public bridge synthetic clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/ClientComponent$Builder;
    .locals 0

    .line 306
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;

    move-result-object p1

    return-object p1
.end method

.method public clientConfig(Lcom/hivemq/client/internal/mqtt/MqttClientConfig;)Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;
    .locals 1
    .param p1, "clientConfig"    # Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 311
    invoke-static {p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/ioc/DaggerSingletonComponent$ClientComponentBuilder;->clientConfig:Lcom/hivemq/client/internal/mqtt/MqttClientConfig;

    .line 312
    return-object p0
.end method
