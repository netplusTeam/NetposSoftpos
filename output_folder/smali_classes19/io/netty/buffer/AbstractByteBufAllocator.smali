.class public abstract Lio/netty/buffer/AbstractByteBufAllocator;
.super Ljava/lang/Object;
.source "AbstractByteBufAllocator.java"

# interfaces
.implements Lio/netty/buffer/ByteBufAllocator;


# static fields
.field static final CALCULATE_THRESHOLD:I = 0x400000

.field static final DEFAULT_INITIAL_CAPACITY:I = 0x100

.field static final DEFAULT_MAX_CAPACITY:I = 0x7fffffff

.field static final DEFAULT_MAX_COMPONENTS:I = 0x10


# instance fields
.field private final directByDefault:Z

.field private final emptyBuf:Lio/netty/buffer/ByteBuf;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 36
    const-class v0, Lio/netty/buffer/AbstractByteBufAllocator;

    const-string v1, "toLeakAwareBuffer"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lio/netty/util/ResourceLeakDetector;->addExclusions(Ljava/lang/Class;[Ljava/lang/String;)V

    .line 37
    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 90
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/AbstractByteBufAllocator;-><init>(Z)V

    .line 91
    return-void
.end method

.method protected constructor <init>(Z)V
    .locals 1
    .param p1, "preferDirect"    # Z

    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    if-eqz p1, :cond_0

    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    .line 101
    new-instance v0, Lio/netty/buffer/EmptyByteBuf;

    invoke-direct {v0, p0}, Lio/netty/buffer/EmptyByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;)V

    iput-object v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->emptyBuf:Lio/netty/buffer/ByteBuf;

    .line 102
    return-void
.end method

