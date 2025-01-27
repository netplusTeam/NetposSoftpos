.class public Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;
.super Ljava/lang/Object;
.source "ReplicaStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Statistics on the delays experienced by read requests at the replica in order to conform to the specified ReplicaConsistencyPolicy."

.field public static final GROUP_NAME:Ljava/lang/String; = "ConsistencyTracker"

.field public static final N_LAG_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_LAG_CONSISTENCY_WAITS_DESC:Ljava/lang/String; = "Number of Transaction waits while the replica catches up in order to meet a transaction\'s consistency requirement."

.field public static final N_LAG_CONSISTENCY_WAITS_NAME:Ljava/lang/String; = "nLagConsistencyWaits"

.field public static final N_LAG_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_LAG_CONSISTENCY_WAIT_MS_DESC:Ljava/lang/String; = "Number of msec waited while the replica catches up in order to meet a transaction\'s consistency requirement."

.field public static final N_LAG_CONSISTENCY_WAIT_MS_NAME:Ljava/lang/String; = "nLagConsistencyWaitMS"

.field public static final N_VLSN_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_VLSN_CONSISTENCY_WAITS_DESC:Ljava/lang/String; = "Number of Transaction waits while the replica catches up in order to receive a VLSN."

.field public static final N_VLSN_CONSISTENCY_WAITS_NAME:Ljava/lang/String; = "nVLSNConsistencyWaits"

.field public static final N_VLSN_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_VLSN_CONSISTENCY_WAIT_MS_DESC:Ljava/lang/String; = "Number of msec waited while the replica catches up in order to receive a VLSN."

.field public static final N_VLSN_CONSISTENCY_WAIT_MS_NAME:Ljava/lang/String; = "nVLSNConsistencyWaitMS"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLagConsistencyWaits"

    const-string v2, "Number of Transaction waits while the replica catches up in order to meet a transaction\'s consistency requirement."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 43
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nLagConsistencyWaitMS"

    const-string v2, "Number of msec waited while the replica catches up in order to meet a transaction\'s consistency requirement."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_LAG_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 53
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nVLSNConsistencyWaits"

    const-string v2, "Number of Transaction waits while the replica catches up in order to receive a VLSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 63
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nVLSNConsistencyWaitMS"

    const-string v2, "Number of msec waited while the replica catches up in order to receive a VLSN."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/impl/node/ReplicaStatDefinition;->N_VLSN_CONSISTENCY_WAIT_MS:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
