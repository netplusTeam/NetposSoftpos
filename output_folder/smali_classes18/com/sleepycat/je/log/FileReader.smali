.class public abstract Lcom/sleepycat/je/log/FileReader;
.super Ljava/lang/Object;
.source "FileReader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/log/FileReader$ReadWindow;,
        Lcom/sleepycat/je/log/FileReader$EOFException;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private alwaysValidateChecksum:Z

.field protected cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

.field protected currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

.field protected currentEntryOffset:J

.field protected currentEntryPrevOffset:J

.field private doChecksumOnRead:Z

.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected eof:Z

.field protected final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private final finishLsn:J

.field protected final forward:Z

.field protected final logger:Ljava/util/logging/Logger;

.field private nRead:I

.field protected nextEntryOffset:J

.field private saveBuffer:Ljava/nio/ByteBuffer;

.field private final singleFile:Z

.field protected startLsn:J

.field protected final window:Lcom/sleepycat/je/log/FileReader$ReadWindow;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 40
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJ)V
    .locals 13
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "forward"    # Z
    .param p4, "startLsn"    # J
    .param p6, "singleFileNumber"    # Ljava/lang/Long;
    .param p7, "endOfFileLsn"    # J
    .param p9, "finishLsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 111
    nop

    .line 113
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogManager;->getChecksumOnRead()Z

    move-result v12

    .line 111
    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move/from16 v4, p3

    move-wide/from16 v5, p4

    move-object/from16 v7, p6

    move-wide/from16 v8, p7

    move-wide/from16 v10, p9

    invoke-direct/range {v1 .. v12}, Lcom/sleepycat/je/log/FileReader;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJZ)V

    .line 114
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;IZJLjava/lang/Long;JJZ)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "readBufferSize"    # I
    .param p3, "forward"    # Z
    .param p4, "startLsn"    # J
    .param p6, "singleFileNumber"    # Ljava/lang/Long;
    .param p7, "endOfFileLsn"    # J
    .param p9, "finishLsn"    # J
    .param p11, "doChecksumOnRead"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 126
    iput-object p1, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 127
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 128
    const/4 v0, 0x0

    if-eqz p6, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v0

    :goto_0
    iput-boolean v1, p0, Lcom/sleepycat/je/log/FileReader;->singleFile:Z

    .line 129
    iput-boolean p3, p0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    .line 131
    iput-boolean p11, p0, Lcom/sleepycat/je/log/FileReader;->doChecksumOnRead:Z

    .line 132
    if-eqz p11, :cond_1

    .line 133
    new-instance v1, Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-direct {v1, p1}, Lcom/sleepycat/je/log/ChecksumValidator;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    .line 136
    :cond_1
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/log/FileReader;->makeWindow(I)Lcom/sleepycat/je/log/FileReader$ReadWindow;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 137
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    .line 140
    iput v0, p0, Lcom/sleepycat/je/log/FileReader;->nRead:I

    .line 143
    iput-wide p4, p0, Lcom/sleepycat/je/log/FileReader;->startLsn:J

    .line 144
    iput-wide p9, p0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    .line 146
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogger()Ljava/util/logging/Logger;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileReader;->logger:Ljava/util/logging/Logger;

    .line 148
    invoke-virtual {p0, p7, p8, p6}, Lcom/sleepycat/je/log/FileReader;->initStartingPosition(JLjava/lang/Long;)V

    .line 149
    return-void
.end method

.method private addToChecksum(Ljava/nio/ByteBuffer;I)V
    .locals 1
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 732
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->doChecksumOnRead:Z

    if-nez v0, :cond_0

    .line 733
    return-void

    .line 736
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 737
    return-void
.end method

