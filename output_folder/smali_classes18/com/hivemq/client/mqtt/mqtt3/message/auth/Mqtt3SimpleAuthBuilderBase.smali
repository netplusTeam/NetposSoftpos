.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase;
.super Ljava/lang/Object;
.source "Mqtt3SimpleAuthBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete<",
        "TC;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract username(Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract username(Ljava/lang/String;)Lcom/hivemq/client/mqtt/mqtt3/message/auth/Mqtt3SimpleAuthBuilderBase$Complete;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method
