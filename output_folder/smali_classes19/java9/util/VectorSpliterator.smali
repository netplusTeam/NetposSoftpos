.class final Ljava9/util/VectorSpliterator;
.super Ljava/lang/Object;
.source "VectorSpliterator.java"

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

.field private static final MODCOUNT_OFF:J

.field private static final SIZE_OFF:J

.field private static final U:Lsun/misc/Unsafe;


# instance fields
.field private array:[Ljava/lang/Object;

.field private expectedModCount:I

.field private fence:I

.field private index:I

.field private final list:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 131
    sget-object v0, Ljava9/util/UnsafeAccess;->unsafe:Lsun/misc/Unsafe;

    sput-object v0, Ljava9/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    .line 137
    :try_start_0
    const-class v1, Ljava/util/AbstractList;

    const-string v2, "modCount"

    .line 138
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 137
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/VectorSpliterator;->MODCOUNT_OFF:J

    .line 139
    const-class v1, Ljava/util/Vector;

    const-string v2, "elementCount"

    .line 140
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 139
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Ljava9/util/VectorSpliterator;->SIZE_OFF:J

    .line 141
    const-class v1, Ljava/util/Vector;

    const-string v2, "elementData"

    .line 142
    invoke-virtual {v1, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 141
    invoke-virtual {v0, v1}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Ljava9/util/VectorSpliterator;->DATA_OFF:J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    nop

    .line 146
    return-void

    .line 143
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method private constructor <init>(Ljava/util/Vector;[Ljava/lang/Object;III)V
    .locals 0
    .param p2, "array"    # [Ljava/lang/Object;
    .param p3, "origin"    # I
    .param p4, "fence"    # I
    .param p5, "expectedModCount"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Vector<",
            "TE;>;[",
            "Ljava/lang/Object;",
            "III)V"
        }
    .end annotation

    .line 45
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    .local p1, "list":Ljava/util/Vector;, "Ljava/util/Vector<TE;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    .line 47
    iput-object p2, p0, Ljava9/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 48
    iput p3, p0, Ljava9/util/VectorSpliterator;->index:I

    .line 49
    iput p4, p0, Ljava9/util/VectorSpliterator;->fence:I

    .line 50
    iput p5, p0, Ljava9/util/VectorSpliterator;->expectedModCount:I

    .line 51
    return-void
.end method

.method private static getData(Ljava/util/Vector;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 127
    .local p0, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TT;>;"
    sget-object v0, Ljava9/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/VectorSpliterator;->DATA_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getObject(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method private getFence()I
    .locals 3

    .line 59
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    iget v0, p0, Ljava9/util/VectorSpliterator;->fence:I

    move v1, v0

    .local v1, "hi":I
    if-gez v0, :cond_0

    .line 60
    iget-object v0, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    monitor-enter v0

    .line 61
    :try_start_0
    iget-object v2, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v2}, Ljava9/util/VectorSpliterator;->getData(Ljava/util/Vector;)[Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Ljava9/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 62
    iget-object v2, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v2}, Ljava9/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result v2

    iput v2, p0, Ljava9/util/VectorSpliterator;->expectedModCount:I

    .line 63
    iget-object v2, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v2}, Ljava9/util/VectorSpliterator;->getSize(Ljava/util/Vector;)I

    move-result v2

    iput v2, p0, Ljava9/util/VectorSpliterator;->fence:I

    move v1, v2

    .line 64
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception v2

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 66
    :cond_0
    :goto_0
    return v1
.end method

.method private static getModCount(Ljava/util/Vector;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)I"
        }
    .end annotation

    .line 123
    .local p0, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TT;>;"
    sget-object v0, Ljava9/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/VectorSpliterator;->MODCOUNT_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method private static getSize(Ljava/util/Vector;)I
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)I"
        }
    .end annotation

    .line 119
    .local p0, "lst":Ljava/util/Vector;, "Ljava/util/Vector<TT;>;"
    sget-object v0, Ljava9/util/VectorSpliterator;->U:Lsun/misc/Unsafe;

    sget-wide v1, Ljava9/util/VectorSpliterator;->SIZE_OFF:J

    invoke-virtual {v0, p0, v1, v2}, Lsun/misc/Unsafe;->getInt(Ljava/lang/Object;J)I

    move-result v0

    return v0
