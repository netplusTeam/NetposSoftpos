.class public interface abstract Ljava9/util/stream/DoubleStream;
.super Ljava/lang/Object;
.source "DoubleStream.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/DoubleStream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava9/util/stream/BaseStream<",
        "Ljava/lang/Double;",
        "Ljava9/util/stream/DoubleStream;",
        ">;"
    }
.end annotation


# direct methods
.method public static builder()Ljava9/util/stream/DoubleStream$Builder;
    .locals 1

    .line 910
    new-instance v0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0}, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava9/util/stream/DoubleStream;Ljava9/util/stream/DoubleStream;)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p0, "a"    # Ljava9/util/stream/DoubleStream;
    .param p1, "b"    # Ljava9/util/stream/DoubleStream;

    .line 1121
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1122
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1124
    new-instance v0, Ljava9/util/stream/Streams$ConcatSpliterator$OfDouble;

    .line 1125
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v1

    invoke-interface {p1}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfDouble;-><init>(Ljava9/util/Spliterator$OfDouble;Ljava9/util/Spliterator$OfDouble;)V

    .line 1126
    .local v0, "split":Ljava9/util/Spliterator$OfDouble;
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava9/util/stream/DoubleStream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v1

    .line 1127
    .local v1, "stream":Ljava9/util/stream/DoubleStream;
    invoke-static {p0, p1}, Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava9/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava9/util/stream/DoubleStream;

    return-object v2
.end method

.method public static empty()Ljava9/util/stream/DoubleStream;
    .locals 2

    .line 919
    invoke-static {}, Ljava9/util/Spliterators;->emptyDoubleSpliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava9/util/function/DoubleSupplier;)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p0, "s"    # Ljava9/util/function/DoubleSupplier;

    .line 1080
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1081
    new-instance v0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfDouble;-><init>(JLjava9/util/function/DoubleSupplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(DLjava9/util/function/DoublePredicate;Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/stream/DoubleStream;
    .locals 9
    .param p0, "seed"    # D
    .param p2, "hasNext"    # Ljava9/util/function/DoublePredicate;
    .param p3, "next"    # Ljava9/util/function/DoubleUnaryOperator;

    .line 1026
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1028
    new-instance v8, Ljava9/util/stream/DoubleStream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v8

    move-object v4, p3

    move-wide v5, p0

    move-object v7, p2

    invoke-direct/range {v0 .. v7}, Ljava9/util/stream/DoubleStream$2;-><init>(JILjava9/util/function/DoubleUnaryOperator;DLjava9/util/function/DoublePredicate;)V

    .line 1068
    .local v0, "spliterator":Ljava9/util/Spliterator$OfDouble;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(DLjava9/util/function/DoubleUnaryOperator;)Ljava9/util/stream/DoubleStream;
    .locals 8
    .param p0, "seed"    # D
    .param p2, "f"    # Ljava9/util/function/DoubleUnaryOperator;

    .line 965
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    new-instance v7, Ljava9/util/stream/DoubleStream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x510

    move-object v0, v7

    move-object v4, p2

    move-wide v5, p0

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/DoubleStream$1;-><init>(JILjava9/util/function/DoubleUnaryOperator;D)V

    .line 985
    .local v0, "spliterator":Ljava9/util/Spliterator$OfDouble;
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v1

    return-object v1
.end method

.method public static of(D)Ljava9/util/stream/DoubleStream;
    .locals 2
    .param p0, "t"    # D

    .line 929
    new-instance v0, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;

    invoke-direct {v0, p0, p1}, Ljava9/util/stream/Streams$DoubleStreamBuilderImpl;-><init>(D)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([D)Ljava9/util/stream/DoubleStream;
    .locals 1
    .param p0, "values"    # [D

    .line 939
    invoke-static {p0}, Ljava9/util/J8Arrays;->stream([D)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava9/util/function/DoublePredicate;)Z
.end method

.method public abstract anyMatch(Ljava9/util/function/DoublePredicate;)Z
.end method

.method public abstract average()Ljava9/util/OptionalDouble;
.end method

.method public abstract boxed()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TR;>;",
            "Ljava9/util/function/ObjDoubleConsumer<",
            "TR;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava9/util/stream/DoubleStream;
.end method

.method public dropWhile(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 406
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 409
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;

    .line 410
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Dropping;-><init>(Ljava9/util/Spliterator$OfDouble;ZLjava9/util/function/DoublePredicate;)V

    .line 411
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 409
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    .line 411
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/DoubleStream;

    return-object v0
.end method

.method public abstract filter(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract findAny()Ljava9/util/OptionalDouble;
.end method

.method public abstract findFirst()Ljava9/util/OptionalDouble;
.end method

.method public abstract flatMap(Ljava9/util/function/DoubleFunction;)Ljava9/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/DoubleFunction<",
            "+",
            "Ljava9/util/stream/DoubleStream;",
            ">;)",
            "Ljava9/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava9/util/function/DoubleConsumer;)V
.end method

.method public abstract forEachOrdered(Ljava9/util/function/DoubleConsumer;)V
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 71
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->iterator()Ljava9/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract iterator()Ljava9/util/PrimitiveIterator$OfDouble;
.end method

.method public abstract limit(J)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract map(Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract mapToInt(Ljava9/util/function/DoubleToIntFunction;)Ljava9/util/stream/IntStream;
.end method

.method public abstract mapToLong(Ljava9/util/function/DoubleToLongFunction;)Ljava9/util/stream/LongStream;
.end method

.method public abstract mapToObj(Ljava9/util/function/DoubleFunction;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/DoubleFunction<",
            "+TU;>;)",
            "Ljava9/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation
.end method

.method public abstract max()Ljava9/util/OptionalDouble;
.end method

.method public abstract min()Ljava9/util/OptionalDouble;
.end method

.method public abstract noneMatch(Ljava9/util/function/DoublePredicate;)Z
.end method

.method public bridge synthetic parallel()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 71
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->parallel()Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract parallel()Ljava9/util/stream/DoubleStream;
.end method

.method public abstract peek(Ljava9/util/function/DoubleConsumer;)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract reduce(DLjava9/util/function/DoubleBinaryOperator;)D
.end method

.method public abstract reduce(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/OptionalDouble;
.end method

.method public bridge synthetic sequential()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 71
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->sequential()Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public abstract sequential()Ljava9/util/stream/DoubleStream;
.end method

.method public abstract skip(J)Ljava9/util/stream/DoubleStream;
.end method

.method public abstract sorted()Ljava9/util/stream/DoubleStream;
.end method

.method public abstract spliterator()Ljava9/util/Spliterator$OfDouble;
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 71
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public abstract sum()D
.end method

.method public abstract summaryStatistics()Ljava9/util/DoubleSummaryStatistics;
.end method

.method public takeWhile(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 339
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;

    .line 343
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfDouble$Taking;-><init>(Ljava9/util/Spliterator$OfDouble;ZLjava9/util/function/DoublePredicate;)V

    .line 344
    invoke-interface {p0}, Ljava9/util/stream/DoubleStream;->isParallel()Z

    move-result v1

    .line 342
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->doubleStream(Ljava9/util/Spliterator$OfDouble;Z)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    .line 344
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/DoubleStream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/DoubleStream;

    return-object v0
.end method

.method public abstract toArray()[D
.end method
