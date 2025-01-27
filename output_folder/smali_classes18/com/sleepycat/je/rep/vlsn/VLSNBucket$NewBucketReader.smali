.class Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;
.super Lcom/sleepycat/je/log/FileReader;
.source "VLSNBucket.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NewBucketReader"
.end annotation


# instance fields
.field private done:Z

.field private final first:Lcom/sleepycat/je/utilint/VLSN;

.field private final last:Lcom/sleepycat/je/utilint/VLSN;

.field private final remainderBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/rep/vlsn/VLSNBucket;Lcom/sleepycat/je/dbi/EnvironmentImpl;ILcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/utilint/VLSN;J)V
    .locals 12
    .param p1, "remainderBucket"    # Lcom/sleepycat/je/rep/vlsn/VLSNBucket;
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p3, "readBufferSize"    # I
    .param p4, "first"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p5, "last"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p6, "startLsn"    # J

    .line 1016
    move-object v11, p0

    const/4 v3, 0x1

    const/4 v6, 0x0

    const-wide/16 v7, -0x1

    const-wide/16 v9, -0x1

    move-object v0, p0

    move-object v1, p2

    move v2, p3

    move-wide/from16 v4, p6

    invoke-direct/range {v0 .. v10}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V

    .line 1006
    const/4 v0, 0x0

    iput-boolean v0, v11, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->done:Z

    .line 1024
    move-object v0, p1

    iput-object v0, v11, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->remainderBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    .line 1025
    move-object/from16 v1, p4

    iput-object v1, v11, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->first:Lcom/sleepycat/je/utilint/VLSN;

    .line 1026
    move-object/from16 v2, p5

    iput-object v2, v11, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->last:Lcom/sleepycat/je/utilint/VLSN;

    .line 1027
    return-void
.end method


# virtual methods
.method isDone()Z
    .locals 1

    .line 1056
    iget-boolean v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->done:Z

    return v0
.end method

.method protected isTargetEntry()Z
    .locals 2

    .line 1036
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1037
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->entryIsReplicated()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1038
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->first:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    if-ltz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1036
    :goto_0
    return v0
.end method

.method protected processEntry(Ljava/nio/ByteBuffer;)Z
    .locals 5
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 1043
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    iget-object v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->last:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v0, v1}, Lcom/sleepycat/je/utilint/VLSN;->compareTo(Lcom/sleepycat/je/utilint/VLSN;)I

    move-result v0

    const/4 v1, 0x1

    if-lez v0, :cond_0

    .line 1044
    iput-boolean v1, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->done:Z

    goto :goto_0

    .line 1046
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->remainderBucket:Lcom/sleepycat/je/rep/vlsn/VLSNBucket;

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v2

    .line 1047
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->getLastLsn()J

    move-result-wide v3

    .line 1046
    invoke-virtual {v0, v2, v3, v4}, Lcom/sleepycat/je/rep/vlsn/VLSNBucket;->put(Lcom/sleepycat/je/utilint/VLSN;J)Z

    .line 1050
    :goto_0
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v2, p0, Lcom/sleepycat/je/rep/vlsn/VLSNBucket$NewBucketReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 1051
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v2

    add-int/2addr v0, v2

    .line 1050
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1052
    return v1
.end method
