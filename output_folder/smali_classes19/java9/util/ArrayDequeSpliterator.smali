.class final Ljava9/util/ArrayDequeSpliterator;
.super Ljava/lang/Object;
.source "ArrayDequeSpliterator.java"

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


# static fields
.field private static final DATA_OFF:J

.field private static final HEAD_OFF:J

.field private static final TAIL_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private final deq:Ljava/util/ArrayDeque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayDeque<",
            "TE;>;"
        }
    .end annotation
.end field

.field private fence:I

.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 144
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    .line 150
    :try_start_0
    const-class v1, Ljava/util/ArrayDeque;

    const-string v2, "tail"

    .line 151
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 150
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayDequeSpliterator;->TAIL_OFF:J

    .line 152
    const-class v1, Ljava/util/ArrayDeque;

    const-string v2, "head"

    .line 153
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 152
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/ArrayDequeSpliterator;->HEAD_OFF:J

    .line 154
    const-class v1, Ljava/util/ArrayDeque;

    const-string v2, "elements"

    .line 155
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 154
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/ArrayDequeSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 158
    nop

    .line 159
    return-void

    .line 156
    :catch_0
    move-exception v0

    .line 157
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/ArrayDeque;II)V
    .locals 0
    .param p2, "origin"    # I
    .param p3, "fence"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayDeque<",
            "TE;>;II)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    .local p1, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    .line 51
    iput p2, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 52
    iput p3, p0, Ljava9/util/ArrayDequeSpliterator;->fence:I

    .line 53
    return-void
.end method

.method private static getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 140
    .local p0, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sget-object v0, Ljava9/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayDequeSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private getFence()I
    .locals 2

    .line 62
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    iget v0, p0, Ljava9/util/ArrayDequeSpliterator;->fence:I

    move v1, v0

    .local v1, "t":I
    if-gez v0, :cond_0

    .line 63
    iget-object v0, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava9/util/ArrayDequeSpliterator;->getTail(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava9/util/ArrayDequeSpliterator;->fence:I

    move v1, v0

    .line 64
    iget-object v0, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava9/util/ArrayDequeSpliterator;->getHead(Ljava/util/ArrayDeque;)I

    move-result v0

    iput v0, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 66
    :cond_0
    return v1
.end method

.method private static getHead(Ljava/util/ArrayDeque;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)I"
        }
    .end annotation

    .line 136
    .local p0, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sget-object v0, Ljava9/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayDequeSpliterator;->HEAD_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static getTail(Ljava/util/ArrayDeque;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)I"
        }
    .end annotation

    .line 132
    .local p0, "deq":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    sget-object v0, Ljava9/util/ArrayDequeSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/ArrayDequeSpliterator;->TAIL_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static spliterator(Ljava/util/ArrayDeque;)Ljava9/util/Spliterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/ArrayDeque<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 56
    .local p0, "deque":Ljava/util/ArrayDeque;, "Ljava/util/ArrayDeque<TT;>;"
    new-instance v0, Ljava9/util/ArrayDequeSpliterator;

    const/4 v1, -0x1

    invoke-direct {v0, p0, v1, v1}, Ljava9/util/ArrayDequeSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v0
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 125
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    const/16 v0, 0x4150

    return v0
.end method

.method public estimateSize()J
    .locals 3

    .line 116
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/ArrayDequeSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    sub-int/2addr v0, v1

    .line 117
    .local v0, "n":I
    if-gez v0, :cond_0

    .line 118
    iget-object v1, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v1}, Ljava9/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v1

    array-length v1, v1

    add-int/2addr v0, v1

    .line 120
    :cond_0
    int-to-long v1, v0

    return-wide v1
.end method