.end method

.method static spliterator(Ljava/util/Vector;)Ljava9/util/Spliterator;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Vector<",
            "TT;>;)",
            "Ljava9/util/Spliterator<",
            "TT;>;"
        }
    .end annotation

    .line 54
    .local p0, "vec":Ljava/util/Vector;, "Ljava/util/Vector<TT;>;"
    new-instance v6, Ljava9/util/VectorSpliterator;

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Ljava9/util/VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    return-object v6
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 115
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    const/16 v0, 0x4050

    return v0
.end method

.method public estimateSize()J
    .locals 2

    .line 110
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/VectorSpliterator;->index:I

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

    .line 96
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-direct {p0}, Ljava9/util/VectorSpliterator;->getFence()I

    move-result v0

    .line 98
    .local v0, "hi":I
    iget-object v1, p0, Ljava9/util/VectorSpliterator;->array:[Ljava/lang/Object;

    .line 100
    .local v1, "a":[Ljava/lang/Object;
    iget v2, p0, Ljava9/util/VectorSpliterator;->index:I

    .local v2, "i":I
    iput v0, p0, Ljava9/util/VectorSpliterator;->index:I

    :goto_0
    if-ge v2, v0, :cond_0

    .line 101
    aget-object v3, v1, v2

    invoke-interface {p1, v3}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 100
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 103
    :cond_0
    iget-object v3, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v3}, Ljava9/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result v3

    iget v4, p0, Ljava9/util/VectorSpliterator;->expectedModCount:I

    if-ne v3, v4, :cond_1

    .line 106
    return-void

    .line 104
    :cond_1
    new-instance v3, Ljava/util/ConcurrentModificationException;

    invoke-direct {v3}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v3
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

    .line 80
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    .local p1, "action":Ljava9/util/function/Consumer;, "Ljava9/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    invoke-direct {p0}, Ljava9/util/VectorSpliterator;->getFence()I

    move-result v0

    iget v1, p0, Ljava9/util/VectorSpliterator;->index:I

    move v2, v1

    .local v2, "i":I
    if-le v0, v1, :cond_1

    .line 83
    add-int/lit8 v0, v2, 0x1

    iput v0, p0, Ljava9/util/VectorSpliterator;->index:I

    .line 84
    iget-object v0, p0, Ljava9/util/VectorSpliterator;->array:[Ljava/lang/Object;

    aget-object v0, v0, v2

    invoke-interface {p1, v0}, Ljava9/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 85
    iget v0, p0, Ljava9/util/VectorSpliterator;->expectedModCount:I

    iget-object v1, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    invoke-static {v1}, Ljava9/util/VectorSpliterator;->getModCount(Ljava/util/Vector;)I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 88
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0

    .line 90
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public trySplit()Ljava9/util/Spliterator;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Ljava9/util/VectorSpliterator;, "Ljava9/util/VectorSpliterator<TE;>;"
    invoke-direct {p0}, Ljava9/util/VectorSpliterator;->getFence()I

    move-result v0

    .local v0, "hi":I
    iget v7, p0, Ljava9/util/VectorSpliterator;->index:I

    .local v7, "lo":I
    add-int v1, v7, v0

    ushr-int/lit8 v8, v1, 0x1

    .line 72
    .local v8, "mid":I
    if-lt v7, v8, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    new-instance v9, Ljava9/util/VectorSpliterator;

    iget-object v2, p0, Ljava9/util/VectorSpliterator;->list:Ljava/util/Vector;

    iget-object v3, p0, Ljava9/util/VectorSpliterator;->array:[Ljava/lang/Object;

    iput v8, p0, Ljava9/util/VectorSpliterator;->index:I

    iget v6, p0, Ljava9/util/VectorSpliterator;->expectedModCount:I

    move-object v1, v9

    move v4, v7

    move v5, v8

    invoke-direct/range {v1 .. v6}, Ljava9/util/VectorSpliterator;-><init>(Ljava/util/Vector;[Ljava/lang/Object;III)V

    :goto_0
    return-object v1
.end method
