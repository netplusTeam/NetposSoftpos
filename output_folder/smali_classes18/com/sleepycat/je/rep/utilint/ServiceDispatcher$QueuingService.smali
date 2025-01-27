.class public Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;
.super Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;
.source "ServiceDispatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "QueuingService"
.end annotation


# instance fields
.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;Ljava/lang/String;Ljava/util/concurrent/BlockingQueue;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;
    .param p2, "serviceName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/sleepycat/je/rep/net/DataChannel;",
            ">;)V"
        }
    .end annotation

    .line 1010
    .local p3, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Lcom/sleepycat/je/rep/net/DataChannel;>;"
    iput-object p1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    .line 1011
    invoke-direct {p0, p2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;-><init>(Ljava/lang/String;)V

    .line 1012
    iput-object p3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 1013
    return-void
.end method


# virtual methods
.method cancel()V
    .locals 3

    .line 1050
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1052
    .local v1, "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :try_start_0
    invoke-interface {v1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1055
    goto :goto_1

    .line 1053
    :catch_0
    move-exception v2

    .line 1056
    .end local v1    # "channel":Lcom/sleepycat/je/rep/net/DataChannel;
    :goto_1
    goto :goto_0

    .line 1057
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->queue:Ljava/util/concurrent/BlockingQueue;

    sget-object v1, Lcom/sleepycat/je/rep/utilint/RepUtils;->CHANNEL_EOF_MARKER:Lcom/sleepycat/je/rep/net/DataChannel;

    invoke-interface {v0, v1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    .line 1058
    return-void
.end method

.method public bridge synthetic isBusy()Z
    .locals 1

    .line 1005
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->isBusy()Z

    move-result v0

    return v0
.end method

.method requestDispatch(Lcom/sleepycat/je/rep/net/DataChannel;)V
    .locals 7
    .param p1, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;

    .line 1021
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->simulateIOException()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1022
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;

    move-result-object v2

    sget-object v3, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v4, "Simulated test IO exception"

    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1029
    :try_start_0
    invoke-interface {p1}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1035
    goto :goto_0

    .line 1030
    :catch_0
    move-exception v0

    .line 1031
    .local v0, "e":Ljava/io/IOException;
    iget-object v1, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$000(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v2}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$100(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->this$0:Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;

    invoke-static {v3}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;->access$200(Lcom/sleepycat/je/rep/utilint/ServiceDispatcher;)Ljava/util/logging/Formatter;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINEST:Ljava/util/logging/Level;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Close failure in \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->name:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\' service: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 1034
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->exceptionTypeAndMsg(Ljava/lang/Exception;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 1031
    invoke-static {v1, v2, v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 1037
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1041
    return-void

    .line 1038
    :cond_1
    nop

    .line 1039
    const-string/jumbo v0, "request queue overflow"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public bridge synthetic setSimulateIOException(Z)V
    .locals 0

    .line 1005
    invoke-super {p0, p1}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->setSimulateIOException(Z)V

    return-void
.end method

.method public bridge synthetic simulateIOException()Z
    .locals 1

    .line 1005
    invoke-super {p0}, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$Service;->simulateIOException()Z

    move-result v0

    return v0
.end method

.method take()Lcom/sleepycat/je/rep/net/DataChannel;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1016
    iget-object v0, p0, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$QueuingService;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/net/DataChannel;

    return-object v0
.end method
