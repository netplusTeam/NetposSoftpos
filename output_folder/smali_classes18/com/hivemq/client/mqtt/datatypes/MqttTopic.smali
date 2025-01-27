.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
.super Ljava/lang/Object;
.source "MqttTopic.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field public static final TOPIC_LEVEL_SEPARATOR:C = '/'


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder;
    .locals 1

    .line 65
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImplBuilder$Default;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopic;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 56
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/datatypes/MqttTopicBuilder$Complete;
.end method

.method public abstract filter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
.end method

.method public abstract getLevels()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method
