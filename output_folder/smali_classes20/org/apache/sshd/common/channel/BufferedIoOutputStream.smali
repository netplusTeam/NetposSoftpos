.class public Lorg/apache/sshd/common/channel/BufferedIoOutputStream;
.super Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;
.source "BufferedIoOutputStream.java"

# interfaces
.implements Lorg/apache/sshd/common/io/IoOutputStream;


# instance fields
.field protected final currentWrite:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference<",
            "Lorg/apache/sshd/common/channel/IoWriteFutureImpl;",
            ">;"
        }
    .end annotation
.end field

.field protected final id:Ljava/lang/Object;

.field protected final out:Lorg/apache/sshd/common/io/IoOutputStream;

.field protected final writes:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lorg/apache/sshd/common/channel/IoWriteFutureImpl;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lorg/apache/sshd/common/io/IoOutputStream;)V
    .locals 1
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "out"    # Lorg/apache/sshd/common/io/IoOutputStream;

    .line 43
    invoke-direct {p0}, Lorg/apache/sshd/common/util/closeable/AbstractInnerCloseable;-><init>()V

    .line 39
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->writes:Ljava/util/Queue;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    .line 44
    iput-object p2, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->out:Lorg/apache/sshd/common/io/IoOutputStream;

    .line 45
    iput-object p1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->id:Ljava/lang/Object;

    .line 46
    return-void
.end method

.method static synthetic access$000(Lorg/apache/sshd/common/channel/BufferedIoOutputStream;)Lorg/slf4j/Logger;
    .locals 1
    .param p0, "x0"    # Lorg/apache/sshd/common/channel/BufferedIoOutputStream;

    .line 37
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->log:Lorg/slf4j/Logger;

    return-object v0
.end method


# virtual methods
.method public getId()Ljava/lang/Object;
    .locals 1

    .line 49
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->id:Ljava/lang/Object;

    return-object v0
.end method

.method protected getInnerCloseable()Lorg/apache/sshd/common/Closeable;
    .locals 3

    .line 100
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->builder()Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 101
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->getId()Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->writes:Ljava/util/Queue;

    invoke-virtual {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->out:Lorg/apache/sshd/common/io/IoOutputStream;

    .line 102
    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    .line 103
    invoke-virtual {v0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    .line 100
    return-object v0
.end method

.method protected startWriting()V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->writes:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    .line 66
    .local v0, "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    if-nez v0, :cond_0

    .line 67
    return-void

    .line 70
    :cond_0
    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->currentWrite:Ljava/util/concurrent/atomic/AtomicReference;

    const/4 v2, 0x0

    invoke-static {v1, v2, v0}, Landroidx/lifecycle/LifecycleKt$$ExternalSyntheticBackportWithForwarding0;->m(Ljava/util/concurrent/atomic/AtomicReference;Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    return-void

    .line 74
    :cond_1
    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->out:Lorg/apache/sshd/common/io/IoOutputStream;

    invoke-virtual {v0}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;->getBuffer()Lorg/apache/sshd/common/util/buffer/Buffer;

    move-result-object v2

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/io/IoOutputStream;->writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;

    move-result-object v1

    new-instance v2, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;

    invoke-direct {v2, p0, v0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream$1;-><init>(Lorg/apache/sshd/common/channel/BufferedIoOutputStream;Lorg/apache/sshd/common/channel/IoWriteFutureImpl;)V

    invoke-interface {v1, v2}, Lorg/apache/sshd/common/io/IoWriteFuture;->addListener(Lorg/apache/sshd/common/future/SshFutureListener;)Lorg/apache/sshd/common/future/SshFuture;

    .line 96
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 108
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->out:Lorg/apache/sshd/common/io/IoOutputStream;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public writePacket(Lorg/apache/sshd/common/util/buffer/Buffer;)Lorg/apache/sshd/common/io/IoWriteFuture;
    .locals 2
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->isClosing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 58
    new-instance v0, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;

    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->getId()Ljava/lang/Object;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/apache/sshd/common/channel/IoWriteFutureImpl;-><init>(Ljava/lang/Object;Lorg/apache/sshd/common/util/buffer/Buffer;)V

    .line 59
    .local v0, "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    iget-object v1, p0, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->writes:Ljava/util/Queue;

    invoke-interface {v1, v0}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-virtual {p0}, Lorg/apache/sshd/common/channel/BufferedIoOutputStream;->startWriting()V

    .line 61
    return-object v0

    .line 55
    .end local v0    # "future":Lorg/apache/sshd/common/channel/IoWriteFutureImpl;
    :cond_0
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "Closed"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
