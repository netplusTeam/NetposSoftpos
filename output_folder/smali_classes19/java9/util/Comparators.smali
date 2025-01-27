.class public final Ljava9/util/Comparators;
.super Ljava/lang/Object;
.source "Comparators.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/Comparators$NullComparator;,
        Ljava9/util/Comparators$NaturalOrderComparator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 482
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 483
    return-void
.end method

.method public static comparing(Ljava9/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 199
    .local p0, "keyExtractor":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 200
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda5;

    invoke-direct {v0, p0}, Ljava9/util/Comparators$$ExternalSyntheticLambda5;-><init>(Ljava9/util/function/Function;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparing(Ljava9/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 165
    .local p0, "keyExtractor":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p1, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda1;

    invoke-direct {v0, p1, p0}, Ljava9/util/Comparators$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;Ljava9/util/function/Function;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingDouble(Ljava9/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 262
    .local p0, "keyExtractor":Ljava9/util/function/ToDoubleFunction;, "Ljava9/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 263
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda4;

    invoke-direct {v0, p0}, Ljava9/util/Comparators$$ExternalSyntheticLambda4;-><init>(Ljava9/util/function/ToDoubleFunction;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingInt(Ljava9/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 220
    .local p0, "keyExtractor":Ljava9/util/function/ToIntFunction;, "Ljava9/util/function/ToIntFunction<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 221
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Ljava9/util/Comparators$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/ToIntFunction;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static comparingLong(Ljava9/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 241
    .local p0, "keyExtractor":Ljava9/util/function/ToLongFunction;, "Ljava9/util/function/ToLongFunction<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0}, Ljava9/util/Comparators$$ExternalSyntheticLambda3;-><init>(Ljava9/util/function/ToLongFunction;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method static synthetic lambda$comparing$2cd0d0b9$1(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    .line 201
    invoke-interface {p0, p1}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Comparable;

    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparing$73019568$1(Ljava/util/Comparator;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p2, "c1"    # Ljava/lang/Object;
    .param p3, "c2"    # Ljava/lang/Object;

    .line 168
    invoke-interface {p1, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 169
    invoke-interface {p1, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 168
    invoke-interface {p0, v0, p1}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingDouble$1e38a0fe$1(Ljava9/util/function/ToDoubleFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    .line 264
    invoke-interface {p0, p1}, Ljava9/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Double;->compare(DD)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingInt$535d0a$1(Ljava9/util/function/ToIntFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    .line 222
    invoke-interface {p0, p1}, Ljava9/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-static {v0, p0}, Ljava9/lang/Integers;->compare(II)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$comparingLong$dc7bafe8$1(Ljava9/util/function/ToLongFunction;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 4
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    .line 243
    invoke-interface {p0, p1}, Ljava9/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava9/lang/Longs;->compare(JJ)I

    move-result p0

    return p0
.end method

.method static synthetic lambda$thenComparing$aafead48$1(Ljava/util/Comparator;Ljava/util/Comparator;Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0
    .param p2, "c1"    # Ljava/lang/Object;
    .param p3, "c2"    # Ljava/lang/Object;

    .line 302
    invoke-interface {p0, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p0

    .line 303
    .local p0, "res":I
    if-eqz p0, :cond_0

    move p1, p0

    goto :goto_0

    :cond_0
    invoke-interface {p1, p2, p3}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public static naturalOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 131
    sget-object v0, Ljava9/util/Comparators$NaturalOrderComparator;->INSTANCE:Ljava9/util/Comparators$NaturalOrderComparator;

    return-object v0
.end method

.method public static nullsFirst(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 458
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava9/util/Comparators$NullComparator;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Ljava9/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static nullsLast(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 479
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Ljava9/util/Comparators$NullComparator;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Ljava9/util/Comparators$NullComparator;-><init>(ZLjava/util/Comparator;)V

    return-object v0
.end method

.method public static reverseOrder()Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ljava/lang/Comparable<",
            "-TT;>;>()",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 113
    invoke-static {}, Ljava/util/Collections;->reverseOrder()Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static reversed(Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 434
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<TT;>;"
    instance-of v0, p0, Ljava9/util/Comparators$NullComparator;

    if-eqz v0, :cond_0

    .line 435
    move-object v0, p0

    check-cast v0, Ljava9/util/Comparators$NullComparator;

    invoke-virtual {v0}, Ljava9/util/Comparators$NullComparator;->reversed()Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 437
    :cond_0
    invoke-static {p0}, Ljava/util/Collections;->reverseOrder(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 296
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "other":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    instance-of v0, p0, Ljava9/util/Comparators$NullComparator;

    if-eqz v0, :cond_0

    .line 299
    move-object v0, p0

    check-cast v0, Ljava9/util/Comparators$NullComparator;

    invoke-virtual {v0, p1}, Ljava9/util/Comparators$NullComparator;->thenComparing(Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0

    .line 301
    :cond_0
    new-instance v0, Ljava9/util/Comparators$$ExternalSyntheticLambda2;

    invoke-direct {v0, p0, p1}, Ljava9/util/Comparators$$ExternalSyntheticLambda2;-><init>(Ljava/util/Comparator;Ljava/util/Comparator;)V

    check-cast v0, Ljava/io/Serializable;

    check-cast v0, Ljava/util/Comparator;

    return-object v0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava9/util/function/Function;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U::",
            "Ljava/lang/Comparable<",
            "-TU;>;>(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 357
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "keyExtractor":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    invoke-static {p1}, Ljava9/util/Comparators;->comparing(Ljava9/util/function/Function;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static thenComparing(Ljava/util/Comparator;Ljava9/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 331
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "keyExtractor":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "keyComparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p1, p2}, Ljava9/util/Comparators;->comparing(Ljava9/util/function/Function;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static thenComparingDouble(Ljava/util/Comparator;Ljava9/util/function/ToDoubleFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 420
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "keyExtractor":Ljava9/util/function/ToDoubleFunction;, "Ljava9/util/function/ToDoubleFunction<-TT;>;"
    invoke-static {p1}, Ljava9/util/Comparators;->comparingDouble(Ljava9/util/function/ToDoubleFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static thenComparingInt(Ljava/util/Comparator;Ljava9/util/function/ToIntFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 378
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "keyExtractor":Ljava9/util/function/ToIntFunction;, "Ljava9/util/function/ToIntFunction<-TT;>;"
    invoke-static {p1}, Ljava9/util/Comparators;->comparingInt(Ljava9/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method

.method public static thenComparingLong(Ljava/util/Comparator;Ljava9/util/function/ToLongFunction;)Ljava/util/Comparator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava/util/Comparator<",
            "TT;>;"
        }
    .end annotation

    .line 399
    .local p0, "this_":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    .local p1, "keyExtractor":Ljava9/util/function/ToLongFunction;, "Ljava9/util/function/ToLongFunction<-TT;>;"
    invoke-static {p1}, Ljava9/util/Comparators;->comparingLong(Ljava9/util/function/ToLongFunction;)Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/Comparators;->thenComparing(Ljava/util/Comparator;Ljava/util/Comparator;)Ljava/util/Comparator;

    move-result-object v0

    return-object v0
.end method
