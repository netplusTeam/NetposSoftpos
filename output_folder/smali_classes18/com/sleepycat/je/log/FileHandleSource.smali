.class Lcom/sleepycat/je/log/FileHandleSource;
.super Lcom/sleepycat/je/log/FileSource;
.source "FileHandleSource.java"


# instance fields
.field private fileHandle:Lcom/sleepycat/je/log/FileHandle;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/log/FileHandle;ILcom/sleepycat/je/log/FileManager;)V
    .locals 7
    .param p1, "fileHandle"    # Lcom/sleepycat/je/log/FileHandle;
    .param p2, "readBufferSize"    # I
    .param p3, "fileManager"    # Lcom/sleepycat/je/log/FileManager;

    .line 28
    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getFile()Ljava/io/RandomAccessFile;

    move-result-object v1

    .line 29
    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getFileNum()J

    move-result-wide v4

    invoke-virtual {p1}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

    move-result v6

    .line 28
    move-object v0, p0

    move v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/sleepycat/je/log/FileSource;-><init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/je/log/FileManager;JI)V

    .line 30
    iput-object p1, p0, Lcom/sleepycat/je/log/FileHandleSource;->fileHandle:Lcom/sleepycat/je/log/FileHandle;

    .line 31
    return-void
.end method


# virtual methods
.method public getLogVersion()I
    .locals 1

    .line 44
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandleSource;->fileHandle:Lcom/sleepycat/je/log/FileHandle;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->getLogVersion()I

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

    .line 40
    iget-object v0, p0, Lcom/sleepycat/je/log/FileHandleSource;->fileHandle:Lcom/sleepycat/je/log/FileHandle;

    invoke-virtual {v0}, Lcom/sleepycat/je/log/FileHandle;->release()V

    .line 41
    return-void
.end method
