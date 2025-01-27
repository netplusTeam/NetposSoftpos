.class public abstract Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;
.super Ljava/lang/Object;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/elections/Utils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithFutureExceptionHandler"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final completionTimeout:J

.field private final envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

.field private final formatter:Ljava/util/logging/Formatter;

.field private final logger:Ljava/util/logging/Logger;

.field private final unit:Ljava/util/concurrent/TimeUnit;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 174
    const-class v0, Lcom/sleepycat/je/rep/elections/Utils;

    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;JLjava/util/concurrent/TimeUnit;Ljava/util/logging/Logger;Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/logging/Formatter;)V
    .locals 0
    .param p2, "completionTimeout"    # J
    .param p4, "unit"    # Ljava/util/concurrent/TimeUnit;
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .param p6, "envImpl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p7, "formatter"    # Ljava/util/logging/Formatter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<",
            "TT;>;J",
            "Ljava/util/concurrent/TimeUnit;",
            "Ljava/util/logging/Logger;",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/logging/Formatter;",
            ")V"
        }
    .end annotation

    .line 207
    .local p0, "this":Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;, "Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler<TT;>;"
    .local p1, "compService":Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;, "Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 209
    iput-object p1, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    .line 210
    iput-wide p2, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionTimeout:J

    .line 211
    iput-object p4, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->unit:Ljava/util/concurrent/TimeUnit;

    .line 212
    iput-object p5, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    .line 213
    iput-object p6, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    .line 214
    iput-object p7, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    .line 215
    return-void
.end method

