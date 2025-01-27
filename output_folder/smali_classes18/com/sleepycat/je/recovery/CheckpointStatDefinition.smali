.class public Lcom/sleepycat/je/recovery/CheckpointStatDefinition;
.super Ljava/lang/Object;
.source "CheckpointStatDefinition.java"


# static fields
.field public static final CKPT_CHECKPOINTS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_CHECKPOINTS_DESC:Ljava/lang/String; = "Number of checkpoints performed."

.field public static final CKPT_CHECKPOINTS_NAME:Ljava/lang/String; = "nCheckpoints"

.field public static final CKPT_DELTA_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_DELTA_IN_FLUSH_DESC:Ljava/lang/String; = "Number of BIN-deltas flushed to the log."

.field public static final CKPT_DELTA_IN_FLUSH_NAME:Ljava/lang/String; = "nDeltaINFlush"

.field public static final CKPT_FULL_BIN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_FULL_BIN_FLUSH_DESC:Ljava/lang/String; = "Number of full BINs flushed to the log."

.field public static final CKPT_FULL_BIN_FLUSH_NAME:Ljava/lang/String; = "nFullBINFlush"

.field public static final CKPT_FULL_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_FULL_IN_FLUSH_DESC:Ljava/lang/String; = "Number of full INs flushed to the log."

.field public static final CKPT_FULL_IN_FLUSH_NAME:Ljava/lang/String; = "nFullINFlush"

.field public static final CKPT_LAST_CKPTID:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_LAST_CKPTID_DESC:Ljava/lang/String; = "Id of the last checkpoint."

.field public static final CKPT_LAST_CKPTID_NAME:Ljava/lang/String; = "lastCheckpointId"

.field public static final CKPT_LAST_CKPT_END:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_LAST_CKPT_END_DESC:Ljava/lang/String; = "Location in the log of the last checkpoint end."

.field public static final CKPT_LAST_CKPT_END_NAME:Ljava/lang/String; = "lastCheckpointEnd"

.field public static final CKPT_LAST_CKPT_INTERVAL:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_LAST_CKPT_INTERVAL_DESC:Ljava/lang/String; = "Byte length from last checkpoint start to the previous checkpoint start."

.field public static final CKPT_LAST_CKPT_INTERVAL_NAME:Ljava/lang/String; = "lastCheckpointInterval"

.field public static final CKPT_LAST_CKPT_START:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final CKPT_LAST_CKPT_START_DESC:Ljava/lang/String; = "Location in the log of the last checkpoint start."

.field public static final CKPT_LAST_CKPT_START_NAME:Ljava/lang/String; = "lastCheckpointStart"

.field public static final GROUP_DESC:Ljava/lang/String; = "Dirty Btree internal nodes are written to the data log periodically to bound recovery time."

.field public static final GROUP_NAME:Ljava/lang/String; = "Checkpoints"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 32
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nCheckpoints"

    const-string v2, "Number of checkpoints performed."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_CHECKPOINTS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 41
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lastCheckpointId"

    const-string v3, "Id of the last checkpoint."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPTID:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 51
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFullINFlush"

    const-string v2, "Number of full INs flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 60
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nFullBINFlush"

    const-string v2, "Number of full BINs flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_FULL_BIN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 69
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nDeltaINFlush"

    const-string v2, "Number of BIN-deltas flushed to the log."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_DELTA_IN_FLUSH:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 79
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lastCheckpointInterval"

    const-string v3, "Byte length from last checkpoint start to the previous checkpoint start."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_INTERVAL:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 89
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lastCheckpointStart"

    const-string v3, "Location in the log of the last checkpoint start."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_START:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 99
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "lastCheckpointEnd"

    const-string v3, "Location in the log of the last checkpoint end."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/recovery/CheckpointStatDefinition;->CKPT_LAST_CKPT_END:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
