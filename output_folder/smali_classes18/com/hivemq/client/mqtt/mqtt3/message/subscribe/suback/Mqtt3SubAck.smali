.class public interface abstract Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;
.super Ljava/lang/Object;
.source "Mqtt3SubAck.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3Message;


# virtual methods
.method public abstract getReturnCodes()Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAckReturnCode;",
            ">;"
        }
    .end annotation
.end method

.method public getType()Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;
    .locals 1

    .line 46
    sget-object v0, Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;->SUBACK:Lcom/hivemq/client/mqtt/mqtt3/message/Mqtt3MessageType;

    return-object v0
.end method
