.class public interface abstract Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;
.super Ljava/lang/Object;
.source "MqttSharedTopicFilter.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;


# static fields
.field public static final SHARE_PREFIX:Ljava/lang/String; = "$share/"


# direct methods
.method public static builder(Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder;
    .locals 1
    .param p0, "shareName"    # Ljava/lang/String;

    .line 70
    new-instance v0, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;

    invoke-direct {v0, p0}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttTopicFilterImplBuilder$SharedDefault;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilter;
    .locals 1
    .param p0, "shareName"    # Ljava/lang/String;
    .param p1, "topicFilter"    # Ljava/lang/String;

    .line 60
    invoke-static {p0, p1}, Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;->of(Ljava/lang/String;Ljava/lang/String;)Lcom/hivemq/client/internal/mqtt/datatypes/MqttSharedTopicFilterImpl;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract extendShared()Lcom/hivemq/client/mqtt/datatypes/MqttSharedTopicFilterBuilder$Complete;
.end method

.method public abstract getShareName()Ljava/lang/String;
.end method

.method public abstract getTopicFilter()Lcom/hivemq/client/mqtt/datatypes/MqttTopicFilter;
.end method
