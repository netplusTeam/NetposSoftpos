.class public final synthetic Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$$ExternalSyntheticLambda2;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;->publish(Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;)V

    return-void
.end method
