.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublish;
.super Ljava/lang/Object;
.source "Mqtt5WillPublish.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;


# static fields
.field public static final DEFAULT_DELAY_INTERVAL:J


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder;
    .locals 1

    .line 44
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/MqttPublishBuilder$WillDefault;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extendAsWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;
.end method

.method public abstract getDelayInterval()J
.end method
