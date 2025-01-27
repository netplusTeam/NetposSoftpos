.class final Lio/netty/buffer/PoolSubpage;
.super Ljava/lang/Object;
.source "PoolSubpage.java"

# interfaces
.implements Lio/netty/buffer/PoolSubpageMetric;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/buffer/PoolSubpageMetric;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private final bitmap:[J

.field private bitmapLength:I

.field final chunk:Lio/netty/buffer/PoolChunk;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;"
        }
    .end annotation
.end field

.field doNotDestroy:Z

.field elemSize:I

.field private maxNumElems:I

.field private final memoryMapIdx:I

.field next:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private nextAvail:I

.field private numAvail:I

.field private final pageSize:I

.field prev:Lio/netty/buffer/PoolSubpage;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final runOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 19
    return-void
.end method

.method constructor <init>(I)V
    .locals 2
    .param p1, "pageSize"    # I

    .line 41
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 43
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    .line 44
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 45
    iput v1, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 46
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    .line 47
    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 48
    return-void
.end method

.method constructor <init>(Lio/netty/buffer/PoolSubpage;Lio/netty/buffer/PoolChunk;IIII)V
    .locals 1
    .param p3, "memoryMapIdx"    # I
    .param p4, "runOffset"    # I
    .param p5, "pageSize"    # I
    .param p6, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;",
            "Lio/netty/buffer/PoolChunk<",
            "TT;>;IIII)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p2, "chunk":Lio/netty/buffer/PoolChunk;, "Lio/netty/buffer/PoolChunk<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p2, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    .line 52
    iput p3, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    .line 53
    iput p4, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    .line 54
    iput p5, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    .line 55
    ushr-int/lit8 v0, p5, 0xa

    new-array v0, v0, [J

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 56
    invoke-virtual {p0, p1, p6}, Lio/netty/buffer/PoolSubpage;->init(Lio/netty/buffer/PoolSubpage;I)V

    .line 57
    return-void
.end method

.method private addToPool(Lio/netty/buffer/PoolSubpage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;)V"
        }
    .end annotation

    .line 139
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-nez v0, :cond_0

    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-nez v0, :cond_0

    .line 140
    iput-object p1, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 141
    iget-object v0, p1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 142
    iput-object p0, v0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 143
    iput-object p0, p1, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 144
    return-void

    .line 139
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private findNextAvail()I
    .locals 9

    .line 168
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    .line 169
    .local v0, "bitmap":[J
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 170
    .local v1, "bitmapLength":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 171
    aget-wide v3, v0, v2

    .line 172
    .local v3, "bits":J
    not-long v5, v3

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-eqz v5, :cond_0

    .line 173
    invoke-direct {p0, v2, v3, v4}, Lio/netty/buffer/PoolSubpage;->findNextAvail0(IJ)I

    move-result v5

    return v5

    .line 170
    .end local v3    # "bits":J
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 176
    .end local v2    # "i":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private findNextAvail0(IJ)I
    .locals 7
    .param p1, "i"    # I
    .param p2, "bits"    # J

    .line 180
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 181
    .local v0, "maxNumElems":I
    shl-int/lit8 v1, p1, 0x6

    .line 183
    .local v1, "baseVal":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    const/16 v3, 0x40

    if-ge v2, v3, :cond_1

    .line 184
    const-wide/16 v3, 0x1

    and-long/2addr v3, p2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-nez v3, :cond_0

    .line 185
    or-int v3, v1, v2

    .line 186
    .local v3, "val":I
    if-ge v3, v0, :cond_1

    .line 187
    return v3

    .line 192
    .end local v3    # "val":I
    :cond_0
    const/4 v3, 0x1

    ushr-long/2addr p2, v3

    .line 183
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 194
    .end local v2    # "j":I
    :cond_1
    const/4 v2, -0x1

    return v2
.end method

.method private getNextAvail()I
    .locals 2

    .line 159
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 160
    .local v0, "nextAvail":I
    if-ltz v0, :cond_0

    .line 161
    const/4 v1, -0x1

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 162
    return v0

    .line 164
    :cond_0
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->findNextAvail()I

    move-result v1

    return v1
.end method

.method private removeFromPool()V
    .locals 2

    .line 147
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-eqz v1, :cond_0

    .line 148
    iput-object v1, v0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 149
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    iput-object v0, v1, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 150
    const/4 v0, 0x0

    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    .line 151
    iput-object v0, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    .line 152
    return-void

    .line 147
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method private setNextAvail(I)V
    .locals 0
    .param p1, "bitmapIdx"    # I

    .line 155
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iput p1, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 156
    return-void
.end method

.method private toHandle(I)J
    .locals 4
    .param p1, "bitmapIdx"    # I

    .line 198
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    int-to-long v0, p1

    const/16 v2, 0x20

    shl-long/2addr v0, v2

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    or-long/2addr v0, v2

    iget v2, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    int-to-long v2, v2

    or-long/2addr v0, v2

    return-wide v0
.end method


# virtual methods
.method allocate()J
    .locals 12

    .line 81
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    if-nez v0, :cond_0

    .line 82
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lio/netty/buffer/PoolSubpage;->toHandle(I)J

    move-result-wide v0

    return-wide v0

    .line 85
    :cond_0
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-eqz v0, :cond_4

    iget-boolean v0, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v0, :cond_1

    goto :goto_0

    .line 89
    :cond_1
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->getNextAvail()I

    move-result v0

    .line 90
    .local v0, "bitmapIdx":I
    ushr-int/lit8 v1, v0, 0x6

    .line 91
    .local v1, "q":I
    and-int/lit8 v2, v0, 0x3f

    .line 92
    .local v2, "r":I
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v3, v1

    ushr-long v6, v4, v2

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-nez v6, :cond_3

    .line 93
    shl-long v6, v8, v2

    or-long/2addr v4, v6

    aput-wide v4, v3, v1

    .line 95
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v3, v3, -0x1

    iput v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-nez v3, :cond_2

    .line 96
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 99
    :cond_2
    invoke-direct {p0, v0}, Lio/netty/buffer/PoolSubpage;->toHandle(I)J

    move-result-wide v3

    return-wide v3

    .line 92
    :cond_3
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3}, Ljava/lang/AssertionError;-><init>()V

    throw v3

    .line 86
    .end local v0    # "bitmapIdx":I
    .end local v1    # "q":I
    .end local v2    # "r":I
    :cond_4
    :goto_0
    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method destroy()V
    .locals 1

    .line 278
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-eqz v0, :cond_0

    .line 279
    invoke-virtual {v0}, Lio/netty/buffer/PoolChunk;->destroy()V

    .line 281
    :cond_0
    return-void
