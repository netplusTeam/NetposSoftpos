.class public Lorg/jline/utils/WriterOutputStream;
.super Ljava/io/OutputStream;
.source "WriterOutputStream.java"


# instance fields
.field private final decoder:Ljava/nio/charset/CharsetDecoder;

.field private final decoderIn:Ljava/nio/ByteBuffer;

.field private final decoderOut:Ljava/nio/CharBuffer;

.field private final out:Ljava/io/Writer;


# direct methods
.method public constructor <init>(Ljava/io/Writer;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 38
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newDecoder()Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 39
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 40
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetDecoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetDecoder;

    move-result-object v0

    .line 38
    invoke-direct {p0, p1, v0}, Lorg/jline/utils/WriterOutputStream;-><init>(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;)V

    .line 41
    return-void
.end method

.method public constructor <init>(Ljava/io/Writer;Ljava/nio/charset/CharsetDecoder;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "decoder"    # Ljava/nio/charset/CharsetDecoder;

    .line 43
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 34
    const/16 v0, 0x100

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    .line 35
    const/16 v0, 0x80

    invoke-static {v0}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    .line 44
    iput-object p1, p0, Lorg/jline/utils/WriterOutputStream;->out:Ljava/io/Writer;

    .line 45
    iput-object p2, p0, Lorg/jline/utils/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    .line 46
    return-void
.end method

.method private flushOutput()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 115
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->position()I

    move-result v0

    if-lez v0, :cond_0

    .line 116
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->out:Ljava/io/Writer;

    iget-object v1, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v1

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v3}, Ljava/nio/CharBuffer;->position()I

    move-result v3

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/Writer;->write([CII)V

    .line 117
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v0}, Ljava/nio/CharBuffer;->rewind()Ljava/nio/Buffer;

    .line 119
    :cond_0
    return-void
.end method

.method private processInput(Z)V
    .locals 3
    .param p1, "endOfInput"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 91
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 94
    :goto_0
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoder:Ljava/nio/charset/CharsetDecoder;

    iget-object v1, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    iget-object v2, p0, Lorg/jline/utils/WriterOutputStream;->decoderOut:Ljava/nio/CharBuffer;

    invoke-virtual {v0, v1, v2, p1}, Ljava/nio/charset/CharsetDecoder;->decode(Ljava/nio/ByteBuffer;Ljava/nio/CharBuffer;Z)Ljava/nio/charset/CoderResult;

    move-result-object v0

    .line 95
    .local v0, "coderResult":Ljava/nio/charset/CoderResult;
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isOverflow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-direct {p0}, Lorg/jline/utils/WriterOutputStream;->flushOutput()V

    goto :goto_0

    .line 97
    :cond_0
    invoke-virtual {v0}, Ljava/nio/charset/CoderResult;->isUnderflow()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 98
    nop

    .line 106
    iget-object v1, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->compact()Ljava/nio/ByteBuffer;

    .line 107
    return-void

    .line 102
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v2, "Unexpected coder result"

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 78
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jline/utils/WriterOutputStream;->processInput(Z)V

    .line 79
    invoke-virtual {p0}, Lorg/jline/utils/WriterOutputStream;->flush()V

    .line 80
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->close()V

    .line 81
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 72
    invoke-direct {p0}, Lorg/jline/utils/WriterOutputStream;->flushOutput()V

    .line 73
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->out:Ljava/io/Writer;

    invoke-virtual {v0}, Ljava/io/Writer;->flush()V

    .line 74
    return-void
.end method

.method public write(I)V
    .locals 4
    .param p1, "b"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 50
    const/4 v0, 0x1

    new-array v1, v0, [B

    int-to-byte v2, p1

    const/4 v3, 0x0

    aput-byte v2, v1, v3

    invoke-virtual {p0, v1, v3, v0}, Lorg/jline/utils/WriterOutputStream;->write([BII)V

    .line 51
    return-void
.end method

.method public write([B)V
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 55
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lorg/jline/utils/WriterOutputStream;->write([BII)V

    .line 56
    return-void
.end method

.method public write([BII)V
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 60
    :goto_0
    if-lez p3, :cond_0

    .line 61
    iget-object v0, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 62
    .local v0, "c":I
    iget-object v1, p0, Lorg/jline/utils/WriterOutputStream;->decoderIn:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1, p2, v0}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 63
    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lorg/jline/utils/WriterOutputStream;->processInput(Z)V

    .line 64
    sub-int/2addr p3, v0

    .line 65
    add-int/2addr p2, v0

    .line 66
    .end local v0    # "c":I
    goto :goto_0

    .line 67
    :cond_0
    invoke-virtual {p0}, Lorg/jline/utils/WriterOutputStream;->flush()V

    .line 68
    return-void
.end method
