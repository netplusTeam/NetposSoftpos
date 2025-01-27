.class public Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
.super Ljava/lang/Object;
.source "DefaultMaxBytesRecvByteBufAllocator.java"

# interfaces
.implements Lio/netty/channel/MaxBytesRecvByteBufAllocator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;
    }
.end annotation


# instance fields
.field private volatile maxBytesPerIndividualRead:I

.field private volatile maxBytesPerRead:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 107
    const/high16 v0, 0x10000

    invoke-direct {p0, v0, v0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;-><init>(II)V

    .line 108
    return-void
.end method

.method public constructor <init>(II)V
    .locals 0
    .param p1, "maxBytesPerRead"    # I
    .param p2, "maxBytesPerIndividualRead"    # I

    .line 110
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 111
    invoke-static {p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->checkMaxBytesPerReadPair(II)V

    .line 112
    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    .line 113
    iput p2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    .line 114
    return-void
.end method

.method private static checkMaxBytesPerReadPair(II)V
    .locals 3
    .param p0, "maxBytesPerRead"    # I
    .param p1, "maxBytesPerIndividualRead"    # I

    .line 174
    const-string v0, "maxBytesPerRead"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 175
    const-string v0, "maxBytesPerIndividualRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 176
    if-lt p0, p1, :cond_0

    .line 181
    return-void

    .line 177
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxBytesPerRead cannot be less than maxBytesPerIndividualRead ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "): "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public maxBytesPerIndividualRead()I
    .locals 1

    .line 147
    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    return v0
.end method

.method public maxBytesPerIndividualRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 4
    .param p1, "maxBytesPerIndividualRead"    # I

    .line 152
    const-string v0, "maxBytesPerIndividualRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 155
    monitor-enter p0

    .line 156
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead()I

    move-result v0

    .line 157
    .local v0, "maxBytesPerRead":I
    if-gt p1, v0, :cond_0

    .line 163
    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    .line 164
    .end local v0    # "maxBytesPerRead":I
    monitor-exit p0

    .line 165
    return-object p0

    .line 158
    .restart local v0    # "maxBytesPerRead":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxBytesPerIndividualRead cannot be greater than maxBytesPerRead ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxBytesPerIndividualRead":I
    throw v1

    .line 164
    .end local v0    # "maxBytesPerRead":I
    .restart local p1    # "maxBytesPerIndividualRead":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic maxBytesPerIndividualRead(I)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public maxBytesPerRead()I
    .locals 1

    .line 124
    iget v0, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    return v0
.end method

.method public maxBytesPerRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 4
    .param p1, "maxBytesPerRead"    # I

    .line 129
    const-string v0, "maxBytesPerRead"

    invoke-static {p1, v0}, Lio/netty/util/internal/ObjectUtil;->checkPositive(ILjava/lang/String;)I

    .line 132
    monitor-enter p0

    .line 133
    :try_start_0
    invoke-virtual {p0}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead()I

    move-result v0

    .line 134
    .local v0, "maxBytesPerIndividualRead":I
    if-lt p1, v0, :cond_0

    .line 140
    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    .line 141
    .end local v0    # "maxBytesPerIndividualRead":I
    monitor-exit p0

    .line 142
    return-object p0

    .line 135
    .restart local v0    # "maxBytesPerIndividualRead":I
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "maxBytesPerRead cannot be less than maxBytesPerIndividualRead ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "): "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .end local p1    # "maxBytesPerRead":I
    throw v1

    .line 141
    .end local v0    # "maxBytesPerIndividualRead":I
    .restart local p1    # "maxBytesPerRead":I
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic maxBytesPerRead(I)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    .line 31
    invoke-virtual {p0, p1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead(I)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public maxBytesPerReadPair(II)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    .locals 1
    .param p1, "maxBytesPerRead"    # I
    .param p2, "maxBytesPerIndividualRead"    # I

    .line 186
    invoke-static {p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->checkMaxBytesPerReadPair(II)V

    .line 189
    monitor-enter p0

    .line 190
    :try_start_0
    iput p1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    .line 191
    iput p2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    .line 192
    monitor-exit p0

    .line 193
    return-object p0

    .line 192
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public bridge synthetic maxBytesPerReadPair(II)Lio/netty/channel/MaxBytesRecvByteBufAllocator;
    .locals 0

    .line 31
    invoke-virtual {p0, p1, p2}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerReadPair(II)Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;

    move-result-object p1

    return-object p1
.end method

.method public declared-synchronized maxBytesPerReadPair()Ljava/util/Map$Entry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    monitor-enter p0

    .line 170
    :try_start_0
    new-instance v0, Ljava/util/AbstractMap$SimpleEntry;

    iget v1, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerRead:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;->maxBytesPerIndividualRead:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/util/AbstractMap$SimpleEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 170
    .end local p0    # "this":Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public newHandle()Lio/netty/channel/RecvByteBufAllocator$Handle;
    .locals 2

    .line 119
    new-instance v0, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$HandleImpl;-><init>(Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator;Lio/netty/channel/DefaultMaxBytesRecvByteBufAllocator$1;)V

    return-object v0
.end method