.end method

.method public elementSize()I
    .locals 2

    .line 262
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 264
    const/4 v0, -0x1

    return v0

    .line 267
    :cond_0
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 268
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    monitor-exit v0

    return v1

    .line 269
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method free(Lio/netty/buffer/PoolSubpage;I)Z
    .locals 12
    .param p2, "bitmapIdx"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;I)Z"
        }
    .end annotation

    .line 107
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 108
    return v1

    .line 110
    :cond_0
    ushr-int/lit8 v0, p2, 0x6

    .line 111
    .local v0, "q":I
    and-int/lit8 v2, p2, 0x3f

    .line 112
    .local v2, "r":I
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    aget-wide v4, v3, v0

    ushr-long v6, v4, v2

    const-wide/16 v8, 0x1

    and-long/2addr v6, v8

    const-wide/16 v10, 0x0

    cmp-long v6, v6, v10

    if-eqz v6, :cond_4

    .line 113
    shl-long v6, v8, v2

    xor-long/2addr v4, v6

    aput-wide v4, v3, v0

    .line 115
    invoke-direct {p0, p2}, Lio/netty/buffer/PoolSubpage;->setNextAvail(I)V

    .line 117
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    if-nez v3, :cond_1

    .line 118
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolSubpage;->addToPool(Lio/netty/buffer/PoolSubpage;)V

    .line 119
    return v1

    .line 122
    :cond_1
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    if-eq v4, v3, :cond_2

    .line 123
    return v1

    .line 126
    :cond_2
    iget-object v3, p0, Lio/netty/buffer/PoolSubpage;->prev:Lio/netty/buffer/PoolSubpage;

    iget-object v4, p0, Lio/netty/buffer/PoolSubpage;->next:Lio/netty/buffer/PoolSubpage;

    if-ne v3, v4, :cond_3

    .line 128
    return v1

    .line 132
    :cond_3
    const/4 v1, 0x0

    iput-boolean v1, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 133
    invoke-direct {p0}, Lio/netty/buffer/PoolSubpage;->removeFromPool()V

    .line 134
    return v1

    .line 112
    :cond_4
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1
.end method

