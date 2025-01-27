.class public Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;
.super Ljava/io/FilterOutputStream;
.source "LoggingFilterOutputStream.java"


# instance fields
.field private final chunkSize:I

.field private final log:Lorg/apache/sshd/common/util/logging/SimplifiedLog;

.field private final msg:Ljava/lang/String;

.field private final writeCount:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "log"    # Lorg/slf4j/Logger;
    .param p4, "chunkSize"    # I

    .line 48
    invoke-direct {p0, p1}, Ljava/io/FilterOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 49
    iput-object p2, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->msg:Ljava/lang/String;

    .line 50
    invoke-static {p3}, Lorg/apache/sshd/common/util/logging/LoggingUtils;->wrap(Lorg/slf4j/Logger;)Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->log:Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    .line 51
    iput p4, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->chunkSize:I

    .line 52
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;Lorg/apache/sshd/common/PropertyResolver;)V
    .locals 2
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "msg"    # Ljava/lang/String;
    .param p3, "log"    # Lorg/slf4j/Logger;
    .param p4, "resolver"    # Lorg/apache/sshd/common/PropertyResolver;

    .line 44
    const-string v0, "sshd-hexdump-chunk-size"

    const/16 v1, 0x40

    invoke-interface {p4, v0, v1}, Lorg/apache/sshd/common/PropertyResolver;->getIntProperty(Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;-><init>(Ljava/io/OutputStream;Ljava/lang/String;Lorg/slf4j/Logger;I)V

    .line 45
    return-void
.end method


# virtual methods
.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 57
    .local v1, "d":[B
    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    .line 58
    invoke-virtual {p0, v1, v3, v0}, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->write([BII)V

    .line 59
    return-void
.end method

.method public write([BII)V
    .locals 9
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 63
    iget-object v0, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->writeCount:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v0

    .line 64
    .local v0, "count":I
    iget-object v1, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->log:Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    sget-object v2, Lorg/apache/sshd/common/util/buffer/BufferUtils;->DEFAULT_HEXDUMP_LEVEL:Ljava/util/logging/Level;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->msg:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget v5, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->chunkSize:I

    const/16 v4, 0x20

    move-object v6, p1

    move v7, p2

    move v8, p3

    invoke-static/range {v1 .. v8}, Lorg/apache/sshd/common/util/buffer/BufferUtils;->dumpHex(Lorg/apache/sshd/common/util/logging/SimplifiedLog;Ljava/util/logging/Level;Ljava/lang/String;CI[BII)V

    .line 65
    iget-object v1, p0, Lorg/apache/sshd/common/util/io/LoggingFilterOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v1, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    .line 66
    return-void
.end method