.method private final executeInternal(Ljava/util/concurrent/Future;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/Future<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 354
    .local p0, "this":Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;, "Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler<TT;>;"
    .local p1, "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 355
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;

    .line 356
    .local v0, "result":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;, "TT;"
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getResponseMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$ResponseMessage;

    move-result-object v1

    if-nez v1, :cond_0

    .line 357
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->processNullResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V

    goto :goto_3

    .line 359
    :cond_0
    invoke-virtual {p0, v0}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V

    goto :goto_3

    .line 363
    .end local v0    # "result":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;, "TT;"
    :catch_0
    move-exception v0

    goto :goto_0

    .line 361
    :catch_1
    move-exception v0

    goto :goto_3

    .line 354
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    .end local p1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    throw v0
    :try_end_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 365
    .local v0, "e":Ljava/util/concurrent/ExecutionException;
    .restart local p1    # "future":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    :goto_0
    invoke-virtual {v0}, Ljava/util/concurrent/ExecutionException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/lang/Exception;

    .line 366
    .local v1, "cause":Ljava/lang/Exception;
    :goto_1
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-eqz v2, :cond_2

    .line 367
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getCause()Ljava/lang/Throwable;

    move-result-object v2

    .line 368
    .local v2, "t":Ljava/lang/Throwable;
    if-eqz v2, :cond_2

    instance-of v3, v2, Ljava/lang/Exception;

    if-eqz v3, :cond_2

    .line 369
    move-object v1, v2

    check-cast v1, Ljava/lang/Exception;

    .line 373
    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 374
    :cond_2
    instance-of v2, v1, Ljava/net/ConnectException;

    if-nez v2, :cond_4

    instance-of v2, v1, Ljava/net/SocketException;

    if-nez v2, :cond_4

    instance-of v2, v1, Ljava/net/SocketTimeoutException;

    if-nez v2, :cond_4

    instance-of v2, v1, Lcom/sleepycat/je/rep/utilint/ServiceDispatcher$ServiceConnectFailedException;

    if-eqz v2, :cond_3

    goto :goto_2

    .line 385
    :cond_3
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    throw v2

    .line 379
    :cond_4
    :goto_2
    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v3, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v4, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v5, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Election connection failure "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 381
    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 379
    invoke-static {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 382
    return-void

    .line 386
    .end local v0    # "e":Ljava/util/concurrent/ExecutionException;
    .end local v1    # "cause":Ljava/lang/Exception;
    :goto_3
    nop

    .line 387
    return-void
.end method


# virtual methods
.method public final execute()V
    .locals 18

    .line 261
    .local p0, "this":Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;, "Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler<TT;>;"
    move-object/from16 v1, p0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionTimeout:J

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    add-long/2addr v2, v4

    .line 263
    .local v2, "limitTimeMs":J
    const/4 v4, 0x1

    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->getFutures()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 264
    .local v0, "count":I
    :goto_0
    if-lez v0, :cond_6

    .line 265
    nop

    .line 266
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sub-long v5, v2, v5

    .line 267
    .local v5, "pollTimeoutMs":J
    const-wide/16 v7, 0x0

    cmp-long v9, v5, v7

    const-string v10, "ms."

    const-string v11, "Election messages timed out after "

    if-gtz v9, :cond_0

    .line 269
    :try_start_1
    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v9, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v12, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v13, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->unit:Ljava/util/concurrent/TimeUnit;

    iget-wide v14, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionTimeout:J

    .line 272
    invoke-virtual {v13, v14, v15}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v13

    invoke-virtual {v11, v13, v14}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 270
    invoke-static {v7, v8, v9, v12, v10}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 338
    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    invoke-virtual {v7, v4}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 273
    return-void

    .line 277
    :cond_0
    :try_start_2
    iget-object v9, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    sget-object v12, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 278
    invoke-virtual {v9, v5, v6, v12}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/Future;

    move-result-object v9

    .line 281
    .local v9, "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    if-nez v9, :cond_1

    .line 283
    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v8, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v12, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v13, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v14, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->unit:Ljava/util/concurrent/TimeUnit;

    move-wide/from16 v16, v5

    .end local v5    # "pollTimeoutMs":J
    .local v16, "pollTimeoutMs":J
    iget-wide v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionTimeout:J

    .line 286
    invoke-virtual {v14, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    invoke-virtual {v11, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 284
    invoke-static {v7, v8, v12, v13, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 287
    return-void

    .line 290
    .end local v16    # "pollTimeoutMs":J
    .restart local v5    # "pollTimeoutMs":J
    :cond_1
    move-wide/from16 v16, v5

    .end local v5    # "pollTimeoutMs":J
    .restart local v16    # "pollTimeoutMs":J
    :try_start_3
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->isShutdown()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 291
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v7, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v8, "Election messages terminated. Environment being shutdown."

    .line 292
    invoke-static {v4, v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 338
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 296
    return-void

    .line 299
    :cond_2
    :try_start_4
    invoke-interface {v9}, Ljava/util/concurrent/Future;->isCancelled()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 300
    goto :goto_1

    .line 303
    :cond_3
    nop

    .line 304
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    sub-long v4, v2, v4

    .line 305
    .local v4, "futureTimeoutMs":J
    cmp-long v6, v4, v7

    if-gtz v6, :cond_4

    .line 338
    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 306
    return-void

    .line 309
    :cond_4
    :try_start_5
    invoke-interface {v9}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 310
    invoke-direct {v1, v9}, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->executeInternal(Ljava/util/concurrent/Future;)V

    .line 264
    .end local v4    # "futureTimeoutMs":J
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v16    # "pollTimeoutMs":J
    :goto_1
    add-int/lit8 v0, v0, -0x1

    const/4 v4, 0x1

    goto/16 :goto_0

    .line 309
    .restart local v4    # "futureTimeoutMs":J
    .restart local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .restart local v16    # "pollTimeoutMs":J
    :cond_5
    new-instance v6, Ljava/lang/AssertionError;

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    .end local v2    # "limitTimeMs":J
    throw v6
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 338
    .end local v0    # "count":I
    .end local v4    # "futureTimeoutMs":J
    .end local v9    # "f":Ljava/util/concurrent/Future;, "Ljava/util/concurrent/Future<TT;>;"
    .end local v16    # "pollTimeoutMs":J
    .restart local v2    # "limitTimeMs":J
    :cond_6
    iget-object v0, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v4, 0x1

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 339
    nop

    .line 340
    return-void

    .line 338
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 313
    :catch_0
    move-exception v0

    .line 315
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_6
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    if-eqz v4, :cond_7

    .line 316
    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepImpl;->getRepNode()Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    .line 317
    .local v4, "rn":Lcom/sleepycat/je/rep/impl/node/RepNode;
    if-eqz v4, :cond_7

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdown()Z

    move-result v5

    if-eqz v5, :cond_7

    .line 323
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v6, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v7, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v8, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v9, "Election operation interrupted. Environment being shutdown."

    .line 324
    invoke-static {v5, v6, v7, v8, v9}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 338
    iget-object v5, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    .line 328
    return-void

    .line 332
    .end local v4    # "rn":Lcom/sleepycat/je/rep/impl/node/RepNode;
    :cond_7
    :try_start_7
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedException(Ljava/lang/Exception;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v4

    .end local v2    # "limitTimeMs":J
    throw v4
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 338
    .end local v0    # "e":Ljava/lang/InterruptedException;
    .restart local v2    # "limitTimeMs":J
    :goto_2
    iget-object v4, v1, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->completionService:Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/elections/Utils$FutureTrackingCompService;->cancelFutures(Z)V

    throw v0
.end method

.method protected abstract isShutdown()Z
.end method

.method processNullResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 238
    .local p0, "this":Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;, "Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler<TT;>;"
    .local p1, "result":Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;, "TT;"
    iget-object v0, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->logger:Ljava/util/logging/Logger;

    iget-object v1, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->envImpl:Lcom/sleepycat/je/rep/impl/RepImpl;

    iget-object v2, p0, Lcom/sleepycat/je/rep/elections/Utils$WithFutureExceptionHandler;->formatter:Ljava/util/logging/Formatter;

    sget-object v3, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "No response from: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->target:Ljava/net/InetSocketAddress;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " request"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 241
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->getRequestMessage()Lcom/sleepycat/je/rep/impl/TextProtocol$RequestMessage;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " reason: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;->exception:Ljava/lang/Exception;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 238
    invoke-static {v0, v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->logMsg(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/util/logging/Formatter;Ljava/util/logging/Level;Ljava/lang/String;)V

    .line 243
    return-void
.end method

.method protected abstract processResponse(Lcom/sleepycat/je/rep/impl/TextProtocol$MessageExchange;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation
.end method
