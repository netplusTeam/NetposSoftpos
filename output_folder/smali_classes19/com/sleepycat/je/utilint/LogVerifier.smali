.class public Lcom/sleepycat/je/utilint/LogVerifier;
.super Ljava/lang/Object;
.source "LogVerifier.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sleepycat/je/utilint/LogVerifier$State;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final FILE_HEADER_TYPE_NUM:B


# instance fields
.field private entryStart:J

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

.field private final fileName:Ljava/lang/String;

.field private final fileNum:J

.field private header:Lcom/sleepycat/je/log/LogEntryHeader;

.field private final headerBuf:Ljava/nio/ByteBuffer;

.field private itemPosition:I

.field private logVersion:I

.field private prevEntryStart:J

.field private state:Lcom/sleepycat/je/utilint/LogVerifier$State;

.field private final validator:Lcom/sleepycat/je/log/ChecksumValidator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 46
    nop

    .line 48
    sget-object v0, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 49
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryType;->getTypeNum()B

    move-result v0

    sput-byte v0, Lcom/sleepycat/je/utilint/LogVerifier;->FILE_HEADER_TYPE_NUM:B

    .line 48
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/lang/String;)V
    .locals 1
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 82
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lcom/sleepycat/je/utilint/LogVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V

    .line 83
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "fileName"    # Ljava/lang/String;

    .line 99
    const-wide/16 v0, -0x1

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/utilint/LogVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)V

    .line 100
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)V
    .locals 4
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "fileName"    # Ljava/lang/String;
    .param p3, "fileNum"    # J

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 119
    iput-object p2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileName:Ljava/lang/String;

    .line 120
    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-ltz v2, :cond_0

    move-wide v2, p3

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {p1}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    invoke-virtual {v2, p2}, Lcom/sleepycat/je/log/FileManager;->getNumFromName(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    :goto_0
    iput-wide v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    .line 122
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 123
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 124
    iput-wide v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->prevEntryStart:J

    .line 125
    new-instance v0, Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-direct {v0, p1}, Lcom/sleepycat/je/log/ChecksumValidator;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    .line 131
    const/16 v0, 0x16

    .line 132
    invoke-static {}, Lcom/sleepycat/je/log/FileHeader;->entrySize()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    .line 135
    const/4 v0, -0x1

    iput v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->logVersion:I

    .line 136
    return-void
.end method

.method private newVerifyException(Ljava/lang/String;)Lcom/sleepycat/je/util/LogVerificationException;
    .locals 1
    .param p1, "reason"    # Ljava/lang/String;

    .line 418
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v0

    return-object v0
.end method

.method private newVerifyException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;
    .locals 5
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 427
    sget-object v0, Lcom/sleepycat/je/utilint/LogVerifier$State;->INVALID:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 431
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v0, :cond_0

    .line 432
    nop

    .line 433
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v0

    iget-object v1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v1}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v1

    add-int/2addr v0, v1

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    .local v0, "logEntrySize":Ljava/lang/String;
    goto :goto_0

    .line 435
    .end local v0    # "logEntrySize":Ljava/lang/String;
    :cond_0
    const-string v0, "unknown"

    .line 438
    .restart local v0    # "logEntrySize":Ljava/lang/String;
    :goto_0
    new-instance v1, Lcom/sleepycat/je/util/LogVerificationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Log is invalid, fileName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " fileNumber: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    .line 440
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " logEntryOffset: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 441
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " logEntrySize: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " verifyState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " reason: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p2}, Lcom/sleepycat/je/util/LogVerificationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 438
    return-object v1
.end method

.method private newVerifyException(Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;

    .line 422
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p1}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v0

    return-object v0
.end method

