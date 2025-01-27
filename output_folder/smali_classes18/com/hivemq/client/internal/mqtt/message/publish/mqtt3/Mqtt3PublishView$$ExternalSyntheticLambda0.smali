.class public final synthetic Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Lio/reactivex/functions/Function;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    invoke-static {p1}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object p1

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;

    return-object p1
.end method
