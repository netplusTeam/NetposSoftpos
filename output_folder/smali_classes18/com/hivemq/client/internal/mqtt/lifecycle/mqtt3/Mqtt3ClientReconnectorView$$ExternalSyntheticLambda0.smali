.class public final synthetic Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView$$ExternalSyntheticLambda0;->f$0:Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/connect/mqtt3/Mqtt3ConnectView;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;->connect(Lcom/hivemq/client/mqtt/mqtt3/message/connect/Mqtt3Connect;)Lcom/hivemq/client/internal/mqtt/lifecycle/mqtt3/Mqtt3ClientReconnectorView;

    move-result-object p1

    return-object p1
.end method
