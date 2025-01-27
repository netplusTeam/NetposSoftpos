.class public abstract Lio/netty/util/internal/ReferenceCountUpdater;
.super Ljava/lang/Object;
.source "ReferenceCountUpdater.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/util/ReferenceCounted;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getUnsafeOffset(Ljava/lang/Class;Ljava/lang/String;)J
    .locals 2
    .param p1, "fieldName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Lio/netty/util/ReferenceCounted;",
            ">;",
            "Ljava/lang/String;",
            ")J"
        }
    .end annotation

    .line 45
    .local p0, "clz":Ljava/lang/Class;, "Ljava/lang/Class<+Lio/netty/util/ReferenceCounted;>;"
    :try_start_0
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->hasUnsafe()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 46
    invoke-virtual {p0, p1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-static {v0}, Lio/netty/util/internal/PlatformDependent;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-wide v0

    .line 50
    :cond_0
    goto :goto_0

    .line 48
    :catchall_0
    move-exception v0

    .line 51
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method private nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z
    .locals 2
    .param p2, "decrement"    # I
    .param p3, "rawCnt"    # I
    .param p4, "realCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;III)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    if-ge p2, p4, :cond_0

    .line 155
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    shl-int/lit8 v1, p2, 0x1

    sub-int v1, p3, v1

    invoke-virtual {v0, p1, p3, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, 0x0

    return v0

    .line 158
    :cond_0
    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v0

    return v0
.end method

.method private nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 79
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->unsafeOffset()J

    move-result-wide v0

    .line 80
    .local v0, "offset":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    :goto_0
    return v2
.end method

.method private static realRefCnt(I)I
    .locals 1
    .param p0, "rawCnt"    # I

    .line 63
    const/4 v0, 0x2

    if-eq p0, v0, :cond_0

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    ushr-int/lit8 v0, p0, 0x1

    :goto_0
    return v0
.end method

.method private retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;
    .locals 3
    .param p2, "increment"    # I
    .param p3, "rawIncrement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;II)TT;"
        }
    .end annotation

    .line 121
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1, p3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    move-result v0

    .line 122
    .local v0, "oldRef":I
    const/4 v1, 0x2

    if-eq v0, v1, :cond_1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    and-int/lit8 v1, v0, 0x1

    if-nez v1, :cond_0

    goto :goto_0

    .line 123
    :cond_0
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 126
    :cond_1
    :goto_0
    if-gtz v0, :cond_2

    add-int v1, v0, p3

    if-gez v1, :cond_3

    :cond_2
    if-ltz v0, :cond_4

    add-int v1, v0, p3

    if-lt v1, v0, :cond_3

    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v1

    neg-int v2, p3

    invoke-virtual {v1, p1, v2}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->getAndAdd(Ljava/lang/Object;I)I

    .line 130
    new-instance v1, Lio/netty/util/IllegalReferenceCountException;

    invoke-static {v0}, Lio/netty/util/internal/ReferenceCountUpdater;->realRefCnt(I)I

    move-result v2

    invoke-direct {v1, v2, p2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v1

    .line 132
    :cond_4
    :goto_1
    return-object p1
.end method

.method private retryRelease0(Lio/netty/util/ReferenceCounted;I)Z
    .locals 4
    .param p2, "decrement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 163
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    :goto_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    .local v0, "rawCnt":I
    invoke-static {v0, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    .line 164
    .local v1, "realCnt":I
    if-ne p2, v1, :cond_0

    .line 165
    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    const/4 v2, 0x1

    return v2

    .line 168
    :cond_0
    if-ge p2, v1, :cond_2

    .line 170
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    shl-int/lit8 v3, p2, 0x1

    sub-int v3, v0, v3

    invoke-virtual {v2, p1, v0, v3}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 171
    const/4 v2, 0x0

    return v2

    .line 176
    :cond_1
    invoke-static {}, Ljava/lang/Thread;->yield()V

    .line 177
    .end local v0    # "rawCnt":I
    .end local v1    # "realCnt":I
    goto :goto_0

    .line 174
    .restart local v0    # "rawCnt":I
    .restart local v1    # "realCnt":I
    :cond_2
    new-instance v2, Lio/netty/util/IllegalReferenceCountException;

    neg-int v3, p2

    invoke-direct {v2, v1, v3}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v2
.end method

.method private static toLiveRealRefCnt(II)I
    .locals 3
    .param p0, "rawCnt"    # I
    .param p1, "decrement"    # I

    .line 70
    const/4 v0, 0x2

    if-eq p0, v0, :cond_1

    const/4 v0, 0x4

    if-eq p0, v0, :cond_1

    and-int/lit8 v0, p0, 0x1

    if-nez v0, :cond_0

    goto :goto_0

    .line 74
    :cond_0
    new-instance v0, Lio/netty/util/IllegalReferenceCountException;

    const/4 v1, 0x0

    neg-int v2, p1

    invoke-direct {v0, v1, v2}, Lio/netty/util/IllegalReferenceCountException;-><init>(II)V

    throw v0

    .line 71
    :cond_1
    :goto_0
    ushr-int/lit8 v0, p0, 0x1

    return v0
.end method

.method private tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z
    .locals 2
    .param p2, "expectRawCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 149
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, p1, p2, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->compareAndSet(Ljava/lang/Object;II)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public final initialValue()I
    .locals 1

    .line 59
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    const/4 v0, 0x2

    return v0
.end method

.method public final isLiveNonVolatile(Lio/netty/util/ReferenceCounted;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 88
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->unsafeOffset()J

    move-result-wide v0

    .line 89
    .local v0, "offset":J
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    invoke-static {p1, v0, v1}, Lio/netty/util/internal/PlatformDependent;->getInt(Ljava/lang/Object;J)I

    move-result v2

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v2

    .line 92
    .local v2, "rawCnt":I
    :goto_0
    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    const/4 v3, 0x4

    if-eq v2, v3, :cond_2

    const/4 v3, 0x6

    if-eq v2, v3, :cond_2

    const/16 v3, 0x8

    if-eq v2, v3, :cond_2

    and-int/lit8 v3, v2, 0x1

    if-nez v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v3, 0x1

    :goto_2
    return v3
.end method

.method public final refCnt(Lio/netty/util/ReferenceCounted;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)I"
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->get(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Lio/netty/util/internal/ReferenceCountUpdater;->realRefCnt(I)I

    move-result v0

    return v0
.end method

.method public final release(Lio/netty/util/ReferenceCounted;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)Z"
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I

    move-result v0

    .line 137
    .local v0, "rawCnt":I
    const/4 v1, 0x2

    const/4 v2, 0x1

    if-ne v0, v1, :cond_1

    invoke-direct {p0, p1, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-direct {p0, p1, v2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 138
    :cond_1
    invoke-static {v0, v2}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    invoke-direct {p0, p1, v2, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z

    move-result v2

    .line 137
    :cond_2
    :goto_0
    return v2
.end method

.method public final release(Lio/netty/util/ReferenceCounted;I)Z
    .locals 3
    .param p2, "decrement"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)Z"
        }
    .end annotation

    .line 142
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-direct {p0, p1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonVolatileRawCnt(Lio/netty/util/ReferenceCounted;)I

    move-result v0

    .line 143
    .local v0, "rawCnt":I
    const-string v1, "decrement"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v1

    invoke-static {v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->toLiveRealRefCnt(II)I

    move-result v1

    .line 144
    .local v1, "realCnt":I
    if-ne p2, v1, :cond_2

    invoke-direct {p0, p1, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->tryFinalRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-direct {p0, p1, p2}, Lio/netty/util/internal/ReferenceCountUpdater;->retryRelease0(Lio/netty/util/ReferenceCounted;I)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    goto :goto_1

    .line 145
    :cond_2
    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->nonFinalRelease0(Lio/netty/util/ReferenceCounted;III)Z

    move-result v2

    .line 144
    :goto_1
    return v2
.end method

.method public final resetRefCnt(Lio/netty/util/ReferenceCounted;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->initialValue()I

    move-result v1

    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 107
    return-void
.end method

.method public final retain(Lio/netty/util/ReferenceCounted;)Lio/netty/util/ReferenceCounted;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TT;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    const/4 v0, 0x1

    const/4 v1, 0x2

    invoke-direct {p0, p1, v0, v1}, Lio/netty/util/internal/ReferenceCountUpdater;->retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;

    move-result-object v0

    return-object v0
.end method

.method public final retain(Lio/netty/util/ReferenceCounted;I)Lio/netty/util/ReferenceCounted;
    .locals 2
    .param p2, "increment"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)TT;"
        }
    .end annotation

    .line 115
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    const-string v0, "increment"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    move-result v0

    shl-int/lit8 v0, v0, 0x1

    .line 116
    .local v0, "rawIncrement":I
    invoke-direct {p0, p1, p2, v0}, Lio/netty/util/internal/ReferenceCountUpdater;->retain0(Lio/netty/util/ReferenceCounted;II)Lio/netty/util/ReferenceCounted;

    move-result-object v1

    return-object v1
.end method

.method public final setRefCnt(Lio/netty/util/ReferenceCounted;I)V
    .locals 2
    .param p2, "refCnt"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/netty/util/internal/ReferenceCountUpdater;, "Lio/netty/util/internal/ReferenceCountUpdater<TT;>;"
    .local p1, "instance":Lio/netty/util/ReferenceCounted;, "TT;"
    invoke-virtual {p0}, Lio/netty/util/internal/ReferenceCountUpdater;->updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;

    move-result-object v0

    if-lez p2, :cond_0

    shl-int/lit8 v1, p2, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, p1, v1}, Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;->set(Ljava/lang/Object;I)V

    .line 100
    return-void
.end method

.method protected abstract unsafeOffset()J
.end method

.method protected abstract updater()Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/concurrent/atomic/AtomicIntegerFieldUpdater<",
            "TT;>;"
        }
    .end annotation
.end method
