.class Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;
.super Ljava/lang/Object;


# instance fields
.field private final buffer:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(Ljava/nio/ByteBuffer;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-void
.end method

.method static wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    instance-of v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    if-eqz v0, :cond_1

    check-cast p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    return-object p0

    :cond_1
    instance-of v0, p0, Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_2

    new-instance v0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    check-cast p0, Ljava/nio/ByteBuffer;

    invoke-direct {v0, p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;-><init>(Ljava/nio/ByteBuffer;)V

    return-object v0

    :cond_2
    instance-of v0, p0, [B

    if-eqz v0, :cond_3

    check-cast p0, [B

    check-cast p0, [B

    invoke-static {p0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p0

    return-object p0

    :cond_3
    instance-of v0, p0, Ljava/io/ByteArrayOutputStream;

    if-eqz v0, :cond_4

    check-cast p0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p0

    invoke-static {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p0

    return-object p0

    :cond_4
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_6

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x1000

    new-array v1, v1, [B

    :goto_0
    move-object v2, p0

    check-cast v2, Ljava/io/InputStream;

    invoke-virtual {v2, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    if-ltz v2, :cond_5

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    :cond_5
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-static {v0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->wrap(Ljava/lang/Object;)Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;

    move-result-object p0

    return-object p0

    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not convert "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string v1, " to KeyBoxByteBuffer"

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {v0, p0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public bN(I)[B
    .locals 1

    if-ltz p1, :cond_1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_0

    new-array p1, p1, [B

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size exceeds buffer remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size less than 0"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public consume(I)V
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->remaining()I

    move-result v0

    if-gt p1, v0, :cond_1

    :goto_0
    add-int/lit8 p1, p1, -0x1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "size exceeds buffer remaining"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public hasRemaining()Z
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->hasRemaining()Z

    move-result v0

    return v0
.end method

.method public position()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    return v0
.end method

.method public position(I)V
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-void
.end method

.method public rangeOf(II)[B
    .locals 3

    sub-int v0, p2, p1

    if-ltz v0, :cond_1

    if-ltz p1, :cond_1

    iget-object v1, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1}, Ljava/nio/ByteBuffer;->limit()I

    move-result v1

    if-gt p2, v1, :cond_0

    iget-object p2, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result p2

    iget-object v1, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    new-array p1, v0, [B

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->get([B)Ljava/nio/ByteBuffer;

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    return-object p1

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "range exceeds buffer remaining"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalid range "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ":"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remaining()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    return v0
.end method

.method public size()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    add-int/lit8 v0, v0, -0x14

    return v0
.end method

.method public u16()I
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x8

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v1

    or-int/2addr v0, v1

    return v0
.end method

.method public u32()J
    .locals 2

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v0

    shl-int/lit8 v0, v0, 0x18

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v1

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    invoke-virtual {p0}, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->u8()I

    move-result v1

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public u8()I
    .locals 1

    iget-object v0, p0, Lorg/bouncycastle/gpg/keybox/KeyBoxByteBuffer;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->get()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method
