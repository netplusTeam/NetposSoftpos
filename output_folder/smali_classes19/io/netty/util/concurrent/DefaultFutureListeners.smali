.class final Lio/netty/util/concurrent/DefaultFutureListeners;
.super Ljava/lang/Object;
.source "DefaultFutureListeners.java"


# instance fields
.field private listeners:[Lio/netty/util/concurrent/GenericFutureListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation
.end field

.field private progressiveSize:I

.field private size:I


# direct methods
.method constructor <init>(Lio/netty/util/concurrent/GenericFutureListener;Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;)V"
        }
    .end annotation

    .line 28
    .local p1, "first":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    .local p2, "second":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    const/4 v0, 0x2

    new-array v1, v0, [Lio/netty/util/concurrent/GenericFutureListener;

    iput-object v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 30
    const/4 v2, 0x0

    aput-object p1, v1, v2

    .line 31
    const/4 v2, 0x1

    aput-object p2, v1, v2

    .line 32
    iput v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 33
    instance-of v0, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v0, :cond_0

    .line 34
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 36
    :cond_0
    instance-of v0, p2, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v0, :cond_1

    .line 37
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/2addr v0, v2

    iput v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 39
    :cond_1
    return-void
.end method


# virtual methods
.method public add(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;)V"
        }
    .end annotation

    .line 42
    .local p1, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 43
    .local v0, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 44
    .local v1, "size":I
    array-length v2, v0

    if-ne v1, v2, :cond_0

    .line 45
    shl-int/lit8 v2, v1, 0x1

    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Lio/netty/util/concurrent/GenericFutureListener;

    move-object v0, v2

    iput-object v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 47
    :cond_0
    aput-object p1, v0, v1

    .line 48
    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 50
    instance-of v2, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v2, :cond_1

    .line 51
    iget v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 53
    :cond_1
    return-void
.end method

.method public listeners()[Lio/netty/util/concurrent/GenericFutureListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;"
        }
    .end annotation

    .line 76
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    return-object v0
.end method

.method public progressiveSize()I
    .locals 1

    .line 84
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    return v0
.end method

.method public remove(Lio/netty/util/concurrent/GenericFutureListener;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/GenericFutureListener<",
            "+",
            "Lio/netty/util/concurrent/Future<",
            "*>;>;)V"
        }
    .end annotation

    .line 56
    .local p1, "l":Lio/netty/util/concurrent/GenericFutureListener;, "Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget-object v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->listeners:[Lio/netty/util/concurrent/GenericFutureListener;

    .line 57
    .local v0, "listeners":[Lio/netty/util/concurrent/GenericFutureListener;, "[Lio/netty/util/concurrent/GenericFutureListener<+Lio/netty/util/concurrent/Future<*>;>;"
    iget v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 58
    .local v1, "size":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_3

    .line 59
    aget-object v3, v0, v2

    if-ne v3, p1, :cond_2

    .line 60
    sub-int v3, v1, v2

    add-int/lit8 v3, v3, -0x1

    .line 61
    .local v3, "listenersToMove":I
    if-lez v3, :cond_0

    .line 62
    add-int/lit8 v4, v2, 0x1

    invoke-static {v0, v4, v0, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 64
    :cond_0
    add-int/lit8 v1, v1, -0x1

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 65
    iput v1, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    .line 67
    instance-of v4, p1, Lio/netty/util/concurrent/GenericProgressiveFutureListener;

    if-eqz v4, :cond_1

    .line 68
    iget v4, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    add-int/lit8 v4, v4, -0x1

    iput v4, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->progressiveSize:I

    .line 70
    :cond_1
    return-void

    .line 58
    .end local v3    # "listenersToMove":I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 73
    .end local v2    # "i":I
    :cond_3
    return-void
.end method

.method public size()I
    .locals 1

    .line 80
    iget v0, p0, Lio/netty/util/concurrent/DefaultFutureListeners;->size:I

    return v0
.end method
