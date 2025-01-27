.class public Lcom/sleepycat/je/cleaner/EraserStatDefinition;
.super Ljava/lang/Object;
.source "EraserStatDefinition.java"


# static fields
.field public static ALL:[Lcom/sleepycat/je/utilint/StatDefinition; = null

.field public static final ERASER_CYCLE_END:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_CYCLE_END_DESC:Ljava/lang/String; = "Erasure cycle end time (UTC)."

.field public static final ERASER_CYCLE_END_NAME:Ljava/lang/String; = "eraserCycleEnd"

.field public static final ERASER_CYCLE_START:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_CYCLE_START_DESC:Ljava/lang/String; = "Erasure cycle start time (UTC)."

.field public static final ERASER_CYCLE_START_NAME:Ljava/lang/String; = "eraserCycleStart"

.field public static final ERASER_FILES_ALREADY_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_FILES_ALREADY_DELETED_DESC:Ljava/lang/String; = "Number of reserved files deleted coincidentally by the cleaner."

.field public static final ERASER_FILES_ALREADY_DELETED_NAME:Ljava/lang/String; = "eraserFilesAlreadyDeleted"

.field public static final ERASER_FILES_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_FILES_DELETED_DESC:Ljava/lang/String; = "Number of reserved files deleted by the eraser."

.field public static final ERASER_FILES_DELETED_NAME:Ljava/lang/String; = "eraserFilesDeleted"

.field public static final ERASER_FILES_ERASED:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_FILES_ERASED_DESC:Ljava/lang/String; = "Number of files erased by overwriting obsolete entries."

.field public static final ERASER_FILES_ERASED_NAME:Ljava/lang/String; = "eraserFilesErased"

.field public static final ERASER_FILES_REMAINING:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_FILES_REMAINING_DESC:Ljava/lang/String; = "Number of files still to be processed in erasure cycle."

.field public static final ERASER_FILES_REMAINING_NAME:Ljava/lang/String; = "eraserFilesRemaining"

.field public static final ERASER_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_FSYNCS_DESC:Ljava/lang/String; = "Number of fsyncs performed by the eraser."

.field public static final ERASER_FSYNCS_NAME:Ljava/lang/String; = "eraserFSyncs"

.field public static final ERASER_READS:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_READS_DESC:Ljava/lang/String; = "Number of file reads performed by the eraser."

.field public static final ERASER_READS_NAME:Ljava/lang/String; = "eraserReads"

.field public static final ERASER_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_READ_BYTES_DESC:Ljava/lang/String; = "Number of bytes read by the eraser."

.field public static final ERASER_READ_BYTES_NAME:Ljava/lang/String; = "eraserReadBytes"

.field public static final ERASER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_WRITES_DESC:Ljava/lang/String; = "Number of file writes performed by the eraser."

.field public static final ERASER_WRITES_NAME:Ljava/lang/String; = "eraserWrites"

.field public static final ERASER_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

.field public static final ERASER_WRITE_BYTES_DESC:Ljava/lang/String; = "Number of bytes written by the eraser."

.field public static final ERASER_WRITE_BYTES_NAME:Ljava/lang/String; = "eraserWriteBytes"

.field public static final GROUP_DESC:Ljava/lang/String; = "Obsolete data is erased during each erasure cycle."

.field public static final GROUP_NAME:Ljava/lang/String; = "Eraser"


# direct methods
.method static constructor <clinit>()V
    .locals 13

    .line 29
    new-instance v0, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v1, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v2, "eraserCycleStart"

    const-string v3, "Erasure cycle start time (UTC)."

    invoke-direct {v0, v2, v3, v1}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v0, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_CYCLE_START:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 39
    new-instance v1, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v2, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v3, "eraserCycleEnd"

    const-string v4, "Erasure cycle end time (UTC)."

    invoke-direct {v1, v3, v4, v2}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v1, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_CYCLE_END:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 49
    new-instance v2, Lcom/sleepycat/je/utilint/StatDefinition;

    sget-object v3, Lcom/sleepycat/je/utilint/StatDefinition$StatType;->CUMULATIVE:Lcom/sleepycat/je/utilint/StatDefinition$StatType;

    const-string v4, "eraserFilesRemaining"

    const-string v5, "Number of files still to be processed in erasure cycle."

    invoke-direct {v2, v4, v5, v3}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sleepycat/je/utilint/StatDefinition$StatType;)V

    sput-object v2, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_REMAINING:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 59
    new-instance v3, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v4, "eraserFilesErased"

    const-string v5, "Number of files erased by overwriting obsolete entries."

    invoke-direct {v3, v4, v5}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_ERASED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 68
    new-instance v4, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v5, "eraserFilesDeleted"

    const-string v6, "Number of reserved files deleted by the eraser."

    invoke-direct {v4, v5, v6}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v4, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 77
    new-instance v5, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v6, "eraserFilesAlreadyDeleted"

    const-string v7, "Number of reserved files deleted coincidentally by the cleaner."

    invoke-direct {v5, v6, v7}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v5, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FILES_ALREADY_DELETED:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 86
    new-instance v6, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v7, "eraserFSyncs"

    const-string v8, "Number of fsyncs performed by the eraser."

    invoke-direct {v6, v7, v8}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v6, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 95
    new-instance v7, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v8, "eraserReads"

    const-string v9, "Number of file reads performed by the eraser."

    invoke-direct {v7, v8, v9}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v7, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_READS:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 104
    new-instance v8, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v9, "eraserReadBytes"

    const-string v10, "Number of bytes read by the eraser."

    invoke-direct {v8, v9, v10}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v8, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_READ_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 113
    new-instance v9, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v10, "eraserWrites"

    const-string v11, "Number of file writes performed by the eraser."

    invoke-direct {v9, v10, v11}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 122
    new-instance v10, Lcom/sleepycat/je/utilint/StatDefinition;

    const-string v11, "eraserWriteBytes"

    const-string v12, "Number of bytes written by the eraser."

    invoke-direct {v10, v11, v12}, Lcom/sleepycat/je/utilint/StatDefinition;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v10, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ERASER_WRITE_BYTES:Lcom/sleepycat/je/utilint/StatDefinition;

    .line 127
    const/16 v11, 0xb

    new-array v11, v11, [Lcom/sleepycat/je/utilint/StatDefinition;

    const/4 v12, 0x0

    aput-object v0, v11, v12

    const/4 v0, 0x1

    aput-object v1, v11, v0

    const/4 v0, 0x2

    aput-object v2, v11, v0

    const/4 v0, 0x3

    aput-object v3, v11, v0

    const/4 v0, 0x4

    aput-object v4, v11, v0

    const/4 v0, 0x5

    aput-object v5, v11, v0

    const/4 v0, 0x6

    aput-object v6, v11, v0

    const/4 v0, 0x7

    aput-object v9, v11, v0

    const/16 v0, 0x8

    aput-object v10, v11, v0

    const/16 v0, 0x9

    aput-object v7, v11, v0

    const/16 v0, 0xa

    aput-object v8, v11, v0

    sput-object v11, Lcom/sleepycat/je/cleaner/EraserStatDefinition;->ALL:[Lcom/sleepycat/je/utilint/StatDefinition;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
