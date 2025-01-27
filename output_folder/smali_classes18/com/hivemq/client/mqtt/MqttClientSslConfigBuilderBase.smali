.class public interface abstract Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
.super Ljava/lang/Object;
.source "MqttClientSslConfigBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B::",
        "Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase<",
        "TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract cipherSuites(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public abstract handshakeTimeout(JLjava/util/concurrent/TimeUnit;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract hostnameVerifier(Ljavax/net/ssl/HostnameVerifier;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/HostnameVerifier;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract keyManagerFactory(Ljavax/net/ssl/KeyManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/KeyManagerFactory;",
            ")TB;"
        }
    .end annotation
.end method

.method public abstract protocols(Ljava/util/Collection;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation
.end method

.method public abstract trustManagerFactory(Ljavax/net/ssl/TrustManagerFactory;)Lcom/hivemq/client/mqtt/MqttClientSslConfigBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/TrustManagerFactory;",
            ")TB;"
        }
    .end annotation
.end method