.method private copyToSaveBuffer(I)V
    .locals 3
    .param p1, "bytesNeeded"    # I

    .line 858
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    .line 859
    move v0, p1

    .local v0, "bytesFromThisBuffer":I
    goto :goto_0

    .line 861
    .end local v0    # "bytesFromThisBuffer":I
    :cond_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->remaining()I

    move-result v0

    .line 868
    .restart local v0    # "bytesFromThisBuffer":I
    :goto_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    sub-int/2addr v1, v2

    if-ge v1, v0, :cond_1

    .line 871
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    add-int/2addr v1, v0

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 873
    .local v1, "temp":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 874
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 875
    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    .line 883
    .end local v1    # "temp":Ljava/nio/ByteBuffer;
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 884
    .restart local v1    # "temp":Ljava/nio/ByteBuffer;
    invoke-virtual {v1, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 885
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 886
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2, v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->incrementBufferPosition(I)V

    .line 887
    return-void
.end method

.method private getLogEntryInReadBuffer()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 487
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    if-eqz v0, :cond_0

    .line 488
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileReader;->setForwardPosition()V

    goto :goto_0

    .line 490
    :cond_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileReader;->setBackwardPosition()V

    .line 492
    :goto_0
    return-void
.end method

.method private readBasicHeader(Ljava/nio/ByteBuffer;)V
    .locals 4
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 664
    new-instance v0, Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 665
    invoke-static {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->access$000(Lcom/sleepycat/je/log/FileReader$ReadWindow;)I

    move-result v1

    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getCurrentLsn()J

    move-result-wide v2

    invoke-direct {v0, p1, v1, v2, v3}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Ljava/nio/ByteBuffer;IJ)V

    iput-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 672
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getPrevOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 673
    return-void
.end method

.method private readData(IZ)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "amountToRead"    # I
    .param p2, "collectData"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 776
    const/4 v0, 0x0

    .line 777
    .local v0, "alreadyRead":I
    const/4 v1, 0x0

    .line 778
    .local v1, "completeBuffer":Ljava/nio/ByteBuffer;
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 780
    :goto_0
    if-ge v0, p1, :cond_6

    iget-boolean v2, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    if-nez v2, :cond_6

    .line 782
    sub-int v2, p1, v0

    .line 783
    .local v2, "bytesNeeded":I
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->hasRemaining()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 786
    if-eqz p2, :cond_2

    .line 791
    if-gtz v0, :cond_1

    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 792
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->remaining()I

    move-result v3

    if-ge v3, v2, :cond_0

    goto :goto_1

    .line 801
    :cond_0
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 802
    move v0, p1

    goto :goto_3

    .line 795
    :cond_1
    :goto_1
    invoke-direct {p0, v2}, Lcom/sleepycat/je/log/FileReader;->copyToSaveBuffer(I)V

    .line 796
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 797
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    goto :goto_3

    .line 810
    :cond_2
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 811
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->remaining()I

    move-result v3

    if-le v3, v2, :cond_3

    move v3, v2

    goto :goto_2

    :cond_3
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 812
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->remaining()I

    move-result v3

    :goto_2
    nop

    .line 814
    .local v3, "positionIncrement":I
    add-int/2addr v0, v3

    .line 815
    iget-object v4, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v4, v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->incrementBufferPosition(I)V

    .line 816
    iget-object v4, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getBuffer()Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 817
    .end local v3    # "positionIncrement":I
    goto :goto_3

    .line 823
    :cond_4
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-boolean v4, p0, Lcom/sleepycat/je/log/FileReader;->singleFile:Z

    invoke-virtual {v3, v4, v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fillNext(ZI)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 825
    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    .line 828
    .end local v2    # "bytesNeeded":I
    :cond_5
    :goto_3
    goto :goto_0

    .line 831
    :cond_6
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->saveBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 833
    return-object v1
.end method

.method private reportProblem(Ljava/lang/Exception;)V
    .locals 7
    .param p1, "e"    # Ljava/lang/Exception;

    .line 439
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 440
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "Halted log file reading at file 0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 441
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 442
    const-string v2, " offset 0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    .line 443
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 444
    const-string v2, " offset(decimal)="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    .line 445
    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 446
    const-string v2, " prev=0x"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 447
    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 449
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v1, :cond_0

    .line 450
    nop

    .line 451
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v1

    invoke-static {v1}, Lcom/sleepycat/je/log/LogEntryType;->findType(B)Lcom/sleepycat/je/log/LogEntryType;

    move-result-object v1

    .line 452
    .local v1, "problemType":Lcom/sleepycat/je/log/LogEntryType;
    const-string v2, ":\nentry="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 453
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 454
    const-string/jumbo v3, "type="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 455
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 456
    const-string v3, ",version="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 457
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 458
    const-string v3, ")\nprev=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 459
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 460
    const-string v3, "\nsize="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 461
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 462
    const-string v3, "\nNext entry should be at 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    iget-object v5, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 464
    invoke-virtual {v5}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 465
    invoke-virtual {v5}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v5

    int-to-long v5, v5

    add-long/2addr v3, v5

    .line 463
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 468
    .end local v1    # "problemType":Lcom/sleepycat/je/log/LogEntryType;
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 469
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "FileReader"

    const-string/jumbo v4, "readNextEntry"

    invoke-static {v1, v3, v4, v2, p1}, Lcom/sleepycat/je/utilint/LoggerUtils;->traceAndLogException(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 470
    return-void
.end method

.method private startChecksum(Ljava/nio/ByteBuffer;)V
    .locals 1
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 684
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/log/FileReader;->startChecksum(Ljava/nio/ByteBuffer;Z)V

    .line 685
    return-void
.end method

.method private startChecksum(Ljava/nio/ByteBuffer;Z)V
    .locals 4
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "isChecksumTarget"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 691
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->doChecksumOnRead:Z

    if-nez v0, :cond_0

    .line 692
    return-void

    .line 695
    :cond_0
    if-nez p2, :cond_1

    .line 696
    return-void

    .line 700
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/ChecksumValidator;->reset()V

    .line 702
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 703
    .local v0, "originalPosition":I
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 712
    add-int/lit8 v1, v0, -0xe

    invoke-static {p1, v1}, Lcom/sleepycat/je/log/LogEntryHeader;->turnOffInvisible(Ljava/nio/ByteBuffer;I)V

    .line 717
    :cond_2
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 718
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getInvariantSizeMinusChecksum()I

    move-result v1

    .line 719
    .local v1, "headerSizeMinusChecksum":I
    sub-int v2, v0, v1

    .line 720
    .local v2, "entryTypeStart":I
    invoke-virtual {p1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 723
    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-virtual {v3, p1, v1}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 726
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 727
    return-void
.end method

.method private validateChecksum(Ljava/nio/ByteBuffer;Z)V
    .locals 9
    .param p1, "dataBuffer"    # Ljava/nio/ByteBuffer;
    .param p2, "isChecksumTarget"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 747
    iget-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->doChecksumOnRead:Z

    if-nez v0, :cond_0

    .line 748
    return-void

    .line 751
    :cond_0
    if-nez p2, :cond_1

    .line 752
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/sleepycat/je/log/ChecksumValidator;->update(Ljava/nio/ByteBuffer;I)V

    .line 756
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->cksumValidator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getChecksum()J

    move-result-wide v3

    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 757
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v5

    iget-wide v7, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 756
    invoke-virtual/range {v2 .. v8}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJJ)V

    .line 759
    return-void
.end method


# virtual methods
.method public entryIsReplicated()Z
    .locals 1

    .line 952
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v0, :cond_0

    .line 957
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getReplicated()Z

    move-result v0

    return v0

    .line 953
    :cond_0
    nop

    .line 954
    const-string v0, "entryIsReplicated should not be used before reader is initialized"

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method

.method public getAndResetNReads()I
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getAndResetNReads()I

    move-result v0

    return v0
.end method

.method public getLastEntrySize()I
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getEntrySize()I

    move-result v0

    return v0
.end method

.method public getLastLsn()J
    .locals 4

    .line 236
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLastVlsn()Lcom/sleepycat/je/utilint/VLSN;
    .locals 1

    .line 244
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVLSN()Lcom/sleepycat/je/utilint/VLSN;

    move-result-object v0

    return-object v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 258
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVersion()I

    move-result v0

    return v0
.end method

.method public getNRepeatIteratorReads()J
    .locals 2

    .line 229
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getNRepeatIteratorReads()J

    move-result-wide v0

    return-wide v0
.end method

.method public getNumRead()I
    .locals 1

    .line 225
    iget v0, p0, Lcom/sleepycat/je/log/FileReader;->nRead:I

    return v0
.end method

.method protected handleGapInBackwardsScan(J)V
    .locals 6
    .param p1, "prevFileNum"    # J

    .line 964
    new-instance v0, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v2, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_INTEGRITY:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cannot read backward over cleaned file from 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 968
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " to 0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 969
    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/String;)V

    throw v0
.end method

.method protected initStartingPosition(JLjava/lang/Long;)V
    .locals 6
    .param p1, "endOfFileLsn"    # J
    .param p3, "ignoreSingleFileNumber"    # Ljava/lang/Long;

    .line 167
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    .line 168
    iget-boolean v1, p0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    const-wide/16 v2, -0x1

    if-eqz v1, :cond_2

    .line 174
    iget-wide v4, p0, Lcom/sleepycat/je/log/FileReader;->startLsn:J

    cmp-long v1, v4, v2

    if-eqz v1, :cond_0

    .line 175
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0, v4, v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    goto :goto_0

    .line 177
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileManager;->getFirstFileNum()Ljava/lang/Long;

    move-result-object v1

    .line 178
    .local v1, "firstNum":Ljava/lang/Long;
    if-nez v1, :cond_1

    .line 179
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    goto :goto_0

    .line 181
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-static {v3, v4, v0}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JI)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 188
    .end local v1    # "firstNum":Ljava/lang/Long;
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getEndOffset()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    goto :goto_2

    .line 196
    :cond_2
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->startLsn:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_4

    .line 197
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->initAtFileStart(J)V

    .line 204
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->startLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    .line 205
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    .line 206
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->startLsn:J

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    goto :goto_1

    .line 208
    :cond_3
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 210
    :goto_1
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 212
    :goto_2
    return-void

    .line 196
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method protected isTargetEntry()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 914
    const/4 v0, 0x1

    return v0
.end method

.method protected makeWindow(I)Lcom/sleepycat/je/log/FileReader$ReadWindow;
    .locals 2
    .param p1, "readBufferSize"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 158
    new-instance v0, Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-direct {v0, p1, v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;-><init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V

    return-object v0
.end method

.method protected abstract processEntry(Ljava/nio/ByteBuffer;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation
.end method

.method public readNextEntry()Z
    .locals 4

    .line 272
    :try_start_0
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileReader;->readNextEntryAllowExceptions()Z

    move-result v0
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 276
    :catch_0
    move-exception v0

    .line 277
    .local v0, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_CHECKSUM:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1

    .line 273
    .end local v0    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :catch_1
    move-exception v0

    .line 274
    .local v0, "e":Ljava/io/FileNotFoundException;
    new-instance v1, Lcom/sleepycat/je/EnvironmentFailureException;

    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    sget-object v3, Lcom/sleepycat/je/dbi/EnvironmentFailureReason;->LOG_FILE_NOT_FOUND:Lcom/sleepycat/je/dbi/EnvironmentFailureReason;

    invoke-direct {v1, v2, v3, v0}, Lcom/sleepycat/je/EnvironmentFailureException;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/dbi/EnvironmentFailureReason;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final readNextEntryAllowExceptions()Z
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 293
    const/4 v0, 0x0

    .line 294
    .local v0, "foundEntry":Z
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 295
    .local v1, "savedCurrentEntryOffset":J
    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    .line 298
    .local v3, "savedNextEntryOffset":J
    :goto_0
    const/4 v5, 0x1

    :try_start_0
    iget-boolean v6, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    if-nez v6, :cond_d

    if-nez v0, :cond_d

    .line 301
    invoke-direct {p0}, Lcom/sleepycat/je/log/FileReader;->getLogEntryInReadBuffer()V

    .line 302
    const/16 v6, 0xe

    .line 303
    invoke-direct {p0, v6, v5}, Lcom/sleepycat/je/log/FileReader;->readData(IZ)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 306
    .local v6, "dataBuffer":Ljava/nio/ByteBuffer;
    invoke-direct {p0, v6}, Lcom/sleepycat/je/log/FileReader;->readBasicHeader(Ljava/nio/ByteBuffer;)V

    .line 312
    iget-object v7, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v7}, Lcom/sleepycat/je/log/LogEntryHeader;->isVariableLength()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 327
    iget-object v7, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v7}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 328
    invoke-direct {p0, v6}, Lcom/sleepycat/je/log/FileReader;->startChecksum(Ljava/nio/ByteBuffer;)V

    .line 331
    :cond_0
    iget-object v7, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 332
    invoke-virtual {v7}, Lcom/sleepycat/je/log/LogEntryHeader;->getVariablePortionSize()I

    move-result v7

    .line 335
    .local v7, "optionalPortionLen":I
    invoke-direct {p0, v7, v5}, Lcom/sleepycat/je/log/FileReader;->readData(IZ)Ljava/nio/ByteBuffer;

    move-result-object v8

    move-object v6, v8

    .line 341
    iget-object v8, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 342
    invoke-direct {p0, v6, v7}, Lcom/sleepycat/je/log/FileReader;->addToChecksum(Ljava/nio/ByteBuffer;I)V

    .line 346
    :cond_1
    iget-object v8, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v8, v6}, Lcom/sleepycat/je/log/LogEntryHeader;->readVariablePortion(Ljava/nio/ByteBuffer;)V

    .line 355
    .end local v7    # "optionalPortionLen":I
    :cond_2
    iget-boolean v7, p0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    if-eqz v7, :cond_3

    .line 356
    iget-wide v7, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    iput-wide v7, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 357
    iget-object v9, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 358
    invoke-virtual {v9}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v9

    iget-object v10, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 359
    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v10

    add-int/2addr v9, v10

    int-to-long v9, v9

    add-long/2addr v7, v9

    iput-wide v7, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J
    :try_end_0
    .catch Lcom/sleepycat/je/log/FileReader$EOFException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 363
    :cond_3
    :try_start_1
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileReader;->isTargetEntry()Z

    move-result v7

    .line 365
    .local v7, "isTarget":Z
    iget-object v8, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v8}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v8

    const/4 v9, 0x0

    if-eqz v8, :cond_5

    if-nez v7, :cond_4

    iget-boolean v8, p0, Lcom/sleepycat/je/log/FileReader;->alwaysValidateChecksum:Z

    if-eqz v8, :cond_5

    :cond_4
    move v8, v5

    goto :goto_1

    :cond_5
    move v8, v9

    .line 368
    .local v8, "isChecksumTarget":Z
    :goto_1
    iget-object v10, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryHeader;->isVariableLength()Z

    move-result v10

    if-nez v10, :cond_6

    .line 369
    invoke-direct {p0, v6, v8}, Lcom/sleepycat/je/log/FileReader;->startChecksum(Ljava/nio/ByteBuffer;Z)V

    .line 372
    :cond_6
    if-eqz v8, :cond_7

    iget-boolean v10, p0, Lcom/sleepycat/je/log/FileReader;->doChecksumOnRead:Z

    if-nez v10, :cond_8

    :cond_7
    if-eqz v7, :cond_9

    :cond_8
    move v9, v5

    .line 380
    .local v9, "collectData":Z
    :cond_9
    iget-object v10, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v10}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v10

    invoke-direct {p0, v10, v9}, Lcom/sleepycat/je/log/FileReader;->readData(IZ)Ljava/nio/ByteBuffer;

    move-result-object v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v10

    .line 388
    nop

    .line 391
    :try_start_2
    invoke-direct {p0, v6, v8}, Lcom/sleepycat/je/log/FileReader;->validateChecksum(Ljava/nio/ByteBuffer;Z)V

    .line 393
    if-eqz v7, :cond_a

    .line 402
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/log/FileReader;->processEntry(Ljava/nio/ByteBuffer;)Z

    move-result v10

    if-eqz v10, :cond_b

    .line 403
    const/4 v0, 0x1

    .line 404
    iget v10, p0, Lcom/sleepycat/je/log/FileReader;->nRead:I

    add-int/2addr v10, v5

    iput v10, p0, Lcom/sleepycat/je/log/FileReader;->nRead:I

    goto :goto_2

    .line 406
    :cond_a
    if-eqz v9, :cond_b

    .line 412
    invoke-virtual {p0, v6}, Lcom/sleepycat/je/log/FileReader;->skipEntry(Ljava/nio/ByteBuffer;)V

    .line 414
    .end local v6    # "dataBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "isTarget":Z
    .end local v8    # "isChecksumTarget":Z
    .end local v9    # "collectData":Z
    :cond_b
    :goto_2
    goto/16 :goto_0

    .line 382
    .restart local v6    # "dataBuffer":Ljava/nio/ByteBuffer;
    :catchall_0
    move-exception v7

    .line 383
    .local v7, "e":Ljava/lang/Throwable;
    iget-boolean v8, p0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    if-eqz v8, :cond_c

    .line 384
    iput-wide v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 385
    iput-wide v3, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    .line 387
    :cond_c
    nop

    .end local v0    # "foundEntry":Z
    .end local v1    # "savedCurrentEntryOffset":J
    .end local v3    # "savedNextEntryOffset":J
    throw v7
    :try_end_2
    .catch Lcom/sleepycat/je/log/FileReader$EOFException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_2 .. :try_end_2} :catch_0

    .line 417
    .end local v6    # "dataBuffer":Ljava/nio/ByteBuffer;
    .end local v7    # "e":Ljava/lang/Throwable;
    .restart local v0    # "foundEntry":Z
    .restart local v1    # "savedCurrentEntryOffset":J
    .restart local v3    # "savedNextEntryOffset":J
    :catch_0
    move-exception v6

    .line 418
    .local v6, "e":Lcom/sleepycat/je/DatabaseException;
    iput-boolean v5, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    .line 420
    invoke-direct {p0, v6}, Lcom/sleepycat/je/log/FileReader;->reportProblem(Ljava/lang/Exception;)V

    .line 421
    throw v6

    .line 415
    .end local v6    # "e":Lcom/sleepycat/je/DatabaseException;
    :catch_1
    move-exception v6

    .line 416
    .local v6, "e":Lcom/sleepycat/je/log/FileReader$EOFException;
    iput-boolean v5, p0, Lcom/sleepycat/je/log/FileReader;->eof:Z

    .line 422
    .end local v6    # "e":Lcom/sleepycat/je/log/FileReader$EOFException;
    :cond_d
    nop

    .line 424
    return v0
