.class Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "Replica.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ReplayThread"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final QUEUE_POLL_INTERVAL_NS:J = 0x3b9aca00L


# instance fields
.field private volatile exception:Ljava/lang/Exception;

.field volatile exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Replica;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1138
    const-class v0, Lcom/sleepycat/je/rep/impl/node/Replica;

    return-void
.end method

.method protected constructor <init>(Lcom/sleepycat/je/rep/impl/node/Replica;)V
    .locals 2
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1155
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1156
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    const-string v1, "ReplayThread"

    invoke-direct {p0, v0, v1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1150
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 1157
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;)Ljava/lang/Exception;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;

    .line 1138
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exception:Ljava/lang/Exception;

    return-object v0
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 1277
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 1162
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    iput-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    .line 1163
    const/4 v0, 0x0

    return v0
.end method

.method public run()V
    .locals 13

    .line 1169
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Replay thread started. Message queue size:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1171
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$700(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1169
    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1173
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1174
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDbTreeCacheClearingOpCount()I

    move-result v0

    .line 1176
    .local v0, "dbTreeCacheClearingOpCount":I
    const-wide/16 v1, 0x0

    .line 1181
    .local v1, "opCount":J
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1182
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v3

    const-wide/32 v4, 0x3b9aca00

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/node/Replay;->getPollIntervalNs(J)J

    move-result-wide v3

    .line 1184
    .local v3, "pollIntervalNs":J
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1185
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$700(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v5, v3, v4, v6}, Ljava/util/concurrent/BlockingQueue;->poll(JLjava/util/concurrent/TimeUnit;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 1188
    .local v5, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v7, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->IMMEDIATE:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-eq v6, v7, :cond_a

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v7, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v6, v7, :cond_0

    if-eqz v5, :cond_a

    :cond_0
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1191
    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->isShutdownOrInvalid()Z

    move-result v6

    if-eqz v6, :cond_1

    goto/16 :goto_2

    .line 1199
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v6

    .line 1200
    .local v6, "startNs":J
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v8

    invoke-virtual {v8, v6, v7}, Lcom/sleepycat/je/rep/impl/node/Replay;->flushPendingAcks(J)V

    .line 1202
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getMasterStatus()Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 1204
    if-nez v5, :cond_2

    .line 1206
    goto :goto_0

    .line 1208
    :cond_2
    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1000(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v8

    invoke-static {v8, v5}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_9

    .line 1210
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v8

    .line 1212
    .local v8, "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    sget-object v9, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_REQUEST:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-eq v8, v9, :cond_8

    .line 1216
    sget-object v9, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v8, v9, :cond_3

    .line 1217
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    move-object v10, v5

    check-cast v10, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    invoke-static {v9, v10}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1200(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;)V

    .line 1218
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1300(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/DbCache;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/DbCache;->tick()V

    goto :goto_1

    .line 1221
    :cond_3
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1400(Lcom/sleepycat/je/rep/impl/node/Replica;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1222
    goto/16 :goto_0

    .line 1225
    :cond_4
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v9

    move-object v10, v5

    check-cast v10, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    invoke-virtual {v9, v6, v7, v10}, Lcom/sleepycat/je/rep/impl/node/Replay;->replayEntry(JLcom/sleepycat/je/rep/stream/BaseProtocol$Entry;)V

    .line 1236
    move-object v9, v5

    check-cast v9, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;->isTxnEnd()Z

    move-result v9

    if-eqz v9, :cond_5

    .line 1237
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v10

    invoke-virtual {v10}, Lcom/sleepycat/je/rep/impl/node/Replay;->getLastReplayedVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    invoke-static {v9, v10}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1502(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    .line 1238
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1600(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->trackTxnEnd()V

    .line 1240
    :cond_5
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1600(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/rep/impl/node/Replica$ConsistencyTracker;->trackVLSN()V

    .line 1243
    :goto_1
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1700(Lcom/sleepycat/je/rep/impl/node/Replica;)I

    move-result v9

    if-lez v9, :cond_6

    .line 1244
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1700(Lcom/sleepycat/je/rep/impl/node/Replica;)I

    move-result v9

    int-to-long v9, v9

    invoke-static {v9, v10}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1247
    :cond_6
    const-wide/16 v9, 0x1

    add-long/2addr v9, v1

    .end local v1    # "opCount":J
    .local v9, "opCount":J
    int-to-long v11, v0

    :try_start_1
    rem-long/2addr v1, v11

    const-wide/16 v11, 0x0

    cmp-long v1, v1, v11

    if-nez v1, :cond_7

    .line 1248
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/Replica;->clearDbTreeCache()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 1250
    .end local v3    # "pollIntervalNs":J
    .end local v5    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v6    # "startNs":J
    .end local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_7
    move-wide v1, v9

    goto/16 :goto_0

    .line 1251
    :catch_0
    move-exception v3

    move-wide v1, v9

    goto :goto_3

    .line 1213
    .end local v9    # "opCount":J
    .restart local v1    # "opCount":J
    .restart local v3    # "pollIntervalNs":J
    .restart local v5    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v6    # "startNs":J
    .restart local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    :cond_8
    :try_start_2
    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    move-object v10, v5

    check-cast v10, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;

    invoke-static {v9, v10}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1100(Lcom/sleepycat/je/rep/impl/node/Replica;Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;)Lcom/sleepycat/je/rep/GroupShutdownException;

    move-result-object v9

    .end local v0    # "dbTreeCacheClearingOpCount":I
    .end local v1    # "opCount":J
    throw v9

    .line 1208
    .end local v8    # "messageOp":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .restart local v0    # "dbTreeCacheClearingOpCount":I
    .restart local v1    # "opCount":J
    :cond_9
    new-instance v8, Ljava/lang/AssertionError;

    invoke-direct {v8}, Ljava/lang/AssertionError;-><init>()V

    .end local v0    # "dbTreeCacheClearingOpCount":I
    .end local v1    # "opCount":J
    throw v8

    .line 1193
    .end local v6    # "startNs":J
    .restart local v0    # "dbTreeCacheClearingOpCount":I
    .restart local v1    # "opCount":J
    :cond_a
    :goto_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exitRequest:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    sget-object v7, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;->SOFT:Lcom/sleepycat/je/rep/impl/node/Replica$ReplayExitType;

    if-ne v6, v7, :cond_b

    .line 1194
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$900(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/node/Replay;

    move-result-object v6

    const-wide v7, 0x7fffffffffffffffL

    invoke-virtual {v6, v7, v8}, Lcom/sleepycat/je/rep/impl/node/Replay;->flushPendingAcks(J)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 1196
    :cond_b
    return-void

    .line 1251
    .end local v3    # "pollIntervalNs":J
    .end local v5    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :catch_1
    move-exception v3

    .line 1252
    .local v3, "e":Ljava/lang/Exception;
    :goto_3
    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->exception:Ljava/lang/Exception;

    .line 1258
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$700(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/concurrent/BlockingQueue;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/concurrent/BlockingQueue;->clear()V

    .line 1264
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "closing replicaFeederChannel = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    .line 1266
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1264
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1267
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$1800(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v4

    invoke-static {v4}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1269
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$600(Lcom/sleepycat/je/rep/impl/node/Replica;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Replica$ReplayThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Replica;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Replica;->access$500(Lcom/sleepycat/je/rep/impl/node/Replica;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Replay thread exiting with exception:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1271
    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1269
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1273
    .end local v3    # "e":Ljava/lang/Exception;
    return-void
.end method
