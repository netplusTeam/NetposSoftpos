.class public Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;
.super Lorg/apache/sshd/common/util/io/EmptyInputStream;
.source "CloseableEmptyInputStream.java"

# interfaces
.implements Ljava/nio/channels/Channel;


# instance fields
.field private final open:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 36
    invoke-direct {p0}, Lorg/apache/sshd/common/util/io/EmptyInputStream;-><init>()V

    .line 33
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 37
    return-void
.end method


# virtual methods
.method public available()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 46
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-super {p0}, Lorg/apache/sshd/common/util/io/EmptyInputStream;->available()I

    move-result v0

    return v0

    .line 49
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "available() stream is closed"

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

    .line 91
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    .line 93
    return-void
.end method

.method public isOpen()Z
    .locals 1

    .line 41
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->open:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method public read()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-super {p0}, Lorg/apache/sshd/common/util/io/EmptyInputStream;->read()I

    move-result v0

    return v0

    .line 58
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "read() stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public read([BII)I
    .locals 3
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 64
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 65
    invoke-super {p0, p1, p2, p3}, Lorg/apache/sshd/common/util/io/EmptyInputStream;->read([BII)I

    move-result v0

    return v0

    .line 67
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "read([])["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] stream is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public declared-synchronized reset()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 82
    :try_start_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 83
    invoke-super {p0}, Lorg/apache/sshd/common/util/io/EmptyInputStream;->reset()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    monitor-exit p0

    return-void

    .line 85
    .end local p0    # "this":Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;
    :cond_0
    :try_start_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "reset() stream is closed"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 81
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public skip(J)J
    .locals 3
    .param p1, "n"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/io/CloseableEmptyInputStream;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 74
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/util/io/EmptyInputStream;->skip(J)J

    move-result-wide v0

    return-wide v0

    .line 76
    :cond_0
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "skip("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ") stream is closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
