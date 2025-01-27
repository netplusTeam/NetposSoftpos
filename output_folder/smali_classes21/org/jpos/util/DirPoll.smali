.class public Lorg/jpos/util/DirPoll;
.super Lorg/jpos/util/SimpleLogSource;
.source "DirPoll.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Ljava/io/FilenameFilter;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/Destroyable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/util/DirPoll$DirPollException;,
        Lorg/jpos/util/DirPoll$ProcessorRunner;,
        Lorg/jpos/util/DirPoll$FileProcessor;,
        Lorg/jpos/util/DirPoll$Processor;
    }
.end annotation


# instance fields
.field private acceptZeroLength:Z

.field private archiveDateFormat:Ljava/lang/String;

.field private archiveDir:Ljava/io/File;

.field private badDir:Ljava/io/File;

.field private basePath:Ljava/lang/String;

.field private currentPriority:I

.field private paused:Z

.field private pollInterval:J

.field private pool:Lorg/jpos/util/ThreadPool;

.field private poolBatchFiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private prio:Ljava/util/Vector;

.field private processor:Ljava/lang/Object;

.field private regexPriorityMatching:Z

.field private requestDir:Ljava/io/File;

.field private responseDir:Ljava/io/File;

.field private responseSuffix:Ljava/lang/String;

.field private runDir:Ljava/io/File;

.field private shouldArchive:Z

.field private shouldCompressArchive:Z

.field private shouldTimestampArchive:Z

.field private shutdown:Z

.field private final shutdownMonitor:Ljava/lang/Object;

.field private tmpDir:Ljava/io/File;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 78
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogSource;-><init>()V

    .line 66
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    .line 69
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    .line 74
    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->acceptZeroLength:Z

    .line 75
    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->regexPriorityMatching:Z

    .line 76
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    .line 79
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    .line 80
    const-wide/16 v0, 0x3e8

    invoke-virtual {p0, v0, v1}, Lorg/jpos/util/DirPoll;->setPollInterval(J)V

    .line 81
    const-string v0, "."

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setPath(Ljava/lang/String;)V

    .line 82
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->pool:Lorg/jpos/util/ThreadPool;

    .line 83
    return-void
.end method

