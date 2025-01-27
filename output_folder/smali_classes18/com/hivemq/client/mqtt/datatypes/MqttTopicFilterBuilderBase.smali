.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
.super Ljava/lang/Object;
.source "MqttTopicFilterBuilderBase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;,
        Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;,
        Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase<",
        "TC;TE;TS;TSC;TSE;>;E::",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;",
        "S::",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase<",
        "TS;TSC;TSE;>;SC:TS;SE::",
        "Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract addLevel(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TC;"
        }
    .end annotation
.end method

.method public abstract multiLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$End;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation
.end method

.method public abstract share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase$SharedBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TS;"
        }
    .end annotation
.end method

.method public abstract singleLevelWildcard()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilderBase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TC;"
        }
    .end annotation
.end method
