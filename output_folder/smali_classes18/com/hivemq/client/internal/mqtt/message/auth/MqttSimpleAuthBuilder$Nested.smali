.class public Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;
.super Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
.source "MqttSimpleAuthBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Nested"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder<",
        "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<",
        "TP;>;>;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder$Nested$Complete<",
        "TP;>;"
    }
.end annotation


# instance fields
.field private final parentConsumer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;",
            "TP;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/function/Function;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "-",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;",
            "TP;>;)V"
        }
    .end annotation

    .line 78
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    .local p1, "parentConsumer":Ljava/util/function/Function;, "Ljava/util/function/Function<-Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;TP;>;"
    invoke-direct {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;-><init>()V

    .line 79
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    .line 80
    return-void
.end method


# virtual methods
.method public applySimpleAuth()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation

    .line 89
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;->parentConsumer:Ljava/util/function/Function;

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;->build()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuth;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic password(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method

.method public bridge synthetic password([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->password([B)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method

.method self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<",
            "TP;>;"
        }
    .end annotation

    .line 84
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    return-object p0
.end method

.method bridge synthetic self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;
    .locals 1

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;->self()Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method

.method public bridge synthetic username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .locals 0

    .line 73
    .local p0, "this":Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested;, "Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Nested<TP;>;"
    invoke-super {p0, p1}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;->username(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;

    return-object p1
.end method
