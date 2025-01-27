.class Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;
.super Lcom/sleepycat/je/utilint/StoppableThread;
.source "Feeder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/Feeder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "OutputThread"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final batchBuff:Ljava/nio/ByteBuffer;

.field private final batchNs:I

.field private final commitToNetwork:Z

.field private lastCommitTimestamp:J

.field private lastCommitVLSN:J

.field protocol:Lcom/sleepycat/je/rep/stream/Protocol;

.field private shutdownRequestStart:J

.field final testDelayMs:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

.field private totalTransferDelay:J

.field private final transferLoggingThresholdMs:I

.field private final vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1017
    const-class v0, Lcom/sleepycat/je/rep/impl/node/Feeder;

    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/Feeder;)V
    .locals 7

    .line 1062
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1067
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    new-instance v1, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder$IOThreadsHandler;-><init>(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/rep/impl/node/Feeder$1;)V

    const-string v3, "Feeder Output"

    invoke-direct {p0, v0, v1, v3}, Lcom/sleepycat/je/utilint/StoppableThread;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/Thread$UncaughtExceptionHandler;Ljava/lang/String;)V

    .line 1018
    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1020
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->totalTransferDelay:J

    .line 1023
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    .line 1068
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 1069
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->COMMIT_TO_NETWORK:Lcom/sleepycat/je/config/BooleanConfigParam;

    .line 1070
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getBoolean(Lcom/sleepycat/je/config/BooleanConfigParam;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->commitToNetwork:Z

    .line 1071
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->TRANSFER_LOGGING_THRESHOLD:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1072
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->transferLoggingThresholdMs:I

    .line 1074
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_BATCH_NS:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1075
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    .line 1076
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2300(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v2

    const v3, 0xf4240

    mul-int/2addr v2, v3

    .line 1074
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchNs:I

    .line 1078
    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_BATCH_BUFF_KB:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1079
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    mul-int/lit16 v1, v1, 0x400

    .line 1081
    .local v1, "batchBuffSize":I
    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocateDirect(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    iput-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchBuff:Ljava/nio/ByteBuffer;

    .line 1083
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/FeederManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->getTestDelayMs()I

    move-result v2

    iput v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->testDelayMs:I

    .line 1084
    if-lez v2, :cond_0

    .line 1085
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Test delay of:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, "ms. after each message sent"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v4, v2}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1089
    :cond_0
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object p1

    invoke-virtual {p1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getVLSNIndex()Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 1090
    return-void
.end method

.method private checkShutdown()Z
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1106
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 1107
    return v1

    .line 1109
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplicaCloseCatchupMs()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    const/4 v2, 0x1

    if-ltz v0, :cond_4

    .line 1110
    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    cmp-long v0, v6, v4

    if-nez v0, :cond_1

    .line 1111
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    .line 1115
    :cond_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iget-wide v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    sub-long/2addr v3, v5

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1116
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getReplicaCloseCatchupMs()J

    move-result-wide v5

    cmp-long v0, v3, v5

    if-lez v0, :cond_2

    move v0, v2

    goto :goto_0

    :cond_2
    move v0, v1

    .line 1117
    .local v0, "timedOut":Z
    :goto_0
    if-nez v0, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1118
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z

    move-result v3

    if-nez v3, :cond_3

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1119
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1120
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v3

    if-gtz v3, :cond_3

    .line 1126
    return v1

    .line 1129
    :cond_3
    new-instance v3, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iget-wide v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    invoke-direct {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/stream/BaseProtocol$ShutdownRequest;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;J)V

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1130
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v4

    .line 1129
    invoke-direct {p0, v3, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->writeMessage(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1132
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1136
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    aput-object v4, v3, v1

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1137
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v3, v2

    const/4 v1, 0x2

    .line 1138
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->shutdownRequestStart:J

    sub-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    .line 1133
    const-string v1, "Shutdown message sent to: %s. Feeder vlsn: %,d. Shutdown elapsed time: %,dms"

    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1140
    .local v1, "shutdownMessage":Ljava/lang/String;
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v4

    invoke-static {v3, v4, v1}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1141
    return v2

    .line 1143
    .end local v0    # "timedOut":Z
    .end local v1    # "shutdownMessage":Ljava/lang/String;
    :cond_4
    return v2
.end method

.method private createMessage(JLcom/sleepycat/je/rep/stream/OutputWireRecord;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .locals 10
    .param p1, "txnId"    # J
    .param p3, "wireRecord"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1472
    const-wide/16 v0, 0x0

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 1473
    new-instance v0, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v0, v1, p3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Entry;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v0

    .line 1478
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getAckTxn(J)Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v0

    .line 1479
    .local v0, "ackTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 1480
    .local v1, "replicaSync":Lcom/sleepycat/je/Durability$SyncPolicy;
    if-eqz v0, :cond_3

    .line 1481
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->stampRepWriteTime()V

    .line 1482
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->messageTransferMs()J

    move-result-wide v2

    .line 1483
    .local v2, "messageTransferMs":J
    iget-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->totalTransferDelay:J

    add-long/2addr v4, v2

    iput-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->totalTransferDelay:J

    .line 1484
    iget v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->transferLoggingThresholdMs:I

    int-to-long v4, v4

    cmp-long v4, v2, v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-lez v4, :cond_1

    .line 1485
    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1489
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    aput-object v7, v4, v6

    .line 1490
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v4, v5

    const/4 v7, 0x2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    const/4 v7, 0x3

    iget-wide v8, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->totalTransferDelay:J

    .line 1491
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    aput-object v8, v4, v7

    .line 1486
    const-string v7, "Feeder for: %s, Txn: %,d  log to rep stream time %,dms. Total transfer time: %,dms."

    invoke-static {v7, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 1492
    .local v4, "message":Ljava/lang/String;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v7

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v8

    invoke-static {v7, v8, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1500
    .end local v4    # "message":Ljava/lang/String;
    :cond_1
    iget-boolean v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->commitToNetwork:Z

    if-nez v4, :cond_2

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1501
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDurabilityQuorum()Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;

    move-result-object v4

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1502
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepNodeImpl;

    move-result-object v7

    .line 1501
    invoke-virtual {v4, v7}, Lcom/sleepycat/je/rep/impl/node/DurabilityQuorum;->replicaAcksQualify(Lcom/sleepycat/je/rep/impl/RepNodeImpl;)Z

    move-result v4

    if-eqz v4, :cond_2

    goto :goto_0

    :cond_2
    move v5, v6

    :goto_0
    move v4, v5

    .line 1503
    .local v4, "needsAck":Z
    invoke-virtual {v0}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitDurability()Lcom/sleepycat/je/Durability;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/Durability;->getReplicaSync()Lcom/sleepycat/je/Durability$SyncPolicy;

    move-result-object v1

    .line 1504
    .end local v2    # "messageTransferMs":J
    goto :goto_1

    .line 1510
    .end local v4    # "needsAck":Z
    :cond_3
    const/4 v4, 0x0

    .line 1511
    .restart local v4    # "needsAck":Z
    sget-object v1, Lcom/sleepycat/je/Durability$SyncPolicy;->NO_SYNC:Lcom/sleepycat/je/Durability$SyncPolicy;

    .line 1514
    :goto_1
    new-instance v2, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-direct {v2, v3, v4, v1, p3}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;ZLcom/sleepycat/je/Durability$SyncPolicy;Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    return-object v2
.end method

.method private sendHeartbeat()V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1419
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    .line 1420
    .local v6, "now":J
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$3000(Lcom/sleepycat/je/rep/impl/node/Feeder;)J

    move-result-wide v0

    sub-long v8, v6, v0

    .line 1422
    .local v8, "interval":J
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2300(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v0

    int-to-long v0, v0

    cmp-long v0, v8, v0

    if-gtz v0, :cond_0

    .line 1423
    return-void

    .line 1426
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v10

    .line 1427
    .local v10, "vlsn":Lcom/sleepycat/je/utilint/VLSN;
    new-instance v11, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {v10}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    move-object v0, v11

    move-wide v2, v6

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Heartbeat;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;JJ)V

    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1428
    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    .line 1427
    invoke-direct {p0, v11, v0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->writeMessage(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1429
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0, v6, v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$3002(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 1431
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1432
    return-void

    .line 1436
    :cond_1
    iget-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitTimestamp:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    .line 1437
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v2, v0, v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2002(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 1438
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    iget-wide v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitVLSN:J

    invoke-static {v0, v1, v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1902(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    goto :goto_0

    .line 1440
    :cond_2
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2002(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 1441
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0, v2, v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1902(Lcom/sleepycat/je/rep/impl/node/Feeder;J)J

    .line 1443
    :goto_0
    return-void
.end method

.method private validate(Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V
    .locals 2
    .param p1, "record"    # Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    .line 1523
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->equals(Lcom/sleepycat/je/utilint/VLSN;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1529
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/RepImpl;->isRepConverted()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1530
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "node="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$3100(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->verifyNegativeSequences(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 1532
    :cond_1
    :goto_0
    return-void

    .line 1524
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Expected VLSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1525
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " log entry VLSN:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 1526
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1525
    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method private writeAvailableEntries()V
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;,
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;,
            Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
        }
    .end annotation

    .line 1326
    move-object/from16 v0, p0

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    iget-object v3, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2300(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v3

    int-to-long v3, v3

    const-wide/32 v5, 0xf4240

    mul-long/2addr v3, v5

    add-long/2addr v1, v3

    .line 1327
    .local v1, "batchLimitNs":J
    const/4 v3, 0x0

    .line 1328
    .local v3, "batchNeedsAcks":Z
    const/4 v4, 0x0

    .line 1329
    .local v4, "nMessages":I
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1332
    :cond_0
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1333
    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2800(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/FeederSource;

    move-result-object v5

    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2300(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v7

    invoke-interface {v5, v6, v7}, Lcom/sleepycat/je/rep/stream/FeederSource;->getWireRecord(Lcom/sleepycat/je/utilint/VLSN;I)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v5

    .line 1335
    .local v5, "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 1337
    if-nez v5, :cond_1

    .line 1339
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v6

    .line 1340
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getLastCommitTimestamp()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v6

    .line 1339
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitTimestamp:J

    .line 1341
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getFeederTxns()Lcom/sleepycat/je/rep/stream/FeederTxns;

    move-result-object v6

    .line 1342
    invoke-virtual {v6}, Lcom/sleepycat/je/rep/stream/FeederTxns;->getLastCommitVLSN()Lcom/sleepycat/je/utilint/AtomicLongStat;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/AtomicLongStat;->get()Ljava/lang/Long;

    move-result-object v6

    .line 1341
    invoke-virtual {v6}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitVLSN:J

    .line 1343
    goto/16 :goto_2

    .line 1347
    :cond_1
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2900(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v6

    const-wide/16 v7, 0x0

    if-eqz v6, :cond_2

    .line 1348
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2900(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/FeederFilter;

    move-result-object v6

    iget-object v9, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v9

    invoke-interface {v6, v5, v9}, Lcom/sleepycat/je/rep/stream/FeederFilter;->execute(Lcom/sleepycat/je/rep/stream/OutputWireRecord;Lcom/sleepycat/je/rep/impl/RepImpl;)Lcom/sleepycat/je/rep/stream/OutputWireRecord;

    move-result-object v5

    .line 1349
    if-nez v5, :cond_2

    .line 1351
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v9

    invoke-static {v6, v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    .line 1352
    goto/16 :goto_1

    .line 1356
    :cond_2
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getCommitTxnId()J

    move-result-wide v9

    .line 1357
    .local v9, "txnId":J
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getCommitTimeStamp()J

    move-result-wide v11

    .line 1358
    .local v11, "commitTimestamp":J
    cmp-long v6, v11, v7

    if-eqz v6, :cond_3

    .line 1359
    iput-wide v11, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitTimestamp:J

    .line 1360
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v13

    iput-wide v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->lastCommitVLSN:J

    .line 1362
    :cond_3
    iget-boolean v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->commitToNetwork:Z

    if-eqz v6, :cond_4

    cmp-long v6, v9, v7

    if-eqz v6, :cond_4

    .line 1363
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6, v9, v10}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1500(Lcom/sleepycat/je/rep/impl/node/Feeder;J)V

    .line 1366
    :cond_4
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 1367
    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/stream/OutputWireRecord;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v13

    invoke-static {v6, v13}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    .line 1370
    :cond_5
    invoke-direct {v0, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->validate(Lcom/sleepycat/je/rep/stream/OutputWireRecord;)V

    .line 1371
    invoke-direct {v0, v9, v10, v5}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->createMessage(JLcom/sleepycat/je/rep/stream/OutputWireRecord;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v6

    .line 1373
    .local v6, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    if-nez v3, :cond_7

    cmp-long v13, v9, v7

    if-eqz v13, :cond_7

    .line 1374
    move-object v13, v6

    check-cast v13, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;

    .line 1375
    .local v13, "commit":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    invoke-virtual {v13}, Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;->getNeedsAck()Z

    move-result v14

    if-eqz v14, :cond_7

    .line 1376
    const/4 v3, 0x1

    .line 1378
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v14

    iget v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchNs:I

    int-to-long v7, v7

    add-long/2addr v14, v7

    .line 1379
    .local v14, "ackLimitNs":J
    cmp-long v7, v14, v1

    if-gez v7, :cond_6

    move-wide v7, v14

    goto :goto_0

    :cond_6
    move-wide v7, v1

    :goto_0
    move-wide v1, v7

    .line 1383
    .end local v13    # "commit":Lcom/sleepycat/je/rep/stream/BaseProtocol$Commit;
    .end local v14    # "ackLimitNs":J
    :cond_7
    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2600(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v7

    invoke-static {v7, v6}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1385
    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v8, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v8

    iget-object v13, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchBuff:Ljava/nio/ByteBuffer;

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v7, v8, v13, v4, v6}, Lcom/sleepycat/je/rep/stream/Protocol;->bufferWrite(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;ILcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;)I

    move-result v4

    .line 1390
    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/utilint/VLSN;->getNext()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2502(Lcom/sleepycat/je/rep/impl/node/Feeder;Lcom/sleepycat/je/utilint/VLSN;)Lcom/sleepycat/je/utilint/VLSN;

    .line 1391
    .end local v5    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .end local v6    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .end local v9    # "txnId":J
    .end local v11    # "commitTimestamp":J
    :goto_1
    iget v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->testDelayMs:I

    if-nez v5, :cond_8

    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    .line 1392
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getLatestAllocatedVal()J

    move-result-wide v5

    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1393
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v7

    cmp-long v5, v5, v7

    if-ltz v5, :cond_8

    .line 1394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v5

    sub-long/2addr v5, v1

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-ltz v5, :cond_0

    .line 1396
    :cond_8
    :goto_2
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    if-nez v5, :cond_9

    .line 1398
    return-void

    .line 1405
    :cond_9
    iget-object v5, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    iget-object v6, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v6

    iget-object v7, v0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->batchBuff:Ljava/nio/ByteBuffer;

    invoke-virtual {v5, v6, v7, v4}, Lcom/sleepycat/je/rep/stream/Protocol;->flushBufferedWrites(Ljava/nio/channels/WritableByteChannel;Ljava/nio/ByteBuffer;I)V

    .line 1408
    return-void

    .line 1383
    .restart local v5    # "record":Lcom/sleepycat/je/rep/stream/OutputWireRecord;
    .restart local v6    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v9    # "txnId":J
    .restart local v11    # "commitTimestamp":J
    :cond_a
    new-instance v7, Ljava/lang/AssertionError;

    invoke-direct {v7}, Ljava/lang/AssertionError;-><init>()V

    throw v7
.end method

.method private writeMessage(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V
    .locals 1
    .param p1, "message"    # Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .param p2, "namedChannel"    # Lcom/sleepycat/je/rep/utilint/NamedChannel;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1151
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2600(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/TestHook;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/sleepycat/je/utilint/TestHookExecute;->doHookIfSet(Lcom/sleepycat/je/utilint/TestHook;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1152
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/rep/stream/Protocol;->write(Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1153
    return-void

    .line 1151
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method protected getLogger()Ljava/util/logging/Logger;
    .locals 1

    .line 1536
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v0

    return-object v0
.end method

.method protected initiateSoftShutdown()I
    .locals 1

    .line 1452
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v0

    invoke-static {v0}, Lcom/sleepycat/je/rep/utilint/RepUtils;->shutdownChannel(Lcom/sleepycat/je/rep/utilint/NamedChannel;)V

    .line 1453
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getThreadWaitInterval()I

    move-result v0

    return v0
.end method

.method public run()V
    .locals 11

    .line 1157
    const-string v0, " currentTxnEndVLSN: "

    const-string v1, " shutdown. feeder VLSN: "

    const-string v2, "Feeder output for "

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1158
    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$400(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$400(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1159
    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$600(Lcom/sleepycat/je/rep/impl/node/Feeder;)I

    move-result v6

    .line 1158
    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/je/rep/stream/Protocol;->get(Lcom/sleepycat/je/rep/impl/node/RepNode;III)Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v3

    iput-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->protocol:Lcom/sleepycat/je/rep/stream/Protocol;

    .line 1160
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Feeder Output for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1162
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->getReplicaNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 1161
    invoke-virtual {v3, v4}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 1164
    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->vlsnIndex:Lcom/sleepycat/je/rep/vlsn/VLSNIndex;

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNIndex;->getRange()Lcom/sleepycat/je/rep/vlsn/VLSNRange;

    move-result-object v3

    .line 1165
    .local v3, "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1166
    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    const/4 v6, 0x6

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1170
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1171
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v6, v8

    .line 1172
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x2

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1173
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getAnyDTVLSN()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v6, v8

    .line 1174
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/vlsn/VLSNRange;->getLast()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v7

    iget-object v9, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v9}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v9

    sub-long/2addr v7, v9

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    const/4 v8, 0x4

    aput-object v7, v6, v8

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1175
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v7

    const/4 v8, 0x5

    aput-object v7, v6, v8

    .line 1167
    const-string v7, "Feeder output thread for replica %s started at VLSN %,d master at %,d (DTVLSN:%,d) VLSN delta=%,d socket=%s"

    invoke-static {v7, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 1166
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1179
    .end local v3    # "range":Lcom/sleepycat/je/rep/vlsn/VLSNRange;
    const/4 v3, 0x0

    .line 1180
    .local v3, "feederOutputError":Ljava/lang/Error;
    const/4 v4, 0x0

    .line 1187
    .local v4, "shutdownException":Ljava/lang/Exception;
    :try_start_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->sendHeartbeat()V

    .line 1188
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/rep/impl/RepParams;->FEEDER_TIMEOUT:Lcom/sleepycat/je/config/DurationConfigParam;

    .line 1189
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/dbi/DbConfigManager;->getDuration(Lcom/sleepycat/je/config/DurationConfigParam;)I

    move-result v5

    .line 1190
    .local v5, "timeoutMs":I
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->setTimeoutMs(I)V

    .line 1192
    :cond_0
    :goto_0
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->checkShutdown()Z

    move-result v6

    if-nez v6, :cond_3

    .line 1193
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1194
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v6

    if-ltz v6, :cond_1

    .line 1201
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getArbiter()Lcom/sleepycat/je/rep/arbitration/Arbiter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/arbitration/Arbiter;->endArbitration()V

    .line 1204
    :cond_1
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2700(Lcom/sleepycat/je/rep/impl/node/Feeder;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 1205
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "replica "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1206
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/utilint/NamedChannelWithTimeout;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    .line 1207
    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " fails security check during streaming"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1211
    .local v6, "err":Ljava/lang/String;
    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v7, v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->makeSecurityCheckResponse(Ljava/lang/String;)V

    .line 1214
    .end local v6    # "err":Ljava/lang/String;
    :cond_2
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->writeAvailableEntries()V

    .line 1216
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1300(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/stream/MasterStatus;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/stream/MasterStatus;->assertSync()V

    .line 1218
    invoke-direct {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->sendHeartbeat()V

    .line 1220
    iget v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->testDelayMs:I

    if-lez v6, :cond_0

    .line 1221
    int-to-long v6, v6

    invoke-static {v6, v7}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Lcom/sleepycat/je/rep/ReplicationSecurityException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Error; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 1260
    .end local v5    # "timeoutMs":I
    :cond_3
    if-nez v3, :cond_4

    .line 1264
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 1262
    :cond_4
    throw v3

    .line 1260
    :catchall_0
    move-exception v5

    goto/16 :goto_1

    .line 1256
    :catch_0
    move-exception v5

    .line 1257
    .local v5, "e":Ljava/lang/Error;
    move-object v3, v5

    .line 1258
    :try_start_1
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    invoke-virtual {v6, v5}, Lcom/sleepycat/je/rep/impl/RepImpl;->invalidate(Ljava/lang/Error;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1260
    .end local v5    # "e":Ljava/lang/Error;
    nop

    .line 1262
    throw v3

    .line 1242
    :catch_1
    move-exception v5

    .line 1243
    .local v5, "e":Ljava/lang/RuntimeException;
    move-object v4, v5

    .line 1252
    :try_start_2
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1253
    invoke-virtual {v5}, Ljava/lang/RuntimeException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1254
    invoke-static {v5}, Lcom/sleepycat/je/utilint/LoggerUtils;->getStackTrace(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1252
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->severe(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1255
    nop

    .end local v3    # "feederOutputError":Ljava/lang/Error;
    .end local v4    # "shutdownException":Ljava/lang/Exception;
    throw v5

    .line 1234
    .end local v5    # "e":Ljava/lang/RuntimeException;
    .restart local v3    # "feederOutputError":Ljava/lang/Error;
    .restart local v4    # "shutdownException":Ljava/lang/Exception;
    :catch_2
    move-exception v5

    .line 1235
    .local v5, "ure":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    move-object v4, v5

    .line 1237
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unauthorized replication stream consumer "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1239
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getConsumer()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", exception: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 1240
    invoke-virtual {v5}, Lcom/sleepycat/je/rep/ReplicationSecurityException;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 1237
    invoke-static {v6, v7, v8}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1260
    .end local v5    # "ure":Lcom/sleepycat/je/rep/ReplicationSecurityException;
    if-nez v3, :cond_5

    .line 1264
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto/16 :goto_2

    .line 1262
    :cond_5
    throw v3

    .line 1260
    :goto_1
    if-eqz v3, :cond_6

    .line 1262
    throw v3

    .line 1264
    :cond_6
    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v6

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v8, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1266
    invoke-static {v8}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1267
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1269
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {v6, v7, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 1277
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->cleanup()V

    throw v5

    .line 1231
    :catch_3
    move-exception v5

    .line 1233
    .local v5, "e":Ljava/lang/InterruptedException;
    move-object v4, v5

    .line 1260
    .end local v5    # "e":Ljava/lang/InterruptedException;
    if-nez v3, :cond_7

    .line 1264
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 1262
    :cond_7
    throw v3

    .line 1228
    :catch_4
    move-exception v5

    .line 1230
    .local v5, "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    move-object v4, v5

    .line 1260
    .end local v5    # "e":Lcom/sleepycat/je/rep/stream/MasterStatus$MasterSyncException;
    if-nez v3, :cond_8

    .line 1264
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 1262
    :cond_8
    throw v3

    .line 1225
    :catch_5
    move-exception v5

    .line 1227
    .local v5, "e":Ljava/io/IOException;
    move-object v4, v5

    .line 1260
    .end local v5    # "e":Ljava/io/IOException;
    if-nez v3, :cond_9

    .line 1264
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$1400(Lcom/sleepycat/je/rep/impl/node/Feeder;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$000(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    :goto_2
    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v7, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1266
    invoke-static {v7}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v7

    invoke-virtual {v7}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1267
    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$2500(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    .line 1269
    invoke-static {v1}, Lcom/sleepycat/je/rep/impl/node/Feeder;->access$200(Lcom/sleepycat/je/rep/impl/node/Feeder;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getCurrentTxnEndVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1264
    invoke-static {v5, v6, v0}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1276
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->this$0:Lcom/sleepycat/je/rep/impl/node/Feeder;

    invoke-virtual {v0, v4}, Lcom/sleepycat/je/rep/impl/node/Feeder;->shutdown(Ljava/lang/Exception;)V

    .line 1277
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/impl/node/Feeder$OutputThread;->cleanup()V

    .line 1278
    nop

    .line 1279
    return-void

    .line 1262
    :cond_9
    throw v3
.end method
