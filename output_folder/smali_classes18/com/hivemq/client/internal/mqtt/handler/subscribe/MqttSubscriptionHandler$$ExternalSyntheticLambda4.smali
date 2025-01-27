.class public final synthetic Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/ToIntFunction;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final applyAsInt(Ljava/lang/Object;)I
    .locals 0

    check-cast p1, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubscriptionHandler;->lambda$static$0(Lcom/hivemq/client/internal/mqtt/handler/subscribe/MqttSubOrUnsubWithFlow;)I

    move-result p1

    return p1
.end method
