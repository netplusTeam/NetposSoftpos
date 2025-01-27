.class public Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.source "MqttStatefulSubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;",
        ">;"
    }
.end annotation


# static fields
.field public static final DEFAULT_NO_SUBSCRIPTION_IDENTIFIER:I = -0x1


# instance fields
.field private final subscriptionIdentifier:I


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;II)V
    .locals 0
    .param p1, "subscribe"    # Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttSubscribe;
    .param p2, "packetIdentifier"    # I
    .param p3, "subscriptionIdentifier"    # I

    .line 36
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V

    .line 37
    iput p3, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    .line 38
    return-void
.end method


# virtual methods
.method public getSubscriptionIdentifier()I
    .locals 1

    .line 41
    iget v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    return v0
.end method

.method protected toAttributeString()Ljava/lang/String;
    .locals 3

    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_0

    const-string v1, ""

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "subscriptionIdentifier="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->subscriptionIdentifier:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttStatefulSubscribe{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/subscribe/MqttStatefulSubscribe;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