.method public forEachRemaining(Ljava9/util/function/Consumer;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 83
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    iget-object v0, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava9/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    .line 85
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    .local v1, "m":I
    invoke-direct {p0}, Ljava9/util/ArrayDequeSpliterator;->getFence()I

    move-result v2

    .local v2, "f":I
    iget v3, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 86
    .local v3, "i":I
    iput v2, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 87
    :goto_0
    if-eq v3, v2, :cond_1

    .line 88
    aget-object v4, v0, v3

    .line 89
    .local v4, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v5, v3, 0x1

    and-int v3, v5, v1

    .line 90
    if-eqz v4, :cond_0

    .line 93
    invoke-interface {p1, v4}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 94
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    goto :goto_0

    .line 91
    .restart local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_0
    new-instance v5, Ljava/util/ConcurrentModificationException;

    invoke-direct {v5}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v5

    .line 95
    .end local v4    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    return-void
.end method

.method public tryAdvance(Ljava9/util/function/Consumer;)Z
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 99
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    iget-object v0, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v0}, Ljava9/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v0

    .line 101
    .local v0, "a":[Ljava/lang/Object;
    array-length v1, v0

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .local v1, "m":I
    invoke-direct {p0}, Ljava9/util/ArrayDequeSpliterator;->getFence()I

    move-result v3

    .local v3, "f":I
    iget v4, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 102
    .local v4, "i":I
    iget v5, p0, Ljava9/util/ArrayDequeSpliterator;->fence:I

    if-eq v4, v5, :cond_1

    .line 103
    aget-object v5, v0, v4

    .line 104
    .local v5, "e":Ljava/lang/Object;, "TE;"
    add-int/lit8 v6, v4, 0x1

    and-int/2addr v6, v1

    iput v6, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .line 105
    if-eqz v5, :cond_0

    .line 108
    invoke-interface {p1, v5}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 109
    return v2

    .line 106
    :cond_0
    new-instance v2, Ljava/util/ConcurrentModificationException;

    invoke-direct {v2}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v2

    .line 111
    .end local v5    # "e":Ljava/lang/Object;, "TE;"
    :cond_1
    const/4 v2, 0x0

    return v2
.end method

.method public trySplit()Ljava9/util/ArrayDequeSpliterator;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/ArrayDequeSpliterator<",
            "TE;>;"
        }
    .end annotation

    .line 70
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/ArrayDequeSpliterator;->getFence()I

    move-result v0

    .local v0, "t":I
    iget v1, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    .local v1, "h":I
    iget-object v2, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    invoke-static {v2}, Ljava9/util/ArrayDequeSpliterator;->getData(Ljava/util/ArrayDeque;)[Ljava/lang/Object;

    move-result-object v2

    array-length v2, v2

    .line 71
    .local v2, "n":I
    if-eq v1, v0, :cond_1

    add-int/lit8 v3, v1, 0x1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    if-eq v3, v0, :cond_1

    .line 72
    if-le v1, v0, :cond_0

    .line 73
    add-int/2addr v0, v2

    .line 75
    :cond_0
    add-int v3, v1, v0

    ushr-int/lit8 v3, v3, 0x1

    add-int/lit8 v4, v2, -0x1

    and-int/2addr v3, v4

    .line 76
    .local v3, "m":I
    new-instance v4, Ljava9/util/ArrayDequeSpliterator;

    iget-object v5, p0, Ljava9/util/ArrayDequeSpliterator;->deq:Ljava/util/ArrayDeque;

    iput v3, p0, Ljava9/util/ArrayDequeSpliterator;->index:I

    invoke-direct {v4, v5, v1, v3}, Ljava9/util/ArrayDequeSpliterator;-><init>(Ljava/util/ArrayDeque;II)V

    return-object v4

    .line 78
    .end local v3    # "m":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 42
    .local p0, "this":Ljava9/util/ArrayDequeSpliterator;, "Ljava9/util/ArrayDequeSpliterator<TE;>;"
    invoke-virtual {p0}, Ljava9/util/ArrayDequeSpliterator;->trySplit()Ljava9/util/ArrayDequeSpliterator;

    move-result-object v0

    return-object v0
.end method
