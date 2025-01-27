.class public Lcom/sleepycat/je/log/FileHandle;
.super Ljava/lang/Object;
.source "FileHandle.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private file:Ljava/io/RandomAccessFile;

.field private fileLatch:Lcom/sleepycat/je/latch/Latch;

.field private fileNum:J

.field private logVersion:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 27
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;JLjava/lang/String;)V
    .locals 2
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "fileNum"    # J
    .param p4, "label"    # Ljava/lang/String;

    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_fileHandle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v0, v1}, Lcom/sleepycat/je/latch/LatchFactory;->createExclusiveLatch(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;Z)Lcom/sleepycat/je/latch/Latch;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->fileLatch:Lcom/sleepycat/je/latch/Latch;

    .line 40
    iput-wide p2, p0, Lcom/sleepycat/je/log/FileHandle;->fileNum:J

    .line 41
    return-void
.end method


# virtual methods
.method close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 89
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    if-eqz v0, :cond_0

    .line 91
    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    iput-object v1, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    .line 94
    goto :goto_0

    .line 93
    :catchall_0
    move-exception v0

    iput-object v1, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    throw v0

    .line 96
    :cond_0
    :goto_0
    return-void
.end method

.method public getFile()Ljava/io/RandomAccessFile;
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    return-object v0
.end method

.method getFileNum()J
    .locals 2

    .line 57
    iget-wide v0, p0, Lcom/sleepycat/je/log/FileHandle;->fileNum:J

    return-wide v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 61
    iget v0, p0, Lcom/sleepycat/je/log/FileHandle;->logVersion:I

    return v0
.end method

.method init(Ljava/io/RandomAccessFile;I)V
    .locals 1
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "logVersion"    # I

    .line 47
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    if-nez v0, :cond_0

    .line 48
    iput-object p1, p0, Lcom/sleepycat/je/log/FileHandle;->file:Ljava/io/RandomAccessFile;

    .line 49
    iput p2, p0, Lcom/sleepycat/je/log/FileHandle;->logVersion:I

    .line 50
    return-void

    .line 47
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method isOldHeaderVersion()Z
    .locals 2

    .line 65
    iget v0, p0, Lcom/sleepycat/je/log/FileHandle;->logVersion:I

    const/16 v1, 0x11

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method latch()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 71
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->fileLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusive()V

    .line 72
    return-void
.end method

.method latchNoWait()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 77
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->fileLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->acquireExclusiveNoWait()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 83
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandle;->fileLatch:Lcom/sleepycat/je/latch/Latch;

    invoke-interface {v0}, Lcom/sleepycat/je/latch/Latch;->release()V

    .line 84
    return-void
.end method
