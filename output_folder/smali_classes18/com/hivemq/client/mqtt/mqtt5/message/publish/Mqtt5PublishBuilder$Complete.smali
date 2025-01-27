.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;
.super Ljava/lang/Object;
.source "Mqtt5PublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder;
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase$Complete<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;
.end method

.method public bridge synthetic asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder;
    .locals 1

    .line 43
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;->asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder$Complete;

    move-result-object v0

    return-object v0
.end method

.method public abstract build()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;
.end method
