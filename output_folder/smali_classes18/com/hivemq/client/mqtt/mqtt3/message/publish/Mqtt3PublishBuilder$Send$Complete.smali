.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send$Complete;
.super Ljava/lang/Object;
.source "Mqtt3PublishBuilder.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send;
.implements Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Complete"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<P:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send<",
        "TP;>;",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilderBase$Complete<",
        "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3PublishBuilder$Send$Complete<",
        "TP;>;>;"
    }
.end annotation


# virtual methods
.method public abstract send()Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TP;"
        }
    .end annotation
.end method
