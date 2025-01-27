.class final Lio/netty/buffer/AdvancedLeakAwareByteBuf;
.super Lio/netty/buffer/SimpleLeakAwareByteBuf;
.source "AdvancedLeakAwareByteBuf.java"


# static fields
.field private static final ACQUIRE_AND_RELEASE_ONLY:Z

.field private static final PROP_ACQUIRE_AND_RELEASE_ONLY:Ljava/lang/String; = "io.netty.leakDetection.acquireAndReleaseOnly"

.field private static final logger:Lio/netty/util/internal/logging/InternalLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 41
    const-class v0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    invoke-static {v0}, Lio/netty/util/internal/logging/InternalLoggerFactory;->getInstance(Ljava/lang/Class;)Lio/netty/util/internal/logging/InternalLogger;

    move-result-object v1

    sput-object v1, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->logger:Lio/netty/util/internal/logging/InternalLogger;

    .line 44
    const-string v2, "io.netty.leakDetection.acquireAndReleaseOnly"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Lio/netty/util/internal/SystemPropertyUtil;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sput-boolean v3, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->ACQUIRE_AND_RELEASE_ONLY:Z

    .line 46
    invoke-interface {v1}, Lio/netty/util/internal/logging/InternalLogger;->isDebugEnabled()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 47
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    const-string v4, "-D{}: {}"

    invoke-interface {v1, v4, v2, v3}, Lio/netty/util/internal/logging/InternalLogger;->debug(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 50
    :cond_0
    const-string v1, "touch"

    const-string v2, "recordLeakNonRefCountingOperation"

    filled-new-array {v1, v2}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/util/ResourceLeakDetector;->addExclusions(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 52
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V
    .locals 0
    .param p1, "wrapped"    # Lio/netty/buffer/ByteBuf;
    .param p2, "trackedByteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 59
    .local p3, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    .line 60
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V
    .locals 0
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 55
    .local p2, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    .line 56
    return-void
.end method

.method static recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 63
    .local p0, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    sget-boolean v0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->ACQUIRE_AND_RELEASE_ONLY:Z

    if-nez v0, :cond_0

    .line 64
    invoke-interface {p0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 66
    :cond_0
    return-void
.end method


# virtual methods
.method public asReadOnly()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 922
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 923
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->asReadOnly()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bytesBefore(B)I
    .locals 1
    .param p1, "value"    # B

    .line 652
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 653
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->bytesBefore(B)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IB)I
    .locals 1
    .param p1, "length"    # I
    .param p2, "value"    # B

    .line 658
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 659
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->bytesBefore(IB)I

    move-result v0

    return v0
.end method

.method public bytesBefore(IIB)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "value"    # B

    .line 664
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 665
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->bytesBefore(IIB)I

    move-result v0

    return v0
.end method

.method public capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "newCapacity"    # I

    .line 754
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 755
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->capacity(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 694
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 695
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->copy()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 700
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 701
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->copy(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 124
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 125
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->discardReadBytes()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 130
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 131
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->discardSomeReadBytes()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public duplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 112
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 113
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ensureWritable(IZ)I
    .locals 1
    .param p1, "minWritableBytes"    # I
    .param p2, "force"    # Z

    .line 142
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 143
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->ensureWritable(IZ)I

    move-result v0

    return v0
.end method

.method public ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "minWritableBytes"    # I

    .line 136
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 137
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public forEachByte(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 676
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 677
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByte(Lio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 670
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 671
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->forEachByte(Lio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(IILio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;

    .line 688
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 689
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public forEachByteDesc(Lio/netty/util/ByteProcessor;)I
    .locals 1
    .param p1, "processor"    # Lio/netty/util/ByteProcessor;

    .line 682
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 683
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->forEachByteDesc(Lio/netty/util/ByteProcessor;)I

    move-result v0

    return v0
.end method

.method public getBoolean(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 148
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 149
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public getByte(I)B
    .locals 1
    .param p1, "index"    # I

    .line 154
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 155
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getByte(I)B

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 898
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 899
    invoke-super/range {p0 .. p5}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 268
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 269
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILjava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 226
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 227
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 232
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 233
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 238
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 239
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 262
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 263
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 256
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 257
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 244
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 245
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 250
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 251
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getChar(I)C
    .locals 1
    .param p1, "index"    # I

    .line 208
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 209
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getChar(I)C

    move-result v0

    return v0
.end method

.method public getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 274
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 275
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getCharSequence(IILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getDouble(I)D
    .locals 2
    .param p1, "index"    # I

    .line 220
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 221
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1
    .param p1, "index"    # I

    .line 214
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 215
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getFloat(I)F

    move-result v0

    return v0
.end method

.method public getInt(I)I
    .locals 1
    .param p1, "index"    # I

    .line 190
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 191
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getInt(I)I

    move-result v0

    return v0
.end method

.method public getIntLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 784
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 785
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getIntLE(I)I

    move-result v0

    return v0
.end method

.method public getLong(I)J
    .locals 2
    .param p1, "index"    # I

    .line 202
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 203
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getLongLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 796
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 797
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getLongLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 178
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 179
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getMedium(I)I

    move-result v0

    return v0
.end method

.method public getMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 772
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 773
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getMediumLE(I)I

    move-result v0

    return v0
.end method

.method public getShort(I)S
    .locals 1
    .param p1, "index"    # I

    .line 166
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 167
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getShort(I)S

    move-result v0

    return v0
.end method

.method public getShortLE(I)S
    .locals 1
    .param p1, "index"    # I

    .line 760
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 761
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getShortLE(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedByte(I)S
    .locals 1
    .param p1, "index"    # I

    .line 160
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 161
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedByte(I)S

    move-result v0

    return v0
.end method

.method public getUnsignedInt(I)J
    .locals 2
    .param p1, "index"    # I

    .line 196
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 197
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedInt(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedIntLE(I)J
    .locals 2
    .param p1, "index"    # I

    .line 790
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 791
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedIntLE(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUnsignedMedium(I)I
    .locals 1
    .param p1, "index"    # I

    .line 184
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 185
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedMedium(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedMediumLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 778
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 779
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedMediumLE(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShort(I)I
    .locals 1
    .param p1, "index"    # I

    .line 172
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 173
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedShort(I)I

    move-result v0

    return v0
.end method

.method public getUnsignedShortLE(I)I
    .locals 1
    .param p1, "index"    # I

    .line 766
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 767
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->getUnsignedShortLE(I)I

    move-result v0

    return v0
.end method

.method public indexOf(IIB)I
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .param p3, "value"    # B

    .line 646
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 647
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->indexOf(IIB)I

    move-result v0

    return v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 736
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 737
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method protected newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/AdvancedLeakAwareByteBuf;
    .locals 1
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "trackedByteBuf"    # Lio/netty/buffer/ByteBuf;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/buffer/ByteBuf;",
            "Lio/netty/util/ResourceLeakTracker<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/AdvancedLeakAwareByteBuf;"
        }
    .end annotation

    .line 965
    .local p3, "leakTracker":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    new-instance v0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    invoke-direct {v0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    return-object v0
.end method

.method protected bridge synthetic newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/SimpleLeakAwareByteBuf;
    .locals 0

    .line 36
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->newLeakAwareByteBuf(Lio/netty/buffer/ByteBuf;Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public nioBuffer()Ljava/nio/ByteBuffer;
    .locals 1

    .line 712
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 713
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 718
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 719
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBufferCount()I
    .locals 1

    .line 706
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 707
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->nioBufferCount()I

    move-result v0

    return v0
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 1

    .line 724
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 725
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->nioBuffers()[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 730
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 731
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "endianness"    # Ljava/nio/ByteOrder;

    .line 70
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 71
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBoolean()Z
    .locals 1

    .line 394
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 395
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBoolean()Z

    move-result v0

    return v0
.end method

.method public readByte()B
    .locals 1

    .line 400
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 401
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readByte()B

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 910
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 911
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Ljava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public readBytes(Ljava/nio/channels/GatheringByteChannel;I)I
    .locals 1
    .param p1, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 520
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 521
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Ljava/nio/channels/GatheringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public readBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 472
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 473
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 478
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 479
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 484
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 485
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 490
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 491
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 514
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 515
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 508
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 509
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B

    .line 496
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 497
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 502
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 503
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readChar()C
    .locals 1

    .line 454
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 455
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readChar()C

    move-result v0

    return v0
.end method

.method public readCharSequence(ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "length"    # I
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 526
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 527
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readCharSequence(ILjava/nio/charset/Charset;)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public readDouble()D
    .locals 2

    .line 466
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 467
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readDouble()D

    move-result-wide v0

    return-wide v0
.end method

.method public readFloat()F
    .locals 1

    .line 460
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 461
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readFloat()F

    move-result v0

    return v0
.end method

.method public readInt()I
    .locals 1

    .line 436
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 437
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readInt()I

    move-result v0

    return v0
.end method

.method public readIntLE()I
    .locals 1

    .line 850
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 851
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readIntLE()I

    move-result v0

    return v0
.end method

.method public readLong()J
    .locals 2

    .line 448
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 449
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readLong()J

    move-result-wide v0

    return-wide v0
.end method

.method public readLongLE()J
    .locals 2

    .line 862
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 863
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readLongLE()J

    move-result-wide v0

    return-wide v0
.end method

.method public readMedium()I
    .locals 1

    .line 424
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 425
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readMedium()I

    move-result v0

    return v0
.end method

.method public readMediumLE()I
    .locals 1

    .line 838
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 839
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readMediumLE()I

    move-result v0

    return v0
.end method

.method public readRetainedSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 106
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 107
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readRetainedSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readShort()S
    .locals 1

    .line 412
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 413
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readShort()S

    move-result v0

    return v0
.end method

.method public readShortLE()S
    .locals 1

    .line 826
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 827
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readShortLE()S

    move-result v0

    return v0
.end method

.method public readSlice(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 118
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 119
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readSlice(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public readUnsignedByte()S
    .locals 1

    .line 406
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 407
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedByte()S

    move-result v0

    return v0
.end method

.method public readUnsignedInt()J
    .locals 2

    .line 442
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 443
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedInt()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedIntLE()J
    .locals 2

    .line 856
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 857
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedIntLE()J

    move-result-wide v0

    return-wide v0
.end method

.method public readUnsignedMedium()I
    .locals 1

    .line 430
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 431
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedMedium()I

    move-result v0

    return v0
.end method

.method public readUnsignedMediumLE()I
    .locals 1

    .line 844
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 845
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedMediumLE()I

    move-result v0

    return v0
.end method

.method public readUnsignedShort()I
    .locals 1

    .line 418
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 419
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedShort()I

    move-result v0

    return v0
.end method

.method public readUnsignedShortLE()I
    .locals 1

    .line 832
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 833
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->readUnsignedShortLE()I

    move-result v0

    return v0
.end method

.method public release()Z
    .locals 1

    .line 940
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 941
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->release()Z

    move-result v0

    return v0
.end method

.method public release(I)Z
    .locals 1
    .param p1, "decrement"    # I

    .line 946
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 947
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->release(I)Z

    move-result v0

    return v0
.end method

.method public retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 928
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 929
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retain(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "increment"    # I

    .line 934
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 935
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retainedDuplicate()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 100
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 101
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->retainedDuplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 88
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 89
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->retainedSlice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public retainedSlice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 94
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 95
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->retainedSlice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 280
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 281
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBoolean(IZ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 286
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 287
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 370
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 371
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 904
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 905
    invoke-super/range {p0 .. p5}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 376
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 377
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .line 334
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 335
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 340
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 341
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 346
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 347
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 364
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 365
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 352
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 353
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(I[B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 358
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 359
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 316
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 317
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setChar(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "index"    # I
    .param p2, "sequence"    # Ljava/lang/CharSequence;
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 388
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 389
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setCharSequence(ILjava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 328
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 329
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setDouble(ID)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 322
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 323
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setFloat(IF)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 304
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 305
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setIntLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 808
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 809
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 310
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 311
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setLongLE(IJ)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 820
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 821
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 298
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 299
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setMediumLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 814
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 815
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 292
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 293
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setShortLE(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 802
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 803
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 382
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 383
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 532
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 533
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 76
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 77
    invoke-super {p0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public slice(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 82
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 83
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public toString(IILjava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "charset"    # Ljava/nio/charset/Charset;

    .line 748
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 749
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->toString(IILjava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toString(Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 1
    .param p1, "charset"    # Ljava/nio/charset/Charset;

    .line 742
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 743
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->toString(Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public touch()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 952
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0}, Lio/netty/util/ResourceLeakTracker;->record()V

    .line 953
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "hint"    # Ljava/lang/Object;

    .line 958
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-interface {v0, p1}, Lio/netty/util/ResourceLeakTracker;->record(Ljava/lang/Object;)V

    .line 959
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 36
    invoke-virtual {p0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->touch()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 36
    invoke-virtual {p0, p1}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # Z

    .line 538
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 539
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBoolean(Z)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 544
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 545
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeByte(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Ljava/io/InputStream;I)I
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 628
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 629
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Ljava/io/InputStream;I)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/FileChannel;JI)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/FileChannel;
    .param p2, "position"    # J
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 916
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 917
    invoke-super {p0, p1, p2, p3, p4}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Ljava/nio/channels/FileChannel;JI)I

    move-result v0

    return v0
.end method

.method public writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I
    .locals 1
    .param p1, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 634
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 635
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Ljava/nio/channels/ScatteringByteChannel;I)I

    move-result v0

    return v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 592
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 593
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 598
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 599
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 604
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 605
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 622
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 623
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # [B

    .line 610
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 611
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes([B)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 616
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 617
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 574
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 575
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeChar(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I
    .locals 1
    .param p1, "sequence"    # Ljava/lang/CharSequence;
    .param p2, "charset"    # Ljava/nio/charset/Charset;

    .line 892
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 893
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeCharSequence(Ljava/lang/CharSequence;Ljava/nio/charset/Charset;)I

    move-result v0

    return v0
.end method

.method public writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # D

    .line 586
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 587
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeDouble(D)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 580
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 581
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeFloat(F)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 562
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 563
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeIntLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 880
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 881
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeIntLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # J

    .line 568
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 569
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeLongLE(J)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # J

    .line 886
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 887
    invoke-super {p0, p1, p2}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeLongLE(J)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 556
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 557
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeMediumLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 874
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 875
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeMediumLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 550
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 551
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeShortLE(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "value"    # I

    .line 868
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 869
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeShortLE(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "length"    # I

    .line 640
    iget-object v0, p0, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->leak:Lio/netty/util/ResourceLeakTracker;

    invoke-static {v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;->recordLeakNonRefCountingOperation(Lio/netty/util/ResourceLeakTracker;)V

    .line 641
    invoke-super {p0, p1}, Lio/netty/buffer/SimpleLeakAwareByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method