.method protected static toLeakAwareBuffer(Lio/netty/buffer/ByteBuf;)Lio/netty/buffer/ByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/ByteBuf;

    .line 41
    sget-object v0, Lio/netty/buffer/AbstractByteBufAllocator$1;->$SwitchMap$io$netty$util$ResourceLeakDetector$Level:[I

    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 50
    :pswitch_0
    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    .line 51
    .local v0, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    if-eqz v0, :cond_0

    .line 52
    new-instance v1, Lio/netty/buffer/AdvancedLeakAwareByteBuf;

    invoke-direct {v1, p0, v0}, Lio/netty/buffer/AdvancedLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    move-object p0, v1

    goto :goto_0

    .line 43
    .end local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    :pswitch_1
    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    .line 44
    .restart local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    if-eqz v0, :cond_0

    .line 45
    new-instance v1, Lio/netty/buffer/SimpleLeakAwareByteBuf;

    invoke-direct {v1, p0, v0}, Lio/netty/buffer/SimpleLeakAwareByteBuf;-><init>(Lio/netty/buffer/ByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    move-object p0, v1

    .line 58
    .end local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    :cond_0
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method protected static toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p0, "buf"    # Lio/netty/buffer/CompositeByteBuf;

    .line 63
    sget-object v0, Lio/netty/buffer/AbstractByteBufAllocator$1;->$SwitchMap$io$netty$util$ResourceLeakDetector$Level:[I

    invoke-static {}, Lio/netty/util/ResourceLeakDetector;->getLevel()Lio/netty/util/ResourceLeakDetector$Level;

    move-result-object v1

    invoke-virtual {v1}, Lio/netty/util/ResourceLeakDetector$Level;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 72
    :pswitch_0
    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    .line 73
    .local v0, "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    if-eqz v0, :cond_0

    .line 74
    new-instance v1, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;

    invoke-direct {v1, p0, v0}, Lio/netty/buffer/AdvancedLeakAwareCompositeByteBuf;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    move-object p0, v1

    goto :goto_0

    .line 65
    .end local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    :pswitch_1
    sget-object v0, Lio/netty/buffer/AbstractByteBuf;->leakDetector:Lio/netty/util/ResourceLeakDetector;

    invoke-virtual {v0, p0}, Lio/netty/util/ResourceLeakDetector;->track(Ljava/lang/Object;)Lio/netty/util/ResourceLeakTracker;

    move-result-object v0

    .line 66
    .restart local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    if-eqz v0, :cond_0

    .line 67
    new-instance v1, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;

    invoke-direct {v1, p0, v0}, Lio/netty/buffer/SimpleLeakAwareCompositeByteBuf;-><init>(Lio/netty/buffer/CompositeByteBuf;Lio/netty/util/ResourceLeakTracker;)V

    move-object p0, v1

    .line 80
    .end local v0    # "leak":Lio/netty/util/ResourceLeakTracker;, "Lio/netty/util/ResourceLeakTracker<Lio/netty/buffer/ByteBuf;>;"
    :cond_0
    :goto_0
    return-object p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static validate(II)V
    .locals 4
    .param p0, "initialCapacity"    # I
    .param p1, "maxCapacity"    # I

    .line 227
    const-string v0, "initialCapacity"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 228
    if-gt p0, p1, :cond_0

    .line 233
    return-void

    .line 229
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 231
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 229
    const-string v2, "initialCapacity: %d (expected: not greater than maxCapacity(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public buffer()Lio/netty/buffer/ByteBuf;
    .locals 1

    .line 106
    iget-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    if-eqz v0, :cond_0

    .line 107
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 109
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer()Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public buffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 114
    iget-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public buffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 122
    iget-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    if-eqz v0, :cond_0

    .line 123
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 125
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public calculateNewCapacity(II)I
    .locals 4
    .param p1, "minNewCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 252
    const-string v0, "minNewCapacity"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositiveOrZero(ILjava/lang/String;)I

    .line 253
    if-gt p1, p2, :cond_4

    .line 258
    const/high16 v0, 0x400000

    .line 260
    .local v0, "threshold":I
    const/high16 v1, 0x400000

    if-ne p1, v1, :cond_0

    .line 261
    return v1

    .line 265
    :cond_0
    if-le p1, v1, :cond_2

    .line 266
    div-int v2, p1, v1

    mul-int/2addr v2, v1

    .line 267
    .local v2, "newCapacity":I
    sub-int v3, p2, v1

    if-le v2, v3, :cond_1

    .line 268
    move v1, p2

    .end local v2    # "newCapacity":I
    .local v1, "newCapacity":I
    goto :goto_0

    .line 270
    .end local v1    # "newCapacity":I
    .restart local v2    # "newCapacity":I
    :cond_1
    add-int/2addr v1, v2

    .line 272
    .end local v2    # "newCapacity":I
    .restart local v1    # "newCapacity":I
    :goto_0
    return v1

    .line 276
    .end local v1    # "newCapacity":I
    :cond_2
    const/16 v1, 0x40

    .line 277
    .restart local v1    # "newCapacity":I
    :goto_1
    if-ge v1, p1, :cond_3

    .line 278
    shl-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 281
    :cond_3
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    return v2

    .line 254
    .end local v0    # "threshold":I
    .end local v1    # "newCapacity":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 256
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    .line 254
    const-string v2, "minNewCapacity: %d (expected: not greater than maxCapacity(%d)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public compositeBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 192
    iget-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    if-eqz v0, :cond_0

    .line 193
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0

    .line 195
    :cond_0
    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 1
    .param p1, "maxNumComponents"    # I

    .line 200
    iget-boolean v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    if-eqz v0, :cond_0

    .line 201
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeDirectBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 218
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeDirectBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "maxNumComponents"    # I

    .line 223
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    invoke-static {v0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeHeapBuffer()Lio/netty/buffer/CompositeByteBuf;
    .locals 1

    .line 208
    const/16 v0, 0x10

    invoke-virtual {p0, v0}, Lio/netty/buffer/AbstractByteBufAllocator;->compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public compositeHeapBuffer(I)Lio/netty/buffer/CompositeByteBuf;
    .locals 2
    .param p1, "maxNumComponents"    # I

    .line 213
    new-instance v0, Lio/netty/buffer/CompositeByteBuf;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1, p1}, Lio/netty/buffer/CompositeByteBuf;-><init>(Lio/netty/buffer/ByteBufAllocator;ZI)V

    invoke-static {v0}, Lio/netty/buffer/AbstractByteBufAllocator;->toLeakAwareBuffer(Lio/netty/buffer/CompositeByteBuf;)Lio/netty/buffer/CompositeByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 173
    const/16 v0, 0x100

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 178
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public directBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 183
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 184
    iget-object v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->emptyBuf:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 186
    :cond_0
    invoke-static {p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->validate(II)V

    .line 187
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->newDirectBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 154
    const/16 v0, 0x100

    const v1, 0x7fffffff

    invoke-virtual {p0, v0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 159
    const v0, 0x7fffffff

    invoke-virtual {p0, p1, v0}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public heapBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 164
    if-nez p1, :cond_0

    if-nez p2, :cond_0

    .line 165
    iget-object v0, p0, Lio/netty/buffer/AbstractByteBufAllocator;->emptyBuf:Lio/netty/buffer/ByteBuf;

    return-object v0

    .line 167
    :cond_0
    invoke-static {p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->validate(II)V

    .line 168
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->newHeapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer()Lio/netty/buffer/ByteBuf;
    .locals 2

    .line 130
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    const/16 v1, 0x100

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->isDirectBufferPooled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 133
    :cond_0
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 131
    :cond_1
    :goto_0
    invoke-virtual {p0, v1}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer(I)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 138
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->isDirectBufferPooled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 141
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 139
    :cond_1
    :goto_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(I)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method public ioBuffer(II)Lio/netty/buffer/ByteBuf;
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "maxCapacity"    # I

    .line 146
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lio/netty/buffer/AbstractByteBufAllocator;->isDirectBufferPooled()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 149
    :cond_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->heapBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0

    .line 147
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Lio/netty/buffer/AbstractByteBufAllocator;->directBuffer(II)Lio/netty/buffer/ByteBuf;

    move-result-object v0

    return-object v0
.end method

.method protected abstract newDirectBuffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method protected abstract newHeapBuffer(II)Lio/netty/buffer/ByteBuf;
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 247
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lio/netty/util/internal/StringUtil;->simpleClassName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "(directByDefault: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lio/netty/buffer/AbstractByteBufAllocator;->directByDefault:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
