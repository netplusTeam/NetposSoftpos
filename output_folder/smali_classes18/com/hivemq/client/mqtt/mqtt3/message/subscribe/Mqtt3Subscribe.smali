.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;
.super Ljava/lang/Object;
.source "Mqtt3Subscribe.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# direct methods
.method public static builder()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Start;
    .locals 1

    .line 43
    new-instance v0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;

    invoke-direct {v0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$Default;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract extend()Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3SubscribeBuilder$Complete;
.end method

.method public abstract getSubscriptions()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "+",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 54
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBSCRIBE:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method
