.class public Lorg/apache/sshd/common/compression/CompressionZlib;
.super Lorg/apache/sshd/common/compression/BaseCompression;
.source "CompressionZlib.java"


# static fields
.field private static final BUF_SIZE:I = 0x1000


# instance fields
.field private compresser:Ljava/util/zip/Deflater;

.field private decompresser:Ljava/util/zip/Inflater;

.field private tmpbuf:[B


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 45
    const-string/jumbo v0, "zlib"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/compression/CompressionZlib;-><init>(Ljava/lang/String;)V

    .line 46
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/compression/BaseCompression;-><init>(Ljava/lang/String;)V

    .line 37
    const/16 v0, 0x1000

    new-array v0, v0, [B

    iput-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    .line 50
    return-void
.end method


# virtual methods
.method public compress(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 6
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 65
    iget-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->compresser:Ljava/util/zip/Deflater;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Deflater;->setInput([BII)V

    .line 66
    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v0

    invoke-virtual {p1, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->wpos(I)V

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->compresser:Ljava/util/zip/Deflater;

    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    array-length v2, v1

    const/4 v3, 0x0

    const/4 v4, 0x2

    invoke-virtual {v0, v1, v3, v2, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    .line 68
    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    .line 70
    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    invoke-virtual {p1, v1, v3, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 69
    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->compresser:Ljava/util/zip/Deflater;

    iget-object v2, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    array-length v5, v2

    invoke-virtual {v1, v2, v3, v5, v4}, Ljava/util/zip/Deflater;->deflate([BIII)I

    move-result v0

    goto :goto_0

    .line 72
    .end local v0    # "len":I
    :cond_0
    return-void
.end method

.method public init(Lorg/apache/sshd/common/compression/Compression$Type;I)V
    .locals 1
    .param p1, "type"    # Lorg/apache/sshd/common/compression/Compression$Type;
    .param p2, "level"    # I

    .line 59
    new-instance v0, Ljava/util/zip/Deflater;

    invoke-direct {v0, p2}, Ljava/util/zip/Deflater;-><init>(I)V

    iput-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->compresser:Ljava/util/zip/Deflater;

    .line 60
    new-instance v0, Ljava/util/zip/Inflater;

    invoke-direct {v0}, Ljava/util/zip/Inflater;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->decompresser:Ljava/util/zip/Inflater;

    .line 61
    return-void
.end method

.method public isDelayed()Z
    .locals 1

    .line 54
    const/4 v0, 0x0

    return v0
.end method

.method public uncompress(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 4
    .param p1, "from"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "to"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->decompresser:Ljava/util/zip/Inflater;

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->array()[B

    move-result-object v1

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->rpos()I

    move-result v2

    invoke-virtual {p1}, Lorg/apache/sshd/common/util/buffer/Buffer;->available()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/zip/Inflater;->setInput([BII)V

    .line 78
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->decompresser:Ljava/util/zip/Inflater;

    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    invoke-virtual {v0, v1}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v0

    .local v0, "len":I
    :goto_0
    if-lez v0, :cond_0

    .line 79
    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    const/4 v2, 0x0

    invoke-virtual {p2, v1, v2, v0}, Lorg/apache/sshd/common/util/buffer/Buffer;->putRawBytes([BII)V

    .line 78
    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->decompresser:Ljava/util/zip/Inflater;

    iget-object v2, p0, Lorg/apache/sshd/common/compression/CompressionZlib;->tmpbuf:[B

    invoke-virtual {v1, v2}, Ljava/util/zip/Inflater;->inflate([B)I

    move-result v1
    :try_end_0
    .catch Ljava/util/zip/DataFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    goto :goto_0

    .line 83
    .end local v0    # "len":I
    :cond_0
    nop

    .line 84
    return-void

    .line 81
    :catch_0
    move-exception v0

    .line 82
    .local v0, "e":Ljava/util/zip/DataFormatException;
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Error decompressing data"

    invoke-direct {v1, v2, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
