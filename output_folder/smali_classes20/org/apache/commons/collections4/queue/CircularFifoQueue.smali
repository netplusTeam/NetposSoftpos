.class public Lorg/apache/commons/collections4/queue/CircularFifoQueue;
.super Ljava/util/AbstractCollection;
.source "CircularFifoQueue.java"

# interfaces
.implements Ljava/util/Queue;
.implements Lorg/apache/commons/collections4/BoundedCollection;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;",
        "Ljava/util/Queue<",
        "TE;>;",
        "Lorg/apache/commons/collections4/BoundedCollection<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x74e5fa40e2e0baa6L


# instance fields
.field private transient elements:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field private transient end:I

.field private transient full:Z

.field private final maxElements:I

.field private transient start:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 80
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    const/16 v0, 0x20

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    .line 81
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .param p1, "size"    # I

    .line 90
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 68
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 71
    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 91
    if-lez p1, :cond_0

    .line 94
    new-array v0, p1, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 95
    array-length v0, v0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    .line 96
    return-void

    .line 92
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The size must be greater than 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;-><init>(I)V

    .line 107
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->addAll(Ljava/util/Collection;)Z

    .line 108
    return-void
.end method

.method static synthetic access$000(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    .line 49
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    return v0
.end method

.method static synthetic access$100(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)Z
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    .line 49
    iget-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    return v0
.end method

.method static synthetic access$102(Lorg/apache/commons/collections4/queue/CircularFifoQueue;Z)Z
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;
    .param p1, "x1"    # Z

    .line 49
    iput-boolean p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    return p1
.end method

.method static synthetic access$200(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    .line 49
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return v0
.end method

.method static synthetic access$202(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 0
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 49
    iput p1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    return p1
.end method

.method static synthetic access$300(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->increment(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)[Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    .line 49
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$500(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;

    .line 49
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method static synthetic access$600(Lorg/apache/commons/collections4/queue/CircularFifoQueue;I)I
    .locals 1
    .param p0, "x0"    # Lorg/apache/commons/collections4/queue/CircularFifoQueue;
    .param p1, "x1"    # I

    .line 49
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->decrement(I)I

    move-result v0

    return v0
.end method

.method private decrement(I)I
    .locals 1
    .param p1, "index"    # I

    .line 354
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, -0x1

    .line 355
    if-gez p1, :cond_0

    .line 356
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    add-int/lit8 p1, v0, -0x1

    .line 358
    :cond_0
    return p1
.end method

.method private increment(I)I
    .locals 1
    .param p1, "index"    # I

    .line 340
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    add-int/lit8 p1, p1, 0x1

    .line 341
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-lt p1, v0, :cond_0

    .line 342
    const/4 p1, 0x0

    .line 344
    :cond_0
    return p1
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 134
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 135
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    new-array v0, v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    .line 136
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readInt()I

    move-result v0

    .line 137
    .local v0, "size":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 138
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v3

    aput-object v3, v2, v1

    .line 137
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 140
    .end local v1    # "i":I
    :cond_0
    const/4 v1, 0x0

    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 141
    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-ne v0, v2, :cond_1

    const/4 v2, 0x1

    goto :goto_1

    :cond_1
    move v2, v1

    :goto_1
    iput-boolean v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 142
    if-eqz v2, :cond_2

    .line 143
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    goto :goto_2

    .line 145
    :cond_2
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 147
    :goto_2
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 2
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 118
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 119
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/ObjectOutputStream;->writeInt(I)V

    .line 120
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 121
    .local v1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p1, v1}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 122
    .end local v1    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 123
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 235
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    if-eqz p1, :cond_3

    .line 239
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isAtFullCapacity()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 240
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    .line 243
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    aput-object p1, v0, v1

    .line 245
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-lt v2, v0, :cond_1

    .line 246
    const/4 v0, 0x0

    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 249
    :cond_1
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 250
    iput-boolean v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 253
    :cond_2
    return v2

    .line 236
    :cond_3
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Attempted to add null object to queue"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clear()V
    .locals 2

    .line 219
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 220
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 221
    iput v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    .line 222
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    return-void
.end method

.method public element()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 300
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 303
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 5
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 264
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    .line 265
    .local v0, "sz":I
    if-ltz p1, :cond_0

    if-ge p1, v0, :cond_0

    .line 271
    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    add-int/2addr v1, p1

    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    rem-int/2addr v1, v2

    .line 272
    .local v1, "idx":I
    iget-object v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    aget-object v2, v2, v1

    return-object v2

    .line 266
    .end local v1    # "idx":I
    :cond_0
    new-instance v1, Ljava/util/NoSuchElementException;

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 268
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 267
    const-string v3, "The specified index (%1$d) is outside the available range [0, %2$d)"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public isAtFullCapacity()Z
    .locals 2

    .line 201
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 177
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->size()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isFull()Z
    .locals 1

    .line 190
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 368
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue$1;-><init>(Lorg/apache/commons/collections4/queue/CircularFifoQueue;)V

    return-object v0
.end method

.method public maxSize()I
    .locals 1

    .line 211
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    return v0
.end method

.method public offer(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 287
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    .local p1, "element":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->add(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public peek()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 308
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 309
    const/4 v0, 0x0

    return-object v0

    .line 311
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    aget-object v0, v0, v1

    return-object v0
.end method

.method public poll()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 292
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    const/4 v0, 0x0

    return-object v0

    .line 295
    :cond_0
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 316
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 320
    iget-object v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->elements:[Ljava/lang/Object;

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    aget-object v2, v0, v1

    .line 321
    .local v2, "element":Ljava/lang/Object;, "TE;"
    if-eqz v2, :cond_1

    .line 322
    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    const/4 v4, 0x0

    aput-object v4, v0, v1

    .line 324
    iget v0, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    const/4 v1, 0x0

    if-lt v3, v0, :cond_0

    .line 325
    iput v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    .line 327
    :cond_0
    iput-boolean v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    .line 329
    :cond_1
    return-object v2

    .line 317
    .end local v2    # "element":Ljava/lang/Object;, "TE;"
    :cond_2
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "queue is empty"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 4

    .line 157
    .local p0, "this":Lorg/apache/commons/collections4/queue/CircularFifoQueue;, "Lorg/apache/commons/collections4/queue/CircularFifoQueue<TE;>;"
    const/4 v0, 0x0

    .line 159
    .local v0, "size":I
    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->end:I

    iget v2, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->start:I

    if-ge v1, v2, :cond_0

    .line 160
    iget v3, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    sub-int/2addr v3, v2

    add-int/2addr v3, v1

    .end local v0    # "size":I
    .local v3, "size":I
    goto :goto_1

    .line 161
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_0
    if-ne v1, v2, :cond_2

    .line 162
    iget-boolean v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->full:Z

    if-eqz v1, :cond_1

    iget v1, p0, Lorg/apache/commons/collections4/queue/CircularFifoQueue;->maxElements:I

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    move v3, v1

    .end local v0    # "size":I
    .restart local v3    # "size":I
    goto :goto_1

    .line 164
    .end local v3    # "size":I
    .restart local v0    # "size":I
    :cond_2
    sub-int v3, v1, v2

    .line 167
    .end local v0    # "size":I
    .restart local v3    # "size":I
    :goto_1
    return v3
.end method
