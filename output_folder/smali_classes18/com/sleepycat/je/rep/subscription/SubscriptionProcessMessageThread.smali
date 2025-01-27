.class Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "SubscriptionProcessMessageThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;
    }
.end annotation


# static fields
.field private static final SOFT_SHUTDOWN_WAIT_MS:I = 0xbb8


# instance fields
.field private final config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

.field private volatile exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

.field private final logger:Ljava/util/logging/Logger;

.field private final queue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/RepImpl;Ljava/util/concurrent/BlockingQueue;Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;Lcom/sleepycat/je/rep/subscription/SubscriptionStat;Ljava/util/logging/Logger;)V
    .locals 1
    .param p1, "impl"    # Lcom/sleepycat/je/rep/impl/RepImpl;
    .param p3, "config"    # Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;
    .param p4, "stats"    # Lcom/sleepycat/je/rep/subscription/SubscriptionStat;
    .param p5, "logger"    # Ljava/util/logging/Logger;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/rep/impl/RepImpl;",
            "Ljava/util/concurrent/BlockingQueue<",
            "Ljava/lang/Object;",
            ">;",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;",
            "Lcom/sleepycat/je/rep/subscription/SubscriptionStat;",
            "Ljava/util/logging/Logger;",
            ")V"
        }
    .end annotation

    .line 66
    .local p2, "queue":Ljava/util/concurrent/BlockingQueue;, "Ljava/util/concurrent/BlockingQueue<Ljava/lang/Object;>;"
    const-string v0, "SubscriptionProcessMessageThread"

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 67
    iput-object p5, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    .line 68
    iput-object p3, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 69
    iput-object p2, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 70
    iput-object p4, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    .line 72
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->NONE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    .line 73
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p4, v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->setHighVLSN(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 74
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 213
    iget-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    return-object v0
.end method

.method public initiateSoftShutdown()I
    .locals 1

    .line 84
    sget-object v0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    .line 93
    const/16 v0, 0xbb8

    return v0
.end method

.method public run()V
    .locals 19

    .line 105
    move-object/from16 v1, p0

    const-string v2, "message queue cleared, thread exits with type: "

    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getCallBack()Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;

    move-result-object v10

    .line 107
    .local v10, "callBack":Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Input thread started. Message queue size:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    .line 108
    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 107
    invoke-virtual {v0, v3}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 112
    :goto_0
    :try_start_0
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    sget-object v3, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    if-eq v0, v3, :cond_7

    .line 115
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    const-wide/16 v3, 0x3e8

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 116
    invoke-interface {v0, v3, v4, v5}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v0

    .line 119
    .local v0, "message":Ljava/lang/Object;
    if-nez v0, :cond_0

    .line 124
    goto :goto_0

    .line 125
    :cond_0
    instance-of v3, v0, Ljava/lang/Exception;

    if-eqz v3, :cond_1

    .line 127
    move-object v3, v0

    check-cast v3, Ljava/lang/Exception;

    invoke-interface {v10, v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;->processException(Ljava/lang/Exception;)V

    .line 130
    instance-of v3, v0, Lcom/sleepycat/je/rep/GroupShutdownException;

    if-eqz v3, :cond_6

    .line 131
    sget-object v3, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    iput-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    .line 132
    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/rep/GroupShutdownException;

    .line 134
    .local v3, "gse":Lcom/sleepycat/je/rep/GroupShutdownException;
    iget-object v4, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Received shutdown message from "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->config:Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;

    .line 135
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/subscription/SubscriptionConfig;->getFeederHost()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " at VLSN "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 136
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/GroupShutdownException;->getShutdownVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 134
    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 137
    goto/16 :goto_2

    .line 142
    .end local v3    # "gse":Lcom/sleepycat/je/rep/GroupShutdownException;
    :cond_1
    move-object v3, v0

    check-cast v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    .line 143
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->getWireRecord()Lcom/sleepycat/je/rep/stream/InputWireRecord;

    move-result-object v3

    move-object v11, v3

    .line 144
    .local v11, "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    move-object v12, v3

    .line 145
    .local v12, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getEntryType()B

    move-result v3

    move v13, v3

    .line 146
    .local v13, "type":B
    invoke-virtual {v11}, Lcom/sleepycat/je/rep/stream/InputWireRecord;->getLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v3

    move-object v14, v3

    .line 147
    .local v14, "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    invoke-interface {v14}, Lcom/sleepycat/je/log/entry/LogEntry;->getTransactionId()J

    move-result-wide v3

    move-wide v8, v3

    .line 149
    .local v8, "txnId":J
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3, v12}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->setHighVLSN(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 150
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumOpsProcessed()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 153
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_COMMIT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v13}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 154
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumTxnCommitted()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 155
    invoke-interface {v10, v12, v8, v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;->processCommit(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 156
    goto/16 :goto_0

    .line 159
    :cond_2
    sget-object v3, Lcom/sleepycat/je/log/LogEntryType;->LOG_TXN_ABORT:Lcom/sleepycat/je/log/LogEntryType;

    invoke-virtual {v3, v13}, Lcom/sleepycat/je/log/LogEntryType;->equalsType(B)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 160
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->stats:Lcom/sleepycat/je/rep/subscription/SubscriptionStat;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/subscription/SubscriptionStat;->getNumTxnAborted()Lcom/sleepycat/je/utilint/LongStat;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 161
    invoke-interface {v10, v12, v8, v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;->processAbort(Lcom/sleepycat/je/utilint/VLSN;J)V

    .line 162
    goto/16 :goto_0

    .line 165
    :cond_3
    instance-of v3, v14, Lcom/sleepycat/je/log/entry/LNLogEntry;

    if-eqz v3, :cond_5

    .line 167
    move-object v3, v14

    check-cast v3, Lcom/sleepycat/je/log/entry/LNLogEntry;

    move-object v15, v3

    .line 185
    .local v15, "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    const/4 v3, 0x0

    invoke-virtual {v15, v3}, Lcom/sleepycat/je/log/entry/LNLogEntry;->postFetchInit(Z)V

    .line 187
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getLN()Lcom/sleepycat/je/tree/LN;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/tree/LN;->isDeleted()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 188
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v5

    .line 189
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v16

    .line 188
    move-object v3, v10

    move-object v4, v12

    move-wide v6, v8

    move-wide/from16 v17, v8

    .end local v8    # "txnId":J
    .local v17, "txnId":J
    move-object/from16 v8, v16

    invoke-interface/range {v3 .. v8}, Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;->processDel(Lcom/sleepycat/je/utilint/VLSN;[BJLcom/sleepycat/je/dbi/DatabaseId;)V

    goto :goto_1

    .line 191
    .end local v17    # "txnId":J
    .restart local v8    # "txnId":J
    :cond_4
    move-wide/from16 v17, v8

    .end local v8    # "txnId":J
    .restart local v17    # "txnId":J
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getKey()[B

    move-result-object v5

    .line 192
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getData()[B

    move-result-object v6

    .line 193
    invoke-virtual {v15}, Lcom/sleepycat/je/log/entry/LNLogEntry;->getDbId()Lcom/sleepycat/je/dbi/DatabaseId;

    move-result-object v9

    .line 191
    move-object v3, v10

    move-object v4, v12

    move-wide/from16 v7, v17

    invoke-interface/range {v3 .. v9}, Lcom/sleepycat/je/rep/subscription/SubscriptionCallback;->processPut(Lcom/sleepycat/je/utilint/VLSN;[B[BJLcom/sleepycat/je/dbi/DatabaseId;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 165
    .end local v15    # "lnEntry":Lcom/sleepycat/je/log/entry/LNLogEntry;, "Lcom/sleepycat/je/log/entry/LNLogEntry<*>;"
    .end local v17    # "txnId":J
    .restart local v8    # "txnId":J
    :cond_5
    move-wide/from16 v17, v8

    .line 197
    .end local v0    # "message":Ljava/lang/Object;
    .end local v8    # "txnId":J
    .end local v11    # "wireRecord":Lcom/sleepycat/je/rep/stream/InputWireRecord;
    .end local v12    # "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    .end local v13    # "type":B
    .end local v14    # "entry":Lcom/sleepycat/je/log/entry/LogEntry;
    :cond_6
    :goto_1
    goto/16 :goto_0

    .line 205
    :cond_7
    :goto_2
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 206
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    :goto_3
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    .line 208
    goto :goto_4

    .line 205
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 198
    :catch_0
    move-exception v0

    .line 199
    .local v0, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "input thread receives exception "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Ljava/lang/InterruptedException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", process the exception in callback, clear queue and exit.\n"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 201
    invoke-static {v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 199
    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 203
    sget-object v3, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    iput-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 205
    .end local v0    # "e":Ljava/lang/InterruptedException;
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 206
    iget-object v0, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_3

    .line 209
    :goto_4
    return-void

    .line 205
    :goto_5
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->queue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 206
    iget-object v3, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->logger:Ljava/util/logging/Logger;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, v1, Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread;->exitRequest:Lcom/sleepycat/je/rep/subscription/SubscriptionProcessMessageThread$ExitType;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/util/logging/Logger;->info(Ljava/lang/String;)V

    throw v0
.end method
