.class public Lcom/sleepycat/je/log/VLSNDistributionReader;
.super Lcom/sleepycat/je/log/DumpFileReader;
.source "VLSNDistributionReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;
    }
.end annotation


# instance fields
.field private final allFileNums:[Ljava/lang/Long;

.field private final countByFile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fileNumIndex:I

.field private info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJZZ)V
    .locals 16
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "startLsn"    # J
    .param p5, "finishLsn"    # J
    .param p7, "endOfFileLsn"    # J
    .param p9, "verbose"    # Z
    .param p10, "forwards"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 62
    move-object/from16 v15, p0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v13, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, p2

    move-wide/from16 v3, p3

    move-wide/from16 v5, p5

    move-wide/from16 v7, p7

    move/from16 v12, p9

    move/from16 v14, p10

    invoke-direct/range {v0 .. v14}, Lcom/sleepycat/je/log/DumpFileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZZ)V

    .line 69
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, v15, Lcom/sleepycat/je/log/VLSNDistributionReader;->countByFile:Ljava/util/Map;

    .line 70
    iget-object v0, v15, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileManager;->getAllFileNumbers()[Ljava/lang/Long;

    move-result-object v0

    iput-object v0, v15, Lcom/sleepycat/je/log/VLSNDistributionReader;->allFileNums:[Ljava/lang/Long;

    .line 71
    const/4 v0, 0x0

    iput v0, v15, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileNumIndex:I

    .line 72
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/log/VLSNDistributionReader;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/VLSNDistributionReader;

    .line 43
    iget v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileNumIndex:I

    return v0
.end method

.method static synthetic access$008(Lcom/sleepycat/je/log/VLSNDistributionReader;)I
    .locals 2
    .param p0, "x0"    # Lcom/sleepycat/je/log/VLSNDistributionReader;

    .line 43
    iget v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileNumIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileNumIndex:I

    return v0
.end method

.method static synthetic access$100(Lcom/sleepycat/je/log/VLSNDistributionReader;)[Ljava/lang/Long;
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/VLSNDistributionReader;

    .line 43
    iget-object v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->allFileNums:[Ljava/lang/Long;

    return-object v0
.end method


# virtual methods
.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 6
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 80
    iget-object v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    .line 81
    .local v0, "currentVLSN":Lcom/sleepycat/je/utilint/VLSN;
    iget-object v1, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    .line 83
    .local v1, "currentFile":J
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    if-nez v3, :cond_0

    .line 84
    new-instance v3, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;-><init>(Lcom/sleepycat/je/log/VLSNDistributionReader;J)V

    iput-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    .line 85
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->countByFile:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 86
    :cond_0
    invoke-virtual {v3, v1, v2}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->isFileSame(J)Z

    move-result v3

    if-nez v3, :cond_1

    .line 95
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->display()V

    .line 98
    new-instance v3, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-direct {v3, p0, v1, v2}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;-><init>(Lcom/sleepycat/je/log/VLSNDistributionReader;J)V

    iput-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    .line 99
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->countByFile:Ljava/util/Map;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    iget-object v5, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    :cond_1
    :goto_0
    iget-object v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    invoke-virtual {v3, v0}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->increment(Lcom/sleepycat/je/utilint/VLSN;)V

    .line 104
    nop

    .line 105
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    iget-object v4, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v4

    add-int/2addr v3, v4

    .line 106
    .local v3, "nextEntryPosition":I
    invoke-virtual {p1, v3}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 108
    const/4 v4, 0x1

    return v4
.end method

.method public summarize(Z)V
    .locals 4
    .param p1, "csvFormat"    # Z

    .line 113
    iget-object v0, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->info:Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;

    if-eqz v0, :cond_0

    .line 114
    invoke-virtual {v0}, Lcom/sleepycat/je/log/VLSNDistributionReader$PerFileInfo;->display()V

    .line 117
    :cond_0
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "... "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->allFileNums:[Ljava/lang/Long;

    array-length v2, v2

    iget v3, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileNumIndex:I

    sub-int/2addr v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " files at end"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 121
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "First file: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 122
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getFirstFileNum()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 121
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 123
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Last file: 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/VLSNDistributionReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 124
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getLastFileNum()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 123
    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 125
    return-void
.end method
