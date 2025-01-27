.class final Lio/netty/buffer/PoolChunkList;
.super Ljava/lang/Object;
.source "PoolChunkList.java"

# interfaces
.implements Lio/netty/buffer/PoolChunkListMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolChunkListMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final EMPTY_METRICS:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final arena:Lio/netty/buffer/PoolArena;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolArena<",
            "TT;>;"
        }
    .end annotation
.end field

.field private head:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final maxCapacity:I

.field private final maxUsage:I

.field private final minUsage:I

.field private final nextList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field

.field private prevList:Lio/netty/buffer/PoolChunkList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 30
    nop

    .line 31
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    sput-object v0, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;

    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolArena;Lio/netty/buffer/PoolChunkList;III)V
    .locals 1
    .param p3, "minUsage"    # I
    .param p4, "maxUsage"    # I
    .param p5, "chunkSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;III)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    .local p2, "nextList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    if-gt p3, p4, :cond_0

    .line 47
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    .line 48
    iput-object p2, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    .line 49
    iput p3, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    .line 50
    iput p4, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    .line 51
    invoke-static {p3, p5}, Lio/netty/buffer/PoolChunkList;->calculateMaxCapacity(II)I

    move-result v0

    iput v0, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    .line 52
    return-void

    .line 46
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private static calculateMaxCapacity(II)I
    .locals 6
    .param p0, "minUsage"    # I
    .param p1, "chunkSize"    # I

    .line 59
    invoke-static {p0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result p0

    .line 61
    const/16 v0, 0x64

    if-ne p0, v0, :cond_0

    .line 63
    const/4 v0, 0x0

    return v0

    .line 71
    :cond_0
    int-to-long v0, p1

    int-to-long v2, p0

    const-wide/16 v4, 0x64

    sub-long v2, v4, v2

    mul-long/2addr v0, v2

    div-long/2addr v0, v4

    long-to-int v0, v0

    return v0
.end method

.method private static minUsage0(I)I
    .locals 1
    .param p0, "value"    # I

    .line 186
    const/4 v0, 0x1

    invoke-static {v0, p0}, Ljava/lang/Math;->max(II)I

    move-result v0

    return v0
.end method

.method private move(Lio/netty/buffer/PoolChunk;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    .line 109
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    if-ge v0, v1, :cond_1

    .line 111
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    if-ge v0, v1, :cond_0

    .line 113
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0

    .line 117
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    .line 118
    const/4 v0, 0x1

    return v0

    .line 109
    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private move0(Lio/netty/buffer/PoolChunk;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)Z"
        }
    .end annotation

    .line 126
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    if-nez v0, :cond_1

    .line 129
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    if-nez v0, :cond_0

    .line 130
    const/4 v0, 0x0

    return v0

    .line 129
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 132
    :cond_1
    invoke-direct {v0, p1}, Lio/netty/buffer/PoolChunkList;->move(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0
.end method

.method private remove(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 161
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-ne p1, v0, :cond_0

    .line 162
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    iput-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 163
    if-eqz v0, :cond_1

    .line 164
    const/4 v1, 0x0

    iput-object v1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 167
    :cond_0
    iget-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 168
    .local v0, "next":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iget-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v0, v1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 169
    if-eqz v0, :cond_1

    .line 170
    iget-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    iput-object v1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 173
    .end local v0    # "next":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    :goto_0
    return-void
.end method


# virtual methods
.method add(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 136
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    if-lt v0, v1, :cond_0

    .line 137
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v0, p1}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 138
    return-void

    .line 140
    :cond_0
    invoke-virtual {p0, p1}, Lio/netty/buffer/PoolChunkList;->add0(Lio/netty/buffer/PoolChunk;)V

    .line 141
    return-void
.end method

.method add0(Lio/netty/buffer/PoolChunk;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;)V"
        }
    .end annotation

    .line 147
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    iput-object p0, p1, Lio/netty/buffer/PoolChunk;->parent:Lio/netty/buffer/PoolChunkList;

    .line 148
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 149
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 150
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 151
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 153
    :cond_0
    iput-object v1, p1, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 154
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    iput-object v0, p1, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    .line 155
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    iput-object p1, v0, Lio/netty/buffer/PoolChunk;->prev:Lio/netty/buffer/PoolChunk;

    .line 156
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 158
    :goto_0
    return-void
.end method

.method allocate(Lio/netty/buffer/PooledByteBuf;II)Z
    .locals 3
    .param p2, "reqCapacity"    # I
    .param p3, "normCapacity"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PooledByteBuf<",
            "TT;>;II)Z"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "buf":Lio/netty/buffer/PooledByteBuf;, "Lio/netty/buffer/PooledByteBuf<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunkList;->maxCapacity:I

    const/4 v1, 0x0

    if-le p3, v0, :cond_0

    .line 83
    return v1

    .line 86
    :cond_0
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .local v0, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    if-eqz v0, :cond_3

    .line 87
    invoke-virtual {v0, p1, p2, p3}, Lio/netty/buffer/PoolChunk;->allocate(Lio/netty/buffer/PooledByteBuf;II)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v1

    iget v2, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    if-lt v1, v2, :cond_1

    .line 89
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    .line 90
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->nextList:Lio/netty/buffer/PoolChunkList;

    invoke-virtual {v1, v0}, Lio/netty/buffer/PoolChunkList;->add(Lio/netty/buffer/PoolChunk;)V

    .line 92
    :cond_1
    const/4 v1, 0x1

    return v1

    .line 86
    :cond_2
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 95
    .end local v0    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_3
    return v1
.end method

.method destroy(Lio/netty/buffer/PoolArena;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolArena<",
            "TT;>;)V"
        }
    .end annotation

    .line 228
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "arena":Lio/netty/buffer/PoolArena;, "Lio/netty/buffer/PoolArena<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 229
    .local v0, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    if-eqz v0, :cond_0

    .line 230
    invoke-virtual {p1, v0}, Lio/netty/buffer/PoolArena;->destroyChunk(Lio/netty/buffer/PoolChunk;)V

    .line 231
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    goto :goto_0

    .line 233
    :cond_0
    const/4 v1, 0x0

    iput-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 234
    return-void
.end method

.method free(Lio/netty/buffer/PoolChunk;JLjava/nio/ByteBuffer;)Z
    .locals 2
    .param p2, "handle"    # J
    .param p4, "nioBuffer"    # Ljava/nio/ByteBuffer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;J",
            "Ljava/nio/ByteBuffer;",
            ")Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-virtual {p1, p2, p3, p4}, Lio/netty/buffer/PoolChunk;->free(JLjava/nio/ByteBuffer;)V

    .line 100
    invoke-virtual {p1}, Lio/netty/buffer/PoolChunk;->usage()I

    move-result v0

    iget v1, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    if-ge v0, v1, :cond_0

    .line 101
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->remove(Lio/netty/buffer/PoolChunk;)V

    .line 103
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolChunkList;->move0(Lio/netty/buffer/PoolChunk;)Z

    move-result v0

    return v0

    .line 105
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lio/netty/buffer/PoolChunkMetric;",
            ">;"
        }
    .end annotation

    .line 191
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 192
    :try_start_0
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v1, :cond_0

    .line 193
    sget-object v1, Lio/netty/buffer/PoolChunkList;->EMPTY_METRICS:Ljava/util/Iterator;

    monitor-exit v0

    return-object v1

    .line 195
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 196
    .local v1, "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolChunkMetric;>;"
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    .line 197
    .local v2, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 198
    iget-object v3, v2, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    move-object v2, v3

    .line 199
    if-nez v2, :cond_1

    .line 200
    nop

    .line 203
    .end local v2    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    monitor-exit v0

    return-object v2

    .line 204
    .end local v1    # "metrics":Ljava/util/List;, "Ljava/util/List<Lio/netty/buffer/PoolChunkMetric;>;"
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public maxUsage()I
    .locals 2

    .line 182
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunkList;->maxUsage:I

    const/16 v1, 0x64

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    return v0
.end method

.method public minUsage()I
    .locals 1

    .line 177
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolChunkList;->minUsage:I

    invoke-static {v0}, Lio/netty/buffer/PoolChunkList;->minUsage0(I)I

    move-result v0

    return v0
.end method

.method prevList(Lio/netty/buffer/PoolChunkList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolChunkList<",
            "TT;>;)V"
        }
    .end annotation

    .line 75
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    .local p1, "prevList":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    if-nez v0, :cond_0

    .line 76
    iput-object p1, p0, Lio/netty/buffer/PoolChunkList;->prevList:Lio/netty/buffer/PoolChunkList;

    .line 77
    return-void

    .line 75
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 209
    .local p0, "this":Lio/netty/buffer/PoolChunkList;, "Lio/netty/buffer/PoolChunkList<TT;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 210
    .local v0, "buf":Ljava/lang/StringBuilder;
    iget-object v1, p0, Lio/netty/buffer/PoolChunkList;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v1

    .line 211
    :try_start_0
    iget-object v2, p0, Lio/netty/buffer/PoolChunkList;->head:Lio/netty/buffer/PoolChunk;

    if-nez v2, :cond_0

    .line 212
    const-string v2, "none"

    monitor-exit v1

    return-object v2

    .line 215
    :cond_0
    nop

    .line 216
    .local v2, "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :goto_0
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 217
    iget-object v3, v2, Lio/netty/buffer/PoolChunk;->next:Lio/netty/buffer/PoolChunk;

    move-object v2, v3

    .line 218
    if-nez v2, :cond_1

    .line 219
    nop

    .line 223
    .end local v2    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 221
    .restart local v2    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :cond_1
    :try_start_1
    sget-object v3, Lio/netty/util/internal/StringUtil;->NEWLINE:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 223
    .end local v2    # "cur":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method