.method static synthetic access$000(Lorg/jpos/util/DirPoll;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->runDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$100(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jpos/util/DirPoll;->moveTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1000(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$1100(Lorg/jpos/util/DirPoll;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->shutdown:Z

    return v0
.end method

.method static synthetic access$1200(Lorg/jpos/util/DirPoll;)J
    .locals 2
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-wide v0, p0, Lorg/jpos/util/DirPoll;->pollInterval:J

    return-wide v0
.end method

.method static synthetic access$1300(Lorg/jpos/util/DirPoll;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$1400(Lorg/jpos/util/DirPoll;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->badDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$200(Lorg/jpos/util/DirPoll;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->processor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lorg/jpos/util/DirPoll;Ljava/io/File;)[B
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/jpos/util/DirPoll;->readRequest(Ljava/io/File;)[B

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lorg/jpos/util/DirPoll;Ljava/lang/String;[B)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jpos/util/DirPoll;->writeResponse(Ljava/lang/String;[B)V

    return-void
.end method

.method static synthetic access$500(Lorg/jpos/util/DirPoll;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->shouldArchive:Z

    return v0
.end method

.method static synthetic access$600(Lorg/jpos/util/DirPoll;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->archiveDir:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$700(Lorg/jpos/util/DirPoll;Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;
    .param p1, "x1"    # Ljava/io/File;
    .param p2, "x2"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1, p2}, Lorg/jpos/util/DirPoll;->store(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800(Lorg/jpos/util/DirPoll;)Z
    .locals 1
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;

    .line 50
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->shouldCompressArchive:Z

    return v0
.end method

.method static synthetic access$900(Lorg/jpos/util/DirPoll;Ljava/io/File;)V
    .locals 0
    .param p0, "x0"    # Lorg/jpos/util/DirPoll;
    .param p1, "x1"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    invoke-direct {p0, p1}, Lorg/jpos/util/DirPoll;->compress(Ljava/io/File;)V

    return-void
.end method

.method private compress(Ljava/io/File;)V
    .locals 3
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 363
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".zip"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p1, v0}, Lorg/jpos/util/ZipUtil;->zipFile(Ljava/io/File;Ljava/io/File;)V

    .line 364
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 365
    return-void
.end method

.method private declared-synchronized getPool()Lorg/jpos/util/ThreadPool;
    .locals 3

    monitor-enter p0

    .line 395
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->pool:Lorg/jpos/util/ThreadPool;

    if-nez v0, :cond_0

    .line 396
    new-instance v0, Lorg/jpos/util/ThreadPool;

    const/4 v1, 0x1

    const/16 v2, 0xa

    invoke-direct {v0, v1, v2}, Lorg/jpos/util/ThreadPool;-><init>(II)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->pool:Lorg/jpos/util/ThreadPool;

    .line 397
    .end local p0    # "this":Lorg/jpos/util/DirPoll;
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->pool:Lorg/jpos/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 394
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private moveTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 4
    .param p1, "f"    # Ljava/io/File;
    .param p2, "dir"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 346
    new-instance v0, Ljava/io/File;

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p2, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 347
    .local v0, "destination":Ljava/io/File;
    invoke-virtual {p1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    return-object v0

    .line 348
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unable to move "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private readRequest(Ljava/io/File;)[B
    .locals 2
    .param p1, "f"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 323
    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    new-array v0, v0, [B

    .line 324
    .local v0, "b":[B
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    .line 325
    .local v1, "in":Ljava/io/FileInputStream;
    invoke-virtual {v1, v0}, Ljava/io/FileInputStream;->read([B)I

    .line 326
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V

    .line 327
    return-object v0
.end method

.method private store(Ljava/io/File;Ljava/io/File;)Ljava/io/File;
    .locals 5
    .param p1, "f"    # Ljava/io/File;
    .param p2, "destinationDirectory"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 353
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 354
    .local v0, "storedFilename":Ljava/lang/String;
    iget-boolean v1, p0, Lorg/jpos/util/DirPoll;->shouldTimestampArchive:Z

    if-eqz v1, :cond_0

    .line 355
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v2, Ljava/text/SimpleDateFormat;

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->archiveDateFormat:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/util/Date;

    invoke-direct {v3}, Ljava/util/Date;-><init>()V

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 356
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p2, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 357
    .local v1, "destination":Ljava/io/File;
    invoke-virtual {p1, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 359
    return-object v1

    .line 358
    :cond_1
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unable to archive \'"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\' in directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private writeResponse(Ljava/lang/String;[B)V
    .locals 3
    .param p1, "requestName"    # Ljava/lang/String;
    .param p2, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 332
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->responseSuffix:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 333
    const/16 v0, 0x2e

    invoke-virtual {p1, v0}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 334
    .local v0, "pos":I
    if-lez v0, :cond_0

    .line 335
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/DirPoll;->responseSuffix:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 338
    .end local v0    # "pos":I
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->tmpDir:Ljava/io/File;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 339
    .local v0, "tmp":Ljava/io/File;
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 340
    .local v1, "out":Ljava/io/FileOutputStream;
    invoke-virtual {v1, p2}, Ljava/io/FileOutputStream;->write([B)V

    .line 341
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    .line 342
    iget-object v2, p0, Lorg/jpos/util/DirPoll;->responseDir:Ljava/io/File;

    invoke-direct {p0, v0, v2}, Lorg/jpos/util/DirPoll;->moveTo(Ljava/io/File;Ljava/io/File;)Ljava/io/File;

    .line 343
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 7
    .param p1, "dir"    # Ljava/io/File;
    .param p2, "name"    # Ljava/lang/String;

    .line 235
    iget v0, p0, Lorg/jpos/util/DirPoll;->currentPriority:I

    if-ltz v0, :cond_0

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    .line 236
    invoke-virtual {v1, v0}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 237
    .local v0, "ext":Ljava/lang/String;
    :goto_0
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 238
    invoke-virtual {p0}, Lorg/jpos/util/DirPoll;->isRegexPriorityMatching()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 239
    invoke-virtual {p2, v0}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 240
    return v1

    .line 242
    :cond_1
    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 243
    return v1

    .line 246
    :cond_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 247
    .local v2, "f":Ljava/io/File;
    iget-boolean v3, p0, Lorg/jpos/util/DirPoll;->acceptZeroLength:Z

    if-eqz v3, :cond_3

    .line 248
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v1

    .local v1, "result":Z
    goto :goto_1

    .line 250
    .end local v1    # "result":Z
    :cond_3
    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v3

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_4

    const/4 v1, 0x1

    .line 252
    .restart local v1    # "result":Z
    :cond_4
    :goto_1
    return v1
.end method

.method public addPriority(Ljava/lang/String;)V
    .locals 1
    .param p1, "fileExtension"    # Ljava/lang/String;

    .line 318
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 319
    return-void
.end method

.method public createDirs()V
    .locals 1

    .line 310
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 311
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->responseDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 312
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->tmpDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 313
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->badDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 314
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->runDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 315
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->archiveDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    .line 316
    return-void
.end method

.method public destroy()V
    .locals 2

    .line 301
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    monitor-enter v0

    .line 302
    const/4 v1, 0x1

    :try_start_0
    iput-boolean v1, p0, Lorg/jpos/util/DirPoll;->shutdown:Z

    .line 303
    iget-object v1, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->notifyAll()V

    .line 304
    monitor-exit v0

    .line 305
    return-void

    .line 304
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected getArchiveDir()Ljava/io/File;
    .locals 1

    .line 163
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->archiveDir:Ljava/io/File;

    return-object v0
.end method

.method protected getBadDir()Ljava/io/File;
    .locals 1

    .line 155
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->badDir:Ljava/io/File;

    return-object v0
.end method

.method public getPath()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    return-object v0
.end method

.method public getPollInterval()J
    .locals 2

    .line 136
    iget-wide v0, p0, Lorg/jpos/util/DirPoll;->pollInterval:J

    return-wide v0
.end method

.method public getProcessor()Ljava/lang/Object;
    .locals 1

    .line 181
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->processor:Ljava/lang/Object;

    return-object v0
.end method

.method protected getRequestDir()Ljava/io/File;
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    return-object v0
.end method

.method protected getResponseDir()Ljava/io/File;
    .locals 1

    .line 147
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->responseDir:Ljava/io/File;

    return-object v0
.end method

.method protected getRunDir()Ljava/io/File;
    .locals 1

    .line 159
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->runDir:Ljava/io/File;

    return-object v0
.end method

.method protected getTmpDir()Ljava/io/File;
    .locals 1

    .line 151
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->tmpDir:Ljava/io/File;

    return-object v0
.end method

.method public isPaused()Z
    .locals 1

    .line 525
    monitor-enter p0

    .line 526
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    monitor-exit p0

    return v0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isRegexPriorityMatching()Z
    .locals 1

    .line 167
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->regexPriorityMatching:Z

    return v0
.end method

.method public pause()V
    .locals 1

    .line 504
    monitor-enter p0

    .line 505
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    if-nez v0, :cond_0

    .line 506
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    .line 508
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 510
    :cond_0
    monitor-exit p0

    .line 511
    return-void

    .line 510
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 7

    .line 257
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "DirPoll-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 258
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 259
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->addPriority(Ljava/lang/String;)V

    .line 260
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->shutdown:Z

    if-nez v0, :cond_5

    .line 261
    monitor-enter p0

    .line 262
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    if-eqz v0, :cond_1

    .line 264
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->wait()V

    .line 265
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 267
    goto :goto_1

    .line 266
    :catch_0
    move-exception v0

    .line 269
    :cond_1
    :goto_1
    :try_start_2
    monitor-exit p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    .line 273
    :try_start_3
    monitor-enter p0
    :try_end_3
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 274
    :try_start_4
    invoke-virtual {p0}, Lorg/jpos/util/DirPoll;->scan()Ljava/io/File;

    move-result-object v0

    .line 275
    .local v0, "f":Ljava/io/File;
    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 276
    if-eqz v0, :cond_2

    .line 277
    :try_start_5
    invoke-direct {p0}, Lorg/jpos/util/DirPoll;->getPool()Lorg/jpos/util/ThreadPool;

    move-result-object v1

    new-instance v2, Lorg/jpos/util/DirPoll$ProcessorRunner;

    invoke-direct {v2, p0, v0}, Lorg/jpos/util/DirPoll$ProcessorRunner;-><init>(Lorg/jpos/util/DirPoll;Ljava/io/File;)V

    invoke-virtual {v1, v2}, Lorg/jpos/util/ThreadPool;->execute(Ljava/lang/Runnable;)V

    .line 278
    invoke-static {}, Ljava/lang/Thread;->yield()V

    goto :goto_3

    .line 281
    :cond_2
    iget-object v1, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_5
    .catch Ljava/lang/InterruptedException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 282
    :try_start_6
    iget-boolean v2, p0, Lorg/jpos/util/DirPoll;->shutdown:Z

    if-nez v2, :cond_3

    .line 283
    iget-object v2, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    iget-wide v3, p0, Lorg/jpos/util/DirPoll;->pollInterval:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 285
    :cond_3
    monitor-exit v1

    goto :goto_3

    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    :try_start_7
    throw v2
    :try_end_7
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 275
    .end local v0    # "f":Ljava/io/File;
    :catchall_1
    move-exception v0

    :try_start_8
    monitor-exit p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    :try_start_9
    throw v0
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_2
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 288
    :catchall_2
    move-exception v0

    .line 289
    .local v0, "e":Ljava/lang/Throwable;
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "dirpoll"

    invoke-direct {v1, p0, v2, v0}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 291
    :try_start_a
    iget-object v1, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    monitor-enter v1
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_1

    .line 292
    :try_start_b
    iget-boolean v2, p0, Lorg/jpos/util/DirPoll;->shutdown:Z

    if-nez v2, :cond_4

    .line 293
    iget-object v2, p0, Lorg/jpos/util/DirPoll;->shutdownMonitor:Ljava/lang/Object;

    iget-wide v3, p0, Lorg/jpos/util/DirPoll;->pollInterval:J

    const-wide/16 v5, 0xa

    mul-long/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Ljava/lang/Object;->wait(J)V

    .line 295
    :cond_4
    monitor-exit v1

    goto :goto_2

    :catchall_3
    move-exception v2

    monitor-exit v1
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .end local v0    # "e":Ljava/lang/Throwable;
    :try_start_c
    throw v2
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_1

    .line 296
    .restart local v0    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v1

    :goto_2
    goto :goto_3

    .line 287
    .end local v0    # "e":Ljava/lang/Throwable;
    :catch_2
    move-exception v0

    .line 297
    :goto_3
    goto :goto_0

    .line 269
    :catchall_4
    move-exception v0

    :try_start_d
    monitor-exit p0
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_4

    throw v0

    .line 299
    :cond_5
    return-void
.end method

.method protected scan()Ljava/io/File;
    .locals 5

    .line 368
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-le v0, v1, :cond_2

    .line 369
    iput v2, p0, Lorg/jpos/util/DirPoll;->currentPriority:I

    :goto_0
    iget v0, p0, Lorg/jpos/util/DirPoll;->currentPriority:I

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    invoke-virtual {v3}, Ljava/util/Vector;->size()I

    move-result v3

    if-ge v0, v3, :cond_4

    .line 370
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 371
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    invoke-virtual {v0, p0}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 372
    .local v0, "files":[Ljava/lang/String;
    if-eqz v0, :cond_0

    array-length v3, v0

    if-lez v3, :cond_0

    .line 373
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    .line 374
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    iget-object v4, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 376
    .end local v0    # "files":[Ljava/lang/String;
    :cond_0
    nop

    .line 369
    iget v0, p0, Lorg/jpos/util/DirPoll;->currentPriority:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/jpos/util/DirPoll;->currentPriority:I

    goto :goto_0

    .line 377
    :cond_1
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0

    .line 381
    :cond_2
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 382
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 383
    .restart local v0    # "files":[Ljava/lang/String;
    if-eqz v0, :cond_3

    array-length v1, v0

    if-lez v1, :cond_3

    .line 384
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    .line 385
    new-instance v1, Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    iget-object v4, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v1, v3, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v1

    .line 387
    .end local v0    # "files":[Ljava/lang/String;
    :cond_3
    nop

    .line 391
    :cond_4
    const/4 v0, 0x0

    return-object v0

    .line 388
    :cond_5
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/util/DirPoll;->poolBatchFiles:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public setAcceptZeroLength(Z)V
    .locals 0
    .param p1, "acceptZeroLength"    # Z

    .line 106
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll;->acceptZeroLength:Z

    .line 107
    return-void
.end method

.method public setArchiveDateFormat(Ljava/lang/String;)V
    .locals 0
    .param p1, "dateFormat"    # Ljava/lang/String;

    .line 97
    iput-object p1, p0, Lorg/jpos/util/DirPoll;->archiveDateFormat:Ljava/lang/String;

    .line 98
    return-void
.end method

.method public setArchiveDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 127
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->archiveDir:Ljava/io/File;

    .line 128
    return-void
.end method

.method public setBadDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 121
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->badDir:Ljava/io/File;

    .line 122
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 192
    if-eqz p1, :cond_1

    .line 193
    iget-object v0, p0, Lorg/jpos/util/DirPoll;->processor:Ljava/lang/Object;

    instance-of v1, v0, Lorg/jpos/core/Configurable;

    if-eqz v1, :cond_0

    .line 194
    check-cast v0, Lorg/jpos/core/Configurable;

    invoke-interface {v0, p1}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 196
    :cond_0
    const-string v0, "request.dir"

    const-string v1, "request"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setRequestDir(Ljava/lang/String;)V

    .line 197
    const-string v0, "response.dir"

    const-string v1, "response"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setResponseDir(Ljava/lang/String;)V

    .line 198
    const-string v0, "tmp.dir"

    const-string v1, "tmp"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setTmpDir(Ljava/lang/String;)V

    .line 199
    const-string v0, "run.dir"

    const-string v1, "run"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setRunDir(Ljava/lang/String;)V

    .line 200
    const-string v0, "bad.dir"

    const-string v1, "bad"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setBadDir(Ljava/lang/String;)V

    .line 201
    const-string v0, "archive.dir"

    const-string v1, "archive"

    invoke-interface {p1, v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setArchiveDir(Ljava/lang/String;)V

    .line 202
    const/4 v0, 0x0

    const-string v2, "response.suffix"

    invoke-interface {p1, v2, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setResponseSuffix(Ljava/lang/String;)V

    .line 203
    const/4 v0, 0x0

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/DirPoll;->setShouldArchive(Z)V

    .line 204
    const-string v1, "archive.compress"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/DirPoll;->setShouldCompressArchive(Z)V

    .line 205
    const-string v1, "zero-length"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/DirPoll;->setAcceptZeroLength(Z)V

    .line 206
    nop

    .line 207
    const-string v1, "archive.dateformat"

    const-string v2, "yyyyMMddHHmmss"

    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 206
    invoke-virtual {p0, v1}, Lorg/jpos/util/DirPoll;->setArchiveDateFormat(Ljava/lang/String;)V

    .line 209
    const-string v1, "archive.timestamp"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lorg/jpos/util/DirPoll;->setShouldTimestampArchive(Z)V

    .line 210
    const-string v1, "priority.regex"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/DirPoll;->setRegexPriorityMatching(Z)V

    .line 212
    :cond_1
    return-void
.end method

.method public declared-synchronized setPath(Ljava/lang/String;)V
    .locals 2
    .param p1, "base"    # Ljava/lang/String;

    monitor-enter p0

    .line 85
    :try_start_0
    iput-object p1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    .line 86
    new-instance v0, Ljava/io/File;

    const-string v1, "request"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    .line 87
    new-instance v0, Ljava/io/File;

    const-string v1, "response"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->responseDir:Ljava/io/File;

    .line 88
    new-instance v0, Ljava/io/File;

    const-string v1, "tmp"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->tmpDir:Ljava/io/File;

    .line 89
    new-instance v0, Ljava/io/File;

    const-string v1, "bad"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->badDir:Ljava/io/File;

    .line 90
    new-instance v0, Ljava/io/File;

    const-string v1, "run"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->runDir:Ljava/io/File;

    .line 91
    new-instance v0, Ljava/io/File;

    const-string v1, "archive"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->archiveDir:Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 92
    monitor-exit p0

    return-void

    .line 84
    .end local p0    # "this":Lorg/jpos/util/DirPoll;
    .end local p1    # "base":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setPollInterval(J)V
    .locals 0
    .param p1, "pollInterval"    # J

    .line 130
    iput-wide p1, p0, Lorg/jpos/util/DirPoll;->pollInterval:J

    .line 131
    return-void
.end method

.method public setPriorities(Ljava/lang/String;)V
    .locals 4
    .param p1, "priorities"    # Ljava/lang/String;

    .line 217
    new-instance v0, Ljava/util/StringTokenizer;

    invoke-direct {v0, p1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;)V

    .line 218
    .local v0, "st":Ljava/util/StringTokenizer;
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 219
    .local v1, "v":Ljava/util/Vector;
    :goto_0
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 220
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v2

    .line 221
    .local v2, "ext":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, ""

    goto :goto_1

    :cond_0
    move-object v3, v2

    :goto_1
    invoke-virtual {v1, v3}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 222
    .end local v2    # "ext":Ljava/lang/String;
    goto :goto_0

    .line 223
    :cond_1
    invoke-virtual {v1}, Ljava/util/Vector;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 224
    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 225
    :cond_2
    monitor-enter p0

    .line 226
    :try_start_0
    iput-object v1, p0, Lorg/jpos/util/DirPoll;->prio:Ljava/util/Vector;

    .line 227
    monitor-exit p0

    .line 228
    return-void

    .line 227
    :catchall_0
    move-exception v2

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public setProcessor(Ljava/lang/Object;)V
    .locals 0
    .param p1, "processor"    # Ljava/lang/Object;

    .line 139
    iput-object p1, p0, Lorg/jpos/util/DirPoll;->processor:Ljava/lang/Object;

    .line 140
    return-void
.end method

.method public setRegexPriorityMatching(Z)V
    .locals 0
    .param p1, "regexPriorityMatching"    # Z

    .line 171
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll;->regexPriorityMatching:Z

    .line 172
    return-void
.end method

.method public setRequestDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 112
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->requestDir:Ljava/io/File;

    .line 113
    return-void
.end method

.method public setResponseDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 115
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->responseDir:Ljava/io/File;

    .line 116
    return-void
.end method

.method public setResponseSuffix(Ljava/lang/String;)V
    .locals 0
    .param p1, "suffix"    # Ljava/lang/String;

    .line 133
    iput-object p1, p0, Lorg/jpos/util/DirPoll;->responseSuffix:Ljava/lang/String;

    .line 134
    return-void
.end method

.method public setRunDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 124
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->runDir:Ljava/io/File;

    .line 125
    return-void
.end method

.method public setShouldArchive(Z)V
    .locals 0
    .param p1, "shouldArchive"    # Z

    .line 100
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll;->shouldArchive:Z

    .line 101
    return-void
.end method

.method public setShouldCompressArchive(Z)V
    .locals 0
    .param p1, "shouldCompressArchive"    # Z

    .line 103
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll;->shouldCompressArchive:Z

    .line 104
    return-void
.end method

.method public setShouldTimestampArchive(Z)V
    .locals 0
    .param p1, "shouldTimestampArchive"    # Z

    .line 94
    iput-boolean p1, p0, Lorg/jpos/util/DirPoll;->shouldTimestampArchive:Z

    .line 95
    return-void
.end method

.method public declared-synchronized setThreadPool(Lorg/jpos/util/ThreadPool;)V
    .locals 0
    .param p1, "pool"    # Lorg/jpos/util/ThreadPool;

    monitor-enter p0

    .line 230
    :try_start_0
    iput-object p1, p0, Lorg/jpos/util/DirPoll;->pool:Lorg/jpos/util/ThreadPool;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    monitor-exit p0

    return-void

    .line 229
    .end local p0    # "this":Lorg/jpos/util/DirPoll;
    .end local p1    # "pool":Lorg/jpos/util/ThreadPool;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setTmpDir(Ljava/lang/String;)V
    .locals 2
    .param p1, "dir"    # Ljava/lang/String;

    .line 118
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lorg/jpos/util/DirPoll;->basePath:Ljava/lang/String;

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Lorg/jpos/util/DirPoll;->tmpDir:Ljava/io/File;

    .line 119
    return-void
.end method

.method public unpause()V
    .locals 1

    .line 514
    monitor-enter p0

    .line 515
    :try_start_0
    iget-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    if-eqz v0, :cond_0

    .line 516
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jpos/util/DirPoll;->paused:Z

    .line 518
    invoke-virtual {p0}, Ljava/lang/Object;->notify()V

    .line 521
    :cond_0
    monitor-exit p0

    .line 522
    return-void

    .line 521
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
