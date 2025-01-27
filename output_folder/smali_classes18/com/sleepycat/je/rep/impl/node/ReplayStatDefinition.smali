.class public Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;
.super Ljava/lang/Object;
.source "ReplayStatDefinition.java"


# static fields
.field public static final ELAPSED_TXN_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ELAPSED_TXN_95_MS_DESC:Ljava/lang/String; = "The 95th percentile value of the time in milliseconds to process a transaction."

.field public static final ELAPSED_TXN_95_MS_NAME:Ljava/lang/String; = "elapsedTxn95Ms"

.field public static final ELAPSED_TXN_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ELAPSED_TXN_99_MS_DESC:Ljava/lang/String; = "The 99th percentile value of the time in milliseconds to process a transaction."

.field public static final ELAPSED_TXN_99_MS_NAME:Ljava/lang/String; = "elapsedTxn99Ms"

.field public static final ELAPSED_TXN_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ELAPSED_TXN_AVG_MS_DESC:Ljava/lang/String; = "The average time in milliseconds to process a transaction."

.field public static final ELAPSED_TXN_AVG_MS_NAME:Ljava/lang/String; = "elapsedTxnAvgMs"

.field public static final ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ELAPSED_TXN_MAX_MS_DESC:Ljava/lang/String; = "The maximum time in milliseconds to process a transaction."

.field public static final ELAPSED_TXN_MAX_MS_NAME:Ljava/lang/String; = "elapsedTxnMaxMs"

.field public static final GROUP_DESC:Ljava/lang/String; = "The Replay unit applies the incoming replication stream at a Replica. These stats show the load the Replica incurs when processing updates."

.field public static final GROUP_NAME:Ljava/lang/String; = "Replay"

.field public static final LATEST_COMMIT_LAG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final LATEST_COMMIT_LAG_MS_DESC:Ljava/lang/String; = "Time in msec between when the latest update operation committed on the master and then subsequently committed on the replica. This value is affected by any clock skew between the master and the replica."

.field public static final LATEST_COMMIT_LAG_MS_NAME:Ljava/lang/String; = "latestCommitLagMs"

.field public static final MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MAX_COMMIT_PROCESSING_NANOS_DESC:Ljava/lang/String; = "Maximum nanosecs for commit processing"

.field public static final MAX_COMMIT_PROCESSING_NANOS_NAME:Ljava/lang/String; = "maxCommitProcessingNanos"

.field public static final MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final MIN_COMMIT_PROCESSING_NANOS_DESC:Ljava/lang/String; = "Minimum nanosecs for commit processing"

.field public static final MIN_COMMIT_PROCESSING_NANOS_NAME:Ljava/lang/String; = "minCommitProcessingNanos"

.field public static final N_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_ABORTS_DESC:Ljava/lang/String; = "Number of Aborts replayed by the Replica."

.field public static final N_ABORTS_NAME:Ljava/lang/String; = "nAborts"

.field public static final N_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_COMMITS_DESC:Ljava/lang/String; = "Number of Commits replayed by the Replica."

.field public static final N_COMMITS_NAME:Ljava/lang/String; = "nCommits"

.field public static final N_COMMIT_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_COMMIT_ACKS_DESC:Ljava/lang/String; = "Number of commits for which the Master requested an ack."

.field public static final N_COMMIT_ACKS_NAME:Ljava/lang/String; = "nCommitAcks"

.field public static final N_COMMIT_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_COMMIT_NO_SYNCS_DESC:Ljava/lang/String; = "Number of CommitNoSyncs used to satisfy ack requests."

.field public static final N_COMMIT_NO_SYNCS_NAME:Ljava/lang/String; = "nCommitNoSyncs"

.field public static final N_COMMIT_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_COMMIT_SYNCS_DESC:Ljava/lang/String; = "Number of CommitSyncs used to satisfy ack requests. Note that user level commit sync requests may be optimized into CommitNoSync requests as part of a group commit."

.field public static final N_COMMIT_SYNCS_NAME:Ljava/lang/String; = "nCommitSyncs"

.field public static final N_COMMIT_WRITE_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_COMMIT_WRITE_NO_SYNCS_DESC:Ljava/lang/String; = "Number of CommitWriteNoSyncs used to satisfy ack requests."

.field public static final N_COMMIT_WRITE_NO_SYNCS_NAME:Ljava/lang/String; = "nCommitWriteNoSyncs"

