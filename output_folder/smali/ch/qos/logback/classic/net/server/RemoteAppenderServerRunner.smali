.class Lch/qos/logback/classic/net/server/RemoteAppenderServerRunner;
.super Lch/qos/logback/core/net/server/ConcurrentServerRunner;
.source "RemoteAppenderServerRunner.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/net/server/ConcurrentServerRunner<",
        "Lch/qos/logback/classic/net/server/RemoteAppenderClient;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)V
    .locals 0
    .param p2, "executor"    # Ljava/util/concurrent/Executor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/net/server/ServerListener<",
            "Lch/qos/logback/classic/net/server/RemoteAppenderClient;",
            ">;",
            "Ljava/util/concurrent/Executor;",
            ")V"
        }
    .end annotation

    .line 39
    .local p1, "listener":Lch/qos/logback/core/net/server/ServerListener;, "Lch/qos/logback/core/net/server/ServerListener<Lch/qos/logback/classic/net/server/RemoteAppenderClient;>;"
    invoke-direct {p0, p1, p2}, Lch/qos/logback/core/net/server/ConcurrentServerRunner;-><init>(Lch/qos/logback/core/net/server/ServerListener;Ljava/util/concurrent/Executor;)V

    .line 40
    return-void
.end method


# virtual methods
.method protected configureClient(Lch/qos/logback/classic/net/server/RemoteAppenderClient;)Z
    .locals 1
    .param p1, "client"    # Lch/qos/logback/classic/net/server/RemoteAppenderClient;

    .line 47
    invoke-virtual {p0}, Lch/qos/logback/classic/net/server/RemoteAppenderServerRunner;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    check-cast v0, Lch/qos/logback/classic/LoggerContext;

    invoke-interface {p1, v0}, Lch/qos/logback/classic/net/server/RemoteAppenderClient;->setLoggerContext(Lch/qos/logback/classic/LoggerContext;)V

    .line 48
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic configureClient(Lch/qos/logback/core/net/server/Client;)Z
    .locals 0

    .line 29
    check-cast p1, Lch/qos/logback/classic/net/server/RemoteAppenderClient;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/net/server/RemoteAppenderServerRunner;->configureClient(Lch/qos/logback/classic/net/server/RemoteAppenderClient;)Z

    move-result p1

    return p1
.end method
