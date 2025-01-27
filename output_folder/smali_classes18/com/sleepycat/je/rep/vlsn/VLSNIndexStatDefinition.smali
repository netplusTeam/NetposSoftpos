.class public Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;
.super Ljava/lang/Object;
.source "VLSNIndexStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "VLSN Index related stats."

.field public static final GROUP_NAME:Ljava/lang/String; = "VLSNIndex"

.field public static final N_BUCKETS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_BUCKETS_CREATED_DESC:Ljava/lang/String; = "Number of new VLSN buckets created in the VLSN index."

.field public static final N_BUCKETS_CREATED_NAME:Ljava/lang/String; = "nBucketsCreated"

.field public static final N_HEAD_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_HEAD_BUCKETS_DELETED_DESC:Ljava/lang/String; = "Number of VLSN index buckets deleted at the head(the low end) of the VLSN index."

.field public static final N_HEAD_BUCKETS_DELETED_NAME:Ljava/lang/String; = "nHeadBucketsDeleted"

.field public static final N_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_HITS_DESC:Ljava/lang/String; = "Number of hits to the VLSN index cache"

.field public static final N_HITS_NAME:Ljava/lang/String; = "nHits"

.field public static final N_MISSES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_MISSES_DESC:Ljava/lang/String; = "Number of log entry misses upon access to the VLSN index cache. Upon a miss the Feeder will fetch the log enty from the log buffer, or the log file."

.field public static final N_MISSES_NAME:Ljava/lang/String; = "nMisses"

.field public static final N_TAIL_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final N_TAIL_BUCKETS_DELETED_DESC:Ljava/lang/String; = "Number of VLSN index buckets deleted at the tail(the high end) of the index."

.field public static final N_TAIL_BUCKETS_DELETED_NAME:Ljava/lang/String; = "nTailBucketsDeleted"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 31
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nHits"

    const-string v2, "Number of hits to the VLSN index cache"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HITS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 42
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nMisses"

    const-string v2, "Number of log entry misses upon access to the VLSN index cache. Upon a miss the Feeder will fetch the log enty from the log buffer, or the log file."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_MISSES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 52
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nHeadBucketsDeleted"

    const-string v2, "Number of VLSN index buckets deleted at the head(the low end) of the VLSN index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_HEAD_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 62
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nTailBucketsDeleted"

    const-string v2, "Number of VLSN index buckets deleted at the tail(the high end) of the index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_TAIL_BUCKETS_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 71
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nBucketsCreated"

    const-string v2, "Number of new VLSN buckets created in the VLSN index."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/rep/vlsn/VLSNIndexStatDefinition;->N_BUCKETS_CREATED:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
