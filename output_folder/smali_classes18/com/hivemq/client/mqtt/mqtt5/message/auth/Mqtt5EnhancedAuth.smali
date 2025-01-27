.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/auth/Mqtt5EnhancedAuth;
.super Ljava/lang/Object;
.source "Mqtt5EnhancedAuth.java"


# virtual methods
.method public abstract getData()Ljava/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMethod()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method
