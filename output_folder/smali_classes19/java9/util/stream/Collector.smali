.class public interface abstract Ljava9/util/stream/Collector;
.super Ljava/lang/Object;
.source "Collector.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Collector$Characteristics;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "A:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# direct methods
.method public static varargs of(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;[Ljava9/util/stream/Collector$Characteristics;)Ljava9/util/stream/Collector;
    .locals 8
    .param p4, "characteristics"    # [Ljava9/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TA;>;",
            "Ljava9/util/function/BiConsumer<",
            "TA;TT;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TA;>;",
            "Ljava9/util/function/Function<",
            "TA;TR;>;[",
            "Ljava9/util/stream/Collector$Characteristics;",
            ")",
            "Ljava9/util/stream/Collector<",
            "TT;TA;TR;>;"
        }
    .end annotation

    .line 298
    .local p0, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TA;>;"
    .local p1, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;TT;>;"
    .local p2, "combiner":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TA;>;"
    .local p3, "finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TA;TR;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 300
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 301
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 302
    invoke-static {p4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 303
    sget-object v0, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 304
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    array-length v1, p4

    if-lez v1, :cond_0

    .line 305
    const-class v1, Ljava9/util/stream/Collector$Characteristics;

    invoke-static {v1}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    .line 306
    invoke-static {v0, p4}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    .line 307
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 309
    :cond_0
    new-instance v7, Ljava9/util/stream/Collectors$CollectorImpl;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static varargs of(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;[Ljava9/util/stream/Collector$Characteristics;)Ljava9/util/stream/Collector;
    .locals 2
    .param p3, "characteristics"    # [Ljava9/util/stream/Collector$Characteristics;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Supplier<",
            "TR;>;",
            "Ljava9/util/function/BiConsumer<",
            "TR;TT;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TR;>;[",
            "Ljava9/util/stream/Collector$Characteristics;",
            ")",
            "Ljava9/util/stream/Collector<",
            "TT;TR;TR;>;"
        }
    .end annotation

    .line 266
    .local p0, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TR;>;"
    .local p1, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TR;TT;>;"
    .local p2, "combiner":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TR;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 268
    invoke-static {p2}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    invoke-static {p3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    array-length v0, p3

    if-nez v0, :cond_0

    sget-object v0, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    goto :goto_0

    :cond_0
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    .line 272
    invoke-static {v0, p3}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;[Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    :goto_0
    nop

    .line 274
    .local v0, "cs":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    new-instance v1, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-direct {v1, p0, p1, p2, v0}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method


# virtual methods
.method public abstract accumulator()Ljava9/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/BiConsumer<",
            "TA;TT;>;"
        }
    .end annotation
.end method

.method public abstract characteristics()Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end method

.method public abstract combiner()Ljava9/util/function/BinaryOperator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/BinaryOperator<",
            "TA;>;"
        }
    .end annotation
.end method

.method public abstract finisher()Ljava9/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/Function<",
            "TA;TR;>;"
        }
    .end annotation
.end method

.method public abstract supplier()Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/function/Supplier<",
            "TA;>;"
        }
    .end annotation
.end method
