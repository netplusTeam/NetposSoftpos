.class public Lio/netty/buffer/CompositeByteBuf;
.super Lio/netty/buffer/AbstractReferenceCountedByteBuf;
.source "CompositeByteBuf.java"

# interfaces
.implements Ljava/lang/Iterable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;,
        Lio/netty/buffer/CompositeByteBuf$Component;,
        Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/buffer/AbstractReferenceCountedByteBuf;",
        "Ljava/lang/Iterable<",
        "Lio/netty/buffer/ByteBuf;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field static final BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "[B>;"
        }
    .end annotation
.end field

.field static final BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "Ljava/nio/ByteBuffer;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_ITERATOR:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation
.end field

.field private static final EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;


# instance fields
.field private final alloc:Lio/netty/buffer/ByteBufAllocator;

.field private componentCount:I

.field private components:[Lio/netty/buffer/CompositeByteBuf$Component;

.field private final direct:Z

.field private freed:Z

.field private lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

.field private final maxNumComponents:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    nop

    .line 51
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->nioBuffer()Ljava/nio/ByteBuffer;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    .line 52
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    .line 109
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$1;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$1;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_ARRAY_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    .line 120
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$2;

    invoke-direct {v0}, Lio/netty/buffer/CompositeByteBuf$2;-><init>()V

    sput-object v0, Lio/netty/buffer/CompositeByteBuf;->BYTE_BUFFER_WRAPPER:Lio/netty/buffer/CompositeByteBuf$ByteWrapper;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;

    .line 147
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 148
    iput-object p1, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 149
    const/4 v0, 0x0

    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 150
    iput v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 151
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 152
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI)V
    .locals 1
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I

    .line 78
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 79
    return-void
.end method

.method private constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZII)V
    .locals 3
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "initSize"    # I

    .line 64
    const v0, 0x7fffffff

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;-><init>(I)V

    .line 66
    const-string v0, "alloc"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/buffer/ByteBufAllocator;

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    .line 67
    const/4 v0, 0x1

    if-lt p3, v0, :cond_0

    .line 72
    iput-boolean p2, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    .line 73
    iput p3, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    .line 74
    invoke-static {p4, p3}, Lio/netty/buffer/CompositeByteBuf;->newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    iput-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 75
    return-void

    .line 68
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxNumComponents: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: >= 1)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)V
    .locals 7
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p6, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "TT;>;[TT;I)V"
        }
    .end annotation

    .line 133
    .local p4, "wrapper":Lio/netty/buffer/CompositeByteBuf$ByteWrapper;, "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<TT;>;"
    .local p5, "buffers":[Ljava/lang/Object;, "[TT;"
    array-length v0, p5

    sub-int/2addr v0, p6

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 135
    const/4 v2, 0x0

    const/4 v3, 0x0

    move-object v1, p0

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-direct/range {v1 .. v6}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)I

    .line 136
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 137
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    const/4 v1, 0x0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 138
    return-void
.end method

.method public constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZILjava/lang/Iterable;)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/ByteBufAllocator;",
            "ZI",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)V"
        }
    .end annotation

    .line 96
    .local p4, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    instance-of v0, p4, Ljava/util/Collection;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Ljava/util/Collection;

    .line 97
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    move v0, v1

    .line 96
    :goto_0
    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 99
    invoke-direct {p0, v1, v1, p4}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    .line 100
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 101
    return-void
.end method

.method public varargs constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 82
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;I)V

    .line 83
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/ByteBufAllocator;ZI[Lio/netty/buffer/ByteBuf;I)V
    .locals 2
    .param p1, "alloc"    # Lio/netty/buffer/ByteBufAllocator;
    .param p2, "direct"    # Z
    .param p3, "maxNumComponents"    # I
    .param p4, "buffers"    # [Lio/netty/buffer/ByteBuf;
    .param p5, "offset"    # I

    .line 87
    array-length v0, p4

    sub-int/2addr v0, p5

    invoke-direct {p0, p1, p2, p3, v0}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZII)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0, v0, p4, p5}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 90
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 91
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setIndex0(II)V

    .line 92
    return-void
.end method

.method static synthetic access$200(Lio/netty/buffer/CompositeByteBuf;)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 1
    .param p0, "x0"    # Lio/netty/buffer/CompositeByteBuf;

    .line 49
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    return-object v0
.end method

.method private addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V
    .locals 1
    .param p1, "i"    # I
    .param p2, "c"    # Lio/netty/buffer/CompositeByteBuf$Component;

    .line 2291
    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->shiftComps(II)V

    .line 2292
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aput-object p2, v0, p1

    .line 2293
    return-void
.end method

