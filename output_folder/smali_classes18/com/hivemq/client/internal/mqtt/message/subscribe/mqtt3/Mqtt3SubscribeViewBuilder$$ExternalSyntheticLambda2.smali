.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;->addSubscription(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscription;)Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeViewBuilder;

    return-void
.end method