.field public static final N_GROUP_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUP_COMMITS_DESC:Ljava/lang/String; = "Number of group commit operations."

.field public static final N_GROUP_COMMITS_NAME:Ljava/lang/String; = "nGroupCommits"

.field public static final N_GROUP_COMMIT_MAX_EXCEEDED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUP_COMMIT_MAX_EXCEEDED_DESC:Ljava/lang/String; = "Number of group commits that were initiated due to the max group size(ReplicationConfig.REPLICA_MAX_GROUP_COMMIT)  being exceeded."

.field public static final N_GROUP_COMMIT_MAX_EXCEEDED_NAME:Ljava/lang/String; = "nGroupCommitMaxExceeded"

.field public static final N_GROUP_COMMIT_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUP_COMMIT_TIMEOUTS_DESC:Ljava/lang/String; = "Number of group commits that were initiated due to the group timeout interval(ReplicationConfig.REPLICA_GROUP_COMMIT_INTERVAL) being exceeded."

.field public static final N_GROUP_COMMIT_TIMEOUTS_NAME:Ljava/lang/String; = "nGroupCommitTimeouts"

.field public static final N_GROUP_COMMIT_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_GROUP_COMMIT_TXNS_DESC:Ljava/lang/String; = "Number of replay transaction commits that were part of a group commit operation."

.field public static final N_GROUP_COMMIT_TXNS_NAME:Ljava/lang/String; = "nGroupCommitTxns"

.field public static final N_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_LNS_DESC:Ljava/lang/String; = "Number of LNs."

.field public static final N_LNS_NAME:Ljava/lang/String; = "nLNs"

.field public static final N_MESSAGE_QUEUE_OVERFLOWS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MESSAGE_QUEUE_OVERFLOWS_DESC:Ljava/lang/String; = "Number of failed attempts to place an entry in the replica message queue due to the queue being full."

.field public static final N_MESSAGE_QUEUE_OVERFLOWS_NAME:Ljava/lang/String; = "nMessageQueueOverflows"

.field public static final N_NAME_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_NAME_LNS_DESC:Ljava/lang/String; = "Number of Name LNs."

.field public static final N_NAME_LNS_NAME:Ljava/lang/String; = "nNameLNs"

.field public static final OUTPUT_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final OUTPUT_QUEUE_95_DELAY_MS_DESC:Ljava/lang/String; = "The 95th percentile value of the time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

.field public static final OUTPUT_QUEUE_95_DELAY_MS_NAME:Ljava/lang/String; = "outputQueue95DelayMs"

.field public static final OUTPUT_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final OUTPUT_QUEUE_99_DELAY_MS_DESC:Ljava/lang/String; = "The 99th percentile value of the time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

.field public static final OUTPUT_QUEUE_99_DELAY_MS_NAME:Ljava/lang/String; = "outputQueue99DelayMs"

.field public static final OUTPUT_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final OUTPUT_QUEUE_AVG_DELAY_MS_DESC:Ljava/lang/String; = "The average time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

.field public static final OUTPUT_QUEUE_AVG_DELAY_MS_NAME:Ljava/lang/String; = "outputQueueAvgDelayMs"

.field public static final OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final OUTPUT_QUEUE_MAX_DELAY_MS_DESC:Ljava/lang/String; = "The maximum time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

.field public static final OUTPUT_QUEUE_MAX_DELAY_MS_NAME:Ljava/lang/String; = "outputQueueMaxDelayMs"

.field public static final REPLAY_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLAY_QUEUE_95_DELAY_MS_DESC:Ljava/lang/String; = "The 95th percentile value of the time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

.field public static final REPLAY_QUEUE_95_DELAY_MS_NAME:Ljava/lang/String; = "replayQueue95DelayMs"

.field public static final REPLAY_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLAY_QUEUE_99_DELAY_MS_DESC:Ljava/lang/String; = "The 99th percentile value of the time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

.field public static final REPLAY_QUEUE_99_DELAY_MS_NAME:Ljava/lang/String; = "replayQueue99DelayMs"

.field public static final REPLAY_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLAY_QUEUE_AVG_DELAY_MS_DESC:Ljava/lang/String; = "The average time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

.field public static final REPLAY_QUEUE_AVG_DELAY_MS_NAME:Ljava/lang/String; = "replayQueueAvgDelayMs"

.field public static final REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final REPLAY_QUEUE_MAX_DELAY_MS_DESC:Ljava/lang/String; = "The maximum time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

