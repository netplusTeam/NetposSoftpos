.class public interface abstract Ljava9/util/stream/LongStream;
.super Ljava/lang/Object;
.source "LongStream.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/LongStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/BaseStream<",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/LongStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava9/util/stream/LongStream$Builder;
    .locals 1

    .line 842
    new-instance v0, Ljava9/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0}, Ljava9/util/stream/Streams$LongStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava9/util/stream/LongStream;Ljava9/util/stream/LongStream;)Ljava9/util/stream/LongStream;
    .locals 3
    .param p0, "a"    # Ljava9/util/stream/LongStream;
    .param p1, "b"    # Ljava9/util/stream/LongStream;

    .line 1120
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1121
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1123
    new-instance v0, Ljava9/util/stream/Streams$ConcatSpliterator$OfLong;

    .line 1124
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v1

    invoke-interface {p1}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfLong;-><init>(Ljava9/util/Spliterator$OfLong;Ljava9/util/Spliterator$OfLong;)V

    .line 1125
    .local v0, "split":Ljava9/util/Spliterator$OfLong;
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava9/util/stream/LongStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v1

    .line 1126
    .local v1, "stream":Ljava9/util/stream/LongStream;
    invoke-static {p0, p1}, Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava9/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava9/util/stream/LongStream;

    return-object v2
.end method