.method private addComponent0(ZILio/netty/buffer/ByteBuf;)I
    .locals 5
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 274
    if-eqz p3, :cond_5

    .line 275
    const/4 v0, 0x0

    .line 277
    .local v0, "wasAdded":Z
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 280
    invoke-static {p3}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    .line 281
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v1}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v2

    .line 283
    .local v2, "readableBytes":I
    invoke-direct {p0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    .line 284
    const/4 v0, 0x1

    .line 285
    if-lez v2, :cond_0

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    if-ge p2, v3, :cond_0

    .line 286
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    goto :goto_0

    .line 287
    :cond_0
    if-lez p2, :cond_1

    .line 288
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, p2, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-virtual {v1, v3}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    .line 290
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    .line 291
    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    add-int/2addr v3, v2

    iput v3, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 293
    :cond_2
    nop

    .line 295
    if-nez v0, :cond_3

    .line 296
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 293
    :cond_3
    return p2

    .line 295
    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "readableBytes":I
    :catchall_0
    move-exception v1

    if-nez v0, :cond_4

    .line 296
    invoke-virtual {p3}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 298
    :cond_4
    throw v1

    .line 274
    .end local v0    # "wasAdded":Z
    :cond_5
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p1, "increaseIndex"    # Z
    .param p2, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZI",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 505
    .local p3, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    instance-of v0, p3, Lio/netty/buffer/ByteBuf;

    if-eqz v0, :cond_0

    .line 507
    move-object v0, p3

    check-cast v0, Lio/netty/buffer/ByteBuf;

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0

    .line 509
    :cond_0
    const-string v0, "buffers"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 510
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 512
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/buffer/ByteBuf;>;"
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 515
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 516
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lio/netty/buffer/ByteBuf;

    .line 517
    .local v1, "b":Lio/netty/buffer/ByteBuf;
    if-nez v1, :cond_1

    .line 518
    goto :goto_1

    .line 520
    :cond_1
    invoke-direct {p0, p1, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    move-result v2

    add-int/lit8 p2, v2, 0x1

    .line 521
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {p2, v2}, Ljava/lang/Math;->min(II)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move p2, v2

    .line 522
    .end local v1    # "b":Lio/netty/buffer/ByteBuf;
    goto :goto_0

    .line 524
    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_1

    .line 528
    :cond_3
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 529
    return-object p0

    .line 524
    :catchall_0
    move-exception v1

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 525
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    goto :goto_2

    .line 527
    :cond_4
    throw v1
.end method

.method private addComponents0(ZILio/netty/buffer/CompositeByteBuf$ByteWrapper;[Ljava/lang/Object;I)I
    .locals 4
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p5, "offset"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(ZI",
            "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<",
            "TT;>;[TT;I)I"
        }
    .end annotation

    .line 399
    .local p3, "wrapper":Lio/netty/buffer/CompositeByteBuf$ByteWrapper;, "Lio/netty/buffer/CompositeByteBuf$ByteWrapper<TT;>;"
    .local p4, "buffers":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 402
    move v0, p5

    .local v0, "i":I
    array-length v1, p4

    .local v1, "len":I
    :goto_0
    if-ge v0, v1, :cond_3

    .line 403
    aget-object v2, p4, v0

    .line 404
    .local v2, "b":Ljava/lang/Object;, "TT;"
    if-nez v2, :cond_0

    .line 405
    goto :goto_2

    .line 407
    :cond_0
    invoke-interface {p3, v2}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->isEmpty(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 408
    invoke-interface {p3, v2}, Lio/netty/buffer/CompositeByteBuf$ByteWrapper;->wrap(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    invoke-direct {p0, p1, p2, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    .line 409
    .end local p2    # "cIndex":I
    .local v3, "cIndex":I
    iget p2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 410
    .local p2, "size":I
    if-le v3, p2, :cond_1

    .line 411
    move v3, p2

    goto :goto_1

    .line 410
    :cond_1
    move p2, v3

    .line 402
    .end local v2    # "b":Ljava/lang/Object;, "TT;"
    .end local v3    # "cIndex":I
    .local p2, "cIndex":I
    :cond_2
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 415
    .end local v0    # "i":I
    .end local v1    # "len":I
    :cond_3
    :goto_2
    return p2
.end method

.method private addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffers"    # [Lio/netty/buffer/ByteBuf;
    .param p4, "arrOffset"    # I

    .line 362
    array-length v0, p3

    .local v0, "len":I
    sub-int v1, v0, p4

    .line 364
    .local v1, "count":I
    const v2, 0x7fffffff

    .line 366
    .local v2, "ci":I
    :try_start_0
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 367
    invoke-direct {p0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->shiftComps(II)V

    .line 368
    if-lez p2, :cond_0

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, p2, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 369
    .local v3, "nextOffset":I
    :goto_0
    move v2, p2

    :goto_1
    if-ge p4, v0, :cond_2

    .line 370
    aget-object v4, p3, p4

    .line 371
    .local v4, "b":Lio/netty/buffer/ByteBuf;
    if-nez v4, :cond_1

    .line 372
    goto :goto_2

    .line 374
    :cond_1
    invoke-static {v4}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    move-result-object v5

    invoke-direct {p0, v5, v3}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v5

    .line 375
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aput-object v5, v6, v2

    .line 376
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v3, v6

    .line 369
    .end local v4    # "b":Lio/netty/buffer/ByteBuf;
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 p4, p4, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 378
    :cond_2
    :goto_2
    nop

    .line 381
    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-ge v2, v4, :cond_4

    .line 382
    add-int v4, p2, v1

    if-ge v2, v4, :cond_3

    .line 384
    add-int v4, p2, v1

    invoke-direct {p0, v2, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 385
    :goto_3
    if-ge p4, v0, :cond_3

    .line 386
    aget-object v4, p3, p4

    invoke-static {v4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 p4, p4, 0x1

    goto :goto_3

    .line 389
    :cond_3
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 391
    :cond_4
    if-eqz p1, :cond_5

    if-le v2, p2, :cond_5

    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v2, v4, :cond_5

    .line 392
    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, p2

    iget v6, v6, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 378
    :cond_5
    return-object p0

    .line 381
    .end local v3    # "nextOffset":I
    :catchall_0
    move-exception v3

    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-ge v2, v4, :cond_7

    .line 382
    add-int v4, p2, v1

    if-ge v2, v4, :cond_6

    .line 384
    add-int v4, p2, v1

    invoke-direct {p0, v2, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 385
    :goto_4
    if-ge p4, v0, :cond_6

    .line 386
    aget-object v4, p3, p4

    invoke-static {v4}, Lio/netty/util/ReferenceCountUtil;->safeRelease(Ljava/lang/Object;)V

    .line 385
    add-int/lit8 p4, p4, 0x1

    goto :goto_4

    .line 389
    :cond_6
    invoke-direct {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 391
    :cond_7
    if-eqz p1, :cond_8

    if-le v2, p2, :cond_8

    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v2, v4, :cond_8

    .line 392
    iget v4, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v6, v2, -0x1

    aget-object v5, v5, v6

    iget v5, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, p2

    iget v6, v6, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int/2addr v5, v6

    add-int/2addr v4, v5

    iput v4, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 394
    :cond_8
    throw v3
.end method

.method private allocBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "capacity"    # I

    .line 1835
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->direct:Z

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->alloc()Lio/netty/buffer/ByteBufAllocator;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/netty/buffer/ByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private checkComponentIndex(I)V
    .locals 4
    .param p1, "cIndex"    # I

    .line 546
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 547
    if-ltz p1, :cond_0

    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt p1, v0, :cond_0

    .line 552
    return-void

    .line 548
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 550
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 548
    const-string v2, "cIndex: %d (expected: >= 0 && <= numComponents(%d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private checkComponentIndex(II)V
    .locals 4
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 555
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 556
    if-ltz p1, :cond_0

    add-int v0, p1, p2

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-gt v0, v1, :cond_0

    .line 562
    return-void

    .line 557
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 560
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 557
    const-string v2, "cIndex: %d, numComponents: %d (expected: cIndex >= 0 && cIndex + numComponents <= totalNumComponents(%d))"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private clearComps()V
    .locals 2

    .line 2267
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 2268
    return-void
.end method

.method private consolidate0(II)V
    .locals 7
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 1707
    const/4 v0, 0x1

    if-gt p2, v0, :cond_0

    .line 1708
    return-void

    .line 1711
    :cond_0
    add-int v0, p1, p2

    .line 1712
    .local v0, "endCIndex":I
    const/4 v1, 0x0

    if-eqz p1, :cond_1

    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    goto :goto_0

    :cond_1
    move v2, v1

    .line 1713
    .local v2, "startOffset":I
    :goto_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v4, v0, -0x1

    aget-object v3, v3, v4

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, v2

    .line 1714
    .local v3, "capacity":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 1716
    .local v4, "consolidated":Lio/netty/buffer/ByteBuf;
    move v5, p1

    .local v5, "i":I
    :goto_1
    if-ge v5, v0, :cond_2

    .line 1717
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v5

    invoke-virtual {v6, v4}, Lio/netty/buffer/CompositeByteBuf$Component;->transferTo(Lio/netty/buffer/ByteBuf;)V

    .line 1716
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1719
    .end local v5    # "i":I
    :cond_2
    const/4 v5, 0x0

    iput-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1720
    add-int/lit8 v5, p1, 0x1

    invoke-direct {p0, v5, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1721
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-direct {p0, v4, v1}, Lio/netty/buffer/CompositeByteBuf;->newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    aput-object v1, v5, p1

    .line 1722
    if-nez p1, :cond_3

    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-eq p2, v1, :cond_4

    .line 1723
    :cond_3
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1725
    :cond_4
    return-void
.end method

.method private consolidateIfNeeded()V
    .locals 2

    .line 539
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 540
    .local v0, "size":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-le v0, v1, :cond_0

    .line 541
    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 543
    :cond_0
    return-void
.end method

.method private copyTo(IIILio/netty/buffer/ByteBuf;)V
    .locals 6
    .param p1, "index"    # I
    .param p2, "length"    # I
    .param p3, "componentId"    # I
    .param p4, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 1495
    const/4 v0, 0x0

    .line 1496
    .local v0, "dstIndex":I
    move v1, p3

    .line 1498
    .local v1, "i":I
    :goto_0
    if-lez p2, :cond_0

    .line 1499
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    .line 1500
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p2, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1501
    .local v3, "localLength":I
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p4, v0, v3}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1502
    add-int/2addr p1, v3

    .line 1503
    add-int/2addr v0, v3

    .line 1504
    sub-int/2addr p2, v3

    .line 1505
    nop

    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    add-int/lit8 v1, v1, 0x1

    .line 1506
    goto :goto_0

    .line 1508
    :cond_0
    invoke-virtual {p4}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v2

    invoke-virtual {p4, v2}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1509
    return-void
.end method

.method private static ensureAccessible(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 302
    sget-boolean v0, Lio/netty/buffer/CompositeByteBuf;->checkAccessible:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/ByteBuf;->isAccessible()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 303
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/netty/util/IllegalReferenceCountException;-><init>(I)V

    throw v0

    .line 305
    :cond_1
    :goto_0
    return-object p0
.end method

.method private findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p1, "offset"    # I

    .line 1557
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1558
    .local v0, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    .line 1559
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1560
    return-object v0

    .line 1562
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 1563
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    return-object v1
.end method

.method private findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p1, "offset"    # I

    .line 1567
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1568
    .local v0, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v0, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-lt p1, v1, :cond_0

    iget v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v1, :cond_0

    .line 1569
    return-object v0

    .line 1571
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v1

    return-object v1
.end method

.method private findIt(I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 5
    .param p1, "offset"    # I

    .line 1575
    const/4 v0, 0x0

    .local v0, "low":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v1, "high":I
    :goto_0
    if-gt v0, v1, :cond_2

    .line 1576
    add-int v2, v0, v1

    ushr-int/lit8 v2, v2, 0x1

    .line 1577
    .local v2, "mid":I
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1578
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v4, :cond_0

    .line 1579
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    .line 1580
    :cond_0
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v4, :cond_1

    .line 1581
    add-int/lit8 v1, v2, -0x1

    .line 1586
    .end local v2    # "mid":I
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_1
    goto :goto_0

    .line 1583
    .restart local v2    # "mid":I
    .restart local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_1
    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1584
    return-object v3

    .line 1588
    .end local v0    # "low":I
    .end local v1    # "high":I
    .end local v2    # "mid":I
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_2
    new-instance v0, Ljava/lang/Error;

    const-string v1, "should not reach here"

    invoke-direct {v0, v1}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static newCompArray(II)[Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 2
    .param p0, "initComponents"    # I
    .param p1, "maxNumComponents"    # I

    .line 141
    const/16 v0, 0x10

    invoke-static {v0, p1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 142
    .local v0, "capacityGuess":I
    invoke-static {p0, v0}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v1, v1, [Lio/netty/buffer/CompositeByteBuf$Component;

    return-object v1
.end method

.method private newComponent(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf$Component;
    .locals 13
    .param p1, "buf"    # Lio/netty/buffer/ByteBuf;
    .param p2, "offset"    # I

    .line 310
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v8

    .line 311
    .local v8, "srcIndex":I
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v9

    .line 314
    .local v9, "len":I
    move-object v0, p1

    .line 315
    .local v0, "unwrapped":Lio/netty/buffer/ByteBuf;
    move v1, v8

    .line 316
    .local v1, "unwrappedIndex":I
    :goto_0
    instance-of v2, v0, Lio/netty/buffer/WrappedByteBuf;

    if-nez v2, :cond_6

    instance-of v2, v0, Lio/netty/buffer/SwappedByteBuf;

    if-eqz v2, :cond_0

    goto/16 :goto_4

    .line 321
    :cond_0
    instance-of v2, v0, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    if-eqz v2, :cond_1

    .line 322
    move-object v2, v0

    check-cast v2, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lio/netty/buffer/AbstractUnpooledSlicedByteBuf;->idx(I)I

    move-result v2

    add-int/2addr v1, v2

    .line 323
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 324
    :cond_1
    instance-of v2, v0, Lio/netty/buffer/PooledSlicedByteBuf;

    if-eqz v2, :cond_2

    .line 325
    move-object v2, v0

    check-cast v2, Lio/netty/buffer/PooledSlicedByteBuf;

    iget v2, v2, Lio/netty/buffer/PooledSlicedByteBuf;->adjustment:I

    add-int/2addr v1, v2

    .line 326
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 327
    :cond_2
    instance-of v2, v0, Lio/netty/buffer/DuplicatedByteBuf;

    if-nez v2, :cond_4

    instance-of v2, v0, Lio/netty/buffer/PooledDuplicatedByteBuf;

    if-eqz v2, :cond_3

    goto :goto_1

    :cond_3
    move-object v10, v0

    move v11, v1

    goto :goto_2

    .line 328
    :cond_4
    :goto_1
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    move-object v10, v0

    move v11, v1

    .line 333
    .end local v0    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .end local v1    # "unwrappedIndex":I
    .local v10, "unwrapped":Lio/netty/buffer/ByteBuf;
    .local v11, "unwrappedIndex":I
    :goto_2
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    if-ne v0, v9, :cond_5

    move-object v7, p1

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    move-object v7, v0

    .line 335
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    :goto_3
    new-instance v12, Lio/netty/buffer/CompositeByteBuf$Component;

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v1

    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    .line 336
    invoke-virtual {v10, v0}, Lio/netty/buffer/ByteBuf;->order(Ljava/nio/ByteOrder;)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    move-object v0, v12

    move v2, v8

    move v4, v11

    move v5, p2

    move v6, v9

    invoke-direct/range {v0 .. v7}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    .line 335
    return-object v12

    .line 317
    .end local v7    # "slice":Lio/netty/buffer/ByteBuf;
    .end local v10    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .end local v11    # "unwrappedIndex":I
    .restart local v0    # "unwrapped":Lio/netty/buffer/ByteBuf;
    .restart local v1    # "unwrappedIndex":I
    :cond_6
    :goto_4
    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->unwrap()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    goto :goto_0
.end method

.method private removeComp(I)V
    .locals 1
    .param p1, "i"    # I

    .line 2271
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 2272
    return-void
.end method

.method private removeCompRange(II)V
    .locals 5
    .param p1, "from"    # I
    .param p2, "to"    # I

    .line 2275
    if-lt p1, p2, :cond_0

    .line 2276
    return-void

    .line 2278
    :cond_0
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2279
    .local v0, "size":I
    if-ltz p1, :cond_3

    if-gt p2, v0, :cond_3

    .line 2280
    if-ge p2, v0, :cond_1

    .line 2281
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    sub-int v2, v0, p2

    invoke-static {v1, p2, v1, p1, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2283
    :cond_1
    sub-int v1, v0, p2

    add-int/2addr v1, p1

    .line 2284
    .local v1, "newSize":I
    move v2, v1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 2285
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v4, 0x0

    aput-object v4, v3, v2

    .line 2284
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 2287
    .end local v2    # "i":I
    :cond_2
    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2288
    return-void

    .line 2279
    .end local v1    # "newSize":I
    :cond_3
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method private shiftComps(II)V
    .locals 7
    .param p1, "i"    # I
    .param p2, "count"    # I

    .line 2296
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v0, "size":I
    add-int v1, v0, p2

    .line 2297
    .local v1, "newSize":I
    if-ltz p1, :cond_5

    if-gt p1, v0, :cond_5

    if-lez p2, :cond_5

    .line 2298
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    array-length v3, v2

    if-le v1, v3, :cond_3

    .line 2300
    shr-int/lit8 v2, v0, 0x1

    add-int/2addr v2, v0

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 2302
    .local v2, "newArrSize":I
    if-ne p1, v0, :cond_0

    .line 2303
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const-class v4, [Lio/netty/buffer/CompositeByteBuf$Component;

    invoke-static {v3, v2, v4}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;ILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Lio/netty/buffer/CompositeByteBuf$Component;

    .local v3, "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_0

    .line 2305
    .end local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_0
    new-array v3, v2, [Lio/netty/buffer/CompositeByteBuf$Component;

    .line 2306
    .restart local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    if-lez p1, :cond_1

    .line 2307
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v5, 0x0

    invoke-static {v4, v5, v3, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2309
    :cond_1
    if-ge p1, v0, :cond_2

    .line 2310
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int v5, p1, p2

    sub-int v6, v0, p1

    invoke-static {v4, p1, v3, v5, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 2313
    :cond_2
    :goto_0
    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .end local v2    # "newArrSize":I
    .end local v3    # "newArr":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_1

    .line 2314
    :cond_3
    if-ge p1, v0, :cond_4

    .line 2315
    add-int v3, p1, p2

    sub-int v4, v0, p1

    invoke-static {v2, p1, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 2314
    :cond_4
    :goto_1
    nop

    .line 2317
    :goto_2
    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 2318
    return-void

    .line 2297
    :cond_5
    new-instance v2, Ljava/lang/AssertionError;

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v2
.end method

.method private toComponentIndex0(I)I
    .locals 7
    .param p1, "offset"    # I

    .line 884
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 885
    .local v0, "size":I
    if-nez p1, :cond_1

    .line 886
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 887
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v1

    iget v2, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lez v2, :cond_0

    .line 888
    return v1

    .line 886
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 892
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-gt v0, v1, :cond_4

    .line 893
    const/4 v1, 0x0

    if-eq v0, v2, :cond_2

    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    iget v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ge p1, v3, :cond_3

    :cond_2
    move v2, v1

    :cond_3
    return v2

    .line 895
    :cond_4
    const/4 v1, 0x0

    .local v1, "low":I
    move v3, v0

    .local v3, "high":I
    :goto_1
    if-gt v1, v3, :cond_7

    .line 896
    add-int v4, v1, v3

    ushr-int/2addr v4, v2

    .line 897
    .local v4, "mid":I
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v5, v4

    .line 898
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-lt p1, v6, :cond_5

    .line 899
    add-int/lit8 v1, v4, 0x1

    goto :goto_2

    .line 900
    :cond_5
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    if-ge p1, v6, :cond_6

    .line 901
    add-int/lit8 v3, v4, -0x1

    .line 905
    .end local v4    # "mid":I
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_2
    goto :goto_1

    .line 903
    .restart local v4    # "mid":I
    .restart local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_6
    return v4

    .line 907
    .end local v1    # "low":I
    .end local v3    # "high":I
    .end local v4    # "mid":I
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_7
    new-instance v1, Ljava/lang/Error;

    const-string v2, "should not reach here"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private updateComponentOffsets(I)V
    .locals 3
    .param p1, "cIndex"    # I

    .line 565
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 566
    .local v0, "size":I
    if-gt v0, p1, :cond_0

    .line 567
    return-void

    .line 570
    :cond_0
    if-lez p1, :cond_1

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v2, p1, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 571
    .local v1, "nextIndex":I
    :goto_0
    if-ge p1, v0, :cond_2

    .line 572
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, p1

    .line 573
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v2, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->reposition(I)V

    .line 574
    iget v1, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 571
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 576
    :cond_2
    return-void
.end method


# virtual methods
.method protected _getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .line 923
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 924
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method protected _getInt(I)I
    .locals 4
    .param p1, "index"    # I

    .line 977
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 978
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 979
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getInt(I)I

    move-result v1

    return v1

    .line 980
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 981
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1

    .line 983
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getIntLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 989
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 990
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 991
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getIntLE(I)I

    move-result v1

    return v1

    .line 992
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 993
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 995
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x10

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v2

    and-int/2addr v2, v3

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getLong(I)J
    .locals 8
    .param p1, "index"    # I

    .line 1001
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1002
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1003
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLong(I)J

    move-result-wide v1

    return-wide v1

    .line 1004
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 1005
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1

    .line 1007
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/CompositeByteBuf;->_getInt(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getLongLE(I)J
    .locals 8
    .param p1, "index"    # I

    .line 1013
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1014
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1015
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getLongLE(I)J

    move-result-wide v1

    return-wide v1

    .line 1016
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    const-wide v4, 0xffffffffL

    if-ne v1, v2, :cond_1

    .line 1017
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    add-int/lit8 v6, p1, 0x4

    invoke-virtual {p0, v6}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v6

    int-to-long v6, v6

    and-long/2addr v4, v6

    shl-long v3, v4, v3

    or-long/2addr v1, v3

    return-wide v1

    .line 1019
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v1

    int-to-long v1, v1

    and-long/2addr v1, v4

    shl-long/2addr v1, v3

    add-int/lit8 v3, p1, 0x4

    invoke-virtual {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->_getIntLE(I)I

    move-result v3

    int-to-long v6, v3

    and-long v3, v6, v4

    or-long/2addr v1, v3

    return-wide v1
.end method

.method protected _getShort(I)S
    .locals 3
    .param p1, "index"    # I

    .line 929
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 930
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 931
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShort(I)S

    move-result v1

    return v1

    .line 932
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 933
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 935
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getShortLE(I)S
    .locals 3
    .param p1, "index"    # I

    .line 941
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 942
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 943
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getShortLE(I)S

    move-result v1

    return v1

    .line 944
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 945
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1

    .line 947
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x1

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    int-to-short v1, v1

    return v1
.end method

.method protected _getUnsignedMedium(I)I
    .locals 4
    .param p1, "index"    # I

    .line 953
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 954
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 955
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMedium(I)I

    move-result v1

    return v1

    .line 956
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 957
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1

    .line 959
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShort(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1
.end method

.method protected _getUnsignedMediumLE(I)I
    .locals 4
    .param p1, "index"    # I

    .line 965
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 966
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 967
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getUnsignedMediumLE(I)I

    move-result v1

    return v1

    .line 968
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const v3, 0xffff

    if-ne v1, v2, :cond_1

    .line 969
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x10

    or-int/2addr v1, v2

    return v1

    .line 971
    :cond_1
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->_getShortLE(I)S

    move-result v1

    and-int/2addr v1, v3

    shl-int/lit8 v1, v1, 0x8

    add-int/lit8 v2, p1, 0x2

    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->_getByte(I)B

    move-result v2

    and-int/lit16 v2, v2, 0xff

    or-int/2addr v1, v2

    return v1
.end method

.method protected _setByte(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1152
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1153
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 1154
    return-void
.end method

.method protected _setInt(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1235
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1236
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1237
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setInt(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1238
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1239
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1240
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    goto :goto_0

    .line 1242
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1243
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1245
    :goto_0
    return-void
.end method

.method protected _setIntLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1249
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1250
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x4

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1251
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setIntLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1252
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1253
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1254
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-short v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    goto :goto_0

    .line 1256
    :cond_1
    ushr-int/lit8 v1, p2, 0x10

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1257
    add-int/lit8 v1, p1, 0x2

    int-to-short v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1259
    :goto_0
    return-void
.end method

.method protected _setLong(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1270
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1271
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1272
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->setLong(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1273
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_1

    .line 1274
    ushr-long v1, p2, v3

    long-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1275
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    goto :goto_0

    .line 1277
    :cond_1
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1278
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1280
    :goto_0
    return-void
.end method

.method protected _setLongLE(IJ)V
    .locals 4
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1284
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1285
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x8

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1286
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2, p3}, Lio/netty/buffer/ByteBuf;->setLongLE(IJ)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1287
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    const/16 v3, 0x20

    if-ne v1, v2, :cond_1

    .line 1288
    long-to-int v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1289
    add-int/lit8 v1, p1, 0x4

    ushr-long v2, p2, v3

    long-to-int v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    goto :goto_0

    .line 1291
    :cond_1
    ushr-long v1, p2, v3

    long-to-int v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1292
    add-int/lit8 v1, p1, 0x4

    long-to-int v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setIntLE(II)V

    .line 1294
    :goto_0
    return-void
.end method

.method protected _setMedium(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1200
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1201
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1202
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setMedium(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1203
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1204
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1205
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1207
    :cond_1
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1208
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1210
    :goto_0
    return-void
.end method

.method protected _setMediumLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1214
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1215
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x3

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1216
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setMediumLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1217
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1218
    int-to-short v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1219
    add-int/lit8 v1, p1, 0x2

    ushr-int/lit8 v2, p2, 0x10

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1221
    :cond_1
    shr-int/lit8 v1, p2, 0x8

    int-to-short v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setShortLE(II)V

    .line 1222
    add-int/lit8 v1, p1, 0x2

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1224
    :goto_0
    return-void
.end method

.method protected _setShort(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1165
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1166
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1167
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setShort(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1168
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1169
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1170
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1172
    :cond_1
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1173
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1175
    :goto_0
    return-void
.end method

.method protected _setShortLE(II)V
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1179
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent0(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1180
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v1, p1, 0x2

    iget v2, v0, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v1, v2, :cond_0

    .line 1181
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setShortLE(II)Lio/netty/buffer/ByteBuf;

    goto :goto_0

    .line 1182
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v1

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v1, v2, :cond_1

    .line 1183
    int-to-byte v1, p2

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1184
    add-int/lit8 v1, p1, 0x1

    ushr-int/lit8 v2, p2, 0x8

    int-to-byte v2, v2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    goto :goto_0

    .line 1186
    :cond_1
    ushr-int/lit8 v1, p2, 0x8

    int-to-byte v1, v1

    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1187
    add-int/lit8 v1, p1, 0x1

    int-to-byte v2, p2

    invoke-virtual {p0, v1, v2}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 1189
    :goto_0
    return-void
.end method

.method public addComponent(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 210
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 165
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "cIndex"    # I
    .param p3, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 264
    const-string v0, "buffer"

    invoke-static {p3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 265
    invoke-direct {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 266
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 267
    return-object p0
.end method

.method public addComponent(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 222
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {p0, p1, v0, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponent(ZILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 432
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(I[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "cIndex"    # I
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 354
    const-string v0, "buffers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 355
    const/4 v0, 0x0

    invoke-direct {p0, v0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 356
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 357
    return-object p0
.end method

.method public addComponents(Ljava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 195
    .local p1, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addComponents(ZLjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "increaseWriterIndex"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Iterable<",
            "Lio/netty/buffer/ByteBuf;",
            ">;)",
            "Lio/netty/buffer/CompositeByteBuf;"
        }
    .end annotation

    .line 251
    .local p2, "buffers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lio/netty/buffer/ByteBuf;>;"
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {p0, p1, v0, p2}, Lio/netty/buffer/CompositeByteBuf;->addComponents(ZILjava/lang/Iterable;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public varargs addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 235
    const-string v0, "buffers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 236
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, p2, v1}, Lio/netty/buffer/CompositeByteBuf;->addComponents0(ZI[Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    .line 237
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 238
    return-object p0
.end method

.method public varargs addComponents([Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "buffers"    # [Lio/netty/buffer/ByteBuf;

    .line 180
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->addComponents(Z[Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public addFlattenedComponents(ZLio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 26
    .param p1, "increaseWriterIndex"    # Z
    .param p2, "buffer"    # Lio/netty/buffer/ByteBuf;

    .line 446
    move-object/from16 v1, p0

    move/from16 v2, p1

    move-object/from16 v3, p2

    const-string v0, "buffer"

    invoke-static {v3, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 447
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->readerIndex()I

    move-result v4

    .line 448
    .local v4, "ridx":I
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v5

    .line 449
    .local v5, "widx":I
    if-ne v4, v5, :cond_0

    .line 450
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->release()Z

    .line 451
    return-object v1

    .line 453
    :cond_0
    instance-of v0, v3, Lio/netty/buffer/CompositeByteBuf;

    if-nez v0, :cond_1

    .line 454
    iget v0, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-direct {v1, v2, v0, v3}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 455
    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 456
    return-object v1

    .line 458
    :cond_1
    move-object v6, v3

    check-cast v6, Lio/netty/buffer/CompositeByteBuf;

    .line 459
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    sub-int v0, v5, v4

    invoke-virtual {v6, v4, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 460
    iget-object v7, v6, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    .line 461
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    iget v8, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 462
    .local v8, "compCountBefore":I
    iget v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 464
    .local v9, "writerIndexBefore":I
    :try_start_0
    invoke-direct {v6, v4}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .local v0, "cidx":I
    invoke-virtual/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v10

    move/from16 v18, v10

    .line 465
    .local v18, "newOffset":I
    :goto_0
    aget-object v10, v7, v0

    move-object v15, v10

    .line 466
    .local v15, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v10, v15, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    move v14, v10

    .line 467
    .local v14, "compOffset":I
    invoke-static {v4, v14}, Ljava/lang/Math;->max(II)I

    move-result v10

    move v13, v10

    .line 468
    .local v13, "fromIdx":I
    iget v10, v15, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    invoke-static {v5, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    move v12, v10

    .line 469
    .local v12, "toIdx":I
    sub-int v19, v12, v13

    .line 470
    .local v19, "len":I
    if-lez v19, :cond_2

    .line 471
    iget v11, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    new-instance v10, Lio/netty/buffer/CompositeByteBuf$Component;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object/from16 v20, v6

    .end local v6    # "from":Lio/netty/buffer/CompositeByteBuf;
    .local v20, "from":Lio/netty/buffer/CompositeByteBuf;
    :try_start_1
    iget-object v6, v15, Lio/netty/buffer/CompositeByteBuf$Component;->srcBuf:Lio/netty/buffer/ByteBuf;

    .line 472
    invoke-virtual {v6}, Lio/netty/buffer/ByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    move-result-object v6

    invoke-virtual {v15, v13}, Lio/netty/buffer/CompositeByteBuf$Component;->srcIdx(I)I

    move-result v16
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v21, v7

    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .local v21, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :try_start_2
    iget-object v7, v15, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 473
    invoke-virtual {v15, v13}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v17

    const/16 v22, 0x0

    move-object/from16 v23, v10

    move v3, v11

    move-object v11, v6

    move v6, v12

    .end local v12    # "toIdx":I
    .local v6, "toIdx":I
    move/from16 v12, v16

    move/from16 v24, v13

    .end local v13    # "fromIdx":I
    .local v24, "fromIdx":I
    move-object v13, v7

    move v7, v14

    .end local v14    # "compOffset":I
    .local v7, "compOffset":I
    move/from16 v14, v17

    move-object/from16 v25, v15

    .end local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v25, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    move/from16 v15, v18

    move/from16 v16, v19

    move-object/from16 v17, v22

    invoke-direct/range {v10 .. v17}, Lio/netty/buffer/CompositeByteBuf$Component;-><init>(Lio/netty/buffer/ByteBuf;ILio/netty/buffer/ByteBuf;IIILio/netty/buffer/ByteBuf;)V

    .line 471
    move-object/from16 v10, v23

    invoke-direct {v1, v3, v10}, Lio/netty/buffer/CompositeByteBuf;->addComp(ILio/netty/buffer/CompositeByteBuf$Component;)V

    goto :goto_1

    .line 488
    .end local v0    # "cidx":I
    .end local v6    # "toIdx":I
    .end local v18    # "newOffset":I
    .end local v19    # "len":I
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :catchall_0
    move-exception v0

    move-object/from16 v21, v7

    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    goto :goto_3

    .line 470
    .end local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v0    # "cidx":I
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v12    # "toIdx":I
    .restart local v13    # "fromIdx":I
    .restart local v14    # "compOffset":I
    .restart local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v18    # "newOffset":I
    .restart local v19    # "len":I
    :cond_2
    move-object/from16 v20, v6

    move-object/from16 v21, v7

    move v6, v12

    move/from16 v24, v13

    move v7, v14

    move-object/from16 v25, v15

    .line 475
    .end local v12    # "toIdx":I
    .end local v13    # "fromIdx":I
    .end local v14    # "compOffset":I
    .end local v15    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    .local v6, "toIdx":I
    .local v7, "compOffset":I
    .restart local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v24    # "fromIdx":I
    .restart local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_1
    if-ne v5, v6, :cond_6

    .line 476
    nop

    .line 480
    .end local v0    # "cidx":I
    .end local v6    # "toIdx":I
    .end local v7    # "compOffset":I
    .end local v18    # "newOffset":I
    .end local v19    # "len":I
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v2, :cond_3

    .line 481
    sub-int v0, v5, v4

    add-int/2addr v0, v9

    iput v0, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 483
    :cond_3
    invoke-direct/range {p0 .. p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    .line 484
    invoke-virtual/range {p2 .. p2}, Lio/netty/buffer/ByteBuf;->release()Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 485
    const/4 v0, 0x0

    .line 486
    .end local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    .local v0, "buffer":Lio/netty/buffer/ByteBuf;
    nop

    .line 488
    if-eqz v0, :cond_5

    .line 490
    if-eqz v2, :cond_4

    .line 491
    iput v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 493
    :cond_4
    iget v3, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    .local v3, "cidx":I
    :goto_2
    if-lt v3, v8, :cond_5

    .line 494
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 495
    invoke-direct {v1, v3}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 493
    add-int/lit8 v3, v3, -0x1

    goto :goto_2

    .line 486
    .end local v3    # "cidx":I
    :cond_5
    return-object v1

    .line 488
    .end local v0    # "buffer":Lio/netty/buffer/ByteBuf;
    .restart local p2    # "buffer":Lio/netty/buffer/ByteBuf;
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 478
    .local v0, "cidx":I
    .restart local v6    # "toIdx":I
    .restart local v7    # "compOffset":I
    .restart local v18    # "newOffset":I
    .restart local v19    # "len":I
    .restart local v24    # "fromIdx":I
    .restart local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    :cond_6
    add-int v18, v18, v19

    .line 464
    .end local v6    # "toIdx":I
    .end local v7    # "compOffset":I
    .end local v19    # "len":I
    .end local v24    # "fromIdx":I
    .end local v25    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v0, v0, 0x1

    move-object/from16 v3, p2

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    goto/16 :goto_0

    .line 488
    .end local v0    # "cidx":I
    .end local v18    # "newOffset":I
    .end local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .local v6, "from":Lio/netty/buffer/CompositeByteBuf;
    .local v7, "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :catchall_2
    move-exception v0

    move-object/from16 v20, v6

    move-object/from16 v21, v7

    .end local v6    # "from":Lio/netty/buffer/CompositeByteBuf;
    .end local v7    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    .restart local v20    # "from":Lio/netty/buffer/CompositeByteBuf;
    .restart local v21    # "fromComponents":[Lio/netty/buffer/CompositeByteBuf$Component;
    :goto_3
    if-eqz p2, :cond_8

    .line 490
    if-eqz v2, :cond_7

    .line 491
    iput v9, v1, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    .line 493
    :cond_7
    iget v3, v1, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    add-int/lit8 v3, v3, -0x1

    .restart local v3    # "cidx":I
    :goto_4
    if-lt v3, v8, :cond_8

    .line 494
    iget-object v6, v1, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v3

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 495
    invoke-direct {v1, v3}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 493
    add-int/lit8 v3, v3, -0x1

    goto :goto_4

    .line 498
    .end local v3    # "cidx":I
    :cond_8
    throw v0
.end method

.method public alloc()Lio/netty/buffer/ByteBufAllocator;
    .locals 1

    .line 853
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->alloc:Lio/netty/buffer/ByteBufAllocator;

    return-object v0
.end method

.method public array()[B
    .locals 2

    .line 752
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 758
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 756
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->array()[B

    move-result-object v0

    return-object v0

    .line 754
    :pswitch_1
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public arrayOffset()I
    .locals 2

    .line 764
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 771
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 768
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    .line 769
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->arrayOffset()I

    move-result v1

    invoke-virtual {v0, v1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    return v1

    .line 766
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :pswitch_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public capacity()I
    .locals 3

    .line 802
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 803
    .local v0, "size":I
    if-lez v0, :cond_0

    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v2, v0, -0x1

    aget-object v1, v1, v2

    iget v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public bridge synthetic capacity(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->capacity(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public capacity(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 9
    .param p1, "newCapacity"    # I

    .line 808
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkNewCapacity(I)V

    .line 810
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v0, "size":I
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v1

    .line 811
    .local v1, "oldCapacity":I
    const/4 v2, 0x0

    if-le p1, v1, :cond_0

    .line 812
    sub-int v3, p1, v1

    .line 813
    .local v3, "paddingLength":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    invoke-virtual {v4, v2, v3}, Lio/netty/buffer/ByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    move-result-object v4

    .line 814
    .local v4, "padding":Lio/netty/buffer/ByteBuf;
    invoke-direct {p0, v2, v0, v4}, Lio/netty/buffer/CompositeByteBuf;->addComponent0(ZILio/netty/buffer/ByteBuf;)I

    .line 815
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    if-lt v2, v5, :cond_4

    .line 818
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->consolidateIfNeeded()V

    goto :goto_2

    .line 820
    .end local v3    # "paddingLength":I
    .end local v4    # "padding":Lio/netty/buffer/ByteBuf;
    :cond_0
    if-ge p1, v1, :cond_4

    .line 821
    const/4 v3, 0x0

    iput-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 822
    add-int/lit8 v3, v0, -0x1

    .line 823
    .local v3, "i":I
    sub-int v4, v1, p1

    .local v4, "bytesToTrim":I
    :goto_0
    if-ltz v3, :cond_2

    .line 824
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v5, v3

    .line 825
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v6

    .line 826
    .local v6, "cLength":I
    if-ge v4, v6, :cond_1

    .line 828
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v7, v4

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 829
    invoke-static {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 830
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    if-eqz v7, :cond_2

    .line 833
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-virtual {v7, v2, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v2

    invoke-static {v5, v2}, Lio/netty/buffer/CompositeByteBuf$Component;->access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    goto :goto_1

    .line 837
    .end local v7    # "slice":Lio/netty/buffer/ByteBuf;
    :cond_1
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 838
    sub-int/2addr v4, v6

    .line 823
    .end local v5    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v6    # "cLength":I
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    .line 840
    .end local v4    # "bytesToTrim":I
    :cond_2
    :goto_1
    add-int/lit8 v2, v3, 0x1

    invoke-direct {p0, v2, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 842
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v2

    if-le v2, p1, :cond_3

    .line 843
    invoke-virtual {p0, p1, p1}, Lio/netty/buffer/CompositeByteBuf;->setIndex0(II)V

    goto :goto_3

    .line 844
    :cond_3
    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    if-le v2, p1, :cond_5

    .line 845
    iput p1, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    goto :goto_3

    .line 820
    .end local v3    # "i":I
    :cond_4
    :goto_2
    nop

    .line 848
    :cond_5
    :goto_3
    return-object p0
.end method

.method public bridge synthetic clear()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->clear()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1939
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->clear()Lio/netty/buffer/ByteBuf;

    .line 1940
    return-object p0
.end method

.method public component(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .line 1518
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1519
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public componentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .line 1529
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->duplicate()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public consolidate()Lio/netty/buffer/CompositeByteBuf;
    .locals 2

    .line 1689
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1690
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    invoke-direct {p0, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 1691
    return-object p0
.end method

.method public consolidate(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 1701
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 1702
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->consolidate0(II)V

    .line 1703
    return-object p0
.end method

.method public copy(II)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1486
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1487
    invoke-direct {p0, p2}, Lio/netty/buffer/CompositeByteBuf;->allocBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    .line 1488
    .local v0, "dst":Lio/netty/buffer/ByteBuf;
    if-eqz p2, :cond_0

    .line 1489
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    invoke-direct {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->copyTo(IIILio/netty/buffer/ByteBuf;)V

    .line 1491
    :cond_0
    return-object v0
.end method

.method protected deallocate()V
    .locals 3

    .line 2212
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    if-eqz v0, :cond_0

    .line 2213
    return-void

    .line 2216
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    .line 2219
    const/4 v0, 0x0

    .local v0, "i":I
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v1, "size":I
    :goto_0
    if-ge v0, v1, :cond_1

    .line 2220
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 2219
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2222
    .end local v0    # "i":I
    .end local v1    # "size":I
    :cond_1
    return-void
.end method

.method public decompose(II)Ljava/util/List;
    .locals 9
    .param p1, "offset"    # I
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 693
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 694
    if-nez p2, :cond_0

    .line 695
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 698
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 699
    .local v0, "componentId":I
    move v1, p2

    .line 701
    .local v1, "bytesToSlice":I
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 703
    .local v2, "firstC":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    iget v5, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v5, p1

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {v3, v4, v5}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 704
    .local v3, "slice":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v4

    sub-int/2addr v1, v4

    .line 706
    if-nez v1, :cond_1

    .line 707
    invoke-static {v3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    return-object v4

    .line 710
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    sub-int/2addr v5, v0

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 711
    .local v4, "sliceList":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/ByteBuf;>;"
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 715
    :goto_0
    iget-object v5, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    add-int/lit8 v0, v0, 0x1

    aget-object v5, v5, v0

    .line 716
    .local v5, "component":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    invoke-virtual {v5, v7}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v7

    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v8

    invoke-virtual {v6, v7, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v3

    .line 717
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v6

    sub-int/2addr v1, v6

    .line 718
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 719
    .end local v5    # "component":Lio/netty/buffer/CompositeByteBuf$Component;
    if-gtz v1, :cond_2

    .line 721
    return-object v4

    .line 719
    :cond_2
    goto :goto_0
.end method

.method public bridge synthetic discardReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 10

    .line 1779
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1780
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    .line 1781
    .local v0, "readerIndex":I
    if-nez v0, :cond_0

    .line 1782
    return-object p0

    .line 1786
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    .line 1787
    .local v1, "writerIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 1788
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1789
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1788
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1791
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1792
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->clearComps()V

    .line 1793
    invoke-virtual {p0, v3, v3}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1794
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1795
    return-object p0

    .line 1798
    :cond_2
    const/4 v4, 0x0

    .line 1799
    .local v4, "firstComponentId":I
    const/4 v5, 0x0

    .line 1800
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v6, "size":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1801
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v7, v4

    .line 1802
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-le v7, v0, :cond_3

    .line 1803
    goto :goto_2

    .line 1805
    :cond_3
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1800
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1809
    .end local v6    # "size":I
    :cond_4
    :goto_2
    iget v6, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    sub-int v6, v0, v6

    .line 1810
    .local v6, "trimmedBytes":I
    iput v3, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1811
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    .line 1812
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    add-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->srcAdjustment:I

    .line 1813
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    add-int/2addr v7, v0

    iput v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    .line 1814
    invoke-static {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->access$100(Lio/netty/buffer/CompositeByteBuf$Component;)Lio/netty/buffer/ByteBuf;

    move-result-object v7

    .line 1815
    .local v7, "slice":Lio/netty/buffer/ByteBuf;
    if-eqz v7, :cond_5

    .line 1818
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v8

    invoke-virtual {v7, v6, v8}, Lio/netty/buffer/ByteBuf;->slice(II)Lio/netty/buffer/ByteBuf;

    move-result-object v8

    invoke-static {v5, v8}, Lio/netty/buffer/CompositeByteBuf$Component;->access$102(Lio/netty/buffer/CompositeByteBuf$Component;Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;

    .line 1820
    :cond_5
    iget-object v8, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1821
    .local v8, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v8, :cond_6

    iget v9, v8, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v9, v0, :cond_6

    .line 1822
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1825
    :cond_6
    invoke-direct {p0, v3, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1828
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1829
    sub-int v2, v1, v0

    invoke-virtual {p0, v3, v2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1830
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1831
    return-object p0
.end method

.method public discardReadComponents()Lio/netty/buffer/CompositeByteBuf;
    .locals 8

    .line 1731
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 1732
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    .line 1733
    .local v0, "readerIndex":I
    if-nez v0, :cond_0

    .line 1734
    return-object p0

    .line 1738
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->writerIndex()I

    move-result v1

    .line 1739
    .local v1, "writerIndex":I
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->capacity()I

    move-result v4

    if-ne v1, v4, :cond_2

    .line 1740
    const/4 v4, 0x0

    .local v4, "i":I
    iget v5, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v5, "size":I
    :goto_0
    if-ge v4, v5, :cond_1

    .line 1741
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v6, v6, v4

    invoke-virtual {v6}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1740
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1743
    .end local v4    # "i":I
    .end local v5    # "size":I
    :cond_1
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1744
    invoke-direct {p0}, Lio/netty/buffer/CompositeByteBuf;->clearComps()V

    .line 1745
    invoke-virtual {p0, v3, v3}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1746
    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1747
    return-object p0

    .line 1751
    :cond_2
    const/4 v4, 0x0

    .line 1752
    .local v4, "firstComponentId":I
    const/4 v5, 0x0

    .line 1753
    .local v5, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v6, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .local v6, "size":I
    :goto_1
    if-ge v4, v6, :cond_4

    .line 1754
    iget-object v7, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v5, v7, v4

    .line 1755
    iget v7, v5, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-le v7, v0, :cond_3

    .line 1756
    goto :goto_2

    .line 1758
    :cond_3
    invoke-virtual {v5}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 1753
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1760
    .end local v6    # "size":I
    :cond_4
    :goto_2
    if-nez v4, :cond_5

    .line 1761
    return-object p0

    .line 1763
    :cond_5
    iget-object v6, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1764
    .local v6, "la":Lio/netty/buffer/CompositeByteBuf$Component;
    if-eqz v6, :cond_6

    iget v7, v6, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-gt v7, v0, :cond_6

    .line 1765
    iput-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 1767
    :cond_6
    invoke-direct {p0, v3, v4}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 1770
    iget v2, v5, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    .line 1771
    .local v2, "offset":I
    invoke-direct {p0, v3}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 1772
    sub-int v3, v0, v2

    sub-int v7, v1, v2

    invoke-virtual {p0, v3, v7}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    .line 1773
    invoke-virtual {p0, v2}, Lio/netty/buffer/CompositeByteBuf;->adjustMarkers(I)V

    .line 1774
    return-object p0
.end method

.method public bridge synthetic discardSomeReadBytes()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public discardSomeReadBytes()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 2207
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->discardReadComponents()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic ensureWritable(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public ensureWritable(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "minWritableBytes"    # I

    .line 1969
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->ensureWritable(I)Lio/netty/buffer/ByteBuf;

    .line 1970
    return-object p0
.end method

.method protected forEachByteAsc0(IILio/netty/util/ByteProcessor;)I
    .locals 9
    .param p1, "start"    # I
    .param p2, "end"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 639
    const/4 v0, -0x1

    if-gt p2, p1, :cond_0

    .line 640
    return v0

    .line 642
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    .local v1, "i":I
    sub-int v2, p2, p1

    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_4

    .line 643
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    .line 644
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v4, v5, :cond_1

    .line 645
    goto :goto_2

    .line 647
    :cond_1
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 648
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    .line 649
    .local v5, "localStart":I
    iget v6, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v6, p1

    invoke-static {v2, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    .line 651
    .local v6, "localLength":I
    instance-of v7, v4, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v7, :cond_2

    move-object v7, v4

    check-cast v7, Lio/netty/buffer/AbstractByteBuf;

    add-int v8, v5, v6

    .line 652
    invoke-virtual {v7, v5, v8, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteAsc0(IILio/netty/util/ByteProcessor;)I

    move-result v7

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {v4, v5, v6, p3}, Lio/netty/buffer/ByteBuf;->forEachByte(IILio/netty/util/ByteProcessor;)I

    move-result v7

    :goto_1
    nop

    .line 654
    .local v7, "result":I
    if-eq v7, v0, :cond_3

    .line 655
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int v0, v7, v0

    return v0

    .line 657
    :cond_3
    add-int/2addr p1, v6

    .line 658
    sub-int/2addr v2, v6

    .line 642
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    .end local v5    # "localStart":I
    .end local v6    # "localLength":I
    .end local v7    # "result":I
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 660
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_4
    return v0
.end method

.method protected forEachByteDesc0(IILio/netty/util/ByteProcessor;)I
    .locals 10
    .param p1, "rStart"    # I
    .param p2, "rEnd"    # I
    .param p3, "processor"    # Lio/netty/util/ByteProcessor;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 665
    const/4 v0, -0x1

    if-le p2, p1, :cond_0

    .line 666
    return v0

    .line 668
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v1

    .local v1, "i":I
    add-int/lit8 v2, p1, 0x1

    sub-int/2addr v2, p2

    .local v2, "length":I
    :goto_0
    if-lez v2, :cond_4

    .line 669
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v1

    .line 670
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    if-ne v4, v5, :cond_1

    .line 671
    goto :goto_2

    .line 673
    :cond_1
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 674
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    add-int v5, v2, p2

    invoke-virtual {v3, v5}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    .line 675
    .local v5, "localRStart":I
    invoke-static {v2, v5}, Ljava/lang/Math;->min(II)I

    move-result v6

    .local v6, "localLength":I
    sub-int v7, v5, v6

    .line 677
    .local v7, "localIndex":I
    instance-of v8, v4, Lio/netty/buffer/AbstractByteBuf;

    if-eqz v8, :cond_2

    move-object v8, v4

    check-cast v8, Lio/netty/buffer/AbstractByteBuf;

    add-int/lit8 v9, v5, -0x1

    .line 678
    invoke-virtual {v8, v9, v7, p3}, Lio/netty/buffer/AbstractByteBuf;->forEachByteDesc0(IILio/netty/util/ByteProcessor;)I

    move-result v8

    goto :goto_1

    .line 679
    :cond_2
    invoke-virtual {v4, v7, v6, p3}, Lio/netty/buffer/ByteBuf;->forEachByteDesc(IILio/netty/util/ByteProcessor;)I

    move-result v8

    :goto_1
    nop

    .line 681
    .local v8, "result":I
    if-eq v8, v0, :cond_3

    .line 682
    iget v0, v3, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    sub-int v0, v8, v0

    return v0

    .line 684
    :cond_3
    sub-int/2addr v2, v6

    .line 668
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    .end local v5    # "localRStart":I
    .end local v6    # "localLength":I
    .end local v7    # "localIndex":I
    .end local v8    # "result":I
    :goto_2
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 686
    .end local v1    # "i":I
    .end local v2    # "length":I
    :cond_4
    return v0
.end method

.method public getByte(I)B
    .locals 3
    .param p1, "index"    # I

    .line 917
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 918
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lio/netty/buffer/ByteBuf;->getByte(I)B

    move-result v1

    return v1
.end method

.method public getBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 9
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1109
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 1110
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1111
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-virtual {p2, v1, p3, p4}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v1

    return v1

    .line 1113
    :cond_0
    const-wide/16 v1, 0x0

    .line 1114
    .local v1, "writtenBytes":J
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v3

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_1

    aget-object v6, v3, v5

    .line 1115
    .local v6, "buf":Ljava/nio/ByteBuffer;
    add-long v7, p3, v1

    invoke-virtual {p2, v6, v7, v8}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;J)I

    move-result v7

    int-to-long v7, v7

    add-long/2addr v1, v7

    .line 1114
    .end local v6    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 1117
    :cond_1
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_2

    .line 1118
    const v3, 0x7fffffff

    return v3

    .line 1120
    :cond_2
    long-to-int v3, v1

    return v3
.end method

.method public getBytes(ILjava/nio/channels/GatheringByteChannel;I)I
    .locals 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/nio/channels/GatheringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1093
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->nioBufferCount()I

    move-result v0

    .line 1094
    .local v0, "count":I
    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1095
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write(Ljava/nio/ByteBuffer;)I

    move-result v1

    return v1

    .line 1097
    :cond_0
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v1

    invoke-interface {p2, v1}, Ljava/nio/channels/GatheringByteChannel;->write([Ljava/nio/ByteBuffer;)J

    move-result-wide v1

    .line 1098
    .local v1, "writtenBytes":J
    const-wide/32 v3, 0x7fffffff

    cmp-long v3, v1, v3

    if-lez v3, :cond_1

    .line 1099
    const v3, 0x7fffffff

    return v3

    .line 1101
    :cond_1
    long-to-int v3, v1

    return v3
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic getBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 1975
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 1980
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    invoke-virtual {p0, p1, p2, v0, p3}, Lio/netty/buffer/CompositeByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    .line 1981
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->writerIndex()I

    move-result v0

    add-int/2addr v0, p3

    invoke-virtual {p2, v0}, Lio/netty/buffer/ByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1982
    return-object p0
.end method

.method public getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 1072
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 1073
    if-nez p4, :cond_0

    .line 1074
    return-object p0

    .line 1077
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1078
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1079
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1080
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1081
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1082
    add-int/2addr p1, v2

    .line 1083
    add-int/2addr p3, v2

    .line 1084
    sub-int/2addr p4, v2

    .line 1085
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1086
    goto :goto_0

    .line 1087
    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "out"    # Ljava/io/OutputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1126
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1127
    if-nez p3, :cond_0

    .line 1128
    return-object p0

    .line 1131
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1132
    .local v0, "i":I
    :goto_0
    if-lez p3, :cond_1

    .line 1133
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1134
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p3, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1135
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, v2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 1136
    add-int/2addr p1, v2

    .line 1137
    sub-int/2addr p3, v2

    .line 1138
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1139
    goto :goto_0

    .line 1140
    :cond_1
    return-object p0
.end method

.method public getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "dst"    # Ljava/nio/ByteBuffer;

    .line 1045
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1046
    .local v0, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1048
    .local v1, "length":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1049
    if-nez v1, :cond_0

    .line 1050
    return-object p0

    .line 1053
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    .line 1055
    .local v2, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1056
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1057
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1058
    .local v4, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1059
    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lio/netty/buffer/ByteBuf;->getBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1060
    add-int/2addr p1, v4

    .line 1061
    sub-int/2addr v1, v4

    .line 1062
    nop

    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "localLength":I
    add-int/lit8 v2, v2, 0x1

    .line 1063
    goto :goto_0

    .line 1065
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1066
    throw v3

    .line 1065
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1066
    nop

    .line 1067
    return-object p0
.end method

.method public getBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "dst"    # [B

    .line 1987
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public getBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "dst"    # [B
    .param p3, "dstIndex"    # I
    .param p4, "length"    # I

    .line 1025
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkDstIndex(IIII)V

    .line 1026
    if-nez p4, :cond_0

    .line 1027
    return-object p0

    .line 1030
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1031
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1032
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1033
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1034
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->getBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1035
    add-int/2addr p1, v2

    .line 1036
    add-int/2addr p3, v2

    .line 1037
    sub-int/2addr p4, v2

    .line 1038
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1039
    goto :goto_0

    .line 1040
    :cond_1
    return-object p0
.end method

.method public hasArray()Z
    .locals 2

    .line 740
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 746
    return v1

    .line 744
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasArray()Z

    move-result v0

    return v0

    .line 742
    :pswitch_1
    const/4 v0, 0x1

    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public hasMemoryAddress()Z
    .locals 2

    .line 777
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    .line 783
    return v1

    .line 781
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    iget-object v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    .line 779
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->hasMemoryAddress()Z

    move-result v0

    return v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public internalComponent(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "cIndex"    # I

    .line 1539
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 1540
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public internalComponentAtOffset(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "offset"    # I

    .line 1550
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->slice()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public internalNioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 2
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1610
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 1616
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 1614
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0, p1, p2}, Lio/netty/buffer/CompositeByteBuf$Component;->internalNioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 1612
    :pswitch_1
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method isAccessible()Z
    .locals 1

    .line 2226
    iget-boolean v0, p0, Lio/netty/buffer/CompositeByteBuf;->freed:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isDirect()Z
    .locals 4

    .line 726
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 727
    .local v0, "size":I
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 728
    return v1

    .line 730
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 731
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->isDirect()Z

    move-result v3

    if-nez v3, :cond_1

    .line 732
    return v1

    .line 730
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 735
    .end local v2    # "i":I
    :cond_2
    const/4 v1, 0x1

    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/ByteBuf;",
            ">;"
        }
    .end annotation

    .line 633
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->ensureAccessible()V

    .line 634
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    if-nez v0, :cond_0

    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_ITERATOR:Ljava/util/Iterator;

    goto :goto_0

    :cond_0
    new-instance v0, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/buffer/CompositeByteBuf$CompositeByteBufIterator;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/buffer/CompositeByteBuf$1;)V

    :goto_0
    return-object v0
.end method

.method public bridge synthetic markReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1945
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 1946
    return-object p0
.end method

.method public bridge synthetic markWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->markWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public markWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1957
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->markWriterIndex()Lio/netty/buffer/ByteBuf;

    .line 1958
    return-object p0
.end method

.method public maxNumComponents()I
    .locals 1

    .line 872
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->maxNumComponents:I

    return v0
.end method

.method public memoryAddress()J
    .locals 5

    .line 789
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    packed-switch v0, :pswitch_data_0

    .line 796
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 793
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    .line 794
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v1

    iget v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->adjustment:I

    int-to-long v3, v3

    add-long/2addr v1, v3

    return-wide v1

    .line 791
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    :pswitch_1
    sget-object v0, Lio/netty/buffer/Unpooled;->EMPTY_BUFFER:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0}, Lio/netty/buffer/ByteBuf;->memoryAddress()J

    move-result-wide v0

    return-wide v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBuffer(II)Ljava/nio/ByteBuffer;
    .locals 5
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1622
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1624
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1628
    :pswitch_0
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, v1

    .line 1629
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v3, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1630
    .local v3, "buf":Lio/netty/buffer/ByteBuf;
    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 1631
    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v1

    invoke-virtual {v3, v1, p2}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v1

    return-object v1

    .line 1626
    .end local v0    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "buf":Lio/netty/buffer/ByteBuf;
    :pswitch_1
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    return-object v0

    .line 1635
    :cond_0
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 1637
    .local v0, "buffers":[Ljava/nio/ByteBuffer;
    array-length v3, v0

    if-ne v3, v2, :cond_1

    .line 1638
    aget-object v1, v0, v1

    return-object v1

    .line 1641
    :cond_1
    invoke-static {p2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->order()Ljava/nio/ByteOrder;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    move-result-object v2

    .line 1642
    .local v2, "merged":Ljava/nio/ByteBuffer;
    array-length v3, v0

    :goto_1
    if-ge v1, v3, :cond_2

    aget-object v4, v0, v1

    .line 1643
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v2, v4}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 1642
    .end local v4    # "buf":Ljava/nio/ByteBuffer;
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1646
    :cond_2
    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 1647
    return-object v2

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBufferCount()I
    .locals 4

    .line 1593
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    .line 1594
    .local v0, "size":I
    packed-switch v0, :pswitch_data_0

    .line 1600
    const/4 v1, 0x0

    .line 1601
    .local v1, "count":I
    const/4 v2, 0x0

    .local v2, "i":I
    goto :goto_0

    .line 1598
    .end local v1    # "count":I
    .end local v2    # "i":I
    :pswitch_0
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    iget-object v1, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v1

    return v1

    .line 1596
    :pswitch_1
    const/4 v1, 0x1

    return v1

    .line 1601
    .restart local v1    # "count":I
    .restart local v2    # "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 1602
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    iget-object v3, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v3

    add-int/2addr v1, v3

    .line 1601
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1604
    .end local v2    # "i":I
    :cond_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public nioBuffers()[Ljava/nio/ByteBuffer;
    .locals 2

    .line 2202
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readerIndex()I

    move-result v0

    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->readableBytes()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0
.end method

.method public nioBuffers(II)[Ljava/nio/ByteBuffer;
    .locals 7
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 1652
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1653
    const/4 v0, 0x0

    if-nez p2, :cond_0

    .line 1654
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/nio/ByteBuffer;

    sget-object v2, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    aput-object v2, v1, v0

    return-object v1

    .line 1657
    :cond_0
    iget v1, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-static {v1}, Lio/netty/util/internal/RecyclableArrayList;->newInstance(I)Lio/netty/util/internal/RecyclableArrayList;

    move-result-object v1

    .line 1659
    .local v1, "buffers":Lio/netty/util/internal/RecyclableArrayList;
    :try_start_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    .line 1660
    .local v2, "i":I
    :goto_0
    if-lez p2, :cond_1

    .line 1661
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1662
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    .line 1663
    .local v4, "s":Lio/netty/buffer/ByteBuf;
    iget v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v5, p1

    invoke-static {p2, v5}, Ljava/lang/Math;->min(II)I

    move-result v5

    .line 1664
    .local v5, "localLength":I
    invoke-virtual {v4}, Lio/netty/buffer/ByteBuf;->nioBufferCount()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    .line 1671
    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    goto :goto_1

    .line 1668
    :pswitch_0
    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    invoke-virtual {v4, v6, v5}, Lio/netty/buffer/ByteBuf;->nioBuffer(II)Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-virtual {v1, v6}, Lio/netty/util/internal/RecyclableArrayList;->add(Ljava/lang/Object;)Z

    .line 1669
    goto :goto_2

    .line 1666
    :pswitch_1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .end local v1    # "buffers":Lio/netty/util/internal/RecyclableArrayList;
    .end local p1    # "index":I
    .end local p2    # "length":I
    throw v0

    .line 1671
    .restart local v1    # "buffers":Lio/netty/util/internal/RecyclableArrayList;
    .restart local p1    # "index":I
    .restart local p2    # "length":I
    :goto_1
    invoke-virtual {v4, v6, v5}, Lio/netty/buffer/ByteBuf;->nioBuffers(II)[Ljava/nio/ByteBuffer;

    move-result-object v6

    invoke-static {v1, v6}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 1674
    :goto_2
    add-int/2addr p1, v5

    .line 1675
    sub-int/2addr p2, v5

    .line 1676
    nop

    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "s":Lio/netty/buffer/ByteBuf;
    .end local v5    # "localLength":I
    add-int/lit8 v2, v2, 0x1

    .line 1677
    goto :goto_0

    .line 1679
    :cond_1
    new-array v0, v0, [Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Lio/netty/util/internal/RecyclableArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/nio/ByteBuffer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1681
    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 1679
    return-object v0

    .line 1681
    .end local v2    # "i":I
    :catchall_0
    move-exception v0

    invoke-virtual {v1}, Lio/netty/util/internal/RecyclableArrayList;->recycle()Z

    .line 1682
    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public numComponents()I
    .locals 1

    .line 865
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    return v0
.end method

.method public order()Ljava/nio/ByteOrder;
    .locals 1

    .line 858
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v0
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic readBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->readBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;

    .line 2035
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->writableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2036
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 2041
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2042
    return-object p0
.end method

.method public readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Lio/netty/buffer/ByteBuf;
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 2047
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 2048
    return-object p0
.end method

.method public readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "out"    # Ljava/io/OutputStream;
    .param p2, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 2071
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/io/OutputStream;I)Lio/netty/buffer/ByteBuf;

    .line 2072
    return-object p0
.end method

.method public readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # Ljava/nio/ByteBuffer;

    .line 2065
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 2066
    return-object p0
.end method

.method public readBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "dst"    # [B

    .line 2053
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2054
    return-object p0
.end method

.method public readBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "dst"    # [B
    .param p2, "dstIndex"    # I
    .param p3, "length"    # I

    .line 2059
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2060
    return-object p0
.end method

.method public bridge synthetic readerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->readerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public readerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I

    .line 1921
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->readerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1922
    return-object p0
.end method

.method public removeComponent(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "cIndex"    # I

    .line 584
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 585
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    .line 586
    .local v0, "comp":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-ne v1, v0, :cond_0

    .line 587
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 589
    :cond_0
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 590
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->removeComp(I)V

    .line 591
    invoke-virtual {v0}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v1

    if-lez v1, :cond_1

    .line 593
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 595
    :cond_1
    return-object p0
.end method

.method public removeComponents(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "cIndex"    # I
    .param p2, "numComponents"    # I

    .line 605
    invoke-direct {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(II)V

    .line 607
    if-nez p2, :cond_0

    .line 608
    return-object p0

    .line 610
    :cond_0
    add-int v0, p1, p2

    .line 611
    .local v0, "endIndex":I
    const/4 v1, 0x0

    .line 612
    .local v1, "needsUpdate":Z
    move v2, p1

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_3

    .line 613
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 614
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->length()I

    move-result v4

    if-lez v4, :cond_1

    .line 615
    const/4 v1, 0x1

    .line 617
    :cond_1
    iget-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    if-ne v4, v3, :cond_2

    .line 618
    const/4 v4, 0x0

    iput-object v4, p0, Lio/netty/buffer/CompositeByteBuf;->lastAccessed:Lio/netty/buffer/CompositeByteBuf$Component;

    .line 620
    :cond_2
    invoke-virtual {v3}, Lio/netty/buffer/CompositeByteBuf$Component;->free()V

    .line 612
    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 622
    .end local v2    # "i":I
    :cond_3
    invoke-direct {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->removeCompRange(II)V

    .line 624
    if-eqz v1, :cond_4

    .line 626
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->updateComponentOffsets(I)V

    .line 628
    :cond_4
    return-object p0
.end method

.method public bridge synthetic resetReaderIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetReaderIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1951
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetReaderIndex()Lio/netty/buffer/ByteBuf;

    .line 1952
    return-object p0
.end method

.method public bridge synthetic resetWriterIndex()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public resetWriterIndex()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 1963
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->resetWriterIndex()Lio/netty/buffer/ByteBuf;

    .line 1964
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public retain()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2186
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain()Lio/netty/buffer/ByteBuf;

    .line 2187
    return-object p0
.end method

.method public retain(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "increment"    # I

    .line 2180
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->retain(I)Lio/netty/buffer/ByteBuf;

    .line 2181
    return-object p0
.end method

.method public bridge synthetic retain()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->retain()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic retain(I)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->retain(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBoolean(IZ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBoolean(IZ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # Z

    .line 1992
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setByte(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setByte(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setByte(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 3
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1145
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->findComponent(I)Lio/netty/buffer/CompositeByteBuf$Component;

    move-result-object v0

    .line 1146
    .local v0, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget-object v1, v0, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v0, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v2

    invoke-virtual {v1, v2, p2}, Lio/netty/buffer/ByteBuf;->setByte(II)Lio/netty/buffer/ByteBuf;

    .line 1147
    return-object p0
.end method

.method public setBytes(ILjava/io/InputStream;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1365
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1366
    if-nez p3, :cond_0

    .line 1367
    sget-object v0, Lio/netty/util/internal/EmptyArrays;->EMPTY_BYTES:[B

    invoke-virtual {p2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v0

    return v0

    .line 1370
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1371
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1373
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1374
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1375
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1377
    add-int/lit8 v0, v0, 0x1

    .line 1378
    goto :goto_0

    .line 1380
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/io/InputStream;I)I

    move-result v4

    .line 1381
    .local v4, "localReadBytes":I
    if-gez v4, :cond_3

    .line 1382
    if-nez v1, :cond_5

    .line 1383
    const/4 v5, -0x1

    return v5

    .line 1389
    :cond_3
    add-int/2addr p1, v4

    .line 1390
    sub-int/2addr p3, v4

    .line 1391
    add-int/2addr v1, v4

    .line 1392
    if-ne v4, v3, :cond_4

    .line 1393
    add-int/lit8 v0, v0, 0x1

    .line 1395
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_4
    :goto_0
    if-gtz p3, :cond_1

    .line 1397
    :cond_5
    return v1
.end method

.method public setBytes(ILjava/nio/channels/FileChannel;JI)I
    .locals 10
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/FileChannel;
    .param p3, "position"    # J
    .param p5, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1444
    invoke-virtual {p0, p1, p5}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1445
    if-nez p5, :cond_0

    .line 1446
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-virtual {p2, v0, p3, p4}, Ljava/nio/channels/FileChannel;->read(Ljava/nio/ByteBuffer;J)I

    move-result v0

    return v0

    .line 1449
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1450
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1452
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1453
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p5, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1454
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1456
    add-int/lit8 v0, v0, 0x1

    .line 1457
    goto :goto_0

    .line 1459
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    int-to-long v6, v1

    add-long v7, p3, v6

    move-object v6, p2

    move v9, v3

    invoke-virtual/range {v4 .. v9}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/FileChannel;JI)I

    move-result v4

    .line 1461
    .local v4, "localReadBytes":I
    if-nez v4, :cond_3

    .line 1462
    goto :goto_1

    .line 1465
    :cond_3
    if-gez v4, :cond_4

    .line 1466
    if-nez v1, :cond_6

    .line 1467
    const/4 v5, -0x1

    return v5

    .line 1473
    :cond_4
    add-int/2addr p1, v4

    .line 1474
    sub-int/2addr p5, v4

    .line 1475
    add-int/2addr v1, v4

    .line 1476
    if-ne v4, v3, :cond_5

    .line 1477
    add-int/lit8 v0, v0, 0x1

    .line 1479
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_5
    :goto_0
    if-gtz p5, :cond_1

    .line 1481
    :cond_6
    :goto_1
    return v1
.end method

.method public setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I
    .locals 6
    .param p1, "index"    # I
    .param p2, "in"    # Ljava/nio/channels/ScatteringByteChannel;
    .param p3, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1402
    invoke-virtual {p0, p1, p3}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1403
    if-nez p3, :cond_0

    .line 1404
    sget-object v0, Lio/netty/buffer/CompositeByteBuf;->EMPTY_NIO_BUFFER:Ljava/nio/ByteBuffer;

    invoke-interface {p2, v0}, Ljava/nio/channels/ScatteringByteChannel;->read(Ljava/nio/ByteBuffer;)I

    move-result v0

    return v0

    .line 1407
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1408
    .local v0, "i":I
    const/4 v1, 0x0

    .line 1410
    .local v1, "readBytes":I
    :cond_1
    iget-object v2, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v2, v2, v0

    .line 1411
    .local v2, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v3, v2, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v3, p1

    invoke-static {p3, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1412
    .local v3, "localLength":I
    if-nez v3, :cond_2

    .line 1414
    add-int/lit8 v0, v0, 0x1

    .line 1415
    goto :goto_0

    .line 1417
    :cond_2
    iget-object v4, v2, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v2, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v5

    invoke-virtual {v4, v5, p2, v3}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/channels/ScatteringByteChannel;I)I

    move-result v4

    .line 1419
    .local v4, "localReadBytes":I
    if-nez v4, :cond_3

    .line 1420
    goto :goto_1

    .line 1423
    :cond_3
    if-gez v4, :cond_4

    .line 1424
    if-nez v1, :cond_6

    .line 1425
    const/4 v5, -0x1

    return v5

    .line 1431
    :cond_4
    add-int/2addr p1, v4

    .line 1432
    sub-int/2addr p3, v4

    .line 1433
    add-int/2addr v1, v4

    .line 1434
    if-ne v4, v3, :cond_5

    .line 1435
    add-int/lit8 v0, v0, 0x1

    .line 1437
    .end local v2    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v3    # "localLength":I
    .end local v4    # "localReadBytes":I
    :cond_5
    :goto_0
    if-gtz p3, :cond_1

    .line 1439
    :cond_6
    :goto_1
    return v1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic setBytes(I[BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3, p4}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;

    .line 2012
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-super {p0, p1, p2, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2013
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "length"    # I

    .line 2018
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2019
    return-object p0
.end method

.method public setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # Lio/netty/buffer/ByteBuf;
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 1345
    invoke-virtual {p2}, Lio/netty/buffer/ByteBuf;->capacity()I

    move-result v0

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 1346
    if-nez p4, :cond_0

    .line 1347
    return-object p0

    .line 1350
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1351
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1352
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1353
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1354
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(ILio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 1355
    add-int/2addr p1, v2

    .line 1356
    add-int/2addr p3, v2

    .line 1357
    sub-int/2addr p4, v2

    .line 1358
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1359
    goto :goto_0

    .line 1360
    :cond_1
    return-object p0
.end method

.method public setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 7
    .param p1, "index"    # I
    .param p2, "src"    # Ljava/nio/ByteBuffer;

    .line 1318
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    .line 1319
    .local v0, "limit":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v1

    .line 1321
    .local v1, "length":I
    invoke-virtual {p0, p1, v1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1322
    if-nez v1, :cond_0

    .line 1323
    return-object p0

    .line 1326
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v2

    .line 1328
    .local v2, "i":I
    :goto_0
    if-lez v1, :cond_1

    .line 1329
    :try_start_0
    iget-object v3, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v3, v3, v2

    .line 1330
    .local v3, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v4, v3, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v4, p1

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 1331
    .local v4, "localLength":I
    invoke-virtual {p2}, Ljava/nio/ByteBuffer;->position()I

    move-result v5

    add-int/2addr v5, v4

    invoke-virtual {p2, v5}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1332
    iget-object v5, v3, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v3, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v6

    invoke-virtual {v5, v6, p2}, Lio/netty/buffer/ByteBuf;->setBytes(ILjava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1333
    add-int/2addr p1, v4

    .line 1334
    sub-int/2addr v1, v4

    .line 1335
    nop

    .end local v3    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v4    # "localLength":I
    add-int/lit8 v2, v2, 0x1

    .line 1336
    goto :goto_0

    .line 1338
    :catchall_0
    move-exception v3

    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1339
    throw v3

    .line 1338
    :cond_1
    invoke-virtual {p2, v0}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    .line 1339
    nop

    .line 1340
    return-object p0
.end method

.method public setBytes(I[B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "src"    # [B

    .line 2024
    array-length v0, p2

    const/4 v1, 0x0

    invoke-virtual {p0, p1, p2, v1, v0}, Lio/netty/buffer/CompositeByteBuf;->setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public setBytes(I[BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 5
    .param p1, "index"    # I
    .param p2, "src"    # [B
    .param p3, "srcIndex"    # I
    .param p4, "length"    # I

    .line 1298
    array-length v0, p2

    invoke-virtual {p0, p1, p4, p3, v0}, Lio/netty/buffer/CompositeByteBuf;->checkSrcIndex(IIII)V

    .line 1299
    if-nez p4, :cond_0

    .line 1300
    return-object p0

    .line 1303
    :cond_0
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    .line 1304
    .local v0, "i":I
    :goto_0
    if-lez p4, :cond_1

    .line 1305
    iget-object v1, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v1, v1, v0

    .line 1306
    .local v1, "c":Lio/netty/buffer/CompositeByteBuf$Component;
    iget v2, v1, Lio/netty/buffer/CompositeByteBuf$Component;->endOffset:I

    sub-int/2addr v2, p1

    invoke-static {p4, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 1307
    .local v2, "localLength":I
    iget-object v3, v1, Lio/netty/buffer/CompositeByteBuf$Component;->buf:Lio/netty/buffer/ByteBuf;

    invoke-virtual {v1, p1}, Lio/netty/buffer/CompositeByteBuf$Component;->idx(I)I

    move-result v4

    invoke-virtual {v3, v4, p2, p3, v2}, Lio/netty/buffer/ByteBuf;->setBytes(I[BII)Lio/netty/buffer/ByteBuf;

    .line 1308
    add-int/2addr p1, v2

    .line 1309
    add-int/2addr p3, v2

    .line 1310
    sub-int/2addr p4, v2

    .line 1311
    nop

    .end local v1    # "c":Lio/netty/buffer/CompositeByteBuf$Component;
    .end local v2    # "localLength":I
    add-int/lit8 v0, v0, 0x1

    .line 1312
    goto :goto_0

    .line 1313
    :cond_1
    return-object p0
.end method

.method public bridge synthetic setChar(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setChar(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setChar(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1997
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setDouble(ID)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setDouble(ID)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setDouble(ID)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "index"    # I
    .param p2, "value"    # D

    .line 2007
    invoke-static {p2, p3}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-virtual {p0, p1, v0, v1}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setFloat(IF)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setFloat(IF)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setFloat(IF)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # F

    .line 2002
    invoke-static {p2}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setIndex(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setIndex(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setIndex(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "readerIndex"    # I
    .param p2, "writerIndex"    # I

    .line 1933
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setIndex(II)Lio/netty/buffer/ByteBuf;

    .line 1934
    return-object p0
.end method

.method public bridge synthetic setInt(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setInt(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setInt(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1228
    const/4 v0, 0x4

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1229
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setInt(II)V

    .line 1230
    return-object p0
.end method

.method public bridge synthetic setLong(IJ)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->setLong(IJ)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setLong(IJ)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # J

    .line 1263
    const/16 v0, 0x8

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1264
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->_setLong(IJ)V

    .line 1265
    return-object p0
.end method

.method public bridge synthetic setMedium(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setMedium(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setMedium(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1193
    const/4 v0, 0x3

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1194
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setMedium(II)V

    .line 1195
    return-object p0
.end method

.method public bridge synthetic setShort(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setShort(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setShort(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "index"    # I
    .param p2, "value"    # I

    .line 1158
    const/4 v0, 0x2

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(II)V

    .line 1159
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->_setShort(II)V

    .line 1160
    return-object p0
.end method

.method public bridge synthetic setZero(II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->setZero(II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public setZero(II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "index"    # I
    .param p2, "length"    # I

    .line 2029
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->setZero(II)Lio/netty/buffer/ByteBuf;

    .line 2030
    return-object p0
.end method

.method public bridge synthetic skipBytes(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->skipBytes(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public skipBytes(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "length"    # I

    .line 2077
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->skipBytes(I)Lio/netty/buffer/ByteBuf;

    .line 2078
    return-object p0
.end method

.method public toByteIndex(I)I
    .locals 1
    .param p1, "cIndex"    # I

    .line 911
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkComponentIndex(I)V

    .line 912
    iget-object v0, p0, Lio/netty/buffer/CompositeByteBuf;->components:[Lio/netty/buffer/CompositeByteBuf$Component;

    aget-object v0, v0, p1

    iget v0, v0, Lio/netty/buffer/CompositeByteBuf$Component;->offset:I

    return v0
.end method

.method public toComponentIndex(I)I
    .locals 1
    .param p1, "offset"    # I

    .line 879
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->checkIndex(I)V

    .line 880
    invoke-direct {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->toComponentIndex0(I)I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1840
    invoke-super {p0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->toString()Ljava/lang/String;

    move-result-object v0

    .line 1841
    .local v0, "result":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 1842
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", components="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lio/netty/buffer/CompositeByteBuf;->componentCount:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public bridge synthetic touch()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public touch()Lio/netty/buffer/CompositeByteBuf;
    .locals 0

    .line 2192
    return-object p0
.end method

.method public touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "hint"    # Ljava/lang/Object;

    .line 2197
    return-object p0
.end method

.method public bridge synthetic touch()Lio/netty/util/ReferenceCounted;
    .locals 1

    .line 49
    invoke-virtual {p0}, Lio/netty/buffer/CompositeByteBuf;->touch()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic touch(Ljava/lang/Object;)Lio/netty/util/ReferenceCounted;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->touch(Ljava/lang/Object;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public unwrap()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 2231
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic writeBoolean(Z)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBoolean(Z)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # Z

    .line 2083
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    .line 2084
    return-object p0
.end method

.method public bridge synthetic writeByte(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeByte(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeByte(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "value"    # I

    .line 2089
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lio/netty/buffer/CompositeByteBuf;->ensureWritable0(I)V

    .line 2090
    iget v0, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lio/netty/buffer/CompositeByteBuf;->writerIndex:I

    invoke-virtual {p0, v0, p1}, Lio/netty/buffer/CompositeByteBuf;->_setByte(II)V

    .line 2091
    return-object p0
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([B)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([B)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic writeBytes([BII)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2, p3}, Lio/netty/buffer/CompositeByteBuf;->writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;

    .line 2138
    invoke-virtual {p1}, Lio/netty/buffer/ByteBuf;->readableBytes()I

    move-result v0

    invoke-super {p0, p1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2139
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "length"    # I

    .line 2144
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;I)Lio/netty/buffer/ByteBuf;

    .line 2145
    return-object p0
.end method

.method public writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Lio/netty/buffer/ByteBuf;
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 2150
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Lio/netty/buffer/ByteBuf;II)Lio/netty/buffer/ByteBuf;

    .line 2151
    return-object p0
.end method

.method public writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # Ljava/nio/ByteBuffer;

    .line 2168
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes(Ljava/nio/ByteBuffer;)Lio/netty/buffer/ByteBuf;

    .line 2169
    return-object p0
.end method

.method public writeBytes([B)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "src"    # [B

    .line 2156
    array-length v0, p1

    const/4 v1, 0x0

    invoke-super {p0, p1, v1, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2157
    return-object p0
.end method

.method public writeBytes([BII)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "src"    # [B
    .param p2, "srcIndex"    # I
    .param p3, "length"    # I

    .line 2162
    invoke-super {p0, p1, p2, p3}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeBytes([BII)Lio/netty/buffer/ByteBuf;

    .line 2163
    return-object p0
.end method

.method public bridge synthetic writeChar(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeChar(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeChar(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2120
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 2121
    return-object p0
.end method

.method public bridge synthetic writeDouble(D)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeDouble(D)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeDouble(D)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "value"    # D

    .line 2132
    invoke-static {p1, p2}, Ljava/lang/Double;->doubleToRawLongBits(D)J

    move-result-wide v0

    invoke-super {p0, v0, v1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 2133
    return-object p0
.end method

.method public bridge synthetic writeFloat(F)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeFloat(F)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeFloat(F)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "value"    # F

    .line 2126
    invoke-static {p1}, Ljava/lang/Float;->floatToRawIntBits(F)I

    move-result v0

    invoke-super {p0, v0}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 2127
    return-object p0
.end method

.method public bridge synthetic writeInt(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeInt(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeInt(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2108
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeInt(I)Lio/netty/buffer/ByteBuf;

    .line 2109
    return-object p0
.end method

.method public bridge synthetic writeLong(J)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/CompositeByteBuf;->writeLong(J)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeLong(J)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # J

    .line 2114
    invoke-super {p0, p1, p2}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeLong(J)Lio/netty/buffer/ByteBuf;

    .line 2115
    return-object p0
.end method

.method public bridge synthetic writeMedium(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeMedium(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeMedium(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2102
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeMedium(I)Lio/netty/buffer/ByteBuf;

    .line 2103
    return-object p0
.end method

.method public bridge synthetic writeShort(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeShort(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeShort(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "value"    # I

    .line 2096
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeShort(I)Lio/netty/buffer/ByteBuf;

    .line 2097
    return-object p0
.end method

.method public bridge synthetic writeZero(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writeZero(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writeZero(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "length"    # I

    .line 2174
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writeZero(I)Lio/netty/buffer/ByteBuf;

    .line 2175
    return-object p0
.end method

.method public bridge synthetic writerIndex(I)Lio/netty/buffer/ByteBuf;
    .locals 0

    .line 49
    invoke-virtual {p0, p1}, Lio/netty/buffer/CompositeByteBuf;->writerIndex(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object p1

    return-object p1
.end method

.method public writerIndex(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 0
    .param p1, "writerIndex"    # I

    .line 1927
    invoke-super {p0, p1}, Lio/netty/buffer/AbstractReferenceCountedByteBuf;->writerIndex(I)Lio/netty/buffer/ByteBuf;

    .line 1928
    return-object p0
.end method
