.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuth;
.super Ljava/lang/Object;
.source "Mqtt5SimpleAuth.java"


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5SimpleAuthBuilder;
    .locals 1

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/MqttSimpleAuthBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract getPassword()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getUsername()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ">;"
        }
    .end annotation
.end method
