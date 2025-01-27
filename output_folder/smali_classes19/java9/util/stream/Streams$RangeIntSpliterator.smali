.class final Ljava9/util/stream/Streams$RangeIntSpliterator;
.super Ljava/lang/Object;
.source "Streams.java"

# interfaces
.implements Ljava9/util/Spliterator$OfInt;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/stream/Streams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "RangeIntSpliterator"
.end annotation


# static fields
.field private static final BALANCED_SPLIT_THRESHOLD:I = 0x1000000

.field private static final RIGHT_BALANCED_SPLIT_RATIO:I = 0x8


# instance fields
.field private from:I

.field private last:I

.field private final upTo:I


# direct methods
.method private constructor <init>(III)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "last"    # I

    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 70
    iput p1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 71
    iput p2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 72
    iput p3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 73
    return-void
.end method

.method constructor <init>(IIZ)V
    .locals 0
    .param p1, "from"    # I
    .param p2, "upTo"    # I
    .param p3, "closed"    # Z

    .line 66
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    .line 67
    return-void
.end method

.method private splitPoint(J)I
    .locals 3
    .param p1, "size"    # J

    .line 164
    const-wide/32 v0, 0x1000000

    cmp-long v0, p1, v0

    if-gez v0, :cond_0

    const/4 v0, 0x2

    goto :goto_0

    :cond_0
    const/16 v0, 0x8

    .line 168
    .local v0, "d":I
    :goto_0
    int-to-long v1, v0

    div-long v1, p1, v1

    long-to-int v1, v1

    return v1
.end method


# virtual methods
.method public characteristics()I
    .locals 1

    .line 119
    const/16 v0, 0x4555

    return v0
.end method

.method public estimateSize()J
    .locals 4

    .line 114
    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    int-to-long v0, v0

    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    int-to-long v2, v2

    sub-long/2addr v0, v2

    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    int-to-long v2, v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public bridge synthetic forEachRemaining(Ljava/lang/Object;)V
    .locals 0

    .line 54
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->forEachRemaining(Ljava9/util/function/IntConsumer;)V

    return-void
.end method

.method public forEachRemaining(Ljava9/util/function/IntConsumer;)V
    .locals 4
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 95
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 98
    .local v0, "i":I
    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    .line 99
    .local v1, "hUpTo":I
    iget v2, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 100
    .local v2, "hLast":I
    iget v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    iput v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 101
    const/4 v3, 0x0

    iput v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 102
    :goto_0
    if-ge v0, v1, :cond_0

    .line 103
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    move v0, v3

    goto :goto_0

    .line 105
    .end local v3    # "i":I
    .restart local v0    # "i":I
    :cond_0
    if-lez v2, :cond_1

    .line 107
    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 109
    :cond_1
    return-void
.end method

.method public getComparator()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Comparator<",
            "-",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 126
    const/4 v0, 0x0

    return-object v0
.end method

.method public bridge synthetic tryAdvance(Ljava/lang/Object;)Z
    .locals 0

    .line 54
    check-cast p1, Ljava9/util/function/IntConsumer;

    invoke-virtual {p0, p1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->tryAdvance(Ljava9/util/function/IntConsumer;)Z

    move-result p1

    return p1
.end method

.method public tryAdvance(Ljava9/util/function/IntConsumer;)Z
    .locals 4
    .param p1, "consumer"    # Ljava9/util/function/IntConsumer;

    .line 77
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    iget v0, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 80
    .local v0, "i":I
    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->upTo:I

    const/4 v2, 0x1

    if-ge v0, v1, :cond_0

    .line 81
    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    add-int/2addr v1, v2

    iput v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 82
    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 83
    return v2

    .line 85
    :cond_0
    iget v1, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    const/4 v3, 0x0

    if-lez v1, :cond_1

    .line 86
    iput v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->last:I

    .line 87
    invoke-interface {p1, v0}, Ljava9/util/function/IntConsumer;->accept(I)V

    .line 88
    return v2

    .line 90
    :cond_1
    return v3
.end method

.method public trySplit()Ljava9/util/Spliterator$OfInt;
    .locals 6

    .line 131
    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->estimateSize()J

    move-result-wide v0

    .line 132
    .local v0, "size":J
    const-wide/16 v2, 0x1

    cmp-long v2, v0, v2

    if-gtz v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    new-instance v2, Ljava9/util/stream/Streams$RangeIntSpliterator;

    iget v3, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    .line 135
    invoke-direct {p0, v0, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;->splitPoint(J)I

    move-result v4

    add-int/2addr v4, v3

    iput v4, p0, Ljava9/util/stream/Streams$RangeIntSpliterator;->from:I

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(III)V

    :goto_0
    return-object v2
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator$OfPrimitive;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic trySplit()Ljava9/util/Spliterator;
    .locals 1

    .line 54
    invoke-virtual {p0}, Ljava9/util/stream/Streams$RangeIntSpliterator;->trySplit()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method
