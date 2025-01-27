.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5UserPropertiesBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract add(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract add(Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract add(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public abstract addAll(Ljava/util/stream/Stream;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/stream/Stream<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public varargs abstract addAll([Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;)Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserPropertiesBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/hivemq/client/mqtt/mqtt5/datatypes/Mqtt5UserProperty;",
            ")TB;"
        }
    .end annotation
.end method
