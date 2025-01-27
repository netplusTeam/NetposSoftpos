.class public interface abstract Ljava9/util/stream/IntStream;
.super Ljava/lang/Object;
.source "IntStream.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/IntStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/BaseStream<",
        "Ljava/lang/Integer;",
        "Ljava9/util/stream/IntStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava9/util/stream/IntStream$Builder;
    .locals 1

    .line 851
    new-instance v0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava9/util/stream/IntStream;Ljava9/util/stream/IntStream;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p0, "a"    # Ljava9/util/stream/IntStream;
    .param p1, "b"    # Ljava9/util/stream/IntStream;

    .line 1114
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1115
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1117
    new-instance v0, Ljava9/util/stream/Streams$ConcatSpliterator$OfInt;

    .line 1118
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    invoke-interface {p1}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfInt;-><init>(Ljava9/util/Spliterator$OfInt;Ljava9/util/Spliterator$OfInt;)V

    .line 1119
    .local v0, "split":Ljava9/util/Spliterator$OfInt;
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v1

    .line 1120
    .local v1, "stream":Ljava9/util/stream/IntStream;
    invoke-static {p0, p1}, Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava9/util/stream/IntStream;

    return-object v2
.end method

.method public static empty()Ljava9/util/stream/IntStream;
    .locals 2

    .line 860
    invoke-static {}, Ljava9/util/Spliterators;->emptyIntSpliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava9/util/function/IntSupplier;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p0, "s"    # Ljava9/util/function/IntSupplier;

    .line 1021
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1022
    new-instance v0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfInt;-><init>(JLjava9/util/function/IntSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(ILjava9/util/function/IntPredicate;Ljava9/util/function/IntUnaryOperator;)Ljava9/util/stream/IntStream;
    .locals 8
    .param p0, "seed"    # I
    .param p1, "hasNext"    # Ljava9/util/function/IntPredicate;
    .param p2, "next"    # Ljava9/util/function/IntUnaryOperator;

    .line 967
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 968
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 969
    new-instance v7, Ljava9/util/stream/IntStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/IntStream$2;-><init>(JILjava9/util/function/IntUnaryOperator;ILjava9/util/function/IntPredicate;)V

    .line 1009
    .local v0, "spliterator":Ljava9/util/Spliterator$OfInt;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(ILjava9/util/function/IntUnaryOperator;)Ljava9/util/stream/IntStream;
    .locals 7
    .param p0, "seed"    # I
    .param p1, "f"    # Ljava9/util/function/IntUnaryOperator;

    .line 906
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 907
    new-instance v6, Ljava9/util/stream/IntStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v6

    move-object v4, p1

    move v5, p0

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/IntStream$1;-><init>(JILjava9/util/function/IntUnaryOperator;I)V

    .line 926
    .local v0, "spliterator":Ljava9/util/Spliterator$OfInt;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(I)Ljava9/util/stream/IntStream;
    .locals 2
    .param p0, "t"    # I

    .line 870
    new-instance v0, Ljava9/util/stream/Streams$IntStreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava9/util/stream/Streams$IntStreamBuilderImpl;-><init>(I)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([I)Ljava9/util/stream/IntStream;
    .locals 1
    .param p0, "values"    # [I

    .line 880
    invoke-static {p0}, Ljava9/util/J8Arrays;->stream([I)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(II)Ljava9/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endExclusive"    # I

    .line 1044
    if-lt p0, p1, :cond_0

    .line 1045
    invoke-static {}, Ljava9/util/stream/IntStream;->empty()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1047
    :cond_0
    new-instance v0, Ljava9/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(II)Ljava9/util/stream/IntStream;
    .locals 2
    .param p0, "startInclusive"    # I
    .param p1, "endInclusive"    # I

    .line 1070
    if-le p0, p1, :cond_0

    .line 1071
    invoke-static {}, Ljava9/util/stream/IntStream;->empty()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0

    .line 1073
    :cond_0
    new-instance v0, Ljava9/util/stream/Streams$RangeIntSpliterator;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Ljava9/util/stream/Streams$RangeIntSpliterator;-><init>(IIZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava9/util/function/IntPredicate;)Z
.end method

.method public abstract anyMatch(Ljava9/util/function/IntPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava9/util/stream/DoubleStream;
.end method

.method public abstract asLongStream()Ljava9/util/stream/LongStream;
.end method

.method public abstract average()Ljava9/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjIntConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TR;>;",
            "Ljava9/util/function/ObjIntConsumer<",
            "TR;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava9/util/stream/IntStream;
.end method

.method public dropWhile(Ljava9/util/function/IntPredicate;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/IntPredicate;

    .line 402
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;

    .line 406
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Dropping;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    .line 407
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 405
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    .line 407
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/IntStream;

    return-object v0
.end method

.method public abstract filter(Ljava9/util/function/IntPredicate;)Ljava9/util/stream/IntStream;
.end method

.method public abstract findAny()Ljava9/util/OptionalInt;
.end method

.method public abstract findFirst()Ljava9/util/OptionalInt;
.end method

.method public abstract flatMap(Ljava9/util/function/IntFunction;)Ljava9/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/IntFunction<",
            "+",
            "Ljava9/util/stream/IntStream;",
            ">;)",
            "Ljava9/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava9/util/function/IntConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava9/util/function/IntConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 72
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->iterator()Ljava9/util/PrimitiveIterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Ljava9/util/PrimitiveIterator$OfInt;
.end method

.method public abstract limit(J)Ljava9/util/stream/IntStream;
.end method

.method public abstract map(Ljava9/util/function/IntUnaryOperator;)Ljava9/util/stream/IntStream;
.end method

.method public abstract mapToDouble(Ljava9/util/function/IntToDoubleFunction;)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract mapToLong(Ljava9/util/function/IntToLongFunction;)Ljava9/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava9/util/function/IntFunction;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/IntFunction<",
            "+TU;>;)",
            "Ljava9/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava9/util/OptionalInt;
.end method

.method public abstract min()Ljava9/util/OptionalInt;
.end method

.method public abstract noneMatch(Ljava9/util/function/IntPredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 72
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->parallel()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallel()Ljava9/util/stream/IntStream;
.end method

.method public abstract peek(Ljava9/util/function/IntConsumer;)Ljava9/util/stream/IntStream;
.end method

.method public abstract reduce(ILjava9/util/function/IntBinaryOperator;)I
.end method

.method public abstract reduce(Ljava9/util/function/IntBinaryOperator;)Ljava9/util/OptionalInt;
.end method

.method public bridge synthetic sequential()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 72
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->sequential()Ljava9/util/stream/IntStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract sequential()Ljava9/util/stream/IntStream;
.end method

.method public abstract skip(J)Ljava9/util/stream/IntStream;
.end method

.method public abstract sorted()Ljava9/util/stream/IntStream;
.end method

.method public abstract spliterator()Ljava9/util/Spliterator$OfInt;
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 72
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v0

    return-object v0
.end method

.method public abstract sum()I
.end method

.method public abstract summaryStatistics()Ljava9/util/IntSummaryStatistics;
.end method

.method public takeWhile(Ljava9/util/function/IntPredicate;)Ljava9/util/stream/IntStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/IntPredicate;

    .line 336
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 339
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;

    .line 340
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->spliterator()Ljava9/util/Spliterator$OfInt;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfInt$Taking;-><init>(Ljava9/util/Spliterator$OfInt;ZLjava9/util/function/IntPredicate;)V

    .line 341
    invoke-interface {p0}, Ljava9/util/stream/IntStream;->isParallel()Z

    move-result v1

    .line 339
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->intStream(Ljava9/util/Spliterator$OfInt;Z)Ljava9/util/stream/IntStream;

    move-result-object v0

    .line 341
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/IntStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/IntStream;

    return-object v0
.end method

.method public abstract toArray()[I
.end method
