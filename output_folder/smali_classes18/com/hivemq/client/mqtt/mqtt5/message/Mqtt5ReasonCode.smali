.class public interface abstract Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;
.super Ljava/lang/Object;
.source "Mqtt5ReasonCode.java"


# virtual methods
.method public canBeSentByClient()Z
    .locals 1

    .line 53
    const/4 v0, 0x0

    return v0
.end method

.method public canBeSentByServer()Z
    .locals 1

    .line 46
    const/4 v0, 0x1

    return v0
.end method

.method public canBeSetByUser()Z
    .locals 1

    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public abstract getCode()I
.end method

.method public isError()Z
    .locals 2

    .line 39
    invoke-interface {p0}, Lcom/hivemq/client/mqtt/mqtt5/message/Mqtt5ReasonCode;->getCode()I

    move-result v0

    const/16 v1, 0x80

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
