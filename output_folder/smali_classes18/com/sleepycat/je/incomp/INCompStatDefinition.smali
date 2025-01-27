.class public Lcom/sleepycat/je/incomp/INCompStatDefinition;
.super Ljava/lang/Object;
.source "INCompStatDefinition.java"


# static fields
.field public static final GROUP_DESC:Ljava/lang/String; = "Deleted records are removed from Btree internal nodes asynchronously and nodes are deleted when they become empty."

.field public static final GROUP_NAME:Ljava/lang/String; = "Node Compression"

.field public static final INCOMP_CURSORS_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_CURSORS_BINS_DESC:Ljava/lang/String; = "Number of BINs encountered by the INCompressor that had cursors referring to them when the compressor ran."

.field public static final INCOMP_CURSORS_BINS_NAME:Ljava/lang/String; = "cursorsBins"

.field public static final INCOMP_DBCLOSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_DBCLOSED_BINS_DESC:Ljava/lang/String; = "Number of BINs encountered by the INCompressor that had their database closed between the time they were put on the compressor queue and when the compressor ran."

.field public static final INCOMP_DBCLOSED_BINS_NAME:Ljava/lang/String; = "dbClosedBins"

.field public static final INCOMP_NON_EMPTY_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_NON_EMPTY_BINS_DESC:Ljava/lang/String; = "Number of BINs encountered by the INCompressor that were not actually empty when the compressor ran."

.field public static final INCOMP_NON_EMPTY_BINS_NAME:Ljava/lang/String; = "nonEmptyBins"

.field public static final INCOMP_PROCESSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_PROCESSED_BINS_DESC:Ljava/lang/String; = "Number of BINs that were successfully processed by the INCompressor."

.field public static final INCOMP_PROCESSED_BINS_NAME:Ljava/lang/String; = "processedBins"

.field public static final INCOMP_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_QUEUE_SIZE_DESC:Ljava/lang/String; = "Number of entries in the INCompressor queue."

.field public static final INCOMP_QUEUE_SIZE_NAME:Ljava/lang/String; = "inCompQueueSize"

.field public static final INCOMP_SPLIT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final INCOMP_SPLIT_BINS_DESC:Ljava/lang/String; = "Number of BINs encountered by the INCompressor that were split between the time they were put on the compressor queue and when the compressor ran."

.field public static final INCOMP_SPLIT_BINS_NAME:Ljava/lang/String; = "splitBins"


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 33
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string/jumbo v1, "splitBins"

    const-string v2, "Number of BINs encountered by the INCompressor that were split between the time they were put on the compressor queue and when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_SPLIT_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 44
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "dbClosedBins"

    const-string v2, "Number of BINs encountered by the INCompressor that had their database closed between the time they were put on the compressor queue and when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_DBCLOSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 54
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "cursorsBins"

    const-string v2, "Number of BINs encountered by the INCompressor that had cursors referring to them when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_CURSORS_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 64
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "nonEmptyBins"

    const-string v2, "Number of BINs encountered by the INCompressor that were not actually empty when the compressor ran."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_NON_EMPTY_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 73
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "processedBins"

    const-string v2, "Number of BINs that were successfully processed by the INCompressor."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_PROCESSED_BINS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 82
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v1, "inCompQueueSize"

    const-string v2, "Number of entries in the INCompressor queue."

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/sleepycat/je/incomp/INCompStatDefinition;->INCOMP_QUEUE_SIZE:Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
