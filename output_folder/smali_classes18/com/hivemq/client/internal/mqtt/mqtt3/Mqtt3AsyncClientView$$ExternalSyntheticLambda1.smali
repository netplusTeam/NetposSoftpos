.class public final synthetic Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda1;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/Function;


# instance fields
.field public final synthetic f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;


# direct methods
.method public synthetic constructor <init>(Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda1;->f$0:Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;

    check-cast p1, Lcom/hivemq/client/internal/mqtt/message/unsubscribe/mqtt3/Mqtt3UnsubscribeView;

    invoke-virtual {v0, p1}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->unsubscribe(Lcom/hivemq/client/mqtt/mqtt3/message/unsubscribe/Mqtt3Unsubscribe;)Ljava/util/concurrent/CompletableFuture;

    move-result-object p1

    return-object p1
.end method
