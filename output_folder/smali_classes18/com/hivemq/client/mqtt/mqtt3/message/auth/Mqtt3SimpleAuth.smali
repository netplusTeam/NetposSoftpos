.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuth;
.super Ljava/lang/Object;
.source "Mqtt3SimpleAuth.java"


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilder;
    .locals 1

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/auth/mqtt3/Mqtt3SimpleAuthViewBuilder$Default;-><init>()V

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

.method public abstract getUsername()Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;
.end method