.end method

.method public setAlwaysValidateChecksum(Z)V
    .locals 0
    .param p1, "validate"    # Z

    .line 218
    iput-boolean p1, p0, Lcom/sleepycat/je/log/FileReader;->alwaysValidateChecksum:Z

    .line 219
    return-void
.end method

.method protected setBackwardPosition()V
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 535
    move-object/from16 v0, p0

    iget-wide v1, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    const/4 v6, -0x1

    const-string v7, "finish="

    const-wide/16 v8, -0x1

    if-eqz v5, :cond_2

    iget-object v5, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 536
    invoke-virtual {v5, v1, v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->containsOffset(J)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 539
    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    iget-wide v3, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v1

    .line 541
    .local v1, "nextLsn":J
    iget-wide v3, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    cmp-long v5, v3, v8

    if-eqz v5, :cond_1

    .line 542
    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v3

    if-eq v3, v6, :cond_0

    goto :goto_0

    .line 543
    :cond_0
    new-instance v3, Lcom/sleepycat/je/log/FileReader$EOFException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-wide v5, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    .line 544
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "next="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 546
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 551
    :cond_1
    :goto_0
    iget-object v3, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-wide v4, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    invoke-virtual {v3, v4, v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->positionBuffer(J)V

    .line 552
    .end local v1    # "nextLsn":J
    goto/16 :goto_5

    .line 578
    :cond_2
    iget-wide v1, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    cmp-long v5, v1, v3

    if-nez v5, :cond_7

    .line 580
    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v2, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 581
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFileHeaderPrevOffset(J)J

    move-result-wide v1

    iput-wide v1, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 583
    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v2, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 584
    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v1

    .line 586
    .local v1, "prevFileNum":Ljava/lang/Long;
    if-eqz v1, :cond_6

    .line 599
    iget-wide v2, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    cmp-long v2, v2, v8

    if-eqz v2, :cond_4

    .line 600
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-wide v4, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-ltz v2, :cond_3

    goto :goto_1

    .line 601
    :cond_3
    new-instance v2, Lcom/sleepycat/je/log/FileReader$EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-wide v4, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    .line 602
    invoke-static {v4, v5}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " nextFile=0x"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 603
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 606
    :cond_4
    :goto_1
    iget-object v2, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x1

    cmp-long v2, v2, v4

    if-eqz v2, :cond_5

    .line 607
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/sleepycat/je/log/FileReader;->handleGapInBackwardsScan(J)V

    .line 610
    :cond_5
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    .line 611
    .local v2, "nextFile":J
    iget-wide v4, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 612
    .local v4, "nextWindowStart":J
    iget-wide v10, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 613
    .end local v1    # "prevFileNum":Ljava/lang/Long;
    .local v10, "nextTarget":J
    goto :goto_3

    .line 587
    .end local v2    # "nextFile":J
    .end local v4    # "nextWindowStart":J
    .end local v10    # "nextTarget":J
    .restart local v1    # "prevFileNum":Ljava/lang/Long;
    :cond_6
    new-instance v2, Lcom/sleepycat/je/log/FileReader$EOFException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No file following "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 588
    invoke-virtual {v4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 613
    .end local v1    # "prevFileNum":Ljava/lang/Long;
    :cond_7
    iget-wide v10, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    sub-long/2addr v10, v1

    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 614
    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->capacity()I

    move-result v1

    int-to-long v1, v1

    cmp-long v1, v10, v1

    if-lez v1, :cond_8

    .line 620
    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v2

    .line 621
    .restart local v2    # "nextFile":J
    iget-wide v4, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .line 622
    .restart local v4    # "nextWindowStart":J
    iget-wide v10, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    .restart local v10    # "nextTarget":J
    goto :goto_3

    .line 629
    .end local v2    # "nextFile":J
    .end local v4    # "nextWindowStart":J
    .end local v10    # "nextTarget":J
    :cond_8
    iget-object v1, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v1

    .line 630
    .local v1, "nextFile":J
    iget-wide v10, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    iget-object v5, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 631
    invoke-virtual {v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->capacity()I

    move-result v5

    int-to-long v12, v5

    sub-long/2addr v10, v12

    .line 632
    .local v10, "newPosition":J
    cmp-long v5, v10, v3

    if-gez v5, :cond_9

    goto :goto_2

    :cond_9
    move-wide v3, v10

    :goto_2
    move-wide v4, v3

    .line 633
    .restart local v4    # "nextWindowStart":J
    iget-wide v12, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    move-wide v2, v1

    move-wide v10, v12

    .line 637
    .end local v1    # "nextFile":J
    .restart local v2    # "nextFile":J
    .local v10, "nextTarget":J
    :goto_3
    iget-wide v12, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    invoke-static {v2, v3, v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v12

    .line 639
    .local v12, "nextLsn":J
    iget-wide v14, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    cmp-long v1, v14, v8

    if-eqz v1, :cond_b

    .line 640
    invoke-static {v12, v13, v14, v15}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v1

    if-eq v1, v6, :cond_a

    goto :goto_4

    .line 641
    :cond_a
    new-instance v1, Lcom/sleepycat/je/log/FileReader$EOFException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-wide v7, v0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    .line 642
    invoke-static {v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " next="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 644
    invoke-static {v12, v13}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v1, v6}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 648
    :cond_b
    :goto_4
    iget-object v14, v0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    iget-boolean v1, v0, Lcom/sleepycat/je/log/FileReader;->forward:Z

    .line 649
    move-wide v15, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v10

    move/from16 v21, v1

    invoke-virtual/range {v14 .. v21}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->slideAndFill(JJJZ)V

    .line 653
    .end local v2    # "nextFile":J
    .end local v4    # "nextWindowStart":J
    .end local v10    # "nextTarget":J
    .end local v12    # "nextLsn":J
    :goto_5
    iget-wide v1, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryPrevOffset:J

    iput-wide v1, v0, Lcom/sleepycat/je/log/FileReader;->currentEntryOffset:J

    .line 654
    return-void
.end method

.method protected setForwardPosition()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Lcom/sleepycat/je/DatabaseException;,
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 509
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    const-wide/16 v2, -0x1

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 511
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader;->window:Lcom/sleepycat/je/log/FileReader$ReadWindow;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->currentFileNum()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->nextEntryOffset:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    .line 513
    .local v0, "nextLsn":J
    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader;->finishLsn:J

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->compareTo(JJ)I

    move-result v2

    if-gez v2, :cond_0

    goto :goto_0

    .line 514
    :cond_0
    new-instance v2, Lcom/sleepycat/je/log/FileReader$EOFException;

    invoke-direct {v2}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>()V

    throw v2

    .line 517
    .end local v0    # "nextLsn":J
    :cond_1
    :goto_0
    return-void
.end method

.method public skipData(I)V
    .locals 1
    .param p1, "amountToSkip"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 844
    const/4 v0, 0x0

    :try_start_0
    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/log/FileReader;->readData(IZ)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Lcom/sleepycat/je/DatabaseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 848
    nop

    .line 849
    return-void

    .line 845
    :catch_0
    move-exception v0

    .line 846
    .local v0, "e":Lcom/sleepycat/je/DatabaseException;
    invoke-direct {p0, v0}, Lcom/sleepycat/je/log/FileReader;->reportProblem(Ljava/lang/Exception;)V

    .line 847
    throw v0
.end method

.method protected skipEntry(Ljava/nio/ByteBuffer;)V
    .locals 2
    .param p1, "entryBuffer"    # Ljava/nio/ByteBuffer;

    .line 432
    nop

    .line 433
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader;->currentEntryHeader:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 434
    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    add-int/2addr v0, v1

    .line 432
    invoke-virtual {p1, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 435
    return-void
.end method
