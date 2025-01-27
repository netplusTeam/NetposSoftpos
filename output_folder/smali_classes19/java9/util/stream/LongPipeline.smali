.class abstract Ljava9/util/stream/LongPipeline;
.super Ljava9/util/stream/AbstractPipeline;
.source "LongPipeline.java"

# interfaces
.implements Ljava9/util/stream/LongStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/LongPipeline$StatefulOp;,
        Ljava9/util/stream/LongPipeline$StatelessOp;,
        Ljava9/util/stream/LongPipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Long;",
        "Ljava9/util/stream/LongStream;",
        ">;",
        "Ljava9/util/stream/LongStream;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava9/util/Spliterator;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;IZ)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Long;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/Spliterator;IZ)V

    .line 83
    return-void
.end method

.method constructor <init>(Ljava9/util/function/Supplier;IZ)V
    .locals 0
    .param p2, "sourceFlags"    # I
    .param p3, "parallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 69
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "source":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Spliterator<Ljava/lang/Long;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/function/Supplier;IZ)V

    .line 70
    return-void
.end method

.method constructor <init>(Ljava9/util/stream/AbstractPipeline;I)V
    .locals 0
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/AbstractPipeline<",
            "*TE_IN;*>;I)V"
        }
    .end annotation

    .line 92
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/stream/AbstractPipeline;I)V

    .line 93
    return-void
.end method

