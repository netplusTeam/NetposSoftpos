.class public final synthetic Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda4;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/BiConsumer;


# instance fields
.field public final synthetic f$0:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Ljava/util/concurrent/CompletableFuture;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView$$ExternalSyntheticLambda4;->f$0:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;

    check-cast p2, Ljava/lang/Throwable;

    invoke-static {v0, p1, p2}, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3AsyncClientView;->lambda$handleSubAck$0(Ljava/util/concurrent/CompletableFuture;Lcom/hivemq/client/mqtt/mqtt5/message/subscribe/suback/Mqtt5SubAck;Ljava/lang/Throwable;)V

    return-void
.end method
