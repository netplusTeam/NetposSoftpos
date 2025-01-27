.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder;
.super Ljava/lang/Object;
.source "MqttTopicBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Nested;,
        Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilderBase<",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract filter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder;
.end method

.method public abstract share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder;
.end method