.method static synthetic access$000(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .param p0, "x0"    # Ljava9/util/Spliterator;

    .line 55
    invoke-static {p0}, Ljava9/util/stream/LongPipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method private static adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 115
    .local p0, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava9/util/Spliterator$OfLong;

    if-eqz v0, :cond_0

    .line 116
    move-object v0, p0

    check-cast v0, Ljava9/util/Spliterator$OfLong;

    return-object v0

    .line 118
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "LongStream.adapt(Spliterator<Long> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Ljava9/util/stream/Sink;)Ljava9/util/function/LongConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/function/LongConsumer;"
        }
    .end annotation

    .line 100
    .local p0, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Long;>;"
    instance-of v0, p0, Ljava9/util/function/LongConsumer;

    if-eqz v0, :cond_0

    .line 101
    move-object v0, p0

    check-cast v0, Ljava9/util/function/LongConsumer;

    return-object v0

    .line 103
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0, p0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda11;-><init>(Ljava9/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic lambda$average$38()[J
    .locals 1

    .line 449
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$average$39([JJ)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "i"    # J

    .line 451
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x1

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 452
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    add-long/2addr v1, p1

    aput-wide v1, p0, v0

    .line 453
    return-void
.end method

.method static synthetic lambda$average$40([J[J)V
    .locals 5
    .param p0, "ll"    # [J
    .param p1, "rr"    # [J

    .line 455
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 456
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    .line 457
    return-void
.end method

.method static synthetic lambda$collect$41(Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 490
    invoke-interface {p0, p1, p2}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 491
    return-object p1
.end method

.method static synthetic lambda$distinct$37(Ljava/lang/Long;)J
    .locals 2
    .param p0, "i"    # Ljava/lang/Long;

    .line 416
    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method private mapToObj(Ljava9/util/function/LongFunction;I)Ljava9/util/stream/Stream;
    .locals 7
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/LongFunction<",
            "+TU;>;I)",
            "Ljava9/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 166
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/LongFunction;, "Ljava9/util/function/LongFunction<+TU;>;"
    new-instance v6, Ljava9/util/stream/LongPipeline$1;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$1;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava9/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 503
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->ALL:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeLong(Ljava9/util/function/LongPredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava9/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 498
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->ANY:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeLong(Ljava9/util/function/LongPredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final asDoubleStream()Ljava9/util/stream/DoubleStream;
    .locals 3

    .line 195
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$2;

    sget-object v1, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v2, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava9/util/stream/LongPipeline$2;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-object v0
.end method

.method public final average()Ljava9/util/OptionalDouble;
    .locals 6

    .line 449
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda4;-><init>()V

    new-instance v1, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda5;-><init>()V

    new-instance v2, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda6;

    invoke-direct {v2}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda6;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava9/util/stream/LongPipeline;->collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    .line 458
    .local v0, "avg":[J
    const/4 v1, 0x0

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    aget-wide v2, v0, v2

    long-to-double v2, v2

    aget-wide v4, v0, v1

    long-to-double v4, v4

    div-double/2addr v2, v4

    .line 459
    invoke-static {v2, v3}, Ljava9/util/OptionalDouble;->of(D)Ljava9/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    .line 460
    :cond_0
    invoke-static {}, Ljava9/util/OptionalDouble;->empty()Ljava9/util/OptionalDouble;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public final boxed()Ljava9/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Stream<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 210
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava9/util/stream/LongPipeline;->mapToObj(Ljava9/util/function/LongFunction;I)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
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

    .line 488
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava9/util/function/ObjLongConsumer;, "Ljava9/util/function/ObjLongConsumer<TR;>;"
    .local p3, "combiner":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 489
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0, p3}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda1;-><init>(Ljava9/util/function/BiConsumer;)V

    .line 493
    .local v0, "operator":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava9/util/stream/ReduceOps;->makeLong(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    .line 465
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {}, Ljava9/util/stream/ReduceOps;->makeLongCounting()Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava9/util/stream/LongStream;
    .locals 2

    .line 416
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->boxed()Ljava9/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/Stream;->distinct()Ljava9/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda7;

    invoke-direct {v1}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda7;-><init>()V

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->mapToLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 404
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava9/util/stream/WhileOps;->makeDropWhileLong(Ljava9/util/stream/AbstractPipeline;Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method final evaluateToNode(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;ZLjava9/util/function/IntFunction;)Ljava9/util/stream/Node;
    .locals 1
    .param p3, "flattenTree"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/stream/Node<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 135
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2, p3}, Ljava9/util/stream/Nodes;->collectLong(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
    .locals 7
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 339
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    new-instance v6, Ljava9/util/stream/LongPipeline$8;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v4, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$8;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongPredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava9/util/OptionalLong;
    .locals 1

    .line 518
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava9/util/stream/FindOps;->makeLong(Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalLong;

    return-object v0
.end method

.method public final findFirst()Ljava9/util/OptionalLong;
    .locals 1

    .line 513
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava9/util/stream/FindOps;->makeLong(Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalLong;

    return-object v0
.end method

.method public final flatMap(Ljava9/util/function/LongFunction;)Ljava9/util/stream/LongStream;
    .locals 7
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

    .line 272
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/LongFunction;, "Ljava9/util/function/LongFunction<+Ljava9/util/stream/LongStream;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    new-instance v6, Ljava9/util/stream/LongPipeline$6;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$6;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongFunction;)V

    return-object v6
.end method

.method public forEach(Ljava9/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 423
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava9/util/stream/ForEachOps;->makeLong(Ljava9/util/function/LongConsumer;Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 424
    return-void
.end method

.method public forEachOrdered(Ljava9/util/function/LongConsumer;)V
    .locals 1
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 428
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava9/util/stream/ForEachOps;->makeLong(Ljava9/util/function/LongConsumer;Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 429
    return-void
.end method

.method final forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Long;",
            ">;)Z"
        }
    .end annotation

    .line 153
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Long;>;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Long;>;"
    invoke-static {p1}, Ljava9/util/stream/LongPipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    .line 154
    .local v0, "spl":Ljava9/util/Spliterator$OfLong;
    invoke-static {p2}, Ljava9/util/stream/LongPipeline;->adapt(Ljava9/util/stream/Sink;)Ljava9/util/function/LongConsumer;

    move-result-object v1

    .line 156
    .local v1, "adaptedSink":Ljava9/util/function/LongConsumer;
    :cond_0
    invoke-interface {p2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava9/util/Spliterator$OfLong;->tryAdvance(Ljava9/util/function/LongConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 157
    :cond_1
    return v3
.end method

.method final getOutputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 127
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->iterator()Ljava9/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava9/util/PrimitiveIterator$OfLong;
    .locals 1

    .line 183
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Spliterators;->iterator(Ljava9/util/Spliterator$OfLong;)Ljava9/util/PrimitiveIterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator$OfLong;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;>;)",
            "Ljava9/util/Spliterator$OfLong;"
        }
    .end annotation

    .line 148
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Spliterator<Ljava/lang/Long;>;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;

    invoke-direct {v0, p1}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfLong;-><init>(Ljava9/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;
    .locals 0

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava9/util/stream/LongPipeline;->lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator$OfLong;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljava9/util/stream/LongStream;
    .locals 3
    .param p1, "maxSize"    # J

    .line 382
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 384
    invoke-static {p0, v0, v1, p1, p2}, Ljava9/util/stream/SliceOps;->makeLong(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 383
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method final makeNodeBuilder(JLjava9/util/function/IntFunction;)Ljava9/util/stream/Node$Builder;
    .locals 1
    .param p1, "exactSizeIfKnown"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava9/util/stream/Node$Builder<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 162
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Long;>;"
    invoke-static {p1, p2}, Ljava9/util/stream/Nodes;->longBuilder(J)Ljava9/util/stream/Node$Builder$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava9/util/function/LongUnaryOperator;)Ljava9/util/stream/LongStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/LongUnaryOperator;

    .line 215
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    new-instance v6, Ljava9/util/stream/LongPipeline$3;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$3;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongUnaryOperator;)V

    return-object v6
.end method

.method public final mapToDouble(Ljava9/util/function/LongToDoubleFunction;)Ljava9/util/stream/DoubleStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/LongToDoubleFunction;

    .line 255
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava9/util/stream/LongPipeline$5;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$5;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongToDoubleFunction;)V

    return-object v6
.end method

.method public final mapToInt(Ljava9/util/function/LongToIntFunction;)Ljava9/util/stream/IntStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/LongToIntFunction;

    .line 238
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Ljava9/util/stream/LongPipeline$4;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$4;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongToIntFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava9/util/function/LongFunction;)Ljava9/util/stream/Stream;
    .locals 2
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

    .line 232
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/LongFunction;, "Ljava9/util/function/LongFunction<+TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava9/util/stream/LongPipeline;->mapToObj(Ljava9/util/function/LongFunction;I)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Ljava9/util/OptionalLong;
    .locals 1

    .line 444
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda2;-><init>()V

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->reduce(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava9/util/OptionalLong;
    .locals 1

    .line 439
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->reduce(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/OptionalLong;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava9/util/function/LongPredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 508
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->NONE:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeLong(Ljava9/util/function/LongPredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljava9/util/stream/LongStream;
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->parallel()Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/LongStream;

    return-object v0
.end method

.method public final peek(Ljava9/util/function/LongConsumer;)Ljava9/util/stream/LongStream;
    .locals 7
    .param p1, "action"    # Ljava9/util/function/LongConsumer;

    .line 362
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 363
    new-instance v6, Ljava9/util/stream/LongPipeline$9;

    sget-object v3, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/LongPipeline$9;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/LongConsumer;)V

    return-object v6
.end method

.method public final reduce(JLjava9/util/function/LongBinaryOperator;)J
    .locals 2
    .param p1, "identity"    # J
    .param p3, "op"    # Ljava9/util/function/LongBinaryOperator;

    .line 476
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava9/util/stream/ReduceOps;->makeLong(JLjava9/util/function/LongBinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/OptionalLong;
    .locals 1
    .param p1, "op"    # Ljava9/util/function/LongBinaryOperator;

    .line 481
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/stream/ReduceOps;->makeLong(Ljava9/util/function/LongBinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalLong;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava9/util/stream/LongStream;
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->sequential()Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/LongStream;

    return-object v0
.end method

.method public final skip(J)Ljava9/util/stream/LongStream;
    .locals 3
    .param p1, "n"    # J

    .line 389
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 391
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 392
    return-object p0

    .line 394
    :cond_0
    const-wide/16 v0, -0x1

    invoke-static {p0, p1, p2, v0, v1}, Ljava9/util/stream/SliceOps;->makeLong(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0

    .line 390
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava9/util/stream/LongStream;
    .locals 1

    .line 409
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0}, Ljava9/util/stream/SortedOps;->makeLong(Ljava9/util/stream/AbstractPipeline;)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava9/util/Spliterator$OfLong;
    .locals 1

    .line 188
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/LongPipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->spliterator()Ljava9/util/Spliterator$OfLong;

    move-result-object v0

    return-object v0
.end method

.method public final sum()J
    .locals 3

    .line 434
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda8;-><init>()V

    const-wide/16 v1, 0x0

    invoke-virtual {p0, v1, v2, v0}, Ljava9/util/stream/LongPipeline;->reduce(JLjava9/util/function/LongBinaryOperator;)J

    move-result-wide v0

    return-wide v0
.end method

.method public final summaryStatistics()Ljava9/util/LongSummaryStatistics;
    .locals 3

    .line 470
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/Collectors;->LNG_SUM_STATS:Ljava9/util/function/Supplier;

    new-instance v1, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda0;-><init>()V

    new-instance v2, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava9/util/stream/LongPipeline$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava9/util/stream/LongPipeline;->collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjLongConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/LongSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/LongPredicate;

    .line 399
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava9/util/stream/WhileOps;->makeTakeWhileLong(Ljava9/util/stream/AbstractPipeline;Ljava9/util/function/LongPredicate;)Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[J
    .locals 1

    .line 523
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/WhileOps;->LONG_ARR_GEN:Ljava9/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava9/util/stream/LongPipeline;->evaluateToArrayNode(Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node$OfLong;

    invoke-static {v0}, Ljava9/util/stream/Nodes;->flattenLong(Ljava9/util/stream/Node$OfLong;)Ljava9/util/stream/Node$OfLong;

    move-result-object v0

    .line 524
    invoke-interface {v0}, Ljava9/util/stream/Node$OfLong;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [J

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 55
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->unordered()Ljava9/util/stream/LongStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava9/util/stream/LongStream;
    .locals 3

    .line 326
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/LongPipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    return-object p0

    .line 329
    :cond_0
    new-instance v0, Ljava9/util/stream/LongPipeline$7;

    sget-object v1, Ljava9/util/stream/StreamShape;->LONG_VALUE:Ljava9/util/stream/StreamShape;

    sget v2, Ljava9/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava9/util/stream/LongPipeline$7;-><init>(Ljava9/util/stream/LongPipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

    return-object v0
.end method

.method final wrap(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)Ljava9/util/Spliterator;
    .locals 1
    .param p3, "isParallel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P_IN:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/PipelineHelper<",
            "Ljava/lang/Long;",
            ">;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 142
    .local p0, "this":Ljava9/util/stream/LongPipeline;, "Ljava9/util/stream/LongPipeline<TE_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Long;>;"
    .local p2, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$LongWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V

    return-object v0
.end method