.field public static final REPLAY_QUEUE_MAX_DELAY_MS_NAME:Ljava/lang/String; = "replayQueueMaxDelayMs"

.field public static final TOTAL_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final TOTAL_COMMIT_PROCESSING_NANOS_DESC:Ljava/lang/String; = "Total nanosecs for commit processing"

.field public static final TOTAL_COMMIT_PROCESSING_NANOS_NAME:Ljava/lang/String; = "totalCommitProcessingNanos"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 32
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommits"

    const-string v2, "Number of Commits replayed by the Replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 43
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupCommitTimeouts"

    const-string v2, "Number of group commits that were initiated due to the group timeout interval(ReplicationConfig.REPLICA_GROUP_COMMIT_INTERVAL) being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TIMEOUTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 53
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupCommitMaxExceeded"

    const-string v2, "Number of group commits that were initiated due to the max group size(ReplicationConfig.REPLICA_MAX_GROUP_COMMIT)  being exceeded."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_MAX_EXCEEDED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupCommitTxns"

    const-string v2, "Number of replay transaction commits that were part of a group commit operation."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMIT_TXNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 72
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nGroupCommits"

    const-string v2, "Number of group commit operations."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_GROUP_COMMITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 81
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommitAcks"

    const-string v2, "Number of commits for which the Master requested an ack."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 92
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommitSyncs"

    const-string v2, "Number of CommitSyncs used to satisfy ack requests. Note that user level commit sync requests may be optimized into CommitNoSync requests as part of a group commit."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 101
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommitNoSyncs"

    const-string v2, "Number of CommitNoSyncs used to satisfy ack requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 110
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCommitWriteNoSyncs"

    const-string v2, "Number of CommitWriteNoSyncs used to satisfy ack requests."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_COMMIT_WRITE_NO_SYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 119
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nAborts"

    const-string v2, "Number of Aborts replayed by the Replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_ABORTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 128
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLNs"

    const-string v2, "Number of LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 137
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nNameLNs"

    const-string v2, "Number of Name LNs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_NAME_LNS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 147
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMessageQueueOverflows"

    const-string v2, "Number of failed attempts to place an entry in the replica message queue due to the queue being full."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->N_MESSAGE_QUEUE_OVERFLOWS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 156
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "minCommitProcessingNanos"

    const-string v2, "Minimum nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MIN_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 165
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "maxCommitProcessingNanos"

    const-string v2, "Maximum nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->MAX_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 174
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "totalCommitProcessingNanos"

    const-string v2, "Total nanosecs for commit processing"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->TOTAL_COMMIT_PROCESSING_NANOS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 186
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "latestCommitLagMs"

    const-string v2, "Time in msec between when the latest update operation committed on the master and then subsequently committed on the replica. This value is affected by any clock skew between the master and the replica."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->LATEST_COMMIT_LAG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 197
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replayQueueAvgDelayMs"

    const-string v2, "The average time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 207
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replayQueue95DelayMs"

    const-string v2, "The 95th percentile value of the time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 217
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replayQueue99DelayMs"

    const-string v2, "The 99th percentile value of the time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 227
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "replayQueueMaxDelayMs"

    const-string v2, "The maximum time in milliseconds between when the replica receives a replication entry and when the entry is read from the replay queue by the replay thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->REPLAY_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 238
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "outputQueueAvgDelayMs"

    const-string v2, "The average time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_AVG_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 249
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "outputQueue95DelayMs"

    const-string v2, "The 95th percentile value of the time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_95_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 260
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "outputQueue99DelayMs"

    const-string v2, "The 99th percentile value of the time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_99_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 271
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "outputQueueMaxDelayMs"

    const-string v2, "The maximum time in milliseconds between when the replay thread places a response in the output queue and when the entry is read from the queue in preparation for sending it to the feeder by the output thread."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->OUTPUT_QUEUE_MAX_DELAY_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 278
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "elapsedTxnAvgMs"

    const-string v2, "The average time in milliseconds to process a transaction."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_AVG_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 286
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "elapsedTxn95Ms"

    const-string v2, "The 95th percentile value of the time in milliseconds to process a transaction."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_95_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 294
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "elapsedTxn99Ms"

    const-string v2, "The 99th percentile value of the time in milliseconds to process a transaction."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_99_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 301
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "elapsedTxnMaxMs"

    const-string v2, "The maximum time in milliseconds to process a transaction."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplayStatDefinition;->ELAPSED_TXN_MAX_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
