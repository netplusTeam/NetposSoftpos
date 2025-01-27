.class Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;
.super Ljava/lang/Object;
.source "FeederManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/impl/node/FeederManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DTVLSNFlusher"
.end annotation


# instance fields
.field private nullTxnVLSN:J

.field private persistedDTVLSN:J

.field private stableDTVLSN:J

.field private stableTicks:I

.field final targetStableTicks:I

.field final synthetic this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/impl/node/FeederManager;)V
    .locals 5

    .line 1011
    iput-object p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableTicks:I

    .line 1023
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableDTVLSN:J

    .line 1029
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->persistedDTVLSN:J

    .line 1032
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->nullTxnVLSN:J

    .line 1012
    invoke-static {p1}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    sget-object v1, Lcom/sleepycat/je/rep/impl/RepParams;->HEARTBEAT_INTERVAL:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1013
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v0

    .line 1014
    .local v0, "heartbeatMs":I
    mul-int/lit8 v1, v0, 0x2

    int-to-long v1, v1

    iget-wide v3, p1, Lcom/sleepycat/je/rep/impl/node/FeederManager;->pollTimeoutMs:J

    div-long/2addr v1, v3

    .line 1015
    const-wide/16 v3, 0x1

    invoke-static {v3, v4, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    long-to-int p1, v1

    iput p1, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->targetStableTicks:I

    .line 1016
    return-void
.end method


# virtual methods
.method flush()V
    .locals 9

    .line 1040
    iget-object v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v0}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getDTVLSN()J

    move-result-wide v0

    .line 1042
    .local v0, "dtvlsn":J
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->nullTxnVLSN:J

    cmp-long v2, v0, v2

    if-nez v2, :cond_0

    .line 1044
    return-void

    .line 1047
    :cond_0
    iget-wide v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableDTVLSN:J

    cmp-long v4, v0, v2

    const/4 v5, 0x0

    if-lez v4, :cond_1

    .line 1048
    iput v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableTicks:I

    .line 1049
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableDTVLSN:J

    .line 1052
    return-void

    .line 1055
    :cond_1
    cmp-long v4, v0, v2

    if-ltz v4, :cond_5

    .line 1063
    iget v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableTicks:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableTicks:I

    iget v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->targetStableTicks:I

    if-gt v4, v6, :cond_2

    .line 1068
    return-void

    .line 1071
    :cond_2
    iput v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableTicks:I

    .line 1074
    iget-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->persistedDTVLSN:J

    cmp-long v2, v2, v4

    if-lez v2, :cond_4

    .line 1075
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getActiveTransfer()Lcom/sleepycat/je/rep/impl/node/MasterTransfer;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 1080
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$300(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/logging/Logger;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v3}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Skipped null txn updating DTVLSN: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " Master transfer in progress"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/utilint/LoggerUtils;->info(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1083
    return-void

    .line 1085
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v2}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v2

    .line 1086
    .local v2, "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    nop

    .line 1087
    invoke-static {}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$400()Lcom/sleepycat/je/TransactionConfig;

    move-result-object v3

    .line 1088
    invoke-virtual {v2}, Lcom/sleepycat/je/rep/impl/RepImpl;->getNameIdPair()Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    move-result-object v4

    .line 1087
    invoke-static {v2, v3, v4}, Lcom/sleepycat/je/rep/txn/MasterTxn;->createNullTxn(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/TransactionConfig;Lcom/sleepycat/je/rep/impl/node/NameIdPair;)Lcom/sleepycat/je/rep/txn/MasterTxn;

    move-result-object v3

    .line 1093
    .local v3, "nullTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    const-wide/16 v4, 0x1

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/rep/txn/MasterTxn;->setTxnTimeout(J)V

    .line 1095
    :try_start_0
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->commit()J

    .line 1096
    iget-object v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v4}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$300(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/logging/Logger;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Persist DTVLSN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " at VLSN: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1098
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " via null transaction:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 1099
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getId()J

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 1096
    invoke-static {v4, v5, v6}, Lcom/sleepycat/je/utilint/LoggerUtils;->fine(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1100
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->getCommitVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    iput-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->nullTxnVLSN:J

    .line 1101
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->persistedDTVLSN:J

    .line 1102
    iput-wide v0, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableDTVLSN:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1108
    goto :goto_0

    .line 1103
    :catch_0
    move-exception v4

    .line 1104
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v3}, Lcom/sleepycat/je/rep/txn/MasterTxn;->abort()V

    .line 1105
    iget-object v5, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v5}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$300(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Ljava/util/logging/Logger;

    move-result-object v5

    iget-object v6, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->this$0:Lcom/sleepycat/je/rep/impl/node/FeederManager;

    invoke-static {v6}, Lcom/sleepycat/je/rep/impl/node/FeederManager;->access$100(Lcom/sleepycat/je/rep/impl/node/FeederManager;)Lcom/sleepycat/je/rep/impl/node/RepNode;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sleepycat/je/rep/impl/node/RepNode;->getRepImpl()Lcom/sleepycat/je/rep/impl/RepImpl;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Failed to write null txn updating DTVLSN; "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1107
    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1105
    invoke-static {v5, v6, v7}, Lcom/sleepycat/je/utilint/LoggerUtils;->warning(Ljava/util/logging/Logger;Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 1110
    .end local v2    # "repImpl":Lcom/sleepycat/je/rep/impl/RepImpl;
    .end local v3    # "nullTxn":Lcom/sleepycat/je/rep/txn/MasterTxn;
    .end local v4    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_0
    return-void

    .line 1057
    :cond_5
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "The DTVLSN sequence cannot decreasecurrent DTVLSN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " previous DTVLSN:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, p0, Lcom/sleepycat/je/rep/impl/node/FeederManager$DTVLSNFlusher;->stableDTVLSN:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
