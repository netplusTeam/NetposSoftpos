.class Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;
.super Ljava/lang/Object;
.source "Mqtt3BlockingClientView.java"

# interfaces
.implements Lcom/hivemq/client/mqtt/mqtt3/Mqtt3BlockingClient$Mqtt3Publishes;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Mqtt3PublishesView"
.end annotation


# instance fields
.field private final delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;


# direct methods
.method constructor <init>(Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;)V
    .locals 0
    .param p1, "delegate"    # Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    .line 175
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 176
    iput-object p1, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;->delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    .line 177
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 215
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;->delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->close()V

    .line 216
    return-void
.end method

.method public receive()Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 182
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;->delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->receive()Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;

    move-result-object v0

    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->of(Lcom/hivemq/client/mqtt/mqtt5/message/publish/Mqtt5Publish;)Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 183
    :catch_0
    move-exception v0

    .line 184
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method

.method public receive(JLjava/util/concurrent/TimeUnit;)Ljava/util/Optional;
    .locals 2
    .param p1, "timeout"    # J
    .param p3, "timeUnit"    # Ljava/util/concurrent/TimeUnit;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 192
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    .line 195
    const-string v0, "Time unit"

    invoke-static {p3, v0}, Lcom/hivemq/client/internal/util/Checks;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 198
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;->delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    invoke-interface {v0, p1, p2, p3}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->receive(JLjava/util/concurrent/TimeUnit;)Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->JAVA_MAPPER:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 199
    :catch_0
    move-exception v0

    .line 200
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1

    .line 193
    .end local v0    # "e":Ljava/lang/RuntimeException;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Timeout must be greater than 0."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public receiveNow()Ljava/util/Optional;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lcom/hivemq/client/mqtt/mqtt3/message/publish/Mqtt3Publish;",
            ">;"
        }
    .end annotation

    .line 207
    :try_start_0
    iget-object v0, p0, Lcom/hivemq/client/internal/mqtt/mqtt3/Mqtt3BlockingClientView$Mqtt3PublishesView;->delegate:Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;

    invoke-interface {v0}, Lcom/hivemq/client/mqtt/mqtt5/Mqtt5BlockingClient$Mqtt5Publishes;->receiveNow()Ljava/util/Optional;

    move-result-object v0

    sget-object v1, Lcom/hivemq/client/internal/mqtt/message/publish/mqtt3/Mqtt3PublishView;->JAVA_MAPPER:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 208
    :catch_0
    move-exception v0

    .line 209
    .local v0, "e":Ljava/lang/RuntimeException;
    invoke-static {v0}, Lcom/hivemq/client/internal/mqtt/exceptions/mqtt3/Mqtt3ExceptionFactory;->mapWithStackTrace(Ljava/lang/RuntimeException;)Ljava/lang/RuntimeException;

    move-result-object v1

    throw v1
.end method
