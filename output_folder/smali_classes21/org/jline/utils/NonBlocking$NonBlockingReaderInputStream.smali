.class Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;
.super Lorg/jline/utils/NonBlockingInputStream;
.source "NonBlocking.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/NonBlocking;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NonBlockingReaderInputStream"
.end annotation


# instance fields
.field private final bytes:Ljava/nio/ByteBuffer;

.field private final chars:Ljava/nio/CharBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final reader:Lorg/jline/utils/NonBlockingReader;


# direct methods
.method private constructor <init>(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;)V
    .locals 3
    .param p1, "reader"    # Lorg/jline/utils/NonBlockingReader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 73
    invoke-direct {p0}, Lorg/jline/utils/NonBlockingInputStream;-><init>()V

    .line 74
    iput-object p1, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->reader:Lorg/jline/utils/NonBlockingReader;

    .line 75
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 76
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 77
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 78
    const/4 v0, 0x4

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    .line 79
    const/4 v1, 0x2

    invoke-static {v1}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    iput-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    .line 81
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 82
    invoke-virtual {v1, v2}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 83
    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;Lorg/jline/utils/NonBlocking$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/utils/NonBlockingReader;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/jline/utils/NonBlocking$1;

    .line 61
    invoke-direct {p0, p1, p2}, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;-><init>(Lorg/jline/utils/NonBlockingReader;Ljava/nio/charset/Charset;)V

    return-void
.end method


# virtual methods
.method public available()I
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->available()I

    move-result v0

    int-to-float v0, v0

    iget-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    iget-object v1, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    .line 88
    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    .line 87
    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 93
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v0}, Lorg/jline/utils/NonBlockingReader;->close()V

    .line 94
    return-void
.end method

.method public read(JZ)I
    .locals 11
    .param p1, "timeout"    # J
    .param p3, "isPeek"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 98
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    const/4 v3, 0x0

    if-gtz v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    move v2, v3

    .line 99
    .local v2, "isInfinite":Z
    :goto_0
    iget-object v4, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v4

    if-nez v4, :cond_7

    if-nez v2, :cond_1

    cmp-long v4, p1, v0

    if-lez v4, :cond_7

    .line 100
    :cond_1
    const-wide/16 v4, 0x0

    .line 101
    .local v4, "start":J
    if-nez v2, :cond_2

    .line 102
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 104
    :cond_2
    iget-object v6, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->reader:Lorg/jline/utils/NonBlockingReader;

    invoke-virtual {v6, p1, p2}, Lorg/jline/utils/NonBlockingReader;->read(J)I

    move-result v6

    .line 105
    .local v6, "c":I
    const/4 v7, -0x1

    if-ne v6, v7, :cond_3

    .line 106
    return v7

    .line 108
    :cond_3
    if-ltz v6, :cond_5

    .line 109
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->hasRemaining()Z

    move-result v7

    if-nez v7, :cond_4

    .line 110
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->position(I)Ljava/nio/Buffer;

    .line 111
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v7, v3}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 113
    :cond_4
    iget-object v7, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v7}, Ljava/nio/CharBuffer;->limit()I

    move-result v7

    .line 114
    .local v7, "l":I
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v8}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v8

    iget-object v9, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    invoke-virtual {v9}, Ljava/nio/CharBuffer;->arrayOffset()I

    move-result v9

    add-int/2addr v9, v7

    int-to-char v10, v6

    aput-char v10, v8, v9

    .line 115
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    add-int/lit8 v9, v7, 0x1

    invoke-virtual {v8, v9}, Ljava/nio/CharBuffer;->limit(I)Ljava/nio/Buffer;

    .line 116
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 117
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v9, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->chars:Ljava/nio/CharBuffer;

    iget-object v10, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8, v9, v10, v3}, Ljava/nio/charset/CharsetEncoder;->encode(Ljava/nio/CharBuffer;Ljava/nio/ByteBuffer;Z)Ljava/nio/charset/CoderResult;

    .line 118
    iget-object v8, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v8}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 120
    .end local v7    # "l":I
    :cond_5
    if-nez v2, :cond_6

    .line 121
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v4

    sub-long/2addr p1, v7

    .line 123
    .end local v4    # "start":J
    .end local v6    # "c":I
    :cond_6
    goto :goto_0

    .line 124
    :cond_7
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 125
    if-eqz p3, :cond_8

    .line 126
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->get(I)B

    move-result v0

    return v0

    .line 128
    :cond_8
    iget-object v0, p0, Lorg/jline/utils/NonBlocking$NonBlockingReaderInputStream;->bytes:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0

    .line 131
    :cond_9
    const/4 v0, -0x2

    return v0
.end method
