.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
.super Ljava/lang/Object;
.source "MqttTopicFilter.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttUtf8String;


# static fields
.field public static final MULTI_LEVEL_WILDCARD:C = '#'

.field public static final SINGLE_LEVEL_WILDCARD:C = '+'


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder;
    .locals 1

    .line 69
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$Default;-><init>()V

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
    .locals 1
    .param p0, "string"    # Ljava/lang/String;

    .line 60
    invoke-static {p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;->of(Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract containsMultiLevelWildcard()Z
.end method

.method public abstract containsSingleLevelWildcard()Z
.end method

.method public abstract containsWildcards()Z
.end method

.method public abstract extend()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilterBuilder$Complete;
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

.method public abstract isShared()Z
.end method

.method public abstract matches(Lcom/hivemq/client/mqtt/datatypes/MqttTopic;)Z
.end method

.method public abstract matches(Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;)Z
.end method

.method public abstract share(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;
.end method
