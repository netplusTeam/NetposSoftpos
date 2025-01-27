.class final Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;
.super Lcom/sleepycat/je/rep/impl/node/Replica;
.source "ReplicaFactory.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->create(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)Lcom/sleepycat/je/rep/impl/node/Replica;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)V
    .locals 0
    .param p1, "repNode"    # Lcom/sleepycat/je/rep/impl/node/RepNode;
    .param p2, "replay"    # Lcom/sleepycat/je/rep/impl/node/Replay;

    .line 53
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/impl/node/Replica;-><init>(Lcom/sleepycat/je/rep/impl/node/RepNode;Lcom/sleepycat/je/rep/impl/node/Replay;)V

    return-void
.end method


# virtual methods
.method protected doRunReplicaLoopInternalWork()V
    .locals 18
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 59
    .local v0, "ctime":J
    const-wide/16 v2, 0x0

    .line 61
    .local v2, "opCount":J
    :goto_0
    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 63
    nop

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;->getProtocol()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v4

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;->getReplicaFeederChannel()Lcom/sleepycat/je/rep/net/DataChannel;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/sleepycat/je/rep/stream/Protocol;->read(Ljava/nio/channels/ReadableByteChannel;)Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;

    move-result-object v4

    .line 65
    .local v4, "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    invoke-static {}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->access$000()J

    move-result-wide v5

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-lez v5, :cond_1

    .line 66
    invoke-static {}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory;->access$000()J

    move-result-wide v5

    rem-long v5, v2, v5

    cmp-long v5, v5, v7

    if-nez v5, :cond_0

    .line 67
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/je/rep/impl/node/ReplicaFactory$1;->getProtocol()Lcom/sleepycat/je/rep/stream/Protocol;

    move-result-object v5

    sget-object v6, Lcom/sleepycat/je/StatsConfig;->DEFAULT:Lcom/sleepycat/je/StatsConfig;

    .line 68
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/rep/stream/Protocol;->getStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v5

    .line 69
    .local v5, "stats":Lcom/sleepycat/je/utilint/StatGroup;
    sget-object v6, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_BYTES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 70
    invoke-virtual {v5, v6}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v6

    .line 71
    .local v6, "bytesRead":J
    sget-object v8, Lcom/sleepycat/je/rep/utilint/BinaryProtocolStatDefinition;->N_MESSAGES_READ:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 72
    invoke-virtual {v5, v8}, Lcom/sleepycat/je/utilint/StatGroup;->getLong(Lcom/sleepycat/je/utilint/StatDefinition;)J

    move-result-wide v8

    .line 74
    .local v8, "messagesRead":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v10

    sub-long/2addr v10, v0

    .line 75
    .local v10, "elapsedTime":J
    div-long v12, v6, v10

    .line 77
    .local v12, "bytesPerMilliSecond":J
    sget-object v14, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    move-wide/from16 v16, v0

    .end local v0    # "ctime":J
    .local v16, "ctime":J
    const-string v0, " Bytes Read: "

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Messages Read: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " BytesPerMSec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v12, v13}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " MS: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {v14, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 82
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .end local v16    # "ctime":J
    .restart local v0    # "ctime":J
    goto :goto_2

    .line 66
    .end local v5    # "stats":Lcom/sleepycat/je/utilint/StatGroup;
    .end local v6    # "bytesRead":J
    .end local v8    # "messagesRead":J
    .end local v10    # "elapsedTime":J
    .end local v12    # "bytesPerMilliSecond":J
    :cond_0
    move-wide/from16 v16, v0

    .end local v0    # "ctime":J
    .restart local v16    # "ctime":J
    goto :goto_1

    .line 65
    .end local v16    # "ctime":J
    .restart local v0    # "ctime":J
    :cond_1
    move-wide/from16 v16, v0

    .line 84
    .end local v0    # "ctime":J
    .end local v4    # "message":Lcom/sleepycat/je/rep/utilint/BinaryProtocol$Message;
    .restart local v16    # "ctime":J
    :goto_1
    move-wide/from16 v0, v16

    .end local v16    # "ctime":J
    .restart local v0    # "ctime":J
    :goto_2
    goto/16 :goto_0
.end method
