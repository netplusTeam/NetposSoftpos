.class Lcom/sleepycat/je/log/FileSource;
.super Ljava/lang/Object;
.source "FileSource.java"

# interfaces
.implements Lcom/sleepycat/je/log/LogSource;


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final file:Ljava/io/RandomAccessFile;

.field private final fileManager:Lcom/sleepycat/je/log/FileManager;

.field private final fileNum:J

.field private final logVersion:I

.field private final readBufferSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 26
    return-void
.end method

.method constructor <init>(Ljava/io/RandomAccessFile;ILcom/sleepycat/je/log/FileManager;JI)V
    .locals 0
    .param p1, "file"    # Ljava/io/RandomAccessFile;
    .param p2, "readBufferSize"    # I
    .param p3, "fileManager"    # Lcom/sleepycat/je/log/FileManager;
    .param p4, "fileNum"    # J
    .param p6, "logVersion"    # I

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    iput-object p1, p0, Lcom/sleepycat/je/log/FileSource;->file:Ljava/io/RandomAccessFile;

    .line 40
    iput p2, p0, Lcom/sleepycat/je/log/FileSource;->readBufferSize:I

    .line 41
    iput-object p3, p0, Lcom/sleepycat/je/log/FileSource;->fileManager:Lcom/sleepycat/je/log/FileManager;

    .line 42
    iput-wide p4, p0, Lcom/sleepycat/je/log/FileSource;->fileNum:J

    .line 43
    iput p6, p0, Lcom/sleepycat/je/log/FileSource;->logVersion:I

    .line 44
    return-void
.end method


# virtual methods
.method public getBytes(J)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "fileOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 60
    iget v0, p0, Lcom/sleepycat/je/log/FileSource;->readBufferSize:I

    invoke-virtual {p0, p1, p2, v0}, Lcom/sleepycat/je/log/FileSource;->getBytes(JI)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(JI)Ljava/nio/ByteBuffer;
    .locals 8
    .param p1, "fileOffset"    # J
    .param p3, "numBytes"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 70
    invoke-static {p3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v7

    .line 71
    .local v7, "destBuf":Ljava/nio/ByteBuffer;
    iget-object v0, p0, Lcom/sleepycat/je/log/FileSource;->fileManager:Lcom/sleepycat/je/log/FileManager;

    iget-object v1, p0, Lcom/sleepycat/je/log/FileSource;->file:Ljava/io/RandomAccessFile;

    iget-wide v5, p0, Lcom/sleepycat/je/log/FileSource;->fileNum:J

    move-object v2, v7

    move-wide v3, p1

    invoke-virtual/range {v0 .. v6}, Lcom/sleepycat/je/log/FileManager;->readFromFile(Ljava/io/RandomAccessFile;Ljava/nio/ByteBuffer;JJ)V

    .line 73
    invoke-static {}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->maybeForceYield()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 75
    invoke-virtual {v7}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 76
    return-object v7

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public getLogVersion()I
    .locals 1

    .line 80
    iget v0, p0, Lcom/sleepycat/je/log/FileSource;->logVersion:I

    return v0
.end method

.method public release()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/DatabaseException;
        }
    .end annotation

    .line 52
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 85
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "[FileSource file=0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v1, p0, Lcom/sleepycat/je/log/FileSource;->fileNum:J

    invoke-static {v1, v2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
