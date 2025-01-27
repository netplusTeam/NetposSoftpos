.class public Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;
.super Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;
.source "MqttStatefulUnsubscribe.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId<",
        "Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;I)V
    .locals 0
    .param p1, "unsubscribe"    # Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttUnsubscribe;
    .param p2, "packetIdentifier"    # I

    .line 30
    invoke-direct {p0, p1, p2}, Lcom/hivemq/client/internal/mqtt/message/MqttStatefulMessage$WithId;-><init>(Lcom/hivemq/client/internal/mqtt/message/MqttMessageWithUserProperties;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 35
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "MqttStatefulUnsubscribe{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/MqttStatefulUnsubscribe;->toAttributeString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
