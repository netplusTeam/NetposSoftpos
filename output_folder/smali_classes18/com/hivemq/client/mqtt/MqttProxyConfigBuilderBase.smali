.class public interface abstract Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
.super Ljava/lang/Object;
.source "MqttProxyConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract address(Ljava/net/InetSocketAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetSocketAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract host(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract host(Ljava/net/InetAddress;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/InetAddress;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract password(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract port(I)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TB;"
        }
    .end annotation
.end method

.method public abstract protocol(Lcom/hivemq/client/mqtt/MqttProxyProtocol;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/MqttProxyProtocol;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/MqttProxyConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation
.end method