.method public static empty()Ljava9/util/stream/LongStream;
    .locals 2

    .line 851
    invoke-static {}, Ljava9/util/Spliterators;->emptyLongSpliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava9/util/function/LongSupplier;)Ljava9/util/stream/LongStream;
    .locals 3
    .param p0, "s"    # Ljava9/util/function/LongSupplier;

    .line 1012
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1013
    new-instance v0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfLong;-><init>(JLjava9/util/function/LongSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(JLjava9/util/function/LongPredicate;Ljava9/util/function/LongUnaryOperator;)Ljava9/util/stream/LongStream;
    .locals 9
    .param p0, "seed"    # J
    .param p2, "hasNext"    # Ljava9/util/function/LongPredicate;
    .param p3, "next"    # Ljava9/util/function/LongUnaryOperator;

    .line 958
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 959
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 960
    new-instance v8, Ljava9/util/stream/LongStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava9/util/stream/LongStream$2;-><init>(JILjava9/util/function/LongUnaryOperator;JLjava9/util/function/LongPredicate;)V

    .line 1000
    .local v0, "spliterator":Ljava9/util/Spliterator$OfLong;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(JLjava9/util/function/LongUnaryOperator;)Ljava9/util/stream/LongStream;
    .locals 8
    .param p0, "seed"    # J
    .param p2, "f"    # Ljava9/util/function/LongUnaryOperator;

    .line 897
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 898
    new-instance v7, Ljava9/util/stream/LongStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/LongStream$1;-><init>(JILjava9/util/function/LongUnaryOperator;J)V

    .line 917
    .local v0, "spliterator":Ljava9/util/Spliterator$OfLong;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(J)Ljava9/util/stream/LongStream;
    .locals 2
    .param p0, "t"    # J

    .line 861
    new-instance v0, Ljava9/util/stream/Streams$LongStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava9/util/stream/Streams$LongStreamBuilderImpl;-><init>(J)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([J)Ljava9/util/stream/LongStream;
    .locals 1
    .param p0, "values"    # [J

    .line 871
    invoke-static {p0}, Ljava9/util/J8Arrays;->stream([J)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static range(JJ)Ljava9/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endExclusive"    # J

    .line 1035
    cmp-long v0, p0, p2

    if-ltz v0, :cond_0

    .line 1036
    invoke-static {}, Ljava9/util/stream/LongStream;->empty()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 1037
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 1042
    sub-long v0, p2, p0

    const-wide/16 v2, 0x2

    invoke-static {v0, v1, v2, v3}, Ljava9/lang/Longs;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    .line 1043
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Ljava9/util/stream/LongStream;->range(JJ)Ljava9/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljava9/util/stream/LongStream;->range(JJ)Ljava9/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljava9/util/stream/LongStream;->concat(Ljava9/util/stream/LongStream;Ljava9/util/stream/LongStream;)Ljava9/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 1045
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Ljava9/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x0

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljava9/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public static rangeClosed(JJ)Ljava9/util/stream/LongStream;
    .locals 9
    .param p0, "startInclusive"    # J
    .param p2, "endInclusive"    # J

    .line 1068
    cmp-long v0, p0, p2

    if-lez v0, :cond_0

    .line 1069
    invoke-static {}, Ljava9/util/stream/LongStream;->empty()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 1070
    :cond_0
    sub-long v0, p2, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    const-wide/16 v4, 0x0

    cmp-long v0, v0, v4

    if-gtz v0, :cond_1

    .line 1076
    sub-long v0, p2, p0

    const-wide/16 v4, 0x2

    invoke-static {v0, v1, v4, v5}, Ljava9/lang/Longs;->divideUnsigned(JJ)J

    move-result-wide v0

    add-long/2addr v0, p0

    add-long/2addr v0, v2

    .line 1077
    .local v0, "m":J
    invoke-static {p0, p1, v0, v1}, Ljava9/util/stream/LongStream;->range(JJ)Ljava9/util/stream/LongStream;

    move-result-object v2

    invoke-static {v0, v1, p2, p3}, Ljava9/util/stream/LongStream;->rangeClosed(JJ)Ljava9/util/stream/LongStream;

    move-result-object v3

    invoke-static {v2, v3}, Ljava9/util/stream/LongStream;->concat(Ljava9/util/stream/LongStream;Ljava9/util/stream/LongStream;)Ljava9/util/stream/LongStream;

    move-result-object v2

    return-object v2

    .line 1079
    .end local v0    # "m":J
    :cond_1
    new-instance v0, Ljava9/util/stream/Streams$RangeLongSpliterator;

    const/4 v8, 0x1

    move-object v3, v0

    move-wide v4, p0

    move-wide v6, p2

    invoke-direct/range {v3 .. v8}, Ljava9/util/stream/Streams$RangeLongSpliterator;-><init>(JJZ)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava9/util/function/LongPredicate;)Z
.end method

.method public abstract anyMatch(Ljava9/util/function/LongPredicate;)Z
.end method

.method public abstract asDoubleStream()Ljava9/util/stream/DoubleStream;
.end method

.method public abstract average()Ljava9/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TR;>;",
            "Ljava9/util/function/ObjLongConsumer<",
            "TR;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava9/util/stream/LongStream;
.end method

.method public dropWhile(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 405
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 408
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;

    .line 409
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Dropping;-><init>(Ljava9/util/Spliterator$OfLong;ZLjava9/util/function/LongPredicate;)V

    .line 410
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->isParallel()Z

    move-result v1

    .line 408
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    .line 410
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/LongStream;

    return-object v0
.end method

.method public abstract filter(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
.end method

.method public abstract findAny()Ljava9/util/OptionalLong;
.end method

.method public abstract findFirst()Ljava9/util/OptionalLong;
.end method

.method public abstract flatMap(Ljava9/util/function/LongFunction;)Ljava9/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/LongFunction<",
            "+",
            "Ljava9/util/stream/LongStream;",
            ">;)",
            "Ljava9/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava9/util/function/LongConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava9/util/function/LongConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 73
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->iterator()Ljava9/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Ljava9/util/PrimitiveIterator$OfLong;
.end method

.method public abstract limit(J)Ljava9/util/stream/LongStream;
.end method

.method public abstract map(Ljava9/util/function/LongUnaryOperator;)Ljava9/util/stream/LongStream;
.end method

.method public abstract mapToDouble(Ljava9/util/function/LongToDoubleFunction;)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava9/util/function/LongToIntFunction;)Ljava9/util/stream/IntStream;
.end method

.method public abstract mapToObj(Ljava9/util/function/LongFunction;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/LongFunction<",
            "+TU;>;)",
            "Ljava9/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava9/util/OptionalLong;
.end method

.method public abstract min()Ljava9/util/OptionalLong;
.end method

.method public abstract noneMatch(Ljava9/util/function/LongPredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 73
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->parallel()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallel()Ljava9/util/stream/LongStream;
.end method

.method public abstract peek(Ljava9/util/function/LongConsumer;)Ljava9/util/stream/LongStream;
.end method

.method public abstract reduce(JLjava9/util/function/LongBinaryOperator;)J
.end method

.method public abstract reduce(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/OptionalLong;
.end method

.method public bridge synthetic sequential()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 73
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->sequential()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract sequential()Ljava9/util/stream/LongStream;
.end method

.method public abstract skip(J)Ljava9/util/stream/LongStream;
.end method

.method public abstract sorted()Ljava9/util/stream/LongStream;
.end method

.method public abstract spliterator()Ljava9/util/Spliterator$OfLong;
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 73
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public abstract sum()J
.end method

.method public abstract summaryStatistics()Ljava9/util/LongSummaryStatistics;
.end method

.method public takeWhile(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 338
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 341
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;

    .line 342
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfLong$Taking;-><init>(Ljava9/util/Spliterator$OfLong;ZLjava9/util/function/LongPredicate;)V

    .line 343
    invoke-interface {p0}, Ljava9/util/stream/LongStream;->isParallel()Z

    move-result v1

    .line 341
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->longStream(Ljava9/util/Spliterator$OfLong;Z)Ljava9/util/stream/LongStream;

    move-result-object v0

    .line 343
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/LongStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/LongStream;

    return-object v0
.end method

.method public abstract toArray()[J
.end method
