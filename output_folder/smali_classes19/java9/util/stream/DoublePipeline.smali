.class abstract Ljava9/util/stream/DoublePipeline;
.super Ljava9/util/stream/AbstractPipeline;
.source "DoublePipeline.java"

# interfaces
.implements Ljava9/util/stream/DoubleStream;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/DoublePipeline$StatefulOp;,
        Ljava9/util/stream/DoublePipeline$StatelessOp;,
        Ljava9/util/stream/DoublePipeline$Head;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E_IN:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/stream/AbstractPipeline<",
        "TE_IN;",
        "Ljava/lang/Double;",
        "Ljava9/util/stream/DoubleStream;",
        ">;",
        "Ljava9/util/stream/DoubleStream;"
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
            "Ljava/lang/Double;",
            ">;IZ)V"
        }
    .end annotation

    .line 79
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Double;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/Spliterator;IZ)V

    .line 80
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
            "Ljava/lang/Double;",
            ">;>;IZ)V"
        }
    .end annotation

    .line 67
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "source":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Spliterator<Ljava/lang/Double;>;>;"
    invoke-direct {p0, p1, p2, p3}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/function/Supplier;IZ)V

    .line 68
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

    .line 90
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "upstream":Ljava9/util/stream/AbstractPipeline;, "Ljava9/util/stream/AbstractPipeline<*TE_IN;*>;"
    invoke-direct {p0, p1, p2}, Ljava9/util/stream/AbstractPipeline;-><init>(Ljava9/util/stream/AbstractPipeline;I)V

    .line 91
    return-void
.end method

.method static synthetic access$000(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .param p0, "x0"    # Ljava9/util/Spliterator;

    .line 54
    invoke-static {p0}, Ljava9/util/stream/DoublePipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method private static adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfDouble;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 113
    .local p0, "s":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava9/util/Spliterator$OfDouble;

    if-eqz v0, :cond_0

    .line 114
    move-object v0, p0

    check-cast v0, Ljava9/util/Spliterator$OfDouble;

    return-object v0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "DoubleStream.adapt(Spliterator<Double> s)"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static adapt(Ljava9/util/stream/Sink;)Ljava9/util/function/DoubleConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/function/DoubleConsumer;"
        }
    .end annotation

    .line 98
    .local p0, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Double;>;"
    instance-of v0, p0, Ljava9/util/function/DoubleConsumer;

    if-eqz v0, :cond_0

    .line 99
    move-object v0, p0

    check-cast v0, Ljava9/util/function/DoubleConsumer;

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda4;-><init>(Ljava9/util/stream/Sink;)V

    return-object v0
.end method

