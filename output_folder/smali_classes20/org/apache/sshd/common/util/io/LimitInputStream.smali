.class public Lorg/apache/sshd/common/util/io/LimitInputStream;
.super Ljava/io/FilterInputStream;
.source "LimitInputStream.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# instance fields
.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private remaining:J


# direct methods
.method public constructor <init>(Ljava/io/InputStream;J)V
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # J

    .line 38
    invoke-direct {p0, p1}, Ljava/io/FilterInputStream;-><init>(Ljava/io/InputStream;)V

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 39
    iput-wide p2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    .line 40
    return-void
.end method


# virtual methods
.method public available()I
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/LimitInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    invoke-super {p0}, Ljava/io/FilterInputStream;->available()I

    move-result v0

    .line 98
    .local v0, "av":I
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 99
    long-to-int v1, v3

    return v1

    .line 101
    :cond_0
    return v0

    .line 94
    .end local v0    # "av":I
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "available() stream is closed (remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public close()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 108
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 110
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/LimitInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 53
    iget-wide v0, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    .line 54
    const-wide/16 v2, 0x1

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    .line 55
    invoke-super {p0}, Ljava/io/FilterInputStream;->read()I

    move-result v0

    return v0

    .line 57
    :cond_0
    const/4 v0, -0x1

    return v0

    .line 50
    :cond_1
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read() - stream is closed (remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 6
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/LimitInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 67
    move v0, p3

    .line 68
    .local v0, "nb":I
    int-to-long v1, v0

    iget-wide v3, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    .line 69
    long-to-int v0, v3

    .line 71
    :cond_0
    if-lez v0, :cond_1

    .line 72
    invoke-super {p0, p1, p2, v0}, Ljava/io/FilterInputStream;->read([BII)I

    move-result v1

    .line 73
    .local v1, "read":I
    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    int-to-long v4, v1

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    .line 74
    return v1

    .line 76
    .end local v1    # "read":I
    :cond_1
    const/4 v1, -0x1

    return v1

    .line 64
    .end local v0    # "nb":I
    :cond_2
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read(len="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stream is closed (remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 82
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/LimitInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 86
    invoke-super {p0, p1, p2}, Ljava/io/FilterInputStream;->skip(J)J

    move-result-wide v0

    .line 87
    .local v0, "skipped":J
    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    sub-long/2addr v2, v0

    iput-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    .line 88
    return-wide v0

    .line 83
    .end local v0    # "skipped":J
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stream is closed (remaining="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lorg/apache/sshd/common/util/io/LimitInputStream;->remaining:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
