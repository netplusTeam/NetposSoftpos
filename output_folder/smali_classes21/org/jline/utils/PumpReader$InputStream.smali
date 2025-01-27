.class Lorg/jline/utils/PumpReader$InputStream;
.super Ljava/io/InputStream;
.source "PumpReader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/utils/PumpReader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InputStream"
.end annotation


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;

.field private final encoder:Ljava/nio/charset/CharsetEncoder;

.field private final reader:Lorg/jline/utils/PumpReader;


# direct methods
.method private constructor <init>(Lorg/jline/utils/PumpReader;Ljava/nio/charset/Charset;)V
    .locals 2
    .param p1, "reader"    # Lorg/jline/utils/PumpReader;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 332
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 333
    iput-object p1, p0, Lorg/jline/utils/PumpReader$InputStream;->reader:Lorg/jline/utils/PumpReader;

    .line 334
    invoke-virtual {p2}, Ljava/nio/charset/Charset;->newEncoder()Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 335
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onUnmappableCharacter(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    sget-object v1, Ljava/nio/charset/CodingErrorAction;->REPLACE:Ljava/nio/charset/CodingErrorAction;

    .line 336
    invoke-virtual {v0, v1}, Ljava/nio/charset/CharsetEncoder;->onMalformedInput(Ljava/nio/charset/CodingErrorAction;)Ljava/nio/charset/CharsetEncoder;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    .line 337
    invoke-virtual {v0}, Ljava/nio/charset/CharsetEncoder;->maxBytesPerChar()F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    .line 340
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 341
    return-void
.end method

.method synthetic constructor <init>(Lorg/jline/utils/PumpReader;Ljava/nio/charset/Charset;Lorg/jline/utils/PumpReader$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/jline/utils/PumpReader;
    .param p2, "x1"    # Ljava/nio/charset/Charset;
    .param p3, "x2"    # Lorg/jline/utils/PumpReader$1;

    .line 321
    invoke-direct {p0, p1, p2}, Lorg/jline/utils/PumpReader$InputStream;-><init>(Lorg/jline/utils/PumpReader;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method private copyFromBuffer([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 365
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-static {p3, v0}, Ljava/lang/Math;->min(II)I

    move-result p3

    .line 366
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    .line 367
    return p3
.end method

.method private readUsingBuffer()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 358
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->clear()Ljava/nio/Buffer;

    .line 359
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->reader:Lorg/jline/utils/PumpReader;

    iget-object v1, p0, Lorg/jline/utils/PumpReader$InputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    iget-object v2, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, v1, v2}, Lorg/jline/utils/PumpReader;->readBytes(Ljava/nio/charset/CharsetEncoder;Ljava/nio/ByteBuffer;)V

    .line 360
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 361
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 345
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0}, Lorg/jline/utils/PumpReader;->available()I

    move-result v0

    int-to-double v0, v0

    iget-object v2, p0, Lorg/jline/utils/PumpReader$InputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v2}, Ljava/nio/charset/CharsetEncoder;->averageBytesPerChar()F

    move-result v2

    float-to-double v2, v2

    mul-double/2addr v0, v2

    double-to-int v0, v0

    iget-object v1, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 402
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->reader:Lorg/jline/utils/PumpReader;

    invoke-virtual {v0}, Lorg/jline/utils/PumpReader;->close()V

    .line 403
    return-void
.end method

.method public read()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 350
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-direct {p0}, Lorg/jline/utils/PumpReader$InputStream;->readUsingBuffer()Z

    move-result v0

    if-nez v0, :cond_0

    .line 351
    const/4 v0, -0x1

    return v0

    .line 354
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    return v0
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

    .line 372
    if-nez p3, :cond_0

    .line 373
    const/4 v0, 0x0

    return v0

    .line 377
    :cond_0
    iget-object v0, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 378
    invoke-direct {p0, p1, p2, p3}, Lorg/jline/utils/PumpReader$InputStream;->copyFromBuffer([BII)I

    move-result v0

    .line 379
    .local v0, "read":I
    if-ne v0, p3, :cond_1

    .line 380
    return p3

    .line 383
    :cond_1
    add-int/2addr p2, v0

    .line 384
    sub-int/2addr p3, v0

    goto :goto_0

    .line 386
    .end local v0    # "read":I
    :cond_2
    const/4 v0, 0x0

    .line 390
    .restart local v0    # "read":I
    :goto_0
    iget-object v1, p0, Lorg/jline/utils/PumpReader$InputStream;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    if-lt p3, v1, :cond_3

    .line 391
    iget-object v1, p0, Lorg/jline/utils/PumpReader$InputStream;->reader:Lorg/jline/utils/PumpReader;

    iget-object v2, p0, Lorg/jline/utils/PumpReader$InputStream;->encoder:Ljava/nio/charset/CharsetEncoder;

    invoke-virtual {v1, v2, p1, p2, p3}, Lorg/jline/utils/PumpReader;->readBytes(Ljava/nio/charset/CharsetEncoder;[BII)I

    move-result v1

    add-int/2addr v0, v1

    goto :goto_1

    .line 392
    :cond_3
    invoke-direct {p0}, Lorg/jline/utils/PumpReader$InputStream;->readUsingBuffer()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 393
    invoke-direct {p0, p1, p2, p3}, Lorg/jline/utils/PumpReader$InputStream;->copyFromBuffer([BII)I

    move-result v1

    add-int/2addr v0, v1

    .line 397
    :cond_4
    :goto_1
    if-nez v0, :cond_5

    const/4 v1, -0x1

    goto :goto_2

    :cond_5
    move v1, v0

    :goto_2
    return v1
.end method
