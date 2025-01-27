.class public Lcom/sleepycat/je/log/ChecksumValidator;
.super Ljava/lang/Object;
.source "ChecksumValidator.java"


# static fields
.field private static final DEBUG:Z = false


# instance fields
.field private cksum:Ljava/util/zip/Checksum;

.field private final envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/sleepycat/je/log/ChecksumValidator;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    .line 34
    invoke-static {}, Lcom/sleepycat/je/utilint/Adler32;->makeChecksum()Ljava/util/zip/Checksum;

    move-result-object v0

    iput-object v0, p0, Lcom/sleepycat/je/log/ChecksumValidator;->cksum:Ljava/util/zip/Checksum;

    .line 35
    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    .line 38
    iget-object v0, p0, Lcom/sleepycat/je/log/ChecksumValidator;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->reset()V

    .line 39
    return-void
.end method

.method public update(Ljava/nio/ByteBuffer;I)V
    .locals 3
    .param p1, "buf"    # Ljava/nio/ByteBuffer;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 50
    if-eqz p1, :cond_0

    .line 56
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    .line 63
    .local v0, "bufStart":I
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->arrayOffset()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0, v1, v2, p2}, Lcom/sleepycat/je/log/ChecksumValidator;->update([BII)V

    .line 64
    return-void

    .line 51
    .end local v0    # "bufStart":I
    :cond_0
    new-instance v0, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "null buffer given to checksum validation, probably  result of 0\'s in log file, len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public update([BII)V
    .locals 1
    .param p1, "buf"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I

    .line 67
    iget-object v0, p0, Lcom/sleepycat/je/log/ChecksumValidator;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0, p1, p2, p3}, Ljava/util/zip/Checksum;->update([BII)V

    .line 68
    return-void
.end method

.method validate(JJ)V
    .locals 4
    .param p1, "expectedChecksum"    # J
    .param p3, "lsn"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 73
    iget-object v0, p0, Lcom/sleepycat/je/log/ChecksumValidator;->cksum:Ljava/util/zip/Checksum;

    invoke-interface {v0}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-eqz v0, :cond_1

    .line 87
    iget-object v0, p0, Lcom/sleepycat/je/log/ChecksumValidator;->envImpl:Lcom/sleepycat/je/dbi/EnvironmentImpl;

    invoke-virtual {v0}, Lcom/sleepycat/je/dbi/EnvironmentImpl;->getDataEraser()Lcom/sleepycat/je/cleaner/DataEraser;

    move-result-object v0

    invoke-virtual {v0, p3, p4}, Lcom/sleepycat/je/cleaner/DataEraser;->isEntryErased(J)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    return-void

    .line 91
    :cond_0
    new-instance v0, Lcom/sleepycat/je/log/ChecksumException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Location "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    invoke-static {p3, p4}, Lcom/sleepycat/je/utilint/DbLsn;->getNoFormatString(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " expected "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " got "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sleepycat/je/log/ChecksumValidator;->cksum:Ljava/util/zip/Checksum;

    .line 93
    invoke-interface {v2}, Ljava/util/zip/Checksum;->getValue()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/sleepycat/je/log/ChecksumException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    return-void
.end method

.method public validate(JJJ)V
    .locals 2
    .param p1, "expectedChecksum"    # J
    .param p3, "fileNum"    # J
    .param p5, "fileOffset"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sleepycat/je/log/ChecksumException;
        }
    .end annotation

    .line 100
    invoke-static {p3, p4, p5, p6}, Lcom/sleepycat/je/utilint/DbLsn;->makeLsn(JJ)J

    move-result-wide v0

    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/sleepycat/je/log/ChecksumValidator;->validate(JJ)V

    .line 101
    return-void
.end method
