.class final Ljava9/util/PBQueueSpliterator;
.super Ljava/lang/Object;
.source "PBQueueSpliterator.java"

# interfaces
.implements Ljava9/util/Spliterator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/Spliterator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private array:[Ljava/lang/Object;

.field private fence:I

.field private index:I

.field private final queue:Ljava/util/concurrent/PriorityBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V
    .locals 0
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "index"    # I
    .param p4, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "II)V"
        }
    .end annotation

    .line 25
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    .local p1, "queue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Ljava9/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    .line 27
    iput-object p2, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    .line 28
    iput p3, p0, Ljava9/util/PBQueueSpliterator;->index:I

    .line 29
    iput p4, p0, Ljava9/util/PBQueueSpliterator;->fence:I

    .line 30
    return-void
.end method

.method private getFence()I
    .locals 1

    .line 37
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    iget-object v0, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 38
    iget-object v0, p0, Ljava9/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/PriorityBlockingQueue;->toArray()[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    array-length v0, v0

    iput v0, p0, Ljava9/util/PBQueueSpliterator;->fence:I

    .line 39
    :cond_0
    iget v0, p0, Ljava9/util/PBQueueSpliterator;->fence:I

    return v0
.end method

.method static spliterator(Ljava/util/concurrent/PriorityBlockingQueue;)Ljava9/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/PriorityBlockingQueue<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 33
    .local p0, "queue":Ljava/util/concurrent/PriorityBlockingQueue;, "Ljava/util/concurrent/PriorityBlockingQueue<TT;>;"
    new-instance v0, Ljava9/util/PBQueueSpliterator;

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, -0x1

    invoke-direct {v0, p0, v1, v2, v3}, Ljava9/util/PBQueueSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 76
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    const/16 v0, 0x4140

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 72
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/PBQueueSpliterator;->index:I

    sub-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 52
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 53
    invoke-direct {p0}, Ljava9/util/PBQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/PBQueueSpliterator;->index:I

    .line 54
    .local v1, "lo":I
    iget-object v2, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    .line 55
    .local v2, "es":[Ljava/lang/Object;
    iput v0, p0, Ljava9/util/PBQueueSpliterator;->index:I

    .line 56
    move v3, v1

    .local v3, "i":I
    :goto_0
    if-ge v3, v0, :cond_0

    .line 57
    aget-object v4, v2, v3

    invoke-interface {p1, v4}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 56
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 58
    .end local v3    # "i":I
    :cond_0
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 63
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Ljava9/util/PBQueueSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/PBQueueSpliterator;->index:I

    if-le v0, v1, :cond_0

    if-ltz v1, :cond_0

    .line 65
    iget-object v0, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Ljava9/util/PBQueueSpliterator;->index:I

    aget-object v0, v0, v1

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 66
    const/4 v0, 0x1

    return v0

    .line 68
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/PBQueueSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/PBQueueSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 44
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/PBQueueSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v1, p0, Ljava9/util/PBQueueSpliterator;->index:I

    .local v1, "lo":I
    add-int v2, v1, v0

    ushr-int/lit8 v2, v2, 0x1

    .line 45
    .local v2, "mid":I
    if-lt v1, v2, :cond_0

    const/4 v3, 0x0

    goto :goto_0

    :cond_0
    new-instance v3, Ljava9/util/PBQueueSpliterator;

    iget-object v4, p0, Ljava9/util/PBQueueSpliterator;->queue:Ljava/util/concurrent/PriorityBlockingQueue;

    iget-object v5, p0, Ljava9/util/PBQueueSpliterator;->array:[Ljava/lang/Object;

    iput v2, p0, Ljava9/util/PBQueueSpliterator;->index:I

    invoke-direct {v3, v4, v5, v1, v2}, Ljava9/util/PBQueueSpliterator;-><init>(Ljava/util/concurrent/PriorityBlockingQueue;[Ljava/lang/Object;II)V

    :goto_0
    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 17
    .local p0, "this":Ljava9/util/PBQueueSpliterator;, "Ljava9/util/PBQueueSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava9/util/PBQueueSpliterator;->trySplit()Ljava9/util/PBQueueSpliterator;

    move-result-object v0

    return-object v0
.end method
