.class public Lcom/sleepycat/je/log/FileReader$ReadWindow;
.super Ljava/lang/Object;
.source "FileReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/log/FileReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "ReadWindow"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field protected endOffset:J

.field protected final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field protected final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private fileNum:J

.field private logVersion:I

.field private final maxReadBufferSize:I

.field private nReadOperations:I

.field private nRepeatIteratorReads:J

.field protected readBuffer:Ljava/nio/ByteBuffer;

.field protected startOffset:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 975
    const-class v0, Lcom/sleepycat/je/log/FileReader;

    return-void
.end method

.method protected constructor <init>(ILcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 2
    .param p1, "readBufferSize"    # I
    .param p2, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1008
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1009
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getConfigManager()Lcom/sleepycat/je/dbi/DbConfigManager;

    move-result-object v0

    .line 1010
    .local v0, "configManager":Lcom/sleepycat/je/dbi/DbConfigManager;
    sget-object v1, Lcom/sleepycat/je/config/EnvironmentParams;->LOG_ITERATOR_MAX_SIZE:Lcom/sleepycat/je/config/IntConfigParam;

    .line 1011
    invoke-virtual {v0, v1}, Lcom/sleepycat/je/dbi/DbConfigManager;->getInt(Lcom/sleepycat/je/config/IntConfigParam;)I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->maxReadBufferSize:I

    .line 1012
    iput-object p2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 1013
    invoke-virtual {p2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 1015
    invoke-static {p1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    .line 1016
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1017
    return-void
.end method

.method static synthetic access$000(Lcom/sleepycat/je/log/FileReader$ReadWindow;)I
    .locals 1
    .param p0, "x0"    # Lcom/sleepycat/je/log/FileReader$ReadWindow;

    .line 975
    iget v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->logVersion:I

    return v0
.end method


# virtual methods
.method protected adjustReadBufferSize(I)V
    .locals 5
    .param p1, "amountToRead"    # I

    .line 1232
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    .line 1238
    .local v0, "readBufferSize":I
    if-le p1, v0, :cond_2

    .line 1241
    iget v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->maxReadBufferSize:I

    if-ge v0, v1, :cond_1

    .line 1247
    if-ge p1, v1, :cond_0

    .line 1248
    move v0, p1

    .line 1250
    rem-int/lit16 v2, v0, 0x400

    .line 1251
    .local v2, "remainder":I
    rsub-int v3, v2, 0x400

    add-int/2addr v0, v3

    .line 1252
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 1254
    .end local v2    # "remainder":I
    goto :goto_0

    .line 1255
    :cond_0
    iget v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->maxReadBufferSize:I

    .line 1257
    :goto_0
    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v1

    iput-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    .line 1260
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-le p1, v1, :cond_2

    .line 1261
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nRepeatIteratorReads:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nRepeatIteratorReads:J

    .line 1262
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getLogManager()Lcom/sleepycat/je/log/LogManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogManager;->incRepeatIteratorReads()V

    .line 1265
    :cond_2
    return-void
.end method

.method capacity()I
    .locals 1

    .line 1268
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v0

    return v0
.end method

.method public containsLsn(JJ)Z
    .locals 2
    .param p1, "targetFileNumber"    # J
    .param p3, "targetOffset"    # J

    .line 1055
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    cmp-long v0, v0, p1

    if-nez v0, :cond_0

    .line 1056
    invoke-virtual {p0, p3, p4}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->containsOffset(J)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1055
    :goto_0
    return v0
.end method

.method containsOffset(J)Z
    .locals 2
    .param p1, "targetOffset"    # J

    .line 1049
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    cmp-long v0, p1, v0

    if-ltz v0, :cond_0

    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public currentFileNum()J
    .locals 2

    .line 1044
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    return-wide v0
.end method

.method protected fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z
    .locals 10
    .param p1, "fileHandle"    # Lcom/sleepycat/je/log/FileHandle;
    .param p2, "targetOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1195
    const/4 v0, 0x0

    .line 1196
    .local v0, "foundData":Z
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 1197
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    iget-wide v5, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    .line 1200
    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getFileNum()J

    move-result-wide v7

    .line 1197
    const/4 v9, 0x0

    invoke-virtual/range {v2 .. v9}, Lcom/sleepycat/je/log/FileManager;->readFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJZ)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1202
    const/4 v0, 0x1

    .line 1203
    iget v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nReadOperations:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nReadOperations:I

    .line 1210
    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v1

    iput v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->logVersion:I

    .line 1219
    :cond_0
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    iget-object v3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    .line 1220
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1221
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    sub-long v2, p2, v2

    long-to-int v2, v2

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1222
    return v0
.end method

.method protected fillNext(ZI)Z
    .locals 7
    .param p1, "singleFile"    # Z
    .param p2, "bytesNeeded"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/log/FileReader$EOFException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1123
    invoke-virtual {p0, p2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->adjustReadBufferSize(I)V

    .line 1125
    const/4 v0, 0x0

    .line 1128
    .local v0, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    invoke-virtual {v1, v2, v3}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v1

    move-object v0, v1

    .line 1134
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    iput-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    .line 1135
    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_1

    .line 1140
    const/4 v1, 0x0

    .line 1172
    if-eqz v0, :cond_0

    .line 1173
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1140
    :cond_0
    return v1

    .line 1144
    :cond_1
    if-nez p1, :cond_4

    .line 1148
    :try_start_1
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    .line 1149
    const/4 v4, 0x1

    invoke-virtual {v1, v2, v3, v4}, Lcom/sleepycat/je/log/FileManager;->getFollowingFileNum(JZ)Ljava/lang/Long;

    move-result-object v1

    .line 1152
    .local v1, "nextFile":Ljava/lang/Long;
    if-eqz v1, :cond_3

    .line 1156
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1157
    const/4 v0, 0x0

    .line 1166
    iget-object v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    invoke-virtual {v2, v5, v6}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v2

    move-object v0, v2

    .line 1167
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v5

    invoke-virtual {p0, v2, v3, v5}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->setFileNum(JI)V

    .line 1168
    const-wide/16 v2, 0x0

    iput-wide v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    .line 1169
    invoke-virtual {p0, v0, v2, v3}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1170
    nop

    .line 1172
    if-eqz v0, :cond_2

    .line 1173
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1170
    :cond_2
    return v4

    .line 1153
    :cond_3
    :try_start_2
    new-instance v2, Lcom/sleepycat/je/log/FileReader$EOFException;

    invoke-direct {v2}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>()V

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "singleFile":Z
    .end local p2    # "bytesNeeded":I
    throw v2

    .line 1145
    .end local v1    # "nextFile":Ljava/lang/Long;
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "singleFile":Z
    .restart local p2    # "bytesNeeded":I
    :cond_4
    new-instance v1, Lcom/sleepycat/je/log/FileReader$EOFException;

    const-string v2, "Single file only"

    invoke-direct {v1, v2}, Lcom/sleepycat/je/log/FileReader$EOFException;-><init>(Ljava/lang/String;)V

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "singleFile":Z
    .end local p2    # "bytesNeeded":I
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1172
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "singleFile":Z
    .restart local p2    # "bytesNeeded":I
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_5

    .line 1173
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    :cond_5
    throw v1
.end method

.method getAndResetNReads()I
    .locals 2

    .line 1288
    iget v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nReadOperations:I

    .line 1289
    .local v0, "tmp":I
    const/4 v1, 0x0

    iput v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nReadOperations:I

    .line 1290
    return v0
.end method

.method getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 1280
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method getCurrentLsn()J
    .locals 6

    .line 1312
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    iget-wide v2, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    iget-object v4, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->position()I

    move-result v4

    int-to-long v4, v4

    add-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    return-wide v0
.end method

.method public getEndOffset()J
    .locals 2

    .line 1031
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    return-wide v0
.end method

.method getNRepeatIteratorReads()J
    .locals 2

    .line 1294
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->nRepeatIteratorReads:J

    return-wide v0
.end method

.method hasRemaining()Z
    .locals 1

    .line 1276
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method incrementBufferPosition(I)V
    .locals 3
    .param p1, "increment"    # I

    .line 1070
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 1071
    .local v0, "currentPosition":I
    iget-object v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    add-int v2, v0, p1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1072
    return-void
.end method

.method public initAtFileStart(J)V
    .locals 3
    .param p1, "startLsn"    # J

    .line 1024
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileNumber(J)J

    move-result-wide v0

    const/4 v2, -0x1

    invoke-virtual {p0, v0, v1, v2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->setFileNum(JI)V

    .line 1026
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getFileOffset(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    .line 1027
    iput-wide v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    .line 1028
    return-void
.end method

.method public positionBuffer(J)V
    .locals 3
    .param p1, "targetOffset"    # J

    .line 1062
    invoke-virtual {p0, p1, p2}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->containsOffset(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1065
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    sub-long v1, p1, v1

    long-to-int v1, v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 1066
    return-void

    .line 1062
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " doesn\'t contain "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 1063
    invoke-static {p1, p2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method remaining()I
    .locals 1

    .line 1272
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->readBuffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method protected setFileNum(JI)V
    .locals 0
    .param p1, "fileNum"    # J
    .param p3, "logVersion"    # I

    .line 1039
    iput-wide p1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    .line 1040
    iput p3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->logVersion:I

    .line 1041
    return-void
.end method

.method public slideAndFill(JJJZ)V
    .locals 5
    .param p1, "windowfileNum"    # J
    .param p3, "windowStartOffset"    # J
    .param p5, "targetOffset"    # J
    .param p7, "forward"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;,
            Ljava/io/FileNotFoundException;,
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 1087
    iget-object v0, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileManager:Lcom/sleepycat/je/log/FileManager;

    invoke-virtual {v0, p1, p2}, Lcom/sleepycat/je/log/FileManager;->getFileHandle(J)Lcom/sleepycat/je/log/FileHandle;

    move-result-object v0

    .line 1089
    .local v0, "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    :try_start_0
    iput-wide p3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    .line 1090
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v1

    invoke-virtual {p0, p1, p2, v1}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->setFileNum(JI)V

    .line 1091
    invoke-virtual {p0, v0, p5, p6}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fillFromFile(Lcom/sleepycat/je/log/FileHandle;J)Z

    move-result v1

    .line 1097
    .local v1, "foundData":Z
    if-nez v1, :cond_1

    if-eqz p7, :cond_0

    goto :goto_0

    .line 1098
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Detected a log file gap when reading backwards. Target position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1101
    invoke-static {p1, p2, p5, p6}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " starting position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 1103
    invoke-static {p1, p2, p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " end position = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    .line 1105
    invoke-static {p1, p2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 1099
    invoke-static {v2}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState(Ljava/lang/String;)Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v2

    .end local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .end local p1    # "windowfileNum":J
    .end local p3    # "windowStartOffset":J
    .end local p5    # "targetOffset":J
    .end local p7    # "forward":Z
    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1108
    .end local v1    # "foundData":Z
    .restart local v0    # "fileHandle":Lcom/sleepycat/je/log/FileHandle;
    .restart local p1    # "windowfileNum":J
    .restart local p3    # "windowStartOffset":J
    .restart local p5    # "targetOffset":J
    .restart local p7    # "forward":Z
    :cond_1
    :goto_0
    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 1109
    nop

    .line 1110
    return-void

    .line 1108
    :catchall_0
    move-exception v1

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    throw v1
.end method

.method public toString()Ljava/lang/String;
    .locals 8

    .line 1299
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 1300
    .local v0, "sb":Ljava/lang/StringBuilder;
    iget-wide v1, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->startOffset:J

    invoke-static {v1, v2, v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v1

    .line 1301
    .local v1, "start":J
    iget-wide v3, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->fileNum:J

    iget-wide v5, p0, Lcom/sleepycat/je/log/FileReader$ReadWindow;->endOffset:J

    invoke-static {v3, v4, v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v3

    .line 1302
    .local v3, "end":J
    const-string/jumbo v5, "window covers "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    invoke-static {v1, v2}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1304
    invoke-static {v3, v4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1305
    const-string v5, " positioned at "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1306
    invoke-virtual {p0}, Lcom/sleepycat/je/log/FileReader$ReadWindow;->getCurrentLsn()J

    move-result-wide v5

    .line 1307
    .local v5, "target":J
    invoke-static {v5, v6}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1308
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    return-object v7
.end method
