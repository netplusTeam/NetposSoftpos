.class public interface abstract Ljava9/util/stream/Stream;
.super Ljava/lang/Object;
.source "Stream.java"

# interfaces
.implements Ljava9/util/stream/BaseStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Stream$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava9/util/stream/BaseStream<",
        "TT;",
        "Ljava9/util/stream/Stream<",
        "TT;>;>;"
    }
.end annotation


# direct methods
.method public static builder()Ljava9/util/stream/Stream$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Stream$Builder<",
            "TT;>;"
        }
    .end annotation

    .line 1148
    new-instance v0, Ljava9/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0}, Ljava9/util/stream/Streams$StreamBuilderImpl;-><init>()V

    return-object v0
.end method

.method public static concat(Ljava9/util/stream/Stream;Ljava9/util/stream/Stream;)Ljava9/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Stream<",
            "+TT;>;",
            "Ljava9/util/stream/Stream<",
            "+TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1387
    .local p0, "a":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<+TT;>;"
    .local p1, "b":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<+TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1388
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1391
    new-instance v0, Ljava9/util/stream/Streams$ConcatSpliterator$OfRef;

    .line 1392
    invoke-interface {p0}, Ljava9/util/stream/Stream;->spliterator()Ljava9/util/Spliterator;

    move-result-object v1

    invoke-interface {p1}, Ljava9/util/stream/Stream;->spliterator()Ljava9/util/Spliterator;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava9/util/stream/Streams$ConcatSpliterator$OfRef;-><init>(Ljava9/util/Spliterator;Ljava9/util/Spliterator;)V

    .line 1393
    .local v0, "split":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    invoke-interface {p0}, Ljava9/util/stream/Stream;->isParallel()Z

    move-result v1

    if-nez v1, :cond_1

    invoke-interface {p1}, Ljava9/util/stream/Stream;->isParallel()Z

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
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v1

    .line 1394
    .local v1, "stream":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<TT;>;"
    invoke-static {p0, p1}, Ljava9/util/stream/Streams;->composedClose(Ljava9/util/stream/BaseStream;Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava9/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v2

    check-cast v2, Ljava9/util/stream/Stream;

    return-object v2
.end method

.method public static empty()Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1158
    invoke-static {}, Ljava9/util/Spliterators;->emptySpliterator()Ljava9/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava9/util/function/Supplier;)Ljava9/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "+TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1345
    .local p0, "s":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1346
    new-instance v0, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;

    const-wide v1, 0x7fffffffffffffffL

    invoke-direct {v0, v1, v2, p0}, Ljava9/util/stream/StreamSpliterators$InfiniteSupplyingSpliterator$OfRef;-><init>(JLjava9/util/function/Supplier;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static iterate(Ljava/lang/Object;Ljava9/util/function/Predicate;Ljava9/util/function/UnaryOperator;)Ljava9/util/stream/Stream;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(TS;",
            "Ljava9/util/function/Predicate<",
            "-TS;>;",
            "Ljava9/util/function/UnaryOperator<",
            "TS;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1287
    .local p0, "seed":Ljava/lang/Object;, "TS;"
    .local p1, "hasNext":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TS;>;"
    .local p2, "next":Ljava9/util/function/UnaryOperator;, "Ljava9/util/function/UnaryOperator<TS;>;"
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1288
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1289
    new-instance v7, Ljava9/util/stream/Stream$2;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v7

    move-object v4, p2

    move-object v5, p0

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Ljava9/util/stream/Stream$2;-><init>(JILjava9/util/function/UnaryOperator;Ljava/lang/Object;Ljava9/util/function/Predicate;)V

    .line 1331
    .local v0, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public static iterate(Ljava/lang/Object;Ljava9/util/function/UnaryOperator;)Ljava9/util/stream/Stream;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "S:TT;>(TS;",
            "Ljava9/util/function/UnaryOperator<",
            "TS;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1224
    .local p0, "seed":Ljava/lang/Object;, "TS;"
    .local p1, "f":Ljava9/util/function/UnaryOperator;, "Ljava9/util/function/UnaryOperator<TS;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1225
    new-instance v6, Ljava9/util/stream/Stream$1;

    const-wide v1, 0x7fffffffffffffffL

    const/16 v3, 0x410

    move-object v0, v6

    move-object v4, p1

    move-object v5, p0

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Stream$1;-><init>(JILjava9/util/function/UnaryOperator;Ljava/lang/Object;)V

    .line 1244
    .local v0, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TT;>;"
    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v1

    return-object v1
.end method

.method public static of(Ljava/lang/Object;)Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1169
    .local p0, "t":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava9/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static varargs of([Ljava/lang/Object;)Ljava9/util/stream/Stream;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1196
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Ljava9/util/J8Arrays;->stream([Ljava/lang/Object;)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static ofNullable(Ljava/lang/Object;)Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 1183
    .local p0, "t":Ljava/lang/Object;, "TT;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava9/util/stream/Stream;->empty()Ljava9/util/stream/Stream;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava9/util/stream/Streams$StreamBuilderImpl;

    invoke-direct {v0, p0}, Ljava9/util/stream/Streams$StreamBuilderImpl;-><init>(Ljava/lang/Object;)V

    const/4 v1, 0x0

    .line 1184
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public abstract allMatch(Ljava9/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract anyMatch(Ljava9/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract collect(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TR;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;-TT;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract collect(Ljava9/util/stream/Collector;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TR;>;)TR;"
        }
    .end annotation
.end method

.method public abstract count()J
.end method

.method public abstract distinct()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public dropWhile(Ljava9/util/function/Predicate;)Ljava9/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 630
    .local p0, "this":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<TT;>;"
    .local p1, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 633
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;

    .line 634
    invoke-interface {p0}, Ljava9/util/stream/Stream;->spliterator()Ljava9/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Dropping;-><init>(Ljava9/util/Spliterator;ZLjava9/util/function/Predicate;)V

    .line 635
    invoke-interface {p0}, Ljava9/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 633
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    .line 635
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Stream;

    return-object v0
.end method

.method public abstract filter(Ljava9/util/function/Predicate;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract findAny()Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract findFirst()Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract flatMap(Ljava9/util/function/Function;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/stream/Stream<",
            "+TR;>;>;)",
            "Ljava9/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract flatMapToDouble(Ljava9/util/function/Function;)Ljava9/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/stream/DoubleStream;",
            ">;)",
            "Ljava9/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract flatMapToInt(Ljava9/util/function/Function;)Ljava9/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/stream/IntStream;",
            ">;)",
            "Ljava9/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract flatMapToLong(Ljava9/util/function/Function;)Ljava9/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/stream/LongStream;",
            ">;)",
            "Ljava9/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract forEach(Ljava9/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract forEachOrdered(Ljava9/util/function/Consumer;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation
.end method

.method public abstract limit(J)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract map(Ljava9/util/function/Function;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TR;>;)",
            "Ljava9/util/stream/Stream<",
            "TR;>;"
        }
    .end annotation
.end method

.method public abstract mapToDouble(Ljava9/util/function/ToDoubleFunction;)Ljava9/util/stream/DoubleStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/DoubleStream;"
        }
    .end annotation
.end method

.method public abstract mapToInt(Ljava9/util/function/ToIntFunction;)Ljava9/util/stream/IntStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/IntStream;"
        }
    .end annotation
.end method

.method public abstract mapToLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/LongStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/LongStream;"
        }
    .end annotation
.end method

.method public abstract max(Ljava/util/Comparator;)Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract min(Ljava/util/Comparator;)Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract noneMatch(Ljava9/util/function/Predicate;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation
.end method

.method public abstract peek(Ljava9/util/function/Consumer;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Consumer<",
            "-TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava9/util/function/BiFunction;Ljava9/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava9/util/function/BiFunction<",
            "TU;-TT;TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;)TU;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava/lang/Object;Ljava9/util/function/BinaryOperator;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)TT;"
        }
    .end annotation
.end method

.method public abstract reduce(Ljava9/util/function/BinaryOperator;)Ljava9/util/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava9/util/Optional<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract skip(J)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract sorted()Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public abstract sorted(Ljava/util/Comparator;)Ljava9/util/stream/Stream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation
.end method

.method public takeWhile(Ljava9/util/function/Predicate;)Ljava9/util/stream/Stream;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 564
    .local p0, "this":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<TT;>;"
    .local p1, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 567
    new-instance v0, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;

    .line 568
    invoke-interface {p0}, Ljava9/util/stream/Stream;->spliterator()Ljava9/util/Spliterator;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2, p1}, Ljava9/util/stream/WhileOps$UnorderedWhileSpliterator$OfRef$Taking;-><init>(Ljava9/util/Spliterator;ZLjava9/util/function/Predicate;)V

    .line 569
    invoke-interface {p0}, Ljava9/util/stream/Stream;->isParallel()Z

    move-result v1

    .line 567
    invoke-static {v0, v1}, Ljava9/util/stream/StreamSupport;->stream(Ljava9/util/Spliterator;Z)Ljava9/util/stream/Stream;

    move-result-object v0

    .line 569
    invoke-static {p0}, Ljava9/util/stream/StreamSupport;->closeHandler(Ljava9/util/stream/BaseStream;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->onClose(Ljava/lang/Runnable;)Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Stream;

    return-object v0
.end method

.method public abstract toArray()[Ljava/lang/Object;
.end method

.method public abstract toArray(Ljava9/util/function/IntFunction;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/IntFunction<",
            "[TA;>;)[TA;"
        }
    .end annotation
.end method
