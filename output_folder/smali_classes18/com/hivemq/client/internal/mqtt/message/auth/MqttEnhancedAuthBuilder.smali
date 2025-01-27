.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
.super Ljava/lang/Object;
.source "MqttEnhancedAuthBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;


# instance fields
.field private data:Ljava/nio/ByteBuffer;

.field private final method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;


# direct methods
.method public constructor <init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;)V
    .locals 1
    .param p1, "method"    # Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const-string v0, "Method"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 38
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    .line 39
    return-void
.end method


# virtual methods
.method public build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;
    .locals 3

    .line 54
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;

    iget-object v1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->method:Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;

    iget-object v2, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data:Ljava/nio/ByteBuffer;

    invoke-direct {v0, v1, v2}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuth;-><init>(Lcom/hivemq/client/internal/mqtt/datatypes/MqttUtf8StringImpl;Ljava/nio/ByteBuffer;)V

    return-object v0
.end method

.method public data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
    .locals 1
    .param p1, "data"    # Ljava/nio/ByteBuffer;

    .line 49
    const-string v0, "Auth data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull(Ljava/nio/ByteBuffer;Ljava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data:Ljava/nio/ByteBuffer;

    .line 50
    return-object p0
.end method

.method public data([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;
    .locals 1
    .param p1, "data"    # [B

    .line 43
    const-string v0, "Auth data"

    invoke-static {p1, v0}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->binaryDataOrNull([BLjava/lang/String;)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data:Ljava/nio/ByteBuffer;

    .line 44
    return-object p0
.end method

.method public bridge synthetic data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic data([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuthBuilder;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;->data([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttEnhancedAuthBuilder;

    move-result-object p1

    return-object p1
.end method
