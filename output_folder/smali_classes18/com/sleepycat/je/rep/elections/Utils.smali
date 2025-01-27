.class public Lcom/sleepycat/je/rep/elections/Utils;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;,
        Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static broadcastMessage(Ljava/util/Set;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;Ljava/util/concurrent/ExecutorService;)Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;
    .locals 5
    .param p1, "serviceName"    # Ljava/lang/String;
    .param p2, "requestMessage"    # Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;
    .param p3, "threadPool"    # Ljava/util/concurrent/ExecutorService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/net/InetSocketAddress;",
            ">;",
            "Ljava/lang/String;",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;",
            "Ljava/util/concurrent/ExecutorService;",
            ")",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;"
        }
    .end annotation

    .line 110
    .local p0, "targets":Ljava/util/Set;, "Ljava/util/Set<Ljava/net/InetSocketAddress;>;"
    new-instance v0, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    invoke-direct {v0, p3}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;-><init>(Ljava/util/concurrent/Executor;)V

    .line 113
    .local v0, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    .line 114
    .local v2, "socketAddress":Ljava/net/InetSocketAddress;
    new-instance v3, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    invoke-virtual {p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;->getProtocol()Lcom/sleepycat/je/rep/impl/TextProtocol;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v3, v4, v2, p1, p2}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;-><init>(Lcom/sleepycat/je/rep/impl/TextProtocol;Ljava/net/InetSocketAddress;Ljava/lang/String;Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;)V

    .line 117
    .local v3, "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    :try_start_0
    invoke-virtual {v0, v3, v3}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;
    :try_end_0
    .catch Ljava/util/concurrent/RejectedExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 134
    nop

    .line 135
    .end local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    goto :goto_0

    .line 118
    .restart local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    .restart local v3    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "ree":Ljava/util/concurrent/RejectedExecutionException;
    invoke-interface {p3}, Ljava/util/concurrent/ExecutorService;->isTerminated()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 125
    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 126
    return-object v0

    .line 133
    :cond_0
    throw v1

    .line 136
    .end local v1    # "ree":Ljava/util/concurrent/RejectedExecutionException;
    .end local v2    # "socketAddress":Ljava/net/InetSocketAddress;
    .end local v3    # "me":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;
    :cond_1
    return-object v0
.end method

.method public static checkFutures(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    .locals 10
    .param p1, "futureTimeout"    # J
    .param p3, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p4, "logger"    # Ljava/util/logging/Logger;
    .param p5, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p6, "formatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
            ">;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/logging/Logger;",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/logging/Formatter;",
            ")V"
        }
    .end annotation

    .line 153
    .local p0, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;>;"
    new-instance v9, Lcom/sleepycat/je/rep/elections/Utils$1;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object/from16 v7, p6

    move-object v8, p5

    invoke-direct/range {v0 .. v8}, Lcom/sleepycat/je/rep/elections/Utils$1;-><init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/impl/RepImpl;)V

    .line 165
    invoke-virtual {v9}, Lcom/sleepycat/je/rep/elections/Utils$1;->execute()V

    .line 166
    return-void
.end method

.method public static cleanup(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Lcom/sleepycat/je/rep/net/DataChannel;Ljava/io/BufferedReader;Ljava/io/PrintWriter;)V
    .locals 4
    .param p0, "logger"    # Ljava/util/logging/Logger;
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "formatter"    # Ljava/util/logging/Formatter;
    .param p3, "channel"    # Lcom/sleepycat/je/rep/net/DataChannel;
    .param p4, "in"    # Ljava/io/BufferedReader;
    .param p5, "out"    # Ljava/io/PrintWriter;

    .line 67
    if-eqz p4, :cond_0

    .line 69
    :try_start_0
    invoke-virtual {p4}, Ljava/io/BufferedReader;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    goto :goto_0

    .line 70
    :catch_0
    move-exception v0

    .line 74
    :cond_0
    :goto_0
    if-eqz p5, :cond_1

    .line 75
    invoke-virtual {p5}, Ljava/io/PrintWriter;->close()V

    .line 77
    :cond_1
    if-eqz p3, :cond_3

    .line 78
    invoke-interface {p3}, Lcom/sleepycat/je/rep/net/DataChannel;->isBlocking()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 83
    :try_start_1
    invoke-interface {p3}, Lcom/sleepycat/je/rep/net/DataChannel;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 89
    goto :goto_1

    .line 84
    :catch_1
    move-exception v0

    .line 86
    .local v0, "e":Ljava/io/IOException;
    sget-object v1, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Channel exception on close: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 88
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 87
    invoke-static {p0, p1, p2, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    goto :goto_1

    .line 79
    .end local v0    # "e":Ljava/io/IOException;
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Unexpected non-blocking channel for clean up."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 91
    :cond_3
    :goto_1
    return-void
.end method
