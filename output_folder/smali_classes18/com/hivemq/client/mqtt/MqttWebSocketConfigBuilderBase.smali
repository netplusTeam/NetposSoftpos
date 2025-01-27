.class public interface abstract Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
.super Ljava/lang/Object;
.source "MqttWebSocketConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract queryString(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract serverPath(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract subprotocol(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttWebSocketConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method
