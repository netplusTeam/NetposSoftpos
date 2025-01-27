.class public Lorg/bouncycastle/bcpg/BCPGOutputStream;
.super Ljava/io/OutputStream;

# interfaces
.implements Lorg/bouncycastle/bcpg/PacketTags;
.implements Lorg/bouncycastle/bcpg/CompressionAlgorithmTags;


# static fields
.field private static final BUF_SIZE_POWER:I = 0x10


# instance fields
.field out:Ljava/io/OutputStream;

.field private partialBuffer:[B

.field private partialBufferLength:I

.field private partialOffset:I

.field private partialPower:I


# direct methods
.method public constructor <init>(Ljava/io/OutputStream;)V
    .locals 0

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x1

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;IJZ)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const-wide v0, 0xffffffffL

    cmp-long p1, p3, v0

    if-lez p1, :cond_0

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    const/high16 p1, 0x10000

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    new-array p1, p1, [B

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    const/16 p1, 0x10

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p2

    move v2, p5

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/OutputStream;I[B)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    iput-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/4 v2, 0x0

    const/4 v3, 0x1

    const-wide/16 v4, 0x0

    move-object v0, p0

    move v1, p2

    invoke-direct/range {v0 .. v5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    iput-object p3, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    array-length p1, p3

    const/4 p2, 0x0

    iput p2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    :goto_0
    const/4 p3, 0x1

    if-eq p1, p3, :cond_0

    ushr-int/lit8 p1, p1, 0x1

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    goto :goto_0

    :cond_0
    iget p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    const/16 v0, 0x1e

    if-gt p1, v0, :cond_1

    shl-int p1, p3, p1

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    iput p2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    return-void

    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string p2, "Buffer cannot be greater than 2^30 in length."

    invoke-direct {p1, p2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private partialFlush(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    int-to-long v1, p1

    invoke-direct {p0, v1, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeNewPacketLength(J)V

    iget-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    iget v2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialPower:I

    or-int/lit16 v1, v1, 0xe0

    invoke-virtual {p1, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    iget v2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    invoke-virtual {p1, v1, v0, v2}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    iput v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    return-void
.end method

.method private writeHeader(IZZJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0, v1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialFlush(Z)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    :cond_0
    if-eqz p2, :cond_4

    shl-int/lit8 p1, p1, 0x2

    or-int/lit16 p1, p1, 0x80

    if-eqz p3, :cond_1

    or-int/lit8 p1, p1, 0x3

    :goto_0
    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    goto :goto_3

    :cond_1
    const-wide/16 p2, 0xff

    cmp-long p2, p4, p2

    if-gtz p2, :cond_2

    :goto_1
    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    long-to-int p1, p4

    int-to-byte p1, p1

    goto :goto_0

    :cond_2
    const-wide/32 p2, 0xffff

    cmp-long p2, p4, p2

    const/16 p3, 0x8

    if-gtz p2, :cond_3

    or-int/2addr p1, v1

    goto :goto_2

    :cond_3
    or-int/lit8 p1, p1, 0x2

    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 p1, 0x18

    shr-long p1, p4, p1

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    const/16 p1, 0x10

    shr-long p1, p4, p1

    long-to-int p1, p1

    int-to-byte p1, p1

    :goto_2
    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    shr-long p1, p4, p3

    long-to-int p1, p1

    int-to-byte p1, p1

    goto :goto_1

    :cond_4
    or-int/lit8 p1, p1, 0x40

    or-int/lit16 p1, p1, 0x80

    invoke-virtual {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write(I)V

    if-eqz p3, :cond_5

    const/4 p1, 0x0

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    goto :goto_3

    :cond_5
    invoke-direct {p0, p4, p5}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeNewPacketLength(J)V

    :goto_3
    return-void
.end method

.method private writeNewPacketLength(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const-wide/16 v0, 0xc0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    :goto_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    long-to-int p1, p1

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_1

    :cond_0
    const-wide/16 v2, 0x20bf

    cmp-long v2, p1, v2

    const/16 v3, 0x8

    if-gtz v2, :cond_1

    sub-long/2addr p1, v0

    iget-object v2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    shr-long v3, p1, v3

    const-wide/16 v5, 0xff

    and-long/2addr v3, v5

    add-long/2addr v3, v0

    long-to-int v0, v3

    int-to-byte v0, v0

    invoke-virtual {v2, v0}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0xff

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x18

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    const/16 v1, 0x10

    shr-long v1, p1, v1

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    shr-long v1, p1, v3

    long-to-int v1, v1

    int-to-byte v1, v1

    invoke-virtual {v0, v1}, Ljava/io/OutputStream;->write(I)V

    goto :goto_0

    :goto_1
    return-void
.end method

.method private writePartial(B)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialFlush(Z)V

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    aput-byte p1, v0, v1

    return-void
.end method

.method private writePartial([BII)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    invoke-direct {p0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialFlush(Z)V

    :cond_0
    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    sub-int v3, v0, v1

    if-gt p3, v3, :cond_1

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    invoke-static {p1, p2, v0, v1, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_0
    iget p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    add-int/2addr p1, p3

    iput p1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    sub-int/2addr v0, v1

    invoke-static {p1, p2, v3, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    iget v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialOffset:I

    sub-int v3, v0, v1

    add-int/2addr p2, v3

    sub-int/2addr v0, v1

    :goto_1
    sub-int/2addr p3, v0

    invoke-direct {p0, v2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialFlush(Z)V

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    if-le p3, v0, :cond_2

    iget-object v1, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    invoke-static {p1, p2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iget v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBufferLength:I

    add-int/2addr p2, v0

    goto :goto_1

    :cond_2
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    invoke-static {p1, p2, v0, v2, p3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_0

    :goto_2
    return-void
.end method


# virtual methods
.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->finish()V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->close()V

    return-void
.end method

.method public finish()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialFlush(Z)V

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bouncycastle/util/Arrays;->fill([BB)V

    const/4 v0, 0x0

    iput-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    :cond_0
    return-void
.end method

.method public flush()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0}, Ljava/io/OutputStream;->flush()V

    return-void
.end method

.method public write(I)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    if-eqz v0, :cond_0

    int-to-byte p1, p1

    invoke-direct {p0, p1}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePartial(B)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1}, Ljava/io/OutputStream;->write(I)V

    :goto_0
    return-void
.end method

.method public write([BII)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->partialBuffer:[B

    if-eqz v0, :cond_0

    invoke-direct {p0, p1, p2, p3}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writePartial([BII)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/bcpg/BCPGOutputStream;->out:Ljava/io/OutputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/OutputStream;->write([BII)V

    :goto_0
    return-void
.end method

.method public writeObject(Lorg/bouncycastle/bcpg/BCPGObject;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/bouncycastle/bcpg/BCPGObject;->encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V

    return-void
.end method

.method writePacket(I[BZ)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    array-length v0, p2

    int-to-long v5, v0

    const/4 v4, 0x0

    move-object v1, p0

    move v2, p1

    move v3, p3

    invoke-direct/range {v1 .. v6}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->writeHeader(IZZJ)V

    invoke-virtual {p0, p2}, Lorg/bouncycastle/bcpg/BCPGOutputStream;->write([B)V

    return-void
.end method

.method public writePacket(Lorg/bouncycastle/bcpg/ContainedPacket;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1, p0}, Lorg/bouncycastle/bcpg/ContainedPacket;->encode(Lorg/bouncycastle/bcpg/BCPGOutputStream;)V

    return-void
.end method