.method private processFileHeaderItem([BII)I
    .locals 12
    .param p1, "buf"    # [B
    .param p2, "curOffset"    # I
    .param p3, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;
        }
    .end annotation

    .line 330
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v0, :cond_4

    .line 331
    iget v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->logVersion:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_3

    .line 333
    invoke-static {}, Lcom/sleepycat/je/log/FileHeader;->entrySize()I

    move-result v0

    .line 334
    .local v0, "maxSize":I
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    .line 335
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 337
    .local v1, "processSize":I
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 338
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-gt v2, v0, :cond_2

    .line 340
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v0, :cond_1

    .line 341
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 342
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/sleepycat/je/log/ChecksumValidator;->update([BII)V

    .line 344
    :try_start_0
    iget-object v5, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 345
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getChecksum()J

    move-result-wide v6

    iget-wide v8, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    iget-wide v10, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 344
    invoke-virtual/range {v5 .. v11}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJJ)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 348
    goto :goto_0

    .line 346
    :catch_0
    move-exception v2

    .line 347
    .local v2, "e":Lcom/sleepycat/je/log/ChecksumException;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v3

    throw v3

    .line 351
    .end local v2    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :cond_0
    :goto_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 352
    sget-object v2, Lcom/sleepycat/je/log/LogEntryType;->LOG_FILE_HEADER:Lcom/sleepycat/je/log/LogEntryType;

    .line 353
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryType;->getNewLogEntry()Lcom/sleepycat/je/log/entry/LogEntry;

    move-result-object v2

    .line 354
    .local v2, "fileHeaderEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v5, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-interface {v2, v3, v4, v5}, Lcom/sleepycat/je/log/entry/LogEntry;->readEntry(Lcom/sleepycat/je/dbi/EnvironmentImpl;Lcom/sleepycat/je/log/LogEntryHeader;Ljava/nio/ByteBuffer;)V

    .line 355
    nop

    .line 356
    invoke-interface {v2}, Lcom/sleepycat/je/log/entry/LogEntry;->getMainItem()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sleepycat/je/log/FileHeader;

    .line 359
    .local v3, "fileHeaderItem":Lcom/sleepycat/je/log/FileHeader;
    invoke-virtual {v3}, Lcom/sleepycat/je/log/FileHeader;->getLogVersion()I

    move-result v4

    iput v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->logVersion:I

    .line 361
    iget-wide v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    iput-wide v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->prevEntryStart:J

    .line 362
    iget-object v6, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v6}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v6

    add-int/2addr v6, v0

    int-to-long v6, v6

    add-long/2addr v4, v6

    iput-wide v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 363
    sget-object v4, Lcom/sleepycat/je/utilint/LogVerifier$State;->INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 366
    .end local v2    # "fileHeaderEntry":Lcom/sleepycat/je/log/entry/LogEntry;
    .end local v3    # "fileHeaderItem":Lcom/sleepycat/je/log/FileHeader;
    :cond_1
    add-int v2, p2, v1

    return v2

    .line 338
    :cond_2
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 331
    .end local v0    # "maxSize":I
    .end local v1    # "processSize":I
    :cond_3
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 330
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processFixedHeader([BII)I
    .locals 9
    .param p1, "buf"    # [B
    .param p2, "curOffset"    # I
    .param p3, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-nez v0, :cond_7

    .line 237
    const/16 v0, 0xe

    .line 238
    .local v0, "maxSize":I
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    .line 239
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    const/16 v2, 0xe

    rsub-int/lit8 v1, v1, 0xe

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 241
    .local v1, "processSize":I
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 242
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-gt v3, v2, :cond_6

    .line 244
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    if-ne v3, v2, :cond_5

    .line 245
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 247
    :try_start_0
    new-instance v2, Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    iget v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->logVersion:I

    iget-wide v5, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    iget-wide v7, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 248
    invoke-static {v5, v6, v7, v8}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v5

    invoke-direct {v2, v3, v4, v5, v6}, Lcom/sleepycat/je/log/LogEntryHeader;-><init>(Ljava/nio/ByteBuffer;IJ)V

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    nop

    .line 256
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getPrevOffset()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->prevEntryStart:J

    cmp-long v2, v2, v4

    if-nez v2, :cond_4

    .line 265
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->isInvisible()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 266
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lcom/sleepycat/je/log/LogEntryHeader;->turnOffInvisible(Ljava/nio/ByteBuffer;I)V

    .line 270
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 271
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x4

    const/16 v5, 0xa

    invoke-virtual {v2, v3, v4, v5}, Lcom/sleepycat/je/log/ChecksumValidator;->update([BII)V

    .line 276
    :cond_1
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->isVariableLength()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 277
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 278
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->VARIABLE_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    goto :goto_0

    .line 279
    :cond_2
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    sget-byte v3, Lcom/sleepycat/je/utilint/LogVerifier;->FILE_HEADER_TYPE_NUM:B

    if-ne v2, v3, :cond_3

    .line 280
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 281
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->FILE_HEADER_ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    goto :goto_0

    .line 283
    :cond_3
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    goto :goto_0

    .line 257
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Header prevOffset=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 259
    invoke-virtual {v3}, Lcom/sleepycat/je/log/LogEntryHeader;->getPrevOffset()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " but prevEntryStart=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-wide v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->prevEntryStart:J

    .line 261
    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 257
    invoke-direct {p0, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v2

    throw v2

    .line 249
    :catch_0
    move-exception v2

    .line 250
    .local v2, "e":Lcom/sleepycat/je/log/ChecksumException;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid header bytes="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    .line 252
    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v4

    invoke-static {v4}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 250
    invoke-direct {p0, v3, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v3

    throw v3

    .line 287
    .end local v2    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :cond_5
    :goto_0
    add-int v2, p2, v1

    return v2

    .line 242
    :cond_6
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 235
    .end local v0    # "maxSize":I
    .end local v1    # "processSize":I
    :cond_7
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processInit()V
    .locals 1

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/ChecksumValidator;->reset()V

    .line 219
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 220
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 221
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->itemPosition:I

    .line 222
    sget-object v0, Lcom/sleepycat/je/utilint/LogVerifier$State;->FIXED_HEADER:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 223
    return-void
.end method

.method private processItem([BII)I
    .locals 10
    .param p1, "buf"    # [B
    .param p2, "curOffset"    # I
    .param p3, "remaining"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;
        }
    .end annotation

    .line 378
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v0, :cond_4

    .line 380
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getItemSize()I

    move-result v0

    .line 381
    .local v0, "maxSize":I
    iget v1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->itemPosition:I

    sub-int v1, v0, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 383
    .local v1, "processSize":I
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 384
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    invoke-virtual {v2, p1, p2, v1}, Lcom/sleepycat/je/log/ChecksumValidator;->update([BII)V

    .line 386
    :cond_0
    iget v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->itemPosition:I

    add-int/2addr v2, v1

    iput v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->itemPosition:I

    .line 387
    if-gt v2, v0, :cond_3

    .line 389
    if-ne v2, v0, :cond_2

    .line 390
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 392
    :try_start_0
    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    .line 393
    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getChecksum()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    iget-wide v8, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 392
    invoke-virtual/range {v3 .. v9}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJJ)V
    :try_end_0
    .catch Lcom/sleepycat/je/log/ChecksumException; {:try_start_0 .. :try_end_0} :catch_0

    .line 406
    goto :goto_0

    .line 394
    :catch_0
    move-exception v2

    .line 405
    .local v2, "e":Lcom/sleepycat/je/log/ChecksumException;
    invoke-direct {p0, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/Throwable;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v3

    throw v3

    .line 409
    .end local v2    # "e":Lcom/sleepycat/je/log/ChecksumException;
    :cond_1
    :goto_0
    iget-wide v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    iput-wide v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->prevEntryStart:J

    .line 410
    iget-object v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v4}, Lcom/sleepycat/je/log/LogEntryHeader;->getSize()I

    move-result v4

    add-int/2addr v4, v0

    int-to-long v4, v4

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->entryStart:J

    .line 411
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 414
    :cond_2
    add-int v2, p2, v1

    return v2

    .line 387
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 378
    .end local v0    # "maxSize":I
    .end local v1    # "processSize":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private processVariableHeader([BII)I
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "curOffset"    # I
    .param p3, "remaining"    # I

    .line 297
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    if-eqz v0, :cond_5

    .line 298
    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->isVariableLength()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 300
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/LogEntryHeader;->getVariablePortionSize()I

    move-result v0

    .line 301
    .local v0, "maxSize":I
    iget-object v1, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    .line 302
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    sub-int v1, v0, v1

    invoke-static {p3, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 304
    .local v1, "processSize":I
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, p1, p2, v1}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 305
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-gt v2, v0, :cond_3

    .line 307
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->position()I

    move-result v2

    if-ne v2, v0, :cond_2

    .line 308
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 309
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2, v3}, Lcom/sleepycat/je/log/LogEntryHeader;->readVariablePortion(Ljava/nio/ByteBuffer;)V

    .line 310
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->hasChecksum()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 311
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->validator:Lcom/sleepycat/je/log/ChecksumValidator;

    iget-object v3, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4, v0}, Lcom/sleepycat/je/log/ChecksumValidator;->update([BII)V

    .line 314
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->header:Lcom/sleepycat/je/log/LogEntryHeader;

    invoke-virtual {v2}, Lcom/sleepycat/je/log/LogEntryHeader;->getType()B

    move-result v2

    sget-byte v3, Lcom/sleepycat/je/utilint/LogVerifier;->FILE_HEADER_TYPE_NUM:B

    if-ne v2, v3, :cond_1

    .line 315
    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->headerBuf:Ljava/nio/ByteBuffer;

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 316
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->FILE_HEADER_ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    goto :goto_0

    .line 318
    :cond_1
    sget-object v2, Lcom/sleepycat/je/utilint/LogVerifier$State;->ITEM:Lcom/sleepycat/je/utilint/LogVerifier$State;

    iput-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    .line 322
    :cond_2
    :goto_0
    add-int v2, p2, v1

    return v2

    .line 305
    :cond_3
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2

    .line 298
    .end local v0    # "maxSize":I
    .end local v1    # "processSize":I
    :cond_4
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 297
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public verify([BII)V
    .locals 5
    .param p1, "buf"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;
        }
    .end annotation

    .line 156
    add-int v0, p2, p3

    .line 157
    .local v0, "endOffset":I
    move v1, p2

    .line 158
    .local v1, "curOffset":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 159
    sub-int v2, v0, v1

    .line 160
    .local v2, "remaining":I
    sget-object v3, Lcom/sleepycat/je/utilint/LogVerifier$1;->$SwitchMap$com$sleepycat$je$utilint$LogVerifier$State:[I

    iget-object v4, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/LogVerifier$State;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 180
    goto :goto_2

    .line 177
    :pswitch_0
    nop

    .line 178
    const-string v3, "May not read after LogVerificationException is thrown"

    invoke-direct {p0, v3}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v3

    throw v3

    .line 174
    :pswitch_1
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->processItem([BII)I

    move-result v1

    .line 175
    goto :goto_1

    .line 171
    :pswitch_2
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->processFileHeaderItem([BII)I

    move-result v1

    .line 172
    goto :goto_1

    .line 168
    :pswitch_3
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->processVariableHeader([BII)I

    move-result v1

    .line 169
    goto :goto_1

    .line 165
    :pswitch_4
    invoke-direct {p0, p1, v1, v2}, Lcom/sleepycat/je/utilint/LogVerifier;->processFixedHeader([BII)I

    move-result v1

    .line 166
    goto :goto_1

    .line 162
    :pswitch_5
    invoke-direct {p0}, Lcom/sleepycat/je/utilint/LogVerifier;->processInit()V

    .line 163
    nop

    .line 182
    .end local v2    # "remaining":I
    :goto_1
    goto :goto_0

    .line 180
    .restart local v2    # "remaining":I
    :goto_2
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 183
    .end local v2    # "remaining":I
    :cond_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public verifyAtEof()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/util/LogVerificationException;
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->state:Lcom/sleepycat/je/utilint/LogVerifier$State;

    sget-object v1, Lcom/sleepycat/je/utilint/LogVerifier$State;->INIT:Lcom/sleepycat/je/utilint/LogVerifier$State;

    if-ne v0, v1, :cond_0

    .line 201
    return-void

    .line 205
    :cond_0
    iget-wide v0, p0, Lcom/sleepycat/je/utilint/LogVerifier;->fileNum:J

    iget-object v2, p0, Lcom/sleepycat/je/utilint/LogVerifier;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v2}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getFileManager()Lcom/sleepycat/je/log/FileManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sleepycat/je/log/FileManager;->getLastFileNum()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    .line 206
    return-void

    .line 210
    :cond_1
    const-string v0, "Entry is incomplete"

    invoke-direct {p0, v0}, Lcom/sleepycat/je/utilint/LogVerifier;->newVerifyException(Ljava/lang/String;)Lcom/sleepycat/je/util/LogVerificationException;

    move-result-object v0

    throw v0
.end method
