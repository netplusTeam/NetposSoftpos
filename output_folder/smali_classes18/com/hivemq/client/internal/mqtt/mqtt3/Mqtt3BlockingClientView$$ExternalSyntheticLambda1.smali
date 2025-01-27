.class public final synthetic Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/subscribe/mqtt3/Mqtt3SubscribeView;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->subscribe(Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/Mqtt3Subscribe;)Lcom/hivemq/client/mqtt/mqtt3/message/subscribe/suback/Mqtt3SubAck;

    move-result-object p1

    return-object p1
.end method
