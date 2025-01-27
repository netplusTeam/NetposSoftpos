.class final Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;
.super Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter;
.source "BinaryWriter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnsafeDirectWriter"
.end annotation


# instance fields
.field private buffer:Ljava/nio/ByteBuffer;

.field private bufferOffset:J

.field private limitMinusOne:J

.field private pos:J


# direct methods
.method constructor <init>(Lcom/google/crypto/tink/shaded/protobuf/BufferAllocator;I)V
    .locals 1
    .param p1, "alloc"    # Lcom/google/crypto/tink/shaded/protobuf/BufferAllocator;
    .param p2, "chunkSize"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "alloc",
            "chunkSize"
        }
    .end annotation

    .line 2549
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter;-><init>(Lcom/google/crypto/tink/shaded/protobuf/BufferAllocator;ILcom/google/crypto/tink/shaded/protobuf/BinaryWriter$1;)V

    .line 2550
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 2551
    return-void
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 2542
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->isSupported()Z

    move-result v0

    return v0
.end method

.method private bufferPos()I
    .locals 4

    .line 2613
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private bytesWrittenToCurrentBuffer()I
    .locals 4

    .line 2593
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    iget-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private static isSupported()Z
    .locals 1

    .line 2555
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->hasUnsafeByteBufferOperations()Z

    move-result v0

    return v0
.end method

.method private nextBuffer()V
    .locals 1

    .line 2559
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer()Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;)V

    .line 2560
    return-void
.end method

.method private nextBuffer(I)V
    .locals 1
    .param p1, "capacity"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "capacity"
        }
    .end annotation

    .line 2563
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->newDirectBuffer(I)Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;)V

    .line 2564
    return-void
.end method