.method static synthetic lambda$average$53()[D
    .locals 1

    .line 467
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$average$54([DD)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 469
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/high16 v3, 0x3ff0000000000000L    # 1.0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 470
    invoke-static {p0, p1, p2}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 471
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 472
    return-void
.end method

.method static synthetic lambda$average$55([D[D)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 474
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 475
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 476
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 477
    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 478
    return-void
.end method

.method static synthetic lambda$collect$56(Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "left"    # Ljava/lang/Object;
    .param p2, "right"    # Ljava/lang/Object;

    .line 511
    invoke-interface {p0, p1, p2}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 512
    return-object p1
.end method

.method static synthetic lambda$distinct$49(Ljava/lang/Double;)D
    .locals 2
    .param p0, "i"    # Ljava/lang/Double;

    .line 400
    invoke-virtual {p0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic lambda$sum$50()[D
    .locals 1

    .line 425
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$sum$51([DD)V
    .locals 3
    .param p0, "ll"    # [D
    .param p1, "d"    # D

    .line 427
    invoke-static {p0, p1, p2}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 428
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    add-double/2addr v1, p1

    aput-wide v1, p0, v0

    .line 429
    return-void
.end method

.method static synthetic lambda$sum$52([D[D)V
    .locals 5
    .param p0, "ll"    # [D
    .param p1, "rr"    # [D

    .line 431
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 432
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 433
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 434
    return-void
.end method

.method private mapToObj(Ljava9/util/function/DoubleFunction;I)Ljava9/util/stream/Stream;
    .locals 7
    .param p2, "opFlags"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/DoubleFunction<",
            "+TU;>;I)",
            "Ljava9/util/stream/Stream<",
            "TU;>;"
        }
    .end annotation

    .line 164
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/DoubleFunction;, "Ljava9/util/function/DoubleFunction<+TU;>;"
    new-instance v6, Ljava9/util/stream/DoublePipeline$1;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move v4, p2

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$1;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleFunction;)V

    return-object v6
.end method


# virtual methods
.method public final allMatch(Ljava9/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 524
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->ALL:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeDouble(Ljava9/util/function/DoublePredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final anyMatch(Ljava9/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 519
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->ANY:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeDouble(Ljava9/util/function/DoublePredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public final average()Ljava9/util/OptionalDouble;
    .locals 6

    .line 467
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda1;-><init>()V

    new-instance v1, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda2;-><init>()V

    new-instance v2, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda3;

    invoke-direct {v2}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava9/util/stream/DoublePipeline;->collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 479
    .local v0, "avg":[D
    const/4 v1, 0x2

    aget-wide v2, v0, v1

    const-wide/16 v4, 0x0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    .line 480
    invoke-static {v0}, Ljava9/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v2

    aget-wide v4, v0, v1

    div-double/2addr v2, v4

    invoke-static {v2, v3}, Ljava9/util/OptionalDouble;->of(D)Ljava9/util/OptionalDouble;

    move-result-object v1

    goto :goto_0

    .line 481
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
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 193
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda9;

    invoke-direct {v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda9;-><init>()V

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Ljava9/util/stream/DoublePipeline;->mapToObj(Ljava9/util/function/DoubleFunction;I)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;
    .locals 2
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

    .line 509
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TR;>;"
    .local p2, "accumulator":Ljava9/util/function/ObjDoubleConsumer;, "Ljava9/util/function/ObjDoubleConsumer<TR;>;"
    .local p3, "combiner":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TR;TR;>;"
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda0;

    invoke-direct {v0, p3}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/BiConsumer;)V

    .line 514
    .local v0, "operator":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TR;>;"
    invoke-static {p1, p2, v0}, Ljava9/util/stream/ReduceOps;->makeDouble(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v1

    invoke-virtual {p0, v1}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v1

    return-object v1
.end method

.method public final count()J
    .locals 2

    .line 486
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {}, Ljava9/util/stream/ReduceOps;->makeDoubleCounting()Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public final distinct()Ljava9/util/stream/DoubleStream;
    .locals 2

    .line 400
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->boxed()Ljava9/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava9/util/stream/Stream;->distinct()Ljava9/util/stream/Stream;

    move-result-object v0

    new-instance v1, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda10;

    invoke-direct {v1}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda10;-><init>()V

    invoke-interface {v0, v1}, Ljava9/util/stream/Stream;->mapToDouble(Ljava9/util/function/ToDoubleFunction;)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final dropWhile(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 388
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava9/util/stream/WhileOps;->makeDropWhileDouble(Ljava9/util/stream/AbstractPipeline;Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;Z",
            "Ljava9/util/function/IntFunction<",
            "[",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Node<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 133
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "helper":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<TP_IN;>;"
    .local p4, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2, p3}, Ljava9/util/stream/Nodes;->collectDouble(Ljava9/util/stream/PipelineHelper;Ljava9/util/Spliterator;Z)Ljava9/util/stream/Node$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final filter(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
    .locals 7
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 321
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 322
    new-instance v6, Ljava9/util/stream/DoublePipeline$7;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v4, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$7;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoublePredicate;)V

    return-object v6
.end method

.method public final findAny()Ljava9/util/OptionalDouble;
    .locals 1

    .line 539
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {v0}, Ljava9/util/stream/FindOps;->makeDouble(Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalDouble;

    return-object v0
.end method

.method public final findFirst()Ljava9/util/OptionalDouble;
    .locals 1

    .line 534
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {v0}, Ljava9/util/stream/FindOps;->makeDouble(Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalDouble;

    return-object v0
.end method

.method public final flatMap(Ljava9/util/function/DoubleFunction;)Ljava9/util/stream/DoubleStream;
    .locals 7
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

    .line 255
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/DoubleFunction;, "Ljava9/util/function/DoubleFunction<+Ljava9/util/stream/DoubleStream;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    new-instance v6, Ljava9/util/stream/DoublePipeline$5;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_SIZED:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$5;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleFunction;)V

    return-object v6
.end method

.method public forEach(Ljava9/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 407
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x0

    invoke-static {p1, v0}, Ljava9/util/stream/ForEachOps;->makeDouble(Ljava9/util/function/DoubleConsumer;Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 408
    return-void
.end method

.method public forEachOrdered(Ljava9/util/function/DoubleConsumer;)V
    .locals 1
    .param p1, "consumer"    # Ljava9/util/function/DoubleConsumer;

    .line 412
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const/4 v0, 0x1

    invoke-static {p1, v0}, Ljava9/util/stream/ForEachOps;->makeDouble(Ljava9/util/function/DoubleConsumer;Z)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    .line 413
    return-void
.end method

.method final forEachWithCancel(Ljava9/util/Spliterator;Ljava9/util/stream/Sink;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/stream/Sink<",
            "Ljava/lang/Double;",
            ">;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "spliterator":Ljava9/util/Spliterator;, "Ljava9/util/Spliterator<Ljava/lang/Double;>;"
    .local p2, "sink":Ljava9/util/stream/Sink;, "Ljava9/util/stream/Sink<Ljava/lang/Double;>;"
    invoke-static {p1}, Ljava9/util/stream/DoublePipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    .line 152
    .local v0, "spl":Ljava9/util/Spliterator$OfDouble;
    invoke-static {p2}, Ljava9/util/stream/DoublePipeline;->adapt(Ljava9/util/stream/Sink;)Ljava9/util/function/DoubleConsumer;

    move-result-object v1

    .line 154
    .local v1, "adaptedSink":Ljava9/util/function/DoubleConsumer;
    :cond_0
    invoke-interface {p2}, Ljava9/util/stream/Sink;->cancellationRequested()Z

    move-result v2

    move v3, v2

    .local v3, "cancelled":Z
    if-nez v2, :cond_1

    invoke-interface {v0, v1}, Ljava9/util/Spliterator$OfDouble;->tryAdvance(Ljava9/util/function/DoubleConsumer;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 155
    :cond_1
    return v3
.end method

.method final getOutputShape()Ljava9/util/stream/StreamShape;
    .locals 1

    .line 125
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->iterator()Ljava9/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final iterator()Ljava9/util/PrimitiveIterator$OfDouble;
    .locals 1

    .line 181
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Spliterators;->iterator(Ljava9/util/Spliterator$OfDouble;)Ljava9/util/PrimitiveIterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method final lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator$OfDouble;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava9/util/function/Supplier<",
            "+",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;>;)",
            "Ljava9/util/Spliterator$OfDouble;"
        }
    .end annotation

    .line 146
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<+Ljava9/util/Spliterator<Ljava/lang/Double;>;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;

    invoke-direct {v0, p1}, Ljava9/util/stream/StreamSpliterators$DelegatingSpliterator$OfDouble;-><init>(Ljava9/util/function/Supplier;)V

    return-object v0
.end method

.method bridge synthetic lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator;
    .locals 0

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0, p1}, Ljava9/util/stream/DoublePipeline;->lazySpliterator(Ljava9/util/function/Supplier;)Ljava9/util/Spliterator$OfDouble;

    move-result-object p1

    return-object p1
.end method

.method public final limit(J)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p1, "maxSize"    # J

    .line 364
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_0

    .line 366
    invoke-static {p0, v0, v1, p1, p2}, Ljava9/util/stream/SliceOps;->makeDouble(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0

    .line 365
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
            "Ljava/lang/Double;",
            ">;)",
            "Ljava9/util/stream/Node$Builder<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 160
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p3, "generator":Ljava9/util/function/IntFunction;, "Ljava9/util/function/IntFunction<[Ljava/lang/Double;>;"
    invoke-static {p1, p2}, Ljava9/util/stream/Nodes;->doubleBuilder(J)Ljava9/util/stream/Node$Builder$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final map(Ljava9/util/function/DoubleUnaryOperator;)Ljava9/util/stream/DoubleStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/DoubleUnaryOperator;

    .line 198
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 199
    new-instance v6, Ljava9/util/stream/DoublePipeline$2;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$2;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleUnaryOperator;)V

    return-object v6
.end method

.method public final mapToInt(Ljava9/util/function/DoubleToIntFunction;)Ljava9/util/stream/IntStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/DoubleToIntFunction;

    .line 221
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    new-instance v6, Ljava9/util/stream/DoublePipeline$3;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$3;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleToIntFunction;)V

    return-object v6
.end method

.method public final mapToLong(Ljava9/util/function/DoubleToLongFunction;)Ljava9/util/stream/LongStream;
    .locals 7
    .param p1, "mapper"    # Ljava9/util/function/DoubleToLongFunction;

    .line 238
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    new-instance v6, Ljava9/util/stream/DoublePipeline$4;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int v4, v0, v1

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$4;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleToLongFunction;)V

    return-object v6
.end method

.method public final mapToObj(Ljava9/util/function/DoubleFunction;)Ljava9/util/stream/Stream;
    .locals 2
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

    .line 215
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "mapper":Ljava9/util/function/DoubleFunction;, "Ljava9/util/function/DoubleFunction<+TU;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 216
    sget v0, Ljava9/util/stream/StreamOpFlag;->NOT_SORTED:I

    sget v1, Ljava9/util/stream/StreamOpFlag;->NOT_DISTINCT:I

    or-int/2addr v0, v1

    invoke-direct {p0, p1, v0}, Ljava9/util/stream/DoublePipeline;->mapToObj(Ljava9/util/function/DoubleFunction;I)Ljava9/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public final max()Ljava9/util/OptionalDouble;
    .locals 1

    .line 446
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda5;

    invoke-direct {v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda5;-><init>()V

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->reduce(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final min()Ljava9/util/OptionalDouble;
    .locals 1

    .line 441
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda8;

    invoke-direct {v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda8;-><init>()V

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->reduce(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/OptionalDouble;

    move-result-object v0

    return-object v0
.end method

.method public final noneMatch(Ljava9/util/function/DoublePredicate;)Z
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 529
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/MatchOps$MatchKind;->NONE:Ljava9/util/stream/MatchOps$MatchKind;

    invoke-static {p1, v0}, Ljava9/util/stream/MatchOps;->makeDouble(Ljava9/util/function/DoublePredicate;Ljava9/util/stream/MatchOps$MatchKind;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic parallel()Ljava9/util/stream/DoubleStream;
    .locals 1

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->parallel()Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/DoubleStream;

    return-object v0
.end method

.method public final peek(Ljava9/util/function/DoubleConsumer;)Ljava9/util/stream/DoubleStream;
    .locals 7
    .param p1, "action"    # Ljava9/util/function/DoubleConsumer;

    .line 344
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    new-instance v6, Ljava9/util/stream/DoublePipeline$8;

    sget-object v3, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    const/4 v4, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/DoublePipeline$8;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;ILjava9/util/function/DoubleConsumer;)V

    return-object v6
.end method

.method public final reduce(DLjava9/util/function/DoubleBinaryOperator;)D
    .locals 2
    .param p1, "identity"    # D
    .param p3, "op"    # Ljava9/util/function/DoubleBinaryOperator;

    .line 497
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1, p2, p3}, Ljava9/util/stream/ReduceOps;->makeDouble(DLjava9/util/function/DoubleBinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Double;

    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    return-wide v0
.end method

.method public final reduce(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/OptionalDouble;
    .locals 1
    .param p1, "op"    # Ljava9/util/function/DoubleBinaryOperator;

    .line 502
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p1}, Ljava9/util/stream/ReduceOps;->makeDouble(Ljava9/util/function/DoubleBinaryOperator;)Ljava9/util/stream/TerminalOp;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluate(Ljava9/util/stream/TerminalOp;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/OptionalDouble;

    return-object v0
.end method

.method public bridge synthetic sequential()Ljava9/util/stream/DoubleStream;
    .locals 1

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->sequential()Ljava9/util/stream/BaseStream;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/DoubleStream;

    return-object v0
.end method

.method public final skip(J)Ljava9/util/stream/DoubleStream;
    .locals 3
    .param p1, "n"    # J

    .line 371
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-ltz v2, :cond_1

    .line 373
    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    .line 374
    return-object p0

    .line 376
    :cond_0
    const-wide/16 v0, -0x1

    .line 377
    .local v0, "limit":J
    invoke-static {p0, p1, p2, v0, v1}, Ljava9/util/stream/SliceOps;->makeDouble(Ljava9/util/stream/AbstractPipeline;JJ)Ljava9/util/stream/DoubleStream;

    move-result-object v2

    return-object v2

    .line 372
    .end local v0    # "limit":J
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public final sorted()Ljava9/util/stream/DoubleStream;
    .locals 1

    .line 393
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0}, Ljava9/util/stream/SortedOps;->makeDouble(Ljava9/util/stream/AbstractPipeline;)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final spliterator()Ljava9/util/Spliterator$OfDouble;
    .locals 1

    .line 186
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-super {p0}, Ljava9/util/stream/AbstractPipeline;->spliterator()Ljava9/util/Spliterator;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/DoublePipeline;->adapt(Ljava9/util/Spliterator;)Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic spliterator()Ljava9/util/Spliterator;
    .locals 1

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->spliterator()Ljava9/util/Spliterator$OfDouble;

    move-result-object v0

    return-object v0
.end method

.method public final sum()D
    .locals 3

    .line 425
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    new-instance v0, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda11;

    invoke-direct {v0}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda11;-><init>()V

    new-instance v1, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda12;

    invoke-direct {v1}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda12;-><init>()V

    new-instance v2, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda13;

    invoke-direct {v2}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda13;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava9/util/stream/DoublePipeline;->collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    .line 436
    .local v0, "summation":[D
    invoke-static {v0}, Ljava9/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    return-wide v1
.end method

.method public final summaryStatistics()Ljava9/util/DoubleSummaryStatistics;
    .locals 3

    .line 491
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/Collectors;->DBL_SUM_STATS:Ljava9/util/function/Supplier;

    new-instance v1, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda6;

    invoke-direct {v1}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda6;-><init>()V

    new-instance v2, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda7;

    invoke-direct {v2}, Ljava9/util/stream/DoublePipeline$$ExternalSyntheticLambda7;-><init>()V

    invoke-virtual {p0, v0, v1, v2}, Ljava9/util/stream/DoublePipeline;->collect(Ljava9/util/function/Supplier;Ljava9/util/function/ObjDoubleConsumer;Ljava9/util/function/BiConsumer;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/DoubleSummaryStatistics;

    return-object v0
.end method

.method public final takeWhile(Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;
    .locals 1
    .param p1, "predicate"    # Ljava9/util/function/DoublePredicate;

    .line 383
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-static {p0, p1}, Ljava9/util/stream/WhileOps;->makeTakeWhileDouble(Ljava9/util/stream/AbstractPipeline;Ljava9/util/function/DoublePredicate;)Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public final toArray()[D
    .locals 1

    .line 544
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    sget-object v0, Ljava9/util/stream/WhileOps;->DOUBLE_ARR_GEN:Ljava9/util/function/IntFunction;

    invoke-virtual {p0, v0}, Ljava9/util/stream/DoublePipeline;->evaluateToArrayNode(Ljava9/util/function/IntFunction;)Ljava9/util/stream/Node;

    move-result-object v0

    check-cast v0, Ljava9/util/stream/Node$OfDouble;

    invoke-static {v0}, Ljava9/util/stream/Nodes;->flattenDouble(Ljava9/util/stream/Node$OfDouble;)Ljava9/util/stream/Node$OfDouble;

    move-result-object v0

    .line 545
    invoke-interface {v0}, Ljava9/util/stream/Node$OfDouble;->asPrimitiveArray()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [D

    return-object v0
.end method

.method public bridge synthetic unordered()Ljava9/util/stream/BaseStream;
    .locals 1

    .line 54
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->unordered()Ljava9/util/stream/DoubleStream;

    move-result-object v0

    return-object v0
.end method

.method public unordered()Ljava9/util/stream/DoubleStream;
    .locals 3

    .line 309
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    invoke-virtual {p0}, Ljava9/util/stream/DoublePipeline;->isOrdered()Z

    move-result v0

    if-nez v0, :cond_0

    .line 310
    return-object p0

    .line 311
    :cond_0
    new-instance v0, Ljava9/util/stream/DoublePipeline$6;

    sget-object v1, Ljava9/util/stream/StreamShape;->DOUBLE_VALUE:Ljava9/util/stream/StreamShape;

    sget v2, Ljava9/util/stream/StreamOpFlag;->NOT_ORDERED:I

    invoke-direct {v0, p0, p0, v1, v2}, Ljava9/util/stream/DoublePipeline$6;-><init>(Ljava9/util/stream/DoublePipeline;Ljava9/util/stream/AbstractPipeline;Ljava9/util/stream/StreamShape;I)V

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
            "Ljava/lang/Double;",
            ">;",
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/Spliterator<",
            "TP_IN;>;>;Z)",
            "Ljava9/util/Spliterator<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 140
    .local p0, "this":Ljava9/util/stream/DoublePipeline;, "Ljava9/util/stream/DoublePipeline<TE_IN;>;"
    .local p1, "ph":Ljava9/util/stream/PipelineHelper;, "Ljava9/util/stream/PipelineHelper<Ljava/lang/Double;>;"
    .local p2, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/Spliterator<TP_IN;>;>;"
    new-instance v0, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;

    invoke-direct {v0, p1, p2, p3}, Ljava9/util/stream/StreamSpliterators$DoubleWrappingSpliterator;-><init>(Ljava9/util/stream/PipelineHelper;Ljava9/util/function/Supplier;Z)V

    return-object v0
.end method
