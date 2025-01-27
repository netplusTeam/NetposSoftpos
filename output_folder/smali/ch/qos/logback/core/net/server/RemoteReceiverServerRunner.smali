.class Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;
.super Lch/qos/logback/core/net/server/ConcurrentServerRunner;
.source "RemoteReceiverServerRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/net/server/ConcurrentServerRunner<",
        "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
        ">;"
    }
.end annotation


# instance fields
.field private final clientQueueSize:I


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;I)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .param p3, "clientQueueSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/core/net/server/RemoteReceiverClient;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            "I)V"
        }
    .end annotation

    .line 40
    .local p1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/core/net/server/RemoteReceiverClient;>;"
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;-><init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)V

    .line 41
    iput p3, p0, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->clientQueueSize:I

    .line 42
    return-void
.end method


# virtual methods
.method protected bridge synthetic configureClient(Lch/qos/logback/core/net/server/Client;)Z
    .locals 0

    .line 26
    check-cast p1, Lch/qos/logback/core/net/server/RemoteReceiverClient;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->configureClient(Lch/qos/logback/core/net/server/RemoteReceiverClient;)Z

    move-result p1

    return p1
.end method

.method protected configureClient(Lch/qos/logback/core/net/server/RemoteReceiverClient;)Z
    .locals 2
    .param p1, "client"    # Lch/qos/logback/core/net/server/RemoteReceiverClient;

    .line 49
    invoke-virtual {p0}, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/server/RemoteReceiverClient;->setContext(Lch/qos/logback/core/Context;)V

    .line 50
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v1, p0, Lch/qos/logback/core/net/server/RemoteReceiverServerRunner;->clientQueueSize:I

    invoke-direct {v0, v1}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    invoke-interface {p1, v0}, Lch/qos/logback/core/net/server/RemoteReceiverClient;->setQueue(Ljava/util/concurrent/BlockingQueue;)V

    .line 51
    const/4 v0, 0x1

    return v0
.end method
