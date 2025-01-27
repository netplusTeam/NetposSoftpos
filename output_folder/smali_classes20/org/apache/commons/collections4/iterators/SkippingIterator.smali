.class public Lorg/apache/commons/collections4/iterators/SkippingIterator;
.super Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;
.source "SkippingIterator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final offset:J

.field private pos:J


# direct methods
.method public constructor <init>(Ljava/util/Iterator;J)V
    .locals 3
    .param p2, "offset"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "TE;>;J)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;-><init>(Ljava/util/Iterator;)V

    .line 52
    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-ltz v2, :cond_0

    .line 56
    iput-wide p2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    .line 57
    iput-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    .line 58
    invoke-direct {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->init()V

    .line 59
    return-void

    .line 53
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Offset parameter must not be negative."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private init()V
    .locals 4

    .line 65
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    :goto_0
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_0

    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    invoke-virtual {p0}, Lorg/apache/commons/collections4/iterators/SkippingIterator;->next()Ljava/lang/Object;

    goto :goto_0

    .line 68
    :cond_0
    return-void
.end method


# virtual methods
.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 74
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 75
    .local v0, "next":Ljava/lang/Object;, "TE;"
    iget-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    iput-wide v1, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    .line 76
    return-object v0
.end method

.method public remove()V
    .locals 4

    .line 89
    .local p0, "this":Lorg/apache/commons/collections4/iterators/SkippingIterator;, "Lorg/apache/commons/collections4/iterators/SkippingIterator<TE;>;"
    iget-wide v0, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->pos:J

    iget-wide v2, p0, Lorg/apache/commons/collections4/iterators/SkippingIterator;->offset:J

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 92
    invoke-super {p0}, Lorg/apache/commons/collections4/iterators/AbstractIteratorDecorator;->remove()V

    .line 93
    return-void

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can not be called before calling next()"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