.method init(Lio/netty/buffer/PoolSubpage;I)V
    .locals 4
    .param p2, "elemSize"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/buffer/PoolSubpage<",
            "TT;>;I)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    .local p1, "head":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    .line 61
    iput p2, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 62
    if-eqz p2, :cond_1

    .line 63
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    div-int/2addr v1, p2

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    iput v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 64
    const/4 v2, 0x0

    iput v2, p0, Lio/netty/buffer/PoolSubpage;->nextAvail:I

    .line 65
    ushr-int/lit8 v2, v1, 0x6

    iput v2, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 66
    and-int/lit8 v1, v1, 0x3f

    if-eqz v1, :cond_0

    .line 67
    add-int/2addr v2, v0

    iput v2, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    .line 70
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->bitmapLength:I

    if-ge v0, v1, :cond_1

    .line 71
    iget-object v1, p0, Lio/netty/buffer/PoolSubpage;->bitmap:[J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v0

    .line 70
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 74
    .end local v0    # "i":I
    :cond_1
    invoke-direct {p0, p1}, Lio/netty/buffer/PoolSubpage;->addToPool(Lio/netty/buffer/PoolSubpage;)V

    .line 75
    return-void
.end method

.method public maxNumElements()I
    .locals 2

    .line 238
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 240
    const/4 v0, 0x0

    return v0

    .line 243
    :cond_0
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 244
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    monitor-exit v0

    return v1

    .line 245
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public numAvailable()I
    .locals 2

    .line 250
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 252
    const/4 v0, 0x0

    return v0

    .line 255
    :cond_0
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 256
    :try_start_0
    iget v1, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    monitor-exit v0

    return v1

    .line 257
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public pageSize()I
    .locals 1

    .line 274
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget v0, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 207
    .local p0, "this":Lio/netty/buffer/PoolSubpage;, "Lio/netty/buffer/PoolSubpage<TT;>;"
    iget-object v0, p0, Lio/netty/buffer/PoolSubpage;->chunk:Lio/netty/buffer/PoolChunk;

    if-nez v0, :cond_0

    .line 209
    const/4 v0, 0x1

    .line 210
    .local v0, "doNotDestroy":Z
    const/4 v1, 0x0

    .line 211
    .local v1, "maxNumElems":I
    const/4 v2, 0x0

    .line 212
    .local v2, "numAvail":I
    const/4 v3, -0x1

    .local v3, "elemSize":I
    goto :goto_1

    .line 214
    .end local v0    # "doNotDestroy":Z
    .end local v1    # "maxNumElems":I
    .end local v2    # "numAvail":I
    .end local v3    # "elemSize":I
    :cond_0
    iget-object v0, v0, Lio/netty/buffer/PoolChunk;->arena:Lio/netty/buffer/PoolArena;

    monitor-enter v0

    .line 215
    :try_start_0
    iget-boolean v1, p0, Lio/netty/buffer/PoolSubpage;->doNotDestroy:Z

    if-nez v1, :cond_1

    .line 216
    const/4 v1, 0x0

    .line 218
    .local v1, "doNotDestroy":Z
    const/4 v2, -0x1

    move v3, v2

    .restart local v3    # "elemSize":I
    move v4, v2

    .local v4, "numAvail":I
    move v6, v4

    move v4, v3

    move v3, v6

    .local v2, "maxNumElems":I
    goto :goto_0

    .line 220
    .end local v1    # "doNotDestroy":Z
    .end local v2    # "maxNumElems":I
    .end local v3    # "elemSize":I
    .end local v4    # "numAvail":I
    :cond_1
    const/4 v1, 0x1

    .line 221
    .restart local v1    # "doNotDestroy":Z
    iget v2, p0, Lio/netty/buffer/PoolSubpage;->maxNumElems:I

    .line 222
    .restart local v2    # "maxNumElems":I
    iget v3, p0, Lio/netty/buffer/PoolSubpage;->numAvail:I

    .line 223
    .local v3, "numAvail":I
    iget v4, p0, Lio/netty/buffer/PoolSubpage;->elemSize:I

    .line 225
    .local v4, "elemSize":I
    :goto_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move v0, v1

    move v1, v2

    move v2, v3

    move v3, v4

    .line 228
    .end local v4    # "elemSize":I
    .restart local v0    # "doNotDestroy":Z
    .local v1, "maxNumElems":I
    .local v2, "numAvail":I
    .local v3, "elemSize":I
    :goto_1
    if-nez v0, :cond_2

    .line 229
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": not in use)"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 232
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/netty/buffer/PoolSubpage;->memoryMapIdx:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ": "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sub-int v5, v1, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x2f

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", offset: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/netty/buffer/PoolSubpage;->runOffset:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", length: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v5, p0, Lio/netty/buffer/PoolSubpage;->pageSize:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", elemSize: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const/16 v5, 0x29

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4

    .line 225
    .end local v0    # "doNotDestroy":Z
    .end local v1    # "maxNumElems":I
    .end local v2    # "numAvail":I
    .end local v3    # "elemSize":I
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
