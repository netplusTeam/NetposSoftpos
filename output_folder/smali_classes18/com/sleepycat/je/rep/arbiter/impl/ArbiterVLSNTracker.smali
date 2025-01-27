.class Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
.super Ljava/lang/Object;
.source "ArbiterVLSNTracker.java"


# static fields
.field private static final VERSION:I = 0x2

.field private static final VERSION_1:I = 0x1


# instance fields
.field private final DATA_OFFSET:I

.field private final NODEID_OFFSET:I

.field private final VERSION_OFFSET:I

.field private currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

.field private final dataFile:Ljava/io/File;

.field private final dtVlsnStat:Lcom/sleepycat/je/utilint/LongStat;

.field private volatile dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

.field private lastAckNodeId:I

.field private final nFSyncs:Lcom/sleepycat/je/utilint/LongStat;

.field private final nWrites:Lcom/sleepycat/je/utilint/LongStat;

.field private nodeId:I

.field private raf:Ljava/io/RandomAccessFile;

.field private final stats:Lcom/sleepycat/je/utilint/StatGroup;

.field private final vlsnStat:Lcom/sleepycat/je/utilint/LongStat;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 7
    .param p1, "file"    # Ljava/io/File;

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 53
    sget-object v0, Lcom/sleepycat/je/utilint/VLSN;->NULL_VLSN:Lcom/sleepycat/je/utilint/VLSN;

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 54
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->VERSION_OFFSET:I

    .line 55
    const/16 v0, 0x20

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->NODEID_OFFSET:I

    .line 56
    const/16 v0, 0x40

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->DATA_OFFSET:I

    .line 57
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nodeId:I

    .line 63
    sget-object v0, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v0}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v0

    iput v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    .line 66
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 67
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    .line 69
    .local v0, "fileExists":Z
    new-instance v1, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v2, "ArbFileIO"

    const-string v3, "Arbiter file I/O statistics"

    invoke-direct {v1, v2, v3}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    .line 71
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nFSyncs:Lcom/sleepycat/je/utilint/LongStat;

    .line 72
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nWrites:Lcom/sleepycat/je/utilint/LongStat;

    .line 73
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->vlsnStat:Lcom/sleepycat/je/utilint/LongStat;

    .line 74
    new-instance v2, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v3, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_DTVLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v2, v1, v3}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    iput-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtVlsnStat:Lcom/sleepycat/je/utilint/LongStat;

    .line 76
    :try_start_0
    new-instance v1, Ljava/io/RandomAccessFile;

    const-string/jumbo v2, "rw"

    invoke-direct {v1, p1, v2}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    .line 77
    const/4 v1, 0x2

    if-eqz v0, :cond_2

    .line 78
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->readVersion()I

    move-result v2

    .line 79
    .local v2, "readVersion":I
    if-gt v2, v1, :cond_1

    .line 85
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->readNodeId()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nodeId:I

    .line 86
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x40

    cmp-long v1, v3, v5

    if-lez v1, :cond_0

    .line 87
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1, v5, v6}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 88
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 89
    new-instance v1, Lcom/sleepycat/je/utilint/VLSN;

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->readLong()J

    move-result-wide v3

    invoke-direct {v1, v3, v4}, Lcom/sleepycat/je/utilint/VLSN;-><init>(J)V

    iput-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    .line 90
    const/4 v1, 0x1

    if-le v2, v1, :cond_0

    .line 91
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    .line 94
    .end local v2    # "readVersion":I
    :cond_0
    goto :goto_0

    .line 80
    .restart local v2    # "readVersion":I
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Arbiter data file does not have a supported version field "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 83
    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileExists":Z
    .end local p1    # "file":Ljava/io/File;
    throw v1

    .line 95
    .end local v2    # "readVersion":I
    .restart local v0    # "fileExists":Z
    .restart local p1    # "file":Ljava/io/File;
    :cond_2
    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->writeVersion(I)V

    .line 96
    iget v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nodeId:I

    invoke-direct {p0, v1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->writeNodeIdInternal(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 107
    :goto_0
    nop

    .line 108
    return-void

    .line 103
    :catch_0
    move-exception v1

    .line 104
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to open the Arbiter data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 106
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " exception "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 99
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Ljava/lang/RuntimeException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to read the Arbiter data file "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 101
    invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private doFSync()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 273
    return-void

    .line 275
    :cond_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V

    .line 276
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nFSyncs:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 278
    return-void
.end method

.method public static loadEmptyStats()Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3

    .line 261
    new-instance v0, Lcom/sleepycat/je/utilint/StatGroup;

    const-string v1, "ArbFileIO"

    const-string v2, "Arbiter file I/O statistics"

    invoke-direct {v0, v1, v2}, Lcom/sleepycat/je/utilint/StatGroup;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    .local v0, "tmpStats":Lcom/sleepycat/je/utilint/StatGroup;
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_FSYNCS:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 265
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_N_WRITES:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 266
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_VLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 267
    new-instance v1, Lcom/sleepycat/je/utilint/LongStat;

    sget-object v2, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterStatDefinition;->ARB_DTVLSN:Lcom/sleepycat/je/utilint/StatDefinition;

    invoke-direct {v1, v0, v2}, Lcom/sleepycat/je/utilint/LongStat;-><init>(Lcom/sleepycat/je/utilint/StatGroup;Lcom/sleepycat/je/utilint/StatDefinition;)V

    .line 268
    return-object v0
.end method

.method private readNodeId()I
    .locals 4

    .line 147
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 154
    const-wide/16 v1, 0x20

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 155
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to read the Arbiter data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 159
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: Unable to read the Arbiter data file  because the file is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 151
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private readVersion()I
    .locals 4

    .line 184
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 191
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write the Arbiter data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 196
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 185
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: Unable to read the Arbiter data file  because the file is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 188
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeNodeIdInternal(I)V
    .locals 4
    .param p1, "id"    # I

    .line 128
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 135
    const-wide/16 v1, 0x20

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 136
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 137
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nWrites:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 138
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->doFSync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    nop

    .line 144
    return-void

    .line 139
    :catch_0
    move-exception v0

    .line 140
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write the Arbiter data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 142
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 129
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: Unable to write the Arbiter data file  because the file is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 132
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private writeVersion(I)V
    .locals 4
    .param p1, "id"    # I

    .line 164
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 172
    const-wide/16 v1, 0x0

    :try_start_0
    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 173
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p1}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 174
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nWrites:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {v0}, Lcom/sleepycat/je/utilint/LongStat;->increment()V

    .line 175
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->doFSync()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 180
    nop

    .line 181
    return-void

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write the Arbiter data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 179
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 165
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: Unable to write the Arbiter data file  because the file is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 168
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 237
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v0, :cond_0

    .line 239
    const/4 v0, 0x0

    :try_start_1
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->doFSync()V

    .line 240
    iget-object v1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 243
    :try_start_2
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    .line 244
    goto :goto_0

    .line 243
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    :catchall_0
    move-exception v1

    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    throw v1

    .line 241
    :catch_0
    move-exception v1

    .line 243
    iput-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 246
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 236
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public get()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 249
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public declared-synchronized getCachedNodeId()I
    .locals 1

    monitor-enter p0

    .line 124
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nodeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return v0

    .line 124
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getDTVLSN()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 253
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;

    return-object v0
.end method

.method public getLastAckNodeId()I
    .locals 1

    .line 257
    iget v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    return v0
.end method

.method public loadStats(Lcom/sleepycat/je/StatsConfig;)Lcom/sleepycat/je/utilint/StatGroup;
    .locals 3
    .param p1, "config"    # Lcom/sleepycat/je/StatsConfig;

    .line 111
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->vlsnStat:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->get()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 112
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtVlsnStat:Lcom/sleepycat/je/utilint/LongStat;

    invoke-virtual {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->getDTVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/LongStat;->set(Ljava/lang/Long;)V

    .line 113
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->stats:Lcom/sleepycat/je/utilint/StatGroup;

    invoke-virtual {p1}, Lcom/sleepycat/je/StatsConfig;->getClear()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/StatGroup;->cloneGroup(Z)Lcom/sleepycat/je/utilint/StatGroup;

    move-result-object v0

    return-object v0
.end method

.method public declared-synchronized write(Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;IZ)V
    .locals 4
    .param p1, "nextCurrentVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p2, "nextDTVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "masterId"    # I
    .param p4, "doFSync"    # Z

    monitor-enter p0

    .line 204
    :try_start_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_4

    .line 210
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {p1, v0}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-lez v0, :cond_3

    .line 211
    iput-object p1, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->currentVLSN:Lcom/sleepycat/je/utilint/VLSN;

    .line 212
    iput-object p2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dtvlsn:Lcom/sleepycat/je/utilint/VLSN;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 214
    :try_start_1
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    const-wide/16 v1, 0x40

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V

    .line 215
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p1}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 216
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {p2}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->writeLong(J)V

    .line 217
    iget v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    sget-object v1, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->NULL:Lcom/sleepycat/je/rep/impl/node/NameIdPair;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/impl/node/NameIdPair;->getId()I

    move-result v1

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    if-eq v0, p3, :cond_0

    goto :goto_0

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nWrites:Lcom/sleepycat/je/utilint/LongStat;

    const-wide/16 v1, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    goto :goto_1

    .line 219
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->raf:Ljava/io/RandomAccessFile;

    invoke-virtual {v0, p3}, Ljava/io/RandomAccessFile;->writeInt(I)V

    .line 220
    iput p3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->lastAckNodeId:I

    .line 221
    iget-object v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nWrites:Lcom/sleepycat/je/utilint/LongStat;

    const-wide/16 v1, 0x3

    invoke-virtual {v0, v1, v2}, Lcom/sleepycat/je/utilint/LongStat;->add(J)V

    .line 225
    :goto_1
    if-eqz p4, :cond_2

    .line 226
    invoke-direct {p0}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->doFSync()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 232
    :cond_2
    goto :goto_2

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "e":Ljava/io/IOException;
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to write the Arbiter data file "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 231
    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 234
    .end local v0    # "e":Ljava/io/IOException;
    :cond_3
    :goto_2
    monitor-exit p0

    return-void

    .line 205
    :cond_4
    :try_start_3
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Internal error: Unable to write the Arbiter data file  because the file is not open."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->dataFile:Ljava/io/File;

    .line 208
    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 203
    .end local p1    # "nextCurrentVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p2    # "nextDTVLSN":Lcom/sleepycat/je/utilint/VLSN;
    .end local p3    # "masterId":I
    .end local p4    # "doFSync":Z
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized writeNodeId(I)V
    .locals 1
    .param p1, "id"    # I

    monitor-enter p0

    .line 117
    :try_start_0
    iget v0, p0, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->nodeId:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne v0, p1, :cond_0

    .line 118
    monitor-exit p0

    return-void

    .line 120
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;->writeNodeIdInternal(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 121
    monitor-exit p0

    return-void

    .line 116
    .end local p0    # "this":Lcom/sleepycat/je/rep/arbiter/impl/ArbiterVLSNTracker;
    .end local p1    # "id":I
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
