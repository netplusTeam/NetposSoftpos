.class Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "Feeder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Feeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "InputThread"
.end annotation


# instance fields
.field protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private volatile replica95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

.field private volatile replica99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

.field private volatile replicaAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvg;

.field private replicaCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

.field private volatile replicaDelay:Lcom/sleepycat/je/utilint/LongDiffStat;

.field private volatile replicaLastCommitTimestamp:Lcom/sleepycat/je/utilint/AtomicLongComponent;

.field private volatile replicaLastCommitVLSN:Lcom/sleepycat/je/utilint/AtomicLongComponent;

.field private volatile replicaMaxDelayMs:Lcom/sleepycat/je/utilint/LongMax;

.field private volatile replicaVLSNLag:Lcom/sleepycat/je/utilint/LongDiffStat;

.field private volatile replicaVLSNRate:Lcom/sleepycat/je/utilint/LongAvgRate;

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 3

    .line 653
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 658
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/node/Feeder$1;)V

    const-string p1, "Feeder Input"

    invoke-direct {p0, v0, v1, p1}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V

    .line 632
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 659
    return-void
.end method

.method private checkShutdown()Z
    .locals 4

    .line 993
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 994
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplicaCloseCatchupMs()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 993
    :goto_0
    return v0
.end method

.method private processHeartbeatResponse(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V
    .locals 21
    .param p1, "response"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    .line 903
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;

    .line 910
    .local v1, "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    iget-object v2, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 911
    return-void

    .line 918
    :cond_0
    iget-object v2, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

    if-eqz v2, :cond_1

    .line 919
    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;->updateForReplica(Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;)V

    .line 922
    :cond_1
    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;->getTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 925
    .local v2, "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    if-nez v2, :cond_2

    .line 926
    return-void

    .line 929
    :cond_2
    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1702(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    .line 930
    invoke-virtual {v2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v3

    .line 932
    .local v3, "replicaTxnVLSNSeq":J
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->updateDTVLSN(J)V

    .line 934
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 935
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v5

    .line 934
    invoke-virtual {v2, v5}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v5

    if-ltz v5, :cond_3

    .line 937
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    const/4 v6, 0x1

    invoke-static {v5, v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1802(Lcom/sleepycat/je/rep/impl/node/Feeder;Z)Z

    .line 938
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->adviseMasterTransferProgress()V

    .line 949
    :cond_3
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1900(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v5

    .line 950
    .local v5, "commitVLSN":J
    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2000(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v7

    .line 951
    .local v7, "commitTimestamp":J
    const-wide/16 v9, 0x0

    cmp-long v11, v5, v9

    if-eqz v11, :cond_8

    cmp-long v11, v7, v9

    if-nez v11, :cond_4

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    goto/16 :goto_2

    .line 954
    :cond_4
    cmp-long v11, v5, v3

    if-gtz v11, :cond_5

    move-wide v11, v5

    goto :goto_0

    :cond_5
    move-wide v11, v3

    .line 958
    .local v11, "statCommitVLSN":J
    :goto_0
    iget-object v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaLastCommitVLSN:Lcom/sleepycat/je/utilint/AtomicLongComponent;

    invoke-virtual {v13, v11, v12}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->set(J)V

    .line 959
    iget-object v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaVLSNLag:Lcom/sleepycat/je/utilint/LongDiffStat;

    iget-object v14, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v14}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1200(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v14

    invoke-virtual {v13, v11, v12, v14, v15}, Lcom/sleepycat/je/utilint/LongDiffStat;->set(JJ)V

    .line 960
    iget-object v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaVLSNRate:Lcom/sleepycat/je/utilint/LongAvgRate;

    iget-object v14, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v14}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1200(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v14

    invoke-virtual {v13, v11, v12, v14, v15}, Lcom/sleepycat/je/utilint/LongAvgRate;->add(JJ)V

    .line 963
    cmp-long v13, v5, v3

    if-gtz v13, :cond_6

    .line 964
    move-wide v9, v7

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .local v9, "statCommitTimestamp":J
    goto :goto_1

    .line 968
    .end local v9    # "statCommitTimestamp":J
    :cond_6
    iget-object v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v13}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/LongAvgRateStat;

    move-result-object v13

    invoke-virtual {v13}, Lcom/sleepycat/je/utilint/LongAvgRateStat;->get()Ljava/lang/Long;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Long;->longValue()J

    move-result-wide v13

    .line 969
    .local v13, "vlsnRatePerMinute":J
    cmp-long v9, v13, v9

    if-gtz v9, :cond_7

    .line 970
    return-void

    .line 972
    :cond_7
    sub-long v9, v5, v3

    .line 973
    .local v9, "vlsnLag":J
    const-wide v15, 0x40ed4c0000000000L    # 60000.0

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    .end local v1    # "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .end local v2    # "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .local v17, "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .local v18, "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    long-to-double v1, v9

    move-wide/from16 v19, v3

    .end local v3    # "replicaTxnVLSNSeq":J
    .local v19, "replicaTxnVLSNSeq":J
    long-to-double v3, v13

    div-double/2addr v1, v3

    mul-double/2addr v1, v15

    double-to-long v1, v1

    .line 975
    .local v1, "timeLagMillis":J
    sub-long v3, v7, v1

    move-wide v9, v3

    .line 977
    .end local v1    # "timeLagMillis":J
    .end local v13    # "vlsnRatePerMinute":J
    .local v9, "statCommitTimestamp":J
    :goto_1
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaLastCommitTimestamp:Lcom/sleepycat/je/utilint/AtomicLongComponent;

    invoke-virtual {v1, v9, v10}, Lcom/sleepycat/je/utilint/AtomicLongComponent;->set(J)V

    .line 978
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaDelay:Lcom/sleepycat/je/utilint/LongDiffStat;

    iget-object v2, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1200(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v2

    invoke-virtual {v1, v9, v10, v2, v3}, Lcom/sleepycat/je/utilint/LongDiffStat;->set(JJ)V

    .line 979
    iget-object v1, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1200(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v1

    sub-long/2addr v1, v9

    .line 980
    .local v1, "delay":J
    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvg;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/utilint/LongAvg;->add(J)V

    .line 981
    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replica95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile;->add(J)V

    .line 982
    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replica99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/utilint/LatencyPercentile;->add(J)V

    .line 983
    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaMaxDelayMs:Lcom/sleepycat/je/utilint/LongMax;

    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/utilint/LongMax;->add(J)V

    .line 984
    return-void

    .line 951
    .end local v9    # "statCommitTimestamp":J
    .end local v11    # "statCommitVLSN":J
    .end local v17    # "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .end local v18    # "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v19    # "replicaTxnVLSNSeq":J
    .local v1, "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .restart local v2    # "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v3    # "replicaTxnVLSNSeq":J
    :cond_8
    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-wide/from16 v19, v3

    .line 952
    .end local v1    # "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .end local v2    # "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local v3    # "replicaTxnVLSNSeq":J
    .restart local v17    # "hbResponse":Lcom/sleepycat/je/rep/stream/BaseProtocol$HeartbeatResponse;
    .restart local v18    # "replicaTxnVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .restart local v19    # "replicaTxnVLSNSeq":J
    :goto_2
    return-void
.end method

.method private runResponseLoop()V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
        }
    .end annotation

    .line 841
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->checkShutdown()Z

    move-result v0

    if-nez v0, :cond_a

    .line 842
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v0

    .line 843
    .local v0, "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->checkShutdown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 849
    goto/16 :goto_3

    .line 851
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 853
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1202(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 855
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->HEARTBEAT_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_1

    .line 856
    invoke-direct {p0, v0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->processHeartbeatResponse(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)V

    goto/16 :goto_2

    .line 857
    :cond_1
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_3

    .line 863
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Ack;->getTxnId()J

    move-result-wide v1

    .line 864
    .local v1, "txnId":J
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    sget-object v4, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v3, v4}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 865
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Ack for: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 867
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3, v1, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1500(Lcom/sleepycat/je/rep/impl/node/Feeder;J)V

    .line 868
    .end local v1    # "txnId":J
    goto/16 :goto_2

    :cond_3
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->GROUP_ACK:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_6

    .line 869
    move-object v1, v0

    check-cast v1, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol$GroupAck;->getTxnIds()[J

    move-result-object v1

    .line 871
    .local v1, "txnIds":[J
    array-length v2, v1

    const/4 v3, 0x0

    :goto_1
    if-ge v3, v2, :cond_5

    aget-wide v4, v1, v3

    .line 872
    .local v4, "txnId":J
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v6

    sget-object v7, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->isLoggable(Ljava/util/logging/Level;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 873
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Group Ack for: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 876
    :cond_4
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6, v4, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1500(Lcom/sleepycat/je/rep/impl/node/Feeder;J)V

    .line 871
    .end local v4    # "txnId":J
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 878
    .end local v1    # "txnIds":[J
    :cond_5
    goto :goto_2

    :cond_6
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->SHUTDOWN_RESPONSE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_7

    .line 879
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Shutdown confirmed by replica "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 881
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 879
    invoke-static {v1, v2, v3}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 883
    goto :goto_3

    .line 884
    :cond_7
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;->getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    move-result-object v1

    sget-object v2, Lcom/sleepycat/je/rep/stream/Protocol;->REAUTHENTICATE:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    if-ne v1, v2, :cond_9

    .line 885
    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1, v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1600(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)Z

    move-result v1

    if-nez v1, :cond_8

    .line 886
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "replica "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 887
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v2

    .line 888
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fails the security check in reauthentication."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 892
    .local v1, "err":Ljava/lang/String;
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->makeSecurityCheckResponse(Ljava/lang/String;)V

    .line 898
    .end local v0    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v1    # "err":Ljava/lang/String;
    :cond_8
    :goto_2
    goto/16 :goto_0

    .line 895
    .restart local v0    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_9
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 896
    invoke-static {v1}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v1

    throw v1

    .line 899
    .end local v0    # "response":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    :cond_a
    :goto_3
    return-void
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 1010
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 1004
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1005
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getThreadWaitInterval()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 8

    .line 670
    const/4 v0, 0x0

    .line 671
    .local v0, "feederInputError":Ljava/lang/Error;
    const/4 v1, 0x0

    .line 674
    .local v1, "shutdownException":Ljava/lang/Exception;
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 675
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 677
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v5

    invoke-direct {v2, v3, v4, v5}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 678
    .local v2, "handshake":Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->execute()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 679
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/Protocol;->getVersion()I

    move-result v3

    invoke-static {v4, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$402(Lcom/sleepycat/je/rep/impl/node/Feeder;I)I

    .line 680
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    .line 681
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getStreamLogVersion()I

    move-result v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$602(Lcom/sleepycat/je/rep/impl/node/Feeder;I)I

    .line 682
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getReplicaJEVersion()Lcom/sleepycat/je/JEVersion;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$702(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/JEVersion;)Lcom/sleepycat/je/JEVersion;

    .line 683
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;->getReplicaNode()Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$802(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    .line 689
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feeder Input for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 690
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 689
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 692
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/NodeType;->isArbiter()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 693
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$900(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    goto :goto_0

    .line 695
    :cond_0
    new-instance v3, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 696
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/utilint/NamedChannel;Lcom/sleepycat/je/rep/stream/Protocol;)V

    .line 704
    .local v3, "syncup":Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/NodeType;->isDataNode()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 705
    new-instance v4, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 706
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/RepNodeImpl;->getType()Lcom/sleepycat/je/rep/NodeType;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    invoke-direct {v4, v5, v6, v7}, Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;-><init>(Lcom/sleepycat/je/rep/impl/node/NameIdPair;Lcom/sleepycat/je/rep/NodeType;Lcom/sleepycat/je/rep/impl/node/RepNode;)V

    iput-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaCBVLSN:Lcom/sleepycat/je/rep/impl/node/cbvlsn/LocalCBVLSNUpdater;

    .line 715
    :cond_1
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;->execute()V

    .line 719
    .end local v3    # "syncup":Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup;
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaDelayMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 720
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 721
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getLastCommitTimestamp()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v5

    .line 719
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->createStat(Ljava/lang/String;Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongDiffStat;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaDelay:Lcom/sleepycat/je/utilint/LongDiffStat;

    .line 722
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 723
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaAvgDelayMsMap()Lcom/sleepycat/je/utilint/LongAvgMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 724
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 723
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LongAvgMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongAvg;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaAvgDelayMs:Lcom/sleepycat/je/utilint/LongAvg;

    .line 725
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 726
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplica95DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 727
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 726
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LatencyPercentile;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replica95DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 728
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 729
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplica99DelayMsMap()Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 730
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 729
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LatencyPercentileMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LatencyPercentile;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replica99DelayMs:Lcom/sleepycat/je/utilint/LatencyPercentile;

    .line 731
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 732
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaMaxDelayMsMap()Lcom/sleepycat/je/utilint/LongMaxMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 733
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 732
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LongMaxMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongMax;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaMaxDelayMs:Lcom/sleepycat/je/utilint/LongMax;

    .line 734
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 735
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaLastCommitTimestampMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 736
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/AtomicLongComponent;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaLastCommitTimestamp:Lcom/sleepycat/je/utilint/AtomicLongComponent;

    .line 737
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 738
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaLastCommitVLSNMap()Lcom/sleepycat/je/utilint/AtomicLongMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 739
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/AtomicLongMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/AtomicLongComponent;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaLastCommitVLSN:Lcom/sleepycat/je/utilint/AtomicLongComponent;

    .line 740
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaVLSNLagMap()Lcom/sleepycat/je/utilint/LongDiffMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 742
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 743
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v5

    .line 744
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getLastCommitVLSN()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v5

    .line 741
    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/utilint/LongDiffMapStat;->createStat(Ljava/lang/String;Lcom/sleepycat/je/utilint/Stat;)Lcom/sleepycat/je/utilint/LongDiffStat;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaVLSNLag:Lcom/sleepycat/je/utilint/LongDiffStat;

    .line 745
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getReplicaVLSNRateMap()Lcom/sleepycat/je/utilint/LongAvgRateMapStat;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 747
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v4

    .line 746
    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/LongAvgRateMapStat;->createStat(Ljava/lang/String;)Lcom/sleepycat/je/utilint/LongAvgRate;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->replicaVLSNRate:Lcom/sleepycat/je/utilint/LongAvgRate;

    .line 750
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->start()V

    .line 751
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1202(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 752
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 753
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->activateFeeder(Lcom/sleepycat/je/rep/impl/node/Feeder;)V

    .line 755
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->runResponseLoop()V
    :try_end_0
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_0 .. :try_end_0} :catch_8
    .catch Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException; {:try_start_0 .. :try_end_0} :catch_7
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 799
    .end local v2    # "handshake":Lcom/sleepycat/je/rep/stream/FeederReplicaHandshake;
    if-nez v0, :cond_2

    .line 809
    goto/16 :goto_1

    .line 801
    :cond_2
    throw v0

    .line 799
    :catchall_0
    move-exception v2

    goto/16 :goto_3

    .line 784
    :catch_0
    move-exception v2

    .line 785
    .local v2, "e":Ljava/lang/RuntimeException;
    move-object v1, v2

    .line 794
    :try_start_1
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected exception: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 795
    invoke-virtual {v2}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 796
    invoke-static {v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 794
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 797
    nop

    .end local v0    # "feederInputError":Ljava/lang/Error;
    .end local v1    # "shutdownException":Ljava/lang/Exception;
    throw v2

    .line 777
    .end local v2    # "e":Ljava/lang/RuntimeException;
    .restart local v0    # "feederInputError":Ljava/lang/Error;
    .restart local v1    # "shutdownException":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 778
    .local v2, "e":Lcom/sleepycat/je/log/ChecksumException;
    move-object v1, v2

    .line 781
    new-instance v3, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 782
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    sget-object v5, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v3, v4, v5, v2}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    .end local v0    # "feederInputError":Ljava/lang/Error;
    .end local v1    # "shutdownException":Ljava/lang/Exception;
    throw v3

    .line 774
    .end local v2    # "e":Lcom/sleepycat/je/log/ChecksumException;
    .restart local v0    # "feederInputError":Ljava/lang/Error;
    .restart local v1    # "shutdownException":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 775
    .local v2, "e":Ljava/lang/Error;
    move-object v0, v2

    .line 776
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    invoke-virtual {v3, v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 799
    .end local v2    # "e":Ljava/lang/Error;
    nop

    .line 801
    throw v0

    .line 770
    :catch_3
    move-exception v2

    .line 771
    .local v2, "e":Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
    move-object v1, v2

    .line 772
    :try_start_2
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Exiting feeder loop: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 773
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 772
    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 799
    .end local v2    # "e":Lcom/sleepycat/je/rep/impl/node/Feeder$ExitException;
    if-nez v0, :cond_3

    .line 809
    goto :goto_1

    .line 801
    :cond_3
    throw v0

    .line 768
    :catch_4
    move-exception v2

    .line 769
    .local v2, "e":Ljava/lang/InterruptedException;
    move-object v1, v2

    .line 799
    .end local v2    # "e":Ljava/lang/InterruptedException;
    if-nez v0, :cond_4

    .line 809
    goto :goto_1

    .line 801
    :cond_4
    throw v0

    .line 766
    :catch_5
    move-exception v2

    .line 767
    .local v2, "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    move-object v1, v2

    .line 799
    .end local v2    # "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    if-nez v0, :cond_5

    .line 809
    goto :goto_1

    .line 801
    :cond_5
    throw v0

    .line 763
    :catch_6
    move-exception v2

    .line 765
    .local v2, "e":Ljava/io/IOException;
    move-object v1, v2

    .line 799
    .end local v2    # "e":Ljava/io/IOException;
    if-nez v0, :cond_6

    .line 809
    :goto_1
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v2, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 810
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->cleanup()V

    .line 811
    goto :goto_2

    .line 801
    :cond_6
    throw v0

    .line 759
    :catch_7
    move-exception v2

    .line 760
    .local v2, "e":Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;
    move-object v1, v2

    .line 762
    :try_start_3
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 799
    .end local v2    # "e":Lcom/sleepycat/je/rep/stream/FeederReplicaSyncup$NetworkRestoreException;
    if-nez v0, :cond_7

    .line 809
    goto :goto_1

    .line 801
    :cond_7
    throw v0

    .line 756
    :catch_8
    move-exception v2

    .line 757
    .local v2, "ue":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    move-object v1, v2

    .line 758
    :try_start_4
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 799
    .end local v2    # "ue":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    if-nez v0, :cond_8

    .line 809
    goto :goto_1

    .line 812
    :goto_2
    return-void

    .line 801
    :cond_8
    throw v0

    .line 799
    :goto_3
    if-eqz v0, :cond_9

    .line 801
    throw v0

    .line 809
    :cond_9
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v3, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 810
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$InputThread;->cleanup()V

    throw v2
.end method
