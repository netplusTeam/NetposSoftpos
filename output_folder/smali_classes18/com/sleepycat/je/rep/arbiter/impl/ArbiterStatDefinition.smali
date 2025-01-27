.class public Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;
.super Ljava/lang/Object;
.source "ArbiterStatDefinition.java"


# static fields
.field public static final ARBIO_GROUP_DESC:Ljava/lang/String; = "Arbiter file I/O statistics"

.field public static final ARBIO_GROUP_NAME:Ljava/lang/String; = "ArbFileIO"

.field public static final ARB_DTVLSN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_MASTER:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_N_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_N_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_N_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_STATE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ARB_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final GROUP_DESC:Ljava/lang/String; = "Arbiter statistics"

.field public static final GROUP_NAME:Ljava/lang/String; = "Arbiter"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 29
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFSyncs"

    const-string v2, "The number of fsyncs."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 34
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nWrites"

    const-string v2, "The number of file writes."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 39
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nReplayQueueOverflow"

    const-string v2, "The number of times replay queue failed to insert because if was full."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_REPLAY_QUEUE_OVERFLOW:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 45
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nAcks"

    const-string v2, "The number of transactions acknowledged."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_ACKS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 50
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "master"

    const-string v3, "The current or last Master Replication Node the Arbiter accessed."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_MASTER:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 56
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "state"

    const-string v3, "The current state of the Arbiter."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_STATE:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 62
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string/jumbo v2, "vlsn"

    const-string v3, "The highest VLSN that was acknowledged by the Arbiter."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 68
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "dtvlsn"

    const-string v3, "The highest DTVLSN that was acknowledged by the Arbiter."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_DTVLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
