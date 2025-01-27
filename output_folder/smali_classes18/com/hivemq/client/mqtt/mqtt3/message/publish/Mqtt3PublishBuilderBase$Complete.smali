.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
.super Ljava/lang/Object;
.source "Mqtt3PublishBuilderBase.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase<",
        "TC;>;"
    }
.end annotation


# virtual methods
.method public abstract payload(Ljava/nio/ByteBuffer;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract payload([B)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([B)TC;"
        }
    .end annotation
.end method

.method public abstract qos(Lcom/hivemq/client/mqtt/datatypes/MqttQos;)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttQos;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract retain(Z)Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TC;"
        }
    .end annotation
.end method
