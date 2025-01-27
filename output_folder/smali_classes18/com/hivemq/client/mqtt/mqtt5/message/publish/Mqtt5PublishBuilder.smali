.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder;
.super Ljava/lang/Object;
.source "Mqtt5PublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Send;,
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Nested;,
        Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilderBase<",
        "Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishBuilder$Complete;",
        ">;"
    }
.end annotation


# virtual methods
.method public abstract asWill()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5WillPublishBuilder;
.end method
