.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt5SimpleAuthBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract password(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract password([B)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TC;"
        }
    .end annotation
.end method

.method public abstract username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method
