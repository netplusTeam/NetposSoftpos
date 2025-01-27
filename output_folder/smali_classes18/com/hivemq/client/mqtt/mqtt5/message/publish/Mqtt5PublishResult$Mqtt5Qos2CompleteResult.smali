.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2CompleteResult;
.super Ljava/lang/Object;
.source "Mqtt5PublishResult.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult$Mqtt5Qos2Result;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5PublishResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Mqtt5Qos2CompleteResult"
.end annotation


# virtual methods
.method public abstract getPubComp()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubcomp/Mqtt5PubComp;
.end method

.method public abstract getPubRel()Lcom/hivemq/client/mqtt/mqtt5/message/publish/pubrel/Mqtt5PubRel;
.end method