.method private nextBuffer(Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;)V
    .locals 5
    .param p1, "allocatedBuffer"    # Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "allocatedBuffer"
        }
    .end annotation

    .line 2567
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;->hasNioBuffer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2570
    invoke-virtual {p1}, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 2571
    .local v0, "nioBuffer":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->isDirect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2575
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->finishCurrentBuffer()V

    .line 2576
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-virtual {v1, p1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 2578
    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2579
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->capacity()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 2580
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2582
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-static {v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->addressOffset(Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    .line 2583
    iget-object v3, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->limit()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    int-to-long v3, v3

    add-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2584
    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2585
    return-void

    .line 2572
    :cond_0
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Allocator returned non-direct buffer"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2568
    .end local v0    # "nioBuffer":Ljava/nio/ByteBuffer;
    :cond_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Allocated buffer does not have NIO buffer"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private spaceLeft()I
    .locals 1

    .line 2597
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private writeVarint32FiveBytes(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2809
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x1c

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2810
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2811
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2812
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2813
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2814
    return-void
.end method

.method private writeVarint32FourBytes(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2802
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x15

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2803
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2804
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2805
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2806
    return-void
.end method

.method private writeVarint32OneByte(I)V
    .locals 4
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2787
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v2, p1

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2788
    return-void
.end method

.method private writeVarint32ThreeBytes(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2796
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2797
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    and-int/lit8 v4, v4, 0x7f

    or-int/lit16 v4, v4, 0x80

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2798
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2799
    return-void
.end method

.method private writeVarint32TwoBytes(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2791
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v4, p1, 0x7

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2792
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v2, p1, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2793
    return-void
.end method

.method private writeVarint64EightBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2902
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2903
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2904
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2905
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2906
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2907
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2908
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2909
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2910
    return-void
.end method

.method private writeVarint64FiveBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2875
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2876
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2877
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2878
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2879
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2880
    return-void
.end method

.method private writeVarint64FourBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2868
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2869
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2870
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2871
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2872
    return-void
.end method

.method private writeVarint64NineBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2913
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2914
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2915
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2916
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2917
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2918
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2919
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2920
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2921
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2922
    return-void
.end method

.method private writeVarint64OneByte(J)V
    .locals 4
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2853
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2854
    return-void
.end method

.method private writeVarint64SevenBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2892
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2893
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2894
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2895
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2896
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2897
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2898
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2899
    return-void
.end method

.method private writeVarint64SixBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2883
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2884
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2885
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2886
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2887
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2888
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2889
    return-void
.end method

.method private writeVarint64TenBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2925
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x3f

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2926
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2927
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x31

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2928
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x2a

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2929
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x23

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2930
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x1c

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2931
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x15

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2932
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0xe

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2933
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    and-long/2addr v4, v6

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2934
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2935
    return-void
.end method

.method private writeVarint64ThreeBytes(J)V
    .locals 10
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2862
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v4, p1

    ushr-int/lit8 v4, v4, 0xe

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2863
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    const-wide/16 v6, 0x7f

    and-long/2addr v4, v6

    const-wide/16 v8, 0x80

    or-long/2addr v4, v8

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2864
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-long v2, p1, v6

    or-long/2addr v2, v8

    long-to-int v2, v2

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2865
    return-void
.end method

.method private writeVarint64TwoBytes(J)V
    .locals 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2857
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/4 v4, 0x7

    ushr-long v4, p1, v4

    long-to-int v4, v4

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2858
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    and-int/lit8 v2, v2, 0x7f

    or-int/lit16 v2, v2, 0x80

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2859
    return-void
.end method


# virtual methods
.method finishCurrentBuffer()V
    .locals 2

    .line 2602
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    if-eqz v0, :cond_0

    .line 2603
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 2605
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 2606
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    .line 2607
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 2608
    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->limitMinusOne:J

    .line 2610
    :cond_0
    return-void
.end method

.method public getTotalBytesWritten()I
    .locals 2

    .line 2589
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bytesWrittenToCurrentBuffer()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method requireSpace(I)V
    .locals 1
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "size"
        }
    .end annotation

    .line 3076
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p1, :cond_0

    .line 3077
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 3079
    :cond_0
    return-void
.end method

.method public write(B)V
    .locals 4
    .param p1, "value"    # B
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3009
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    invoke-static {v0, v1, p1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 3010
    return-void
.end method

.method public write(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3044
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3045
    .local v0, "length":I
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3046
    invoke-direct {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 3049
    :cond_0
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3050
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3051
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3052
    return-void
.end method

.method public write([BII)V
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 3014
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 3015
    invoke-direct {p0, p3}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer(I)V

    .line 3018
    :cond_0
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3019
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3020
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3021
    return-void
.end method

.method public writeBool(IZ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2667
    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2668
    int-to-byte v0, p2

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2669
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2670
    return-void
.end method

.method writeBool(Z)V
    .locals 1
    .param p1, "value"    # Z
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2763
    int-to-byte v0, p1

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->write(B)V

    .line 2764
    return-void
.end method

.method public writeBytes(ILcom/google/crypto/tink/shaded/protobuf/ByteString;)V
    .locals 2
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Lcom/google/crypto/tink/shaded/protobuf/ByteString;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2685
    :try_start_0
    invoke-virtual {p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->writeToReverse(Lcom/google/crypto/tink/shaded/protobuf/ByteOutput;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2689
    nop

    .line 2691
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2692
    invoke-virtual {p2}, Lcom/google/crypto/tink/shaded/protobuf/ByteString;->size()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2693
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2694
    return-void

    .line 2686
    :catch_0
    move-exception v0

    .line 2688
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public writeEndGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2739
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2740
    return-void
.end method

.method writeFixed32(I)V
    .locals 6
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2939
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x18

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2940
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x10

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2941
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    shr-int/lit8 v4, p1, 0x8

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2942
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit16 v2, p1, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2943
    return-void
.end method

.method public writeFixed32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2639
    const/16 v0, 0x9

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2640
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed32(I)V

    .line 2641
    const/4 v0, 0x5

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2642
    return-void
.end method

.method public writeFixed64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2660
    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2661
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeFixed64(J)V

    .line 2662
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2663
    return-void
.end method

.method writeFixed64(J)V
    .locals 6
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2947
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const-wide/16 v2, 0x1

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x38

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2948
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x30

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2949
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x28

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2950
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x20

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2951
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x18

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2952
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x10

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2953
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v4, v0, v2

    iput-wide v4, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    const/16 v4, 0x8

    shr-long v4, p1, v4

    long-to-int v4, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    invoke-static {v0, v1, v4}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2954
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v2, v0, v2

    iput-wide v2, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    long-to-int v2, p1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    invoke-static {v0, v1, v2}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2955
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2718
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2719
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v0

    invoke-virtual {v0, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2720
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2721
    return-void
.end method

.method public writeGroup(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2725
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2726
    invoke-interface {p3, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2727
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2728
    return-void
.end method

.method writeInt32(I)V
    .locals 2
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2744
    if-ltz p1, :cond_0

    .line 2745
    invoke-virtual {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    goto :goto_0

    .line 2747
    :cond_0
    int-to-long v0, p1

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2749
    :goto_0
    return-void
.end method

.method public writeInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2625
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2626
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeInt32(I)V

    .line 2627
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2628
    return-void
.end method

.method public writeLazy(Ljava/nio/ByteBuffer;)V
    .locals 5
    .param p1, "value"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 3056
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    .line 3057
    .local v0, "length":I
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v1

    if-ge v1, v0, :cond_0

    .line 3060
    iget v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 3061
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;->wrap(Ljava/nio/ByteBuffer;)Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3065
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 3066
    return-void

    .line 3069
    :cond_0
    iget-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v3, v0

    sub-long/2addr v1, v3

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3070
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v2

    add-int/lit8 v2, v2, 0x1

    invoke-virtual {v1, v2}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3071
    iget-object v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v1, p1}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 3072
    return-void
.end method

.method public writeLazy([BII)V
    .locals 4
    .param p1, "value"    # [B
    .param p2, "offset"    # I
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "value",
            "offset",
            "length"
        }
    .end annotation

    .line 3025
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->spaceLeft()I

    move-result v0

    if-ge v0, p3, :cond_0

    .line 3028
    iget v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    add-int/2addr v0, p3

    iput v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->totalDoneBytes:I

    .line 3029
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffers:Ljava/util/ArrayDeque;

    invoke-static {p1, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;->wrap([BII)Lcom/google/crypto/tink/shaded/protobuf/AllocatedBuffer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayDeque;->addFirst(Ljava/lang/Object;)V

    .line 3033
    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->nextBuffer()V

    .line 3034
    return-void

    .line 3037
    :cond_0
    iget-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-long v2, p3

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    .line 3038
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-direct {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferPos()I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 3039
    iget-object v0, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->buffer:Ljava/nio/ByteBuffer;

    invoke-virtual {v0, p1, p2, p3}, Ljava/nio/ByteBuffer;->put([BII)Ljava/nio/ByteBuffer;

    .line 3040
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2698
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2699
    .local v0, "prevBytes":I
    invoke-static {}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->getInstance()Lcom/google/crypto/tink/shaded/protobuf/Protobuf;

    move-result-object v1

    invoke-virtual {v1, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/Protobuf;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2700
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2701
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2702
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2703
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2704
    return-void
.end method

.method public writeMessage(ILjava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Schema;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/Object;
    .param p3, "schema"    # Lcom/google/crypto/tink/shaded/protobuf/Schema;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value",
            "schema"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2708
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2709
    .local v0, "prevBytes":I
    invoke-interface {p3, p2, p0}, Lcom/google/crypto/tink/shaded/protobuf/Schema;->writeTo(Ljava/lang/Object;Lcom/google/crypto/tink/shaded/protobuf/Writer;)V

    .line 2710
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2711
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2712
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2713
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2714
    return-void
.end method

.method writeSInt32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2753
    invoke-static {p1}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->encodeZigZag32(I)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2754
    return-void
.end method

.method public writeSInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2632
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2633
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt32(I)V

    .line 2634
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2635
    return-void
.end method

.method public writeSInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2653
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2654
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeSInt64(J)V

    .line 2655
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2656
    return-void
.end method

.method writeSInt64(J)V
    .locals 2
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2758
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/CodedOutputStream;->encodeZigZag64(J)J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2759
    return-void
.end method

.method public writeStartGroup(I)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "fieldNumber"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2733
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2734
    return-void
.end method

.method public writeString(ILjava/lang/String;)V
    .locals 3
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2674
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v0

    .line 2675
    .local v0, "prevBytes":I
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeString(Ljava/lang/String;)V

    .line 2676
    invoke-virtual {p0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->getTotalBytesWritten()I

    move-result v1

    sub-int/2addr v1, v0

    .line 2677
    .local v1, "length":I
    const/16 v2, 0xa

    invoke-virtual {p0, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2678
    invoke-virtual {p0, v1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2679
    const/4 v2, 0x2

    invoke-virtual {p0, p1, v2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2680
    return-void
.end method

.method writeString(Ljava/lang/String;)V
    .locals 12
    .param p1, "in"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "in"
        }
    .end annotation

    .line 2960
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2963
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 2966
    .local v0, "i":I
    :goto_0
    const/16 v1, 0x80

    const-wide/16 v2, 0x1

    if-ltz v0, :cond_0

    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move v5, v4

    .local v5, "c":C
    if-ge v4, v1, :cond_0

    .line 2967
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v1, v6, v2

    iput-wide v1, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v1, v5

    invoke-static {v6, v7, v1}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2966
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 2969
    .end local v5    # "c":C
    :cond_0
    const/4 v4, -0x1

    if-ne v0, v4, :cond_1

    .line 2971
    return-void

    .line 2973
    :cond_1
    :goto_1
    if-ltz v0, :cond_8

    .line 2974
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 2975
    .restart local v5    # "c":C
    if-ge v5, v1, :cond_2

    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v8, v6, v8

    if-ltz v8, :cond_2

    .line 2976
    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    int-to-byte v8, v5

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    goto/16 :goto_2

    .line 2977
    :cond_2
    const/16 v6, 0x800

    if-ge v5, v6, :cond_3

    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    cmp-long v8, v6, v8

    if-lez v8, :cond_3

    .line 2978
    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2979
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    or-int/lit16 v8, v8, 0x3c0

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    goto/16 :goto_2

    .line 2980
    :cond_3
    const v6, 0xd800

    if-lt v5, v6, :cond_4

    const v6, 0xdfff

    if-ge v6, v5, :cond_5

    :cond_4
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    add-long/2addr v8, v2

    cmp-long v8, v6, v8

    if-lez v8, :cond_5

    .line 2983
    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v8, v5, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2984
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0x6

    and-int/lit8 v8, v8, 0x3f

    or-int/2addr v8, v1

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2985
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v8, v6, v2

    iput-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v8, v5, 0xc

    or-int/lit16 v8, v8, 0x1e0

    int-to-byte v8, v8

    invoke-static {v6, v7, v8}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    goto :goto_2

    .line 2986
    :cond_5
    iget-wide v6, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->bufferOffset:J

    const-wide/16 v10, 0x2

    add-long/2addr v8, v10

    cmp-long v6, v6, v8

    if-lez v6, :cond_7

    .line 2990
    if-eqz v0, :cond_6

    add-int/lit8 v6, v0, -0x1

    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v6

    move v7, v6

    .local v7, "high":C
    invoke-static {v6, v5}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 2993
    add-int/lit8 v0, v0, -0x1

    .line 2994
    invoke-static {v7, v5}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    .line 2995
    .local v6, "codePoint":I
    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    and-int/lit8 v10, v6, 0x3f

    or-int/2addr v10, v1

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2996
    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v10, v6, 0x6

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v1

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2997
    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v10, v6, 0xc

    and-int/lit8 v10, v10, 0x3f

    or-int/2addr v10, v1

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2998
    iget-wide v8, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    sub-long v10, v8, v2

    iput-wide v10, p0, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->pos:J

    ushr-int/lit8 v10, v6, 0x12

    or-int/lit16 v10, v10, 0xf0

    int-to-byte v10, v10

    invoke-static {v8, v9, v10}, Lcom/google/crypto/tink/shaded/protobuf/UnsafeUtil;->putByte(JB)V

    .line 2999
    .end local v6    # "codePoint":I
    .end local v7    # "high":C
    goto :goto_2

    .line 2991
    :cond_6
    new-instance v1, Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException;

    add-int/lit8 v2, v0, -0x1

    invoke-direct {v1, v2, v0}, Lcom/google/crypto/tink/shaded/protobuf/Utf8$UnpairedSurrogateException;-><init>(II)V

    throw v1

    .line 3001
    :cond_7
    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 3002
    add-int/lit8 v0, v0, 0x1

    .line 2973
    :goto_2
    add-int/2addr v0, v4

    goto/16 :goto_1

    .line 3005
    .end local v5    # "c":C
    :cond_8
    return-void
.end method

.method writeTag(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "wireType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "wireType"
        }
    .end annotation

    .line 2768
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/WireFormat;->makeTag(II)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2769
    return-void
.end method

.method public writeUInt32(II)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2618
    const/16 v0, 0xa

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2619
    invoke-virtual {p0, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32(I)V

    .line 2620
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2621
    return-void
.end method

.method public writeUInt64(IJ)V
    .locals 1
    .param p1, "fieldNumber"    # I
    .param p2, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "fieldNumber",
            "value"
        }
    .end annotation

    .line 2646
    const/16 v0, 0xf

    invoke-virtual {p0, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->requireSpace(I)V

    .line 2647
    invoke-virtual {p0, p2, p3}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64(J)V

    .line 2648
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeTag(II)V

    .line 2649
    return-void
.end method

.method writeVarint32(I)V
    .locals 1
    .param p1, "value"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2773
    and-int/lit8 v0, p1, -0x80

    if-nez v0, :cond_0

    .line 2774
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32OneByte(I)V

    goto :goto_0

    .line 2775
    :cond_0
    and-int/lit16 v0, p1, -0x4000

    if-nez v0, :cond_1

    .line 2776
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32TwoBytes(I)V

    goto :goto_0

    .line 2777
    :cond_1
    const/high16 v0, -0x200000

    and-int/2addr v0, p1

    if-nez v0, :cond_2

    .line 2778
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32ThreeBytes(I)V

    goto :goto_0

    .line 2779
    :cond_2
    const/high16 v0, -0x10000000

    and-int/2addr v0, p1

    if-nez v0, :cond_3

    .line 2780
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FourBytes(I)V

    goto :goto_0

    .line 2782
    :cond_3
    invoke-direct {p0, p1}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint32FiveBytes(I)V

    .line 2784
    :goto_0
    return-void
.end method

.method writeVarint64(J)V
    .locals 1
    .param p1, "value"    # J
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "value"
        }
    .end annotation

    .line 2818
    invoke-static {p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter;->access$200(J)B

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 2847
    :pswitch_0
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TenBytes(J)V

    goto :goto_0

    .line 2844
    :pswitch_1
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64NineBytes(J)V

    .line 2845
    goto :goto_0

    .line 2841
    :pswitch_2
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64EightBytes(J)V

    .line 2842
    goto :goto_0

    .line 2838
    :pswitch_3
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SevenBytes(J)V

    .line 2839
    goto :goto_0

    .line 2835
    :pswitch_4
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64SixBytes(J)V

    .line 2836
    goto :goto_0

    .line 2832
    :pswitch_5
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FiveBytes(J)V

    .line 2833
    goto :goto_0

    .line 2829
    :pswitch_6
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64FourBytes(J)V

    .line 2830
    goto :goto_0

    .line 2826
    :pswitch_7
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64ThreeBytes(J)V

    .line 2827
    goto :goto_0

    .line 2823
    :pswitch_8
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64TwoBytes(J)V

    .line 2824
    goto :goto_0

    .line 2820
    :pswitch_9
    invoke-direct {p0, p1, p2}, Lcom/google/crypto/tink/shaded/protobuf/BinaryWriter$UnsafeDirectWriter;->writeVarint64OneByte(J)V

    .line 2821
    nop

    .line 2850
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
