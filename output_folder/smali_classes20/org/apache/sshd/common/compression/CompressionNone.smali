.class public Lorg/apache/sshd/common/compression/CompressionNone;
.super Lorg/apache/sshd/common/compression/BaseCompression;
.source "CompressionNone.java"


# instance fields
.field private level:I

.field private type:Lorg/apache/sshd/common/compression/Compression$Type;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "none"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/compression/BaseCompression;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public compress(Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "buffer"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    sget-object v0, Lorg/apache/sshd/common/compression/Compression$Type;->Deflater:Lorg/apache/sshd/common/compression/Compression$Type;

    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/compression/Compression$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    return-void

    .line 52
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not set up for compression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public init(Lorg/apache/sshd/common/compression/Compression$Type;I)V
    .locals 0
    .param p1, "type"    # Lorg/apache/sshd/common/compression/Compression$Type;
    .param p2, "level"    # I

    .line 40
    iput-object p1, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    .line 41
    iput p2, p0, Lorg/apache/sshd/common/compression/CompressionNone;->level:I

    .line 42
    return-void
.end method

.method public isCompressionExecuted()Z
    .locals 1

    .line 46
    const/4 v0, 0x0

    return v0
.end method

.method public isDelayed()Z
    .locals 1

    .line 69
    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 74
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lorg/apache/sshd/common/compression/BaseCompression;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lorg/apache/sshd/common/compression/CompressionNone;->level:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public uncompress(Lorg/apache/sshd/common/util/buffer/Buffer;Lorg/apache/sshd/common/util/buffer/Buffer;)V
    .locals 3
    .param p1, "from"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .param p2, "to"    # Lorg/apache/sshd/common/util/buffer/Buffer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 58
    sget-object v0, Lorg/apache/sshd/common/compression/Compression$Type;->Inflater:Lorg/apache/sshd/common/compression/Compression$Type;

    iget-object v1, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v0, v1}, Lorg/apache/sshd/common/compression/Compression$Type;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 62
    if-ne p1, p2, :cond_0

    .line 65
    return-void

    .line 63
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    const-string v1, "Separate de-compression buffers provided"

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 59
    :cond_1
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not set up for de-compression: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/compression/CompressionNone;->type:Lorg/apache/sshd/common/compression/Compression$Type;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
