.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
.super Ljava/lang/Object;
.source "Mqtt5UserProperty.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable<",
        "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
        ">;"
    }
.end annotation


# direct methods
.method public static of(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    .locals 1
    .param p0, "name"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
    .param p1, "value"    # Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;

    .line 55
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/util/MqttChecks;->userProperty(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v0

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "value"    # Ljava/lang/String;

    .line 44
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttUserPropertyImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract getName()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method

.method public abstract getValue()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method
