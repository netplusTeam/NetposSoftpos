.class public final Ljava9/util/stream/Collectors;
.super Ljava/lang/Object;
.source "Collectors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava9/util/stream/Collectors$Partition;,
        Ljava9/util/stream/Collectors$CollectorImpl;
    }
.end annotation


# static fields
.field static final CH_CONCURRENT_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_CONCURRENT_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_ID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final CH_UNORDERED_NOID:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava9/util/stream/Collector$Characteristics;",
            ">;"
        }
    .end annotation
.end field

.field static final DBL_SUM_STATS:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field static final INT_SUM_STATS:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final LIST_ADD:Ljava9/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/BiConsumer<",
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;*>;"
        }
    .end annotation
.end field

.field static final LNG_SUM_STATS:Ljava9/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Supplier<",
            "Ljava9/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation
.end field

.field private static final SET_ADD:Ljava9/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/BiConsumer<",
            "Ljava/util/Set<",
            "Ljava/lang/Object;",
            ">;*>;"
        }
    .end annotation
.end field

.field private static final UNMOD_MAP_FINISHER:Ljava9/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava9/util/function/Function<",
            "Ljava/util/Map<",
            "**>;",
            "Ljava/util/Map<",
            "**>;>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 111
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->CONCURRENT:Ljava9/util/stream/Collector$Characteristics;

    sget-object v1, Ljava9/util/stream/Collector$Characteristics;->UNORDERED:Ljava9/util/stream/Collector$Characteristics;

    sget-object v2, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    .line 112
    invoke-static {v0, v1, v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    .line 115
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->CONCURRENT:Ljava9/util/stream/Collector$Characteristics;

    sget-object v1, Ljava9/util/stream/Collector$Characteristics;->UNORDERED:Ljava9/util/stream/Collector$Characteristics;

    .line 116
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    .line 118
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    .line 119
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    .line 120
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->UNORDERED:Ljava9/util/stream/Collector$Characteristics;

    sget-object v1, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    .line 121
    invoke-static {v0, v1}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    .line 123
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    .line 124
    sget-object v0, Ljava9/util/stream/Collector$Characteristics;->UNORDERED:Ljava9/util/stream/Collector$Characteristics;

    .line 125
    invoke-static {v0}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Ljava9/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    .line 129
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda25;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda25;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->DBL_SUM_STATS:Ljava9/util/function/Supplier;

    .line 130
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda26;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda26;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->INT_SUM_STATS:Ljava9/util/function/Supplier;

    .line 131
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda27;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda27;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->LNG_SUM_STATS:Ljava9/util/function/Supplier;

    .line 155
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda28;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda28;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->UNMOD_MAP_FINISHER:Ljava9/util/function/Function;

    .line 163
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda29;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda29;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->LIST_ADD:Ljava9/util/function/BiConsumer;

    .line 164
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda30;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda30;-><init>()V

    sput-object v0, Ljava9/util/stream/Collectors;->SET_ADD:Ljava9/util/function/BiConsumer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 127
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static arrayListNew()Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Supplier<",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 147
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda13;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda13;-><init>()V

    return-object v0
.end method

.method public static averagingDouble(Ljava9/util/function/ToDoubleFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 915
    .local p0, "mapper":Ljava9/util/function/ToDoubleFunction;, "Ljava9/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda57;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda57;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda58;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda58;-><init>(Ljava9/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda59;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda59;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda60;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda60;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingInt(Ljava9/util/function/ToIntFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 858
    .local p0, "mapper":Ljava9/util/function/ToIntFunction;, "Ljava9/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda84;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda84;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda85;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda85;-><init>(Ljava9/util/function/ToIntFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda86;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda86;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda87;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda87;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static averagingLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 877
    .local p0, "mapper":Ljava9/util/function/ToLongFunction;, "Ljava9/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda52;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda52;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda53;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda53;-><init>(Ljava9/util/function/ToLongFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda54;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda54;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda56;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda56;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static boxSupplier(Ljava/lang/Object;)Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava9/util/function/Supplier<",
            "[TT;>;"
        }
    .end annotation

    .line 955
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda14;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda14;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static collectingAndThen(Ljava9/util/stream/Collector;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "RR:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Collector<",
            "TT;TA;TR;>;",
            "Ljava9/util/function/Function<",
            "TR;TRR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;TA;TRR;>;"
        }
    .end annotation

    .line 662
    .local p0, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<TT;TA;TR;>;"
    .local p1, "finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TR;TRR;>;"
    invoke-interface {p0}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v0

    .line 663
    .local v0, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    sget-object v1, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 664
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 665
    sget-object v0, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    goto :goto_0

    .line 667
    :cond_0
    invoke-static {v0}, Ljava/util/EnumSet;->copyOf(Ljava/util/Collection;)Ljava/util/EnumSet;

    move-result-object v0

    .line 668
    sget-object v1, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 669
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    .line 672
    :cond_1
    :goto_0
    new-instance v7, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-interface {p0}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v2

    .line 673
    invoke-interface {p0}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v3

    .line 674
    invoke-interface {p0}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v4

    .line 675
    invoke-interface {p0}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava9/util/function/Function;->andThen(Ljava9/util/function/Function;)Ljava9/util/function/Function;

    move-result-object v5

    move-object v1, v7

    move-object v6, v0

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method static computeFinalSum([D)D
    .locals 5
    .param p0, "summands"    # [D

    .line 837
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    const/4 v2, 0x1

    aget-wide v3, p0, v2

    sub-double/2addr v0, v3

    .line 838
    .local v0, "tmp":D
    array-length v3, p0

    sub-int/2addr v3, v2

    aget-wide v2, p0, v3

    .line 839
    .local v2, "simpleSum":D
    invoke-static {v0, v1}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-static {v2, v3}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 840
    return-wide v2

    .line 842
    :cond_0
    return-wide v0
.end method

.method private static concHashMapNew()Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Supplier<",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 138
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda91;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda91;-><init>()V

    return-object v0
.end method

.method private static concHashMapNew2()Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 143
    invoke-static {}, Ljava9/util/stream/Collectors;->concHashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    return-object v0
.end method

.method public static counting()Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 695
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda81;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda81;-><init>()V

    invoke-static {v0}, Ljava9/util/stream/Collectors;->summingLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;
    .locals 3
    .param p0, "k"    # Ljava/lang/Object;
    .param p1, "u"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 185
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    const-string v2, "Duplicate key %s (attempted merging values %s and %s)"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static filtering(Ljava9/util/function/Predicate;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 631
    .local p0, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TR;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v0

    .line 632
    .local v0, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TT;>;"
    new-instance v7, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda24;-><init>(Ljava9/util/function/Predicate;Ljava9/util/function/BiConsumer;)V

    .line 638
    invoke-interface {p1}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v5

    .line 639
    invoke-interface {p1}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static flatMapping(Ljava9/util/function/Function;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+",
            "Ljava9/util/stream/Stream<",
            "+TU;>;>;",
            "Ljava9/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 573
    .local p0, "mapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+Ljava9/util/stream/Stream<+TU;>;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v0

    .line 574
    .local v0, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda0;

    invoke-direct {v3, p0, v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda0;-><init>(Ljava9/util/function/Function;Ljava9/util/function/BiConsumer;)V

    .line 591
    invoke-interface {p1}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v5

    .line 592
    invoke-interface {p1}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static groupingBy(Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1092
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->toList()Ljava9/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/stream/Collectors;->groupingBy(Ljava9/util/function/Function;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingBy(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TD;>;>(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Supplier<",
            "TM;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1191
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v0

    .line 1192
    .local v0, "downstreamSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v1

    .line 1193
    .local v1, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TT;>;"
    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda82;

    invoke-direct {v2, p0, v0, v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda82;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;)V

    .line 1198
    .local v2, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<Ljava/util/Map<TK;TA;>;TT;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v3

    invoke-static {v3}, Ljava9/util/stream/Collectors;->mapMerger(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;

    move-result-object v9

    .line 1200
    .local v9, "merger":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<Ljava/util/Map<TK;TA;>;>;"
    move-object v10, p1

    .line 1202
    .local v10, "mangledFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava/util/Map<TK;TA;>;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1203
    new-instance v3, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v3, v10, v2, v9, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 1207
    :cond_0
    invoke-interface {p2}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v11

    .line 1208
    .local v11, "downstreamFinisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TA;TA;>;"
    new-instance v7, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda83;

    invoke-direct {v7, v11}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda83;-><init>(Ljava9/util/function/Function;)V

    .line 1214
    .local v7, "finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/util/Map<TK;TA;>;TM;>;"
    new-instance v12, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v10

    move-object v5, v2

    move-object v6, v9

    invoke-direct/range {v3 .. v8}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static groupingBy(Ljava9/util/function/Function;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1140
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TD;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->hashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ljava9/util/stream/Collectors;->groupingBy(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1254
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->concHashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {}, Ljava9/util/stream/Collectors;->toList()Ljava9/util/stream/Collector;

    move-result-object v1

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->groupingByConcurrent(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static groupingByConcurrent(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Supplier<",
            "TM;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1345
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "mapFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TM;>;"
    .local p2, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v0

    .line 1346
    .local v0, "downstreamSupplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TA;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v1

    .line 1347
    .local v1, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TT;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v2

    invoke-static {v2}, Ljava9/util/stream/Collectors;->mapMergerConcurrent(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;

    move-result-object v2

    .line 1349
    .local v2, "merger":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    move-object v9, p1

    .line 1351
    .local v9, "mangledFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;>;"
    invoke-interface {p2}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljava9/util/stream/Collector$Characteristics;->CONCURRENT:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1352
    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda20;

    invoke-direct {v3, p0, v0, v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda20;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;)V

    move-object v10, v3

    .local v3, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    goto :goto_0

    .line 1359
    .end local v3    # "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :cond_0
    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda21;

    invoke-direct {v3, p0, v0, v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda21;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;)V

    move-object v10, v3

    .line 1368
    .local v10, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TT;>;"
    :goto_0
    invoke-interface {p2}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v3

    sget-object v4, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v3, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1369
    new-instance v3, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v4, Ljava9/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v3, v9, v10, v2, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v3

    .line 1373
    :cond_1
    invoke-interface {p2}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v11

    .line 1374
    .local v11, "downstreamFinisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TA;TA;>;"
    new-instance v7, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda23;

    invoke-direct {v7, v11}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda23;-><init>(Ljava9/util/function/Function;)V

    .line 1380
    .local v7, "finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava/util/concurrent/ConcurrentMap<TK;TA;>;TM;>;"
    new-instance v12, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v8, Ljava9/util/stream/Collectors;->CH_CONCURRENT_NOID:Ljava/util/Set;

    move-object v3, v12

    move-object v4, v9

    move-object v5, v10

    move-object v6, v2

    invoke-direct/range {v3 .. v8}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v12
.end method

.method public static groupingByConcurrent(Ljava9/util/function/Function;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TD;>;>;"
        }
    .end annotation

    .line 1298
    .local p0, "classifier":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TD;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->concHashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, v0, p1}, Ljava9/util/stream/Collectors;->groupingByConcurrent(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static hashMapNew()Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Supplier<",
            "Ljava/util/Map<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 134
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda39;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda39;-><init>()V

    return-object v0
.end method

.method private static hashSetNew()Ljava9/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Supplier<",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 151
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda36;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda36;-><init>()V

    return-object v0
.end method

.method public static joining()Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava9/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 430
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda31;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda31;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda32;

    invoke-direct {v2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda32;-><init>()V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda34;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda34;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda35;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda35;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static joining(Ljava/lang/CharSequence;)Ljava9/util/stream/Collector;
    .locals 1
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava9/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 445
    const-string v0, ""

    invoke-static {p0, v0, v0}, Ljava9/util/stream/Collectors;->joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static joining(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava9/util/stream/Collector;
    .locals 7
    .param p0, "delimiter"    # Ljava/lang/CharSequence;
    .param p1, "prefix"    # Ljava/lang/CharSequence;
    .param p2, "suffix"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava9/util/stream/Collector<",
            "Ljava/lang/CharSequence;",
            "*",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 464
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p1, p2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda3;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda4;

    invoke-direct {v2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda4;-><init>()V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda5;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda5;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda6;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda6;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method static synthetic lambda$averagingDouble$119()[D
    .locals 1

    .line 916
    const/4 v0, 0x4

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$averagingDouble$120(Ljava9/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 6
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 917
    invoke-interface {p0, p2}, Ljava9/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .local v0, "val":D
    invoke-static {p1, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 p0, 0x2

    aget-wide v2, p1, p0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    add-double/2addr v2, v4

    aput-wide v2, p1, p0

    const/4 p0, 0x3

    aget-wide v2, p1, p0

    add-double/2addr v2, v0

    aput-wide v2, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingDouble$121([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 918
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x3

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingDouble$122([D)Ljava/lang/Double;
    .locals 5
    .param p0, "a"    # [D

    .line 919
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmpl-double v1, v1, v3

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava9/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v1

    aget-wide v3, p0, v0

    div-double v3, v1, v3

    :goto_0
    invoke-static {v3, v4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingInt$111()[J
    .locals 1

    .line 859
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingInt$112(Ljava9/util/function/ToIntFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 860
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    int-to-long v3, p0

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p0, 0x1

    aget-wide v0, p1, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingInt$113([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 861
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingInt$114([J)Ljava/lang/Double;
    .locals 5
    .param p0, "a"    # [J

    .line 862
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$averagingLong$115()[J
    .locals 1

    .line 878
    const/4 v0, 0x2

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$averagingLong$116(Ljava9/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 879
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    const/4 p0, 0x1

    aget-wide v0, p1, p0

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    aput-wide v0, p1, p0

    return-void
.end method

.method static synthetic lambda$averagingLong$117([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 880
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    const/4 v0, 0x1

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$averagingLong$118([J)Ljava/lang/Double;
    .locals 5
    .param p0, "a"    # [J

    .line 881
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    aget-wide v1, p0, v1

    long-to-double v1, v1

    aget-wide v3, p0, v0

    long-to-double v3, v3

    div-double v0, v1, v3

    :goto_0
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$boxSupplier$126(Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 2

    .line 955
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic lambda$counting$98(Ljava/lang/Object;)J
    .locals 2
    .param p0, "e"    # Ljava/lang/Object;

    .line 695
    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method static synthetic lambda$filtering$97(Ljava9/util/function/Predicate;Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 634
    invoke-interface {p0, p3}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    .line 635
    invoke-interface {p1, p2, p3}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 637
    :cond_0
    return-void
.end method

.method static synthetic lambda$flatMapping$96(Ljava9/util/function/Function;Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 576
    const/4 v0, 0x0

    .line 578
    .local v0, "result":Ljava9/util/stream/Stream;, "Ljava9/util/stream/Stream<+TU;>;"
    :try_start_0
    invoke-interface {p0, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava9/util/stream/Stream;

    move-object v0, p0

    .line 579
    if-eqz v0, :cond_0

    .line 580
    invoke-interface {v0}, Ljava9/util/stream/Stream;->sequential()Ljava9/util/stream/BaseStream;

    move-result-object p0

    check-cast p0, Ljava9/util/stream/Stream;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda2;

    invoke-direct {v1, p1, p2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda2;-><init>(Ljava9/util/function/BiConsumer;Ljava/lang/Object;)V

    invoke-interface {p0, v1}, Ljava9/util/stream/Stream;->forEach(Ljava9/util/function/Consumer;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 583
    :cond_0
    if-eqz v0, :cond_1

    .line 585
    :try_start_1
    invoke-interface {v0}, Ljava9/util/stream/Stream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 587
    :goto_0
    goto :goto_1

    .line 586
    :catch_0
    move-exception p0

    goto :goto_0

    .line 590
    :cond_1
    :goto_1
    return-void

    .line 583
    :catchall_0
    move-exception p0

    if-eqz v0, :cond_2

    .line 585
    :try_start_2
    invoke-interface {v0}, Ljava9/util/stream/Stream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 587
    goto :goto_2

    .line 586
    :catch_1
    move-exception p1

    .line 587
    :cond_2
    :goto_2
    throw p0
.end method

.method static synthetic lambda$groupingBy$134(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 1
    .param p3, "m"    # Ljava/util/Map;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1194
    invoke-interface {p0, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1195
    .local p0, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda7;

    invoke-direct {v0, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda7;-><init>(Ljava9/util/function/Supplier;)V

    invoke-static {p3, p0, v0}, Ljava9/util/Maps;->computeIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava9/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 1196
    .local p1, "container":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, p1, p4}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1197
    return-void
.end method

.method static synthetic lambda$groupingBy$136(Ljava9/util/function/Function;Ljava/util/Map;)Ljava/util/Map;
    .locals 1
    .param p1, "intermediate"    # Ljava/util/Map;

    .line 1209
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda50;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda50;-><init>(Ljava9/util/function/Function;)V

    invoke-static {p1, v0}, Ljava9/util/Maps;->replaceAll(Ljava/util/Map;Ljava9/util/function/BiFunction;)V

    .line 1211
    move-object p0, p1

    .line 1212
    .local p0, "castResult":Ljava/util/Map;, "TM;"
    return-object p0
.end method

.method static synthetic lambda$groupingByConcurrent$138(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 1
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1353
    invoke-interface {p0, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1354
    .local p0, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda73;

    invoke-direct {v0, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda73;-><init>(Ljava9/util/function/Supplier;)V

    invoke-static {p3, p0, v0}, Ljava9/util/concurrent/ConcurrentMaps;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava9/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 1355
    .local p1, "resultContainer":Ljava/lang/Object;, "TA;"
    invoke-interface {p2, p1, p4}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1356
    return-void
.end method

.method static synthetic lambda$groupingByConcurrent$140(Ljava9/util/function/Function;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 1
    .param p3, "m"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "t"    # Ljava/lang/Object;

    .line 1360
    invoke-interface {p0, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    const-string v0, "element cannot be mapped to a null key"

    invoke-static {p0, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    .line 1361
    .local p0, "key":Ljava/lang/Object;, "TK;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda80;

    invoke-direct {v0, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda80;-><init>(Ljava9/util/function/Supplier;)V

    invoke-static {p3, p0, v0}, Ljava9/util/concurrent/ConcurrentMaps;->computeIfAbsent(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava9/util/function/Function;)Ljava/lang/Object;

    move-result-object p1

    .line 1362
    .local p1, "resultContainer":Ljava/lang/Object;, "TA;"
    monitor-enter p1

    .line 1363
    :try_start_0
    invoke-interface {p2, p1, p4}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1364
    monitor-exit p1

    .line 1365
    return-void

    .line 1364
    :catchall_0
    move-exception p2

    monitor-exit p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p2
.end method

.method static synthetic lambda$groupingByConcurrent$142(Ljava9/util/function/Function;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 1
    .param p1, "intermediate"    # Ljava/util/concurrent/ConcurrentMap;

    .line 1375
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda74;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda74;-><init>(Ljava9/util/function/Function;)V

    invoke-static {p1, v0}, Ljava9/util/concurrent/ConcurrentMaps;->replaceAll(Ljava/util/concurrent/ConcurrentMap;Ljava9/util/function/BiFunction;)V

    .line 1377
    move-object p0, p1

    .line 1378
    .local p0, "castResult":Ljava/util/concurrent/ConcurrentMap;, "TM;"
    return-object p0
.end method

.method static synthetic lambda$joining$90(Ljava/lang/StringBuilder;Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 0
    .param p0, "r1"    # Ljava/lang/StringBuilder;
    .param p1, "r2"    # Ljava/lang/StringBuilder;

    .line 432
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method static synthetic lambda$joining$91(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava9/util/StringJoiner;
    .locals 1

    .line 465
    new-instance v0, Ljava9/util/StringJoiner;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/StringJoiner;-><init>(Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-object v0
.end method

.method static synthetic lambda$mapMerger$92(Ljava9/util/function/BinaryOperator;Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 4
    .param p1, "m1"    # Ljava/util/Map;
    .param p2, "m2"    # Ljava/util/Map;

    .line 485
    invoke-interface {p2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 486
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3, p0}, Ljava9/util/Maps;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;)Ljava/lang/Object;

    .line 487
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 488
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapMergerConcurrent$93(Ljava9/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/util/concurrent/ConcurrentMap;)Ljava/util/concurrent/ConcurrentMap;
    .locals 4
    .param p1, "m1"    # Ljava/util/concurrent/ConcurrentMap;
    .param p2, "m2"    # Ljava/util/concurrent/ConcurrentMap;

    .line 495
    invoke-interface {p2}, Ljava/util/concurrent/ConcurrentMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 496
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {p1, v2, v3, p0}, Ljava9/util/concurrent/ConcurrentMaps;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;)Ljava/lang/Object;

    .line 497
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    goto :goto_0

    .line 498
    :cond_0
    return-object p1
.end method

.method static synthetic lambda$mapping$94(Ljava9/util/function/BiConsumer;Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "r"    # Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 532
    invoke-interface {p1, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, p2, p1}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$null$133(Ljava9/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;

    .line 1195
    invoke-interface {p0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$135(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1209
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$137(Ljava9/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;

    .line 1354
    invoke-interface {p0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$139(Ljava9/util/function/Supplier;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;

    .line 1361
    invoke-interface {p0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$141(Ljava9/util/function/Function;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 1375
    invoke-interface {p0, p2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method static synthetic lambda$null$95(Ljava9/util/function/BiConsumer;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p2, "u"    # Ljava/lang/Object;

    .line 580
    invoke-interface {p0, p1, p2}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$143(Ljava9/util/function/BiConsumer;Ljava9/util/function/Predicate;Ljava9/util/stream/Collectors$Partition;Ljava/lang/Object;)V
    .locals 0
    .param p2, "result"    # Ljava9/util/stream/Collectors$Partition;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1444
    invoke-interface {p1, p3}, Ljava9/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p2, Ljava9/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    iget-object p1, p2, Ljava9/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    :goto_0
    invoke-interface {p0, p1, p3}, Ljava9/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic lambda$partitioningBy$144(Ljava9/util/function/BinaryOperator;Ljava9/util/stream/Collectors$Partition;Ljava9/util/stream/Collectors$Partition;)Ljava9/util/stream/Collectors$Partition;
    .locals 4
    .param p1, "left"    # Ljava9/util/stream/Collectors$Partition;
    .param p2, "right"    # Ljava9/util/stream/Collectors$Partition;

    .line 1447
    new-instance v0, Ljava9/util/stream/Collectors$Partition;

    iget-object v1, p1, Ljava9/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    iget-object v2, p2, Ljava9/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {p0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    iget-object v2, p1, Ljava9/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    iget-object v3, p2, Ljava9/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    .line 1448
    invoke-interface {p0, v2, v3}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava9/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$145(Ljava9/util/stream/Collector;)Ljava9/util/stream/Collectors$Partition;
    .locals 2

    .line 1450
    new-instance v0, Ljava9/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v1

    invoke-interface {v1}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    .line 1451
    invoke-interface {p0}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object p0

    invoke-interface {p0}, Ljava9/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava9/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$partitioningBy$146(Ljava9/util/stream/Collector;Ljava9/util/stream/Collectors$Partition;)Ljava/util/Map;
    .locals 3
    .param p1, "par"    # Ljava9/util/stream/Collectors$Partition;

    .line 1457
    new-instance v0, Ljava9/util/stream/Collectors$Partition;

    invoke-interface {p0}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v1

    iget-object v2, p1, Ljava9/util/stream/Collectors$Partition;->forTrue:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1458
    invoke-interface {p0}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object p0

    iget-object v2, p1, Ljava9/util/stream/Collectors$Partition;->forFalse:Ljava/lang/Object;

    invoke-interface {p0, v2}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-direct {v0, v1, p0}, Ljava9/util/stream/Collectors$Partition;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$123(Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "t"    # Ljava/lang/Object;

    .line 947
    const/4 v0, 0x0

    aget-object v1, p1, v0

    invoke-interface {p0, v1, p2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-void
.end method

.method static synthetic lambda$reducing$124(Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 948
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$125([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 949
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$reducing$127(Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collectors$1OptionalBox;
    .locals 1

    .line 1003
    new-instance v0, Ljava9/util/stream/Collectors$1OptionalBox;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$1OptionalBox;-><init>(Ljava9/util/function/BinaryOperator;)V

    return-object v0
.end method

.method static synthetic lambda$reducing$128(Ljava9/util/stream/Collectors$1OptionalBox;Ljava9/util/stream/Collectors$1OptionalBox;)Ljava9/util/stream/Collectors$1OptionalBox;
    .locals 1
    .param p0, "a"    # Ljava9/util/stream/Collectors$1OptionalBox;
    .param p1, "b"    # Ljava9/util/stream/Collectors$1OptionalBox;

    .line 1004
    iget-boolean v0, p1, Ljava9/util/stream/Collectors$1OptionalBox;->present:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Ljava9/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-virtual {p0, v0}, Ljava9/util/stream/Collectors$1OptionalBox;->accept(Ljava/lang/Object;)V

    :cond_0
    return-object p0
.end method

.method static synthetic lambda$reducing$129(Ljava9/util/stream/Collectors$1OptionalBox;)Ljava9/util/Optional;
    .locals 1
    .param p0, "a"    # Ljava9/util/stream/Collectors$1OptionalBox;

    .line 1005
    iget-object v0, p0, Ljava9/util/stream/Collectors$1OptionalBox;->value:Ljava/lang/Object;

    invoke-static {v0}, Ljava9/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava9/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$reducing$130(Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;[Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2
    .param p2, "a"    # [Ljava/lang/Object;
    .param p3, "t"    # Ljava/lang/Object;

    .line 1048
    const/4 v0, 0x0

    aget-object v1, p2, v0

    invoke-interface {p1, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-interface {p0, v1, p1}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p2, v0

    return-void
.end method

.method static synthetic lambda$reducing$131(Ljava9/util/function/BinaryOperator;[Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # [Ljava/lang/Object;
    .param p2, "b"    # [Ljava/lang/Object;

    .line 1049
    const/4 v0, 0x0

    aget-object v1, p1, v0

    aget-object v2, p2, v0

    invoke-interface {p0, v1, v2}, Ljava9/util/function/BinaryOperator;->apply(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    aput-object p0, p1, v0

    return-object p1
.end method

.method static synthetic lambda$reducing$132([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p0, "a"    # [Ljava/lang/Object;

    .line 1050
    const/4 v0, 0x0

    aget-object v0, p0, v0

    return-object v0
.end method

.method static synthetic lambda$static$79(Ljava/util/Map;)Ljava/util/Map;
    .locals 2
    .param p0, "map"    # Ljava/util/Map;

    .line 155
    nop

    .line 156
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/util/Map$Entry;

    invoke-interface {v0, v1}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/util/Map$Entry;

    invoke-static {v0}, Ljava9/util/Maps;->ofEntries([Ljava/util/Map$Entry;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summarizingDouble$153(Ljava9/util/function/ToDoubleFunction;Ljava9/util/DoubleSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p1, "r"    # Ljava9/util/DoubleSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1935
    invoke-interface {p0, p2}, Ljava9/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava9/util/DoubleSummaryStatistics;->accept(D)V

    return-void
.end method

.method static synthetic lambda$summarizingDouble$154(Ljava9/util/DoubleSummaryStatistics;Ljava9/util/DoubleSummaryStatistics;)Ljava9/util/DoubleSummaryStatistics;
    .locals 0
    .param p0, "l"    # Ljava9/util/DoubleSummaryStatistics;
    .param p1, "r"    # Ljava9/util/DoubleSummaryStatistics;

    .line 1936
    invoke-virtual {p0, p1}, Ljava9/util/DoubleSummaryStatistics;->combine(Ljava9/util/DoubleSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingInt$149(Ljava9/util/function/ToIntFunction;Ljava9/util/IntSummaryStatistics;Ljava/lang/Object;)V
    .locals 0
    .param p1, "r"    # Ljava9/util/IntSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1895
    invoke-interface {p0, p2}, Ljava9/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    invoke-virtual {p1, p0}, Ljava9/util/IntSummaryStatistics;->accept(I)V

    return-void
.end method

.method static synthetic lambda$summarizingInt$150(Ljava9/util/IntSummaryStatistics;Ljava9/util/IntSummaryStatistics;)Ljava9/util/IntSummaryStatistics;
    .locals 0
    .param p0, "l"    # Ljava9/util/IntSummaryStatistics;
    .param p1, "r"    # Ljava9/util/IntSummaryStatistics;

    .line 1896
    invoke-virtual {p0, p1}, Ljava9/util/IntSummaryStatistics;->combine(Ljava9/util/IntSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summarizingLong$151(Ljava9/util/function/ToLongFunction;Ljava9/util/LongSummaryStatistics;Ljava/lang/Object;)V
    .locals 2
    .param p1, "r"    # Ljava9/util/LongSummaryStatistics;
    .param p2, "t"    # Ljava/lang/Object;

    .line 1915
    invoke-interface {p0, p2}, Ljava9/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Ljava9/util/LongSummaryStatistics;->accept(J)V

    return-void
.end method

.method static synthetic lambda$summarizingLong$152(Ljava9/util/LongSummaryStatistics;Ljava9/util/LongSummaryStatistics;)Ljava9/util/LongSummaryStatistics;
    .locals 0
    .param p0, "l"    # Ljava9/util/LongSummaryStatistics;
    .param p1, "r"    # Ljava9/util/LongSummaryStatistics;

    .line 1916
    invoke-virtual {p0, p1}, Ljava9/util/LongSummaryStatistics;->combine(Ljava9/util/LongSummaryStatistics;)V

    return-object p0
.end method

.method static synthetic lambda$summingDouble$107()[D
    .locals 1

    .line 799
    const/4 v0, 0x3

    new-array v0, v0, [D

    return-object v0
.end method

.method static synthetic lambda$summingDouble$108(Ljava9/util/function/ToDoubleFunction;[DLjava/lang/Object;)V
    .locals 4
    .param p1, "a"    # [D
    .param p2, "t"    # Ljava/lang/Object;

    .line 800
    invoke-interface {p0, p2}, Ljava9/util/function/ToDoubleFunction;->applyAsDouble(Ljava/lang/Object;)D

    move-result-wide v0

    .line 801
    .local v0, "val":D
    invoke-static {p1, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 802
    const/4 p0, 0x2

    aget-wide v2, p1, p0

    add-double/2addr v2, v0

    aput-wide v2, p1, p0

    return-void
.end method

.method static synthetic lambda$summingDouble$109([D[D)[D
    .locals 5
    .param p0, "a"    # [D
    .param p1, "b"    # [D

    .line 803
    const/4 v0, 0x0

    aget-wide v0, p1, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    .line 804
    const/4 v0, 0x2

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-double/2addr v1, v3

    aput-wide v1, p0, v0

    .line 805
    const/4 v0, 0x1

    aget-wide v0, p1, v0

    neg-double v0, v0

    invoke-static {p0, v0, v1}, Ljava9/util/stream/Collectors;->sumWithCompensation([DD)[D

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingDouble$110([D)Ljava/lang/Double;
    .locals 2
    .param p0, "a"    # [D

    .line 806
    invoke-static {p0}, Ljava9/util/stream/Collectors;->computeFinalSum([D)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingInt$100(Ljava9/util/function/ToIntFunction;[ILjava/lang/Object;)V
    .locals 2
    .param p1, "a"    # [I
    .param p2, "t"    # Ljava/lang/Object;

    .line 749
    const/4 v0, 0x0

    aget v1, p1, v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToIntFunction;->applyAsInt(Ljava/lang/Object;)I

    move-result p0

    add-int/2addr v1, p0

    aput v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingInt$101([I[I)[I
    .locals 3
    .param p0, "a"    # [I
    .param p1, "b"    # [I

    .line 750
    const/4 v0, 0x0

    aget v1, p0, v0

    aget v2, p1, v0

    add-int/2addr v1, v2

    aput v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingInt$102([I)Ljava/lang/Integer;
    .locals 1
    .param p0, "a"    # [I

    .line 751
    const/4 v0, 0x0

    aget v0, p0, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$summingInt$99()[I
    .locals 1

    .line 748
    const/4 v0, 0x1

    new-array v0, v0, [I

    return-object v0
.end method

.method static synthetic lambda$summingLong$103()[J
    .locals 1

    .line 766
    const/4 v0, 0x1

    new-array v0, v0, [J

    return-object v0
.end method

.method static synthetic lambda$summingLong$104(Ljava9/util/function/ToLongFunction;[JLjava/lang/Object;)V
    .locals 5
    .param p1, "a"    # [J
    .param p2, "t"    # Ljava/lang/Object;

    .line 767
    const/4 v0, 0x0

    aget-wide v1, p1, v0

    invoke-interface {p0, p2}, Ljava9/util/function/ToLongFunction;->applyAsLong(Ljava/lang/Object;)J

    move-result-wide v3

    add-long/2addr v1, v3

    aput-wide v1, p1, v0

    return-void
.end method

.method static synthetic lambda$summingLong$105([J[J)[J
    .locals 5
    .param p0, "a"    # [J
    .param p1, "b"    # [J

    .line 768
    const/4 v0, 0x0

    aget-wide v1, p0, v0

    aget-wide v3, p1, v0

    add-long/2addr v1, v3

    aput-wide v1, p0, v0

    return-object p0
.end method

.method static synthetic lambda$summingLong$106([J)Ljava/lang/Long;
    .locals 2
    .param p0, "a"    # [J

    .line 769
    const/4 v0, 0x0

    aget-wide v0, p0, v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$teeing0$155(Ljava9/util/function/Supplier;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BiFunction;)Ljava9/util/stream/Collectors$1PairBox;
    .locals 11

    .line 2032
    new-instance v10, Ljava9/util/stream/Collectors$1PairBox;

    move-object v0, v10

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    move-object/from16 v9, p8

    invoke-direct/range {v0 .. v9}, Ljava9/util/stream/Collectors$1PairBox;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BiFunction;)V

    return-object v10
.end method

.method static synthetic lambda$toCollection$83(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 0
    .param p0, "r1"    # Ljava/util/Collection;
    .param p1, "r2"    # Ljava/util/Collection;

    .line 324
    invoke-interface {p0, p1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toConcurrentMap$148(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;)V
    .locals 0
    .param p3, "map"    # Ljava/util/concurrent/ConcurrentMap;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1875
    invoke-interface {p0, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p0, p1, p2}, Ljava9/util/concurrent/ConcurrentMaps;->merge(Ljava/util/concurrent/ConcurrentMap;Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toList$84(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 341
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toMap$147(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 0
    .param p3, "map"    # Ljava/util/Map;
    .param p4, "element"    # Ljava/lang/Object;

    .line 1715
    invoke-interface {p0, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    invoke-interface {p1, p4}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p3, p0, p1, p2}, Ljava9/util/Maps;->merge(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;Ljava9/util/function/BiFunction;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$toSet$87(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 383
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 384
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 386
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$85(Ljava/util/List;Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p0, "left"    # Ljava/util/List;
    .param p1, "right"    # Ljava/util/List;

    .line 360
    invoke-interface {p0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableList$86(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .param p0, "list"    # Ljava/util/List;

    .line 361
    invoke-interface {p0}, Ljava/util/List;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Lists;->of([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$toUnmodifiableSet$88(Ljava/util/Set;Ljava/util/Set;)Ljava/util/Set;
    .locals 2
    .param p0, "left"    # Ljava/util/Set;
    .param p1, "right"    # Ljava/util/Set;

    .line 412
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Set;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 413
    invoke-interface {p1, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p1

    .line 415
    :cond_0
    invoke-interface {p0, p1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    return-object p0
.end method

.method static synthetic lambda$toUnmodifiableSet$89(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .param p0, "set"    # Ljava/util/Set;

    .line 418
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/Sets;->of([Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$uniqKeysMapAccumulator$81(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava/util/Map;Ljava/lang/Object;)V
    .locals 2
    .param p2, "map"    # Ljava/util/Map;
    .param p3, "element"    # Ljava/lang/Object;

    .line 236
    invoke-interface {p0, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .line 237
    .local p0, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, p3}, Ljava9/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 238
    .local p1, "v":Ljava/lang/Object;, "TV;"
    const/4 v0, 0x0

    .line 239
    .local v0, "u":Ljava/lang/Object;, "TV;"
    instance-of v1, p2, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v1, :cond_0

    .line 240
    move-object v1, p2

    check-cast v1, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, p0, p1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 242
    :cond_0
    invoke-static {p2, p0, p1}, Ljava9/util/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 244
    :goto_0
    if-nez v0, :cond_1

    .line 247
    return-void

    .line 245
    :cond_1
    invoke-static {p0, v0, p1}, Ljava9/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v1

    throw v1
.end method

.method static synthetic lambda$uniqKeysMapMerger$80(Ljava/util/Map;Ljava/util/Map;)Ljava/util/Map;
    .locals 6
    .param p0, "m1"    # Ljava/util/Map;
    .param p1, "m2"    # Ljava/util/Map;

    .line 203
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 204
    .local v1, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 205
    .local v2, "k":Ljava/lang/Object;, "TK;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 206
    .local v3, "v":Ljava/lang/Object;, "TV;"
    const/4 v4, 0x0

    .line 207
    .local v4, "u":Ljava/lang/Object;, "TV;"
    instance-of v5, p0, Ljava/util/concurrent/ConcurrentMap;

    if-eqz v5, :cond_0

    .line 208
    move-object v5, p0

    check-cast v5, Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v5, v2, v3}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    goto :goto_1

    .line 210
    :cond_0
    invoke-static {p0, v2, v3}, Ljava9/util/Maps;->putIfAbsent(Ljava/util/Map;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 212
    :goto_1
    if-nez v4, :cond_1

    .line 215
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    goto :goto_0

    .line 213
    .restart local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .restart local v2    # "k":Ljava/lang/Object;, "TK;"
    .restart local v3    # "v":Ljava/lang/Object;, "TV;"
    .restart local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_1
    invoke-static {v2, v4, v3}, Ljava9/util/stream/Collectors;->duplicateKeyException(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/IllegalStateException;

    move-result-object v0

    throw v0

    .line 216
    .end local v1    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;TV;>;"
    .end local v2    # "k":Ljava/lang/Object;, "TK;"
    .end local v3    # "v":Ljava/lang/Object;, "TV;"
    .end local v4    # "u":Ljava/lang/Object;, "TV;"
    :cond_2
    return-object p0
.end method

.method private static final listAdd()Ljava9/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/BiConsumer<",
            "Ljava/util/List<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 168
    sget-object v0, Ljava9/util/stream/Collectors;->LIST_ADD:Ljava9/util/function/BiConsumer;

    return-object v0
.end method

.method private static mapMerger(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava9/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava9/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 484
    .local p0, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TV;>;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda51;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda51;-><init>(Ljava9/util/function/BinaryOperator;)V

    return-object v0
.end method

.method private static mapMergerConcurrent(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TV;>;>(",
            "Ljava9/util/function/BinaryOperator<",
            "TV;>;)",
            "Ljava9/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 494
    .local p0, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TV;>;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda65;

    invoke-direct {v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda65;-><init>(Ljava9/util/function/BinaryOperator;)V

    return-object v0
.end method

.method public static mapping(Ljava9/util/function/Function;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/stream/Collector<",
            "-TU;TA;TR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 530
    .local p0, "mapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TU;TA;TR;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v0

    .line 531
    .local v0, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TU;>;"
    new-instance v7, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-interface {p1}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda55;

    invoke-direct {v3, v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda55;-><init>(Ljava9/util/function/BiConsumer;Ljava9/util/function/Function;)V

    .line 533
    invoke-interface {p1}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v4

    invoke-interface {p1}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v5

    .line 534
    invoke-interface {p1}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v6

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v7
.end method

.method public static maxBy(Ljava/util/Comparator;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 733
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava9/util/function/BinaryOperator;->maxBy(Ljava/util/Comparator;)Ljava9/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/Collectors;->reducing(Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static minBy(Ljava/util/Comparator;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 714
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    invoke-static {p0}, Ljava9/util/function/BinaryOperator;->minBy(Ljava/util/Comparator;)Ljava9/util/function/BinaryOperator;

    move-result-object v0

    invoke-static {v0}, Ljava9/util/stream/Collectors;->reducing(Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava9/util/function/Predicate;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "Ljava/util/List<",
            "TT;>;>;>;"
        }
    .end annotation

    .line 1407
    .local p0, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->toList()Ljava9/util/stream/Collector;

    move-result-object v0

    invoke-static {p0, v0}, Ljava9/util/stream/Collectors;->partitioningBy(Ljava9/util/function/Predicate;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static partitioningBy(Ljava9/util/function/Predicate;Ljava9/util/stream/Collector;)Ljava9/util/stream/Collector;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            "A:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Predicate<",
            "-TT;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA;TD;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "Ljava/lang/Boolean;",
            "TD;>;>;"
        }
    .end annotation

    .line 1442
    .local p0, "predicate":Ljava9/util/function/Predicate;, "Ljava9/util/function/Predicate<-TT;>;"
    .local p1, "downstream":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA;TD;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v0

    .line 1443
    .local v0, "downstreamAccumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA;-TT;>;"
    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda41;

    invoke-direct {v1, v0, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda41;-><init>(Ljava9/util/function/BiConsumer;Ljava9/util/function/Predicate;)V

    .line 1445
    .local v1, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<Ljava9/util/stream/Collectors$Partition<TA;>;TT;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v8

    .line 1446
    .local v8, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TA;>;"
    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda42;

    invoke-direct {v2, v8}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda42;-><init>(Ljava9/util/function/BinaryOperator;)V

    move-object v9, v2

    .line 1449
    .local v9, "merger":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<Ljava9/util/stream/Collectors$Partition<TA;>;>;"
    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda43;

    invoke-direct {v2, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda43;-><init>(Ljava9/util/stream/Collector;)V

    move-object v10, v2

    .line 1452
    .local v10, "supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<Ljava9/util/stream/Collectors$Partition<TA;>;>;"
    invoke-interface {p1}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v2

    sget-object v3, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-interface {v2, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1453
    new-instance v2, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v3, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v2, v10, v1, v9, v3}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v2

    .line 1456
    :cond_0
    new-instance v6, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda45;

    invoke-direct {v6, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda45;-><init>(Ljava9/util/stream/Collector;)V

    .line 1459
    .local v6, "finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<Ljava9/util/stream/Collectors$Partition<TA;>;Ljava/util/Map<Ljava/lang/Boolean;TD;>;>;"
    new-instance v11, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v7, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v2, v11

    move-object v3, v10

    move-object v4, v1

    move-object v5, v9

    invoke-direct/range {v2 .. v7}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v11
.end method

.method public static reducing(Ljava/lang/Object;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TT;>;"
        }
    .end annotation

    .line 945
    .local p0, "identity":Ljava/lang/Object;, "TT;"
    .local p1, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    .line 946
    invoke-static {p0}, Ljava9/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava9/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda92;

    invoke-direct {v2, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda92;-><init>(Ljava9/util/function/BinaryOperator;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda93;

    invoke-direct {v3, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda93;-><init>(Ljava9/util/function/BinaryOperator;)V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda94;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda94;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static reducing(Ljava/lang/Object;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(TU;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TU;>;"
        }
    .end annotation

    .line 1046
    .local p0, "identity":Ljava/lang/Object;, "TU;"
    .local p1, "mapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    .line 1047
    invoke-static {p0}, Ljava9/util/stream/Collectors;->boxSupplier(Ljava/lang/Object;)Ljava9/util/function/Supplier;

    move-result-object v1

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda88;

    invoke-direct {v2, p2, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda88;-><init>(Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda95;

    invoke-direct {v3, p2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda95;-><init>(Ljava9/util/function/BinaryOperator;)V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda1;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda1;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static reducing(Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/BinaryOperator<",
            "TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/Optional<",
            "TT;>;>;"
        }
    .end annotation

    .line 1002
    .local p0, "op":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda15;-><init>(Ljava9/util/function/BinaryOperator;)V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda16;

    invoke-direct {v2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda16;-><init>()V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda17;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda17;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda18;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda18;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static final setAdd()Ljava9/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/BiConsumer<",
            "Ljava/util/Set<",
            "TT;>;TT;>;"
        }
    .end annotation

    .line 173
    sget-object v0, Ljava9/util/stream/Collectors;->SET_ADD:Ljava9/util/function/BiConsumer;

    return-object v0
.end method

.method static sumWithCompensation([DD)[D
    .locals 10
    .param p0, "intermediateSum"    # [D
    .param p1, "value"    # D

    .line 822
    const/4 v0, 0x1

    aget-wide v1, p0, v0

    sub-double v1, p1, v1

    .line 823
    .local v1, "tmp":D
    const/4 v3, 0x0

    aget-wide v4, p0, v3

    .line 824
    .local v4, "sum":D
    add-double v6, v4, v1

    .line 825
    .local v6, "velvel":D
    sub-double v8, v6, v4

    sub-double/2addr v8, v1

    aput-wide v8, p0, v0

    .line 826
    aput-wide v6, p0, v3

    .line 827
    return-object p0
.end method

.method public static summarizingDouble(Ljava9/util/function/ToDoubleFunction;)Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/DoubleSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1933
    .local p0, "mapper":Ljava9/util/function/ToDoubleFunction;, "Ljava9/util/function/ToDoubleFunction<-TT;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava9/util/stream/Collectors;->DBL_SUM_STATS:Ljava9/util/function/Supplier;

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda89;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda89;-><init>(Ljava9/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda90;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda90;-><init>()V

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingInt(Ljava9/util/function/ToIntFunction;)Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/IntSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1893
    .local p0, "mapper":Ljava9/util/function/ToIntFunction;, "Ljava9/util/function/ToIntFunction<-TT;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava9/util/stream/Collectors;->INT_SUM_STATS:Ljava9/util/function/Supplier;

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda67;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda67;-><init>(Ljava9/util/function/ToIntFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda68;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda68;-><init>()V

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summarizingLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava9/util/LongSummaryStatistics;",
            ">;"
        }
    .end annotation

    .line 1913
    .local p0, "mapper":Ljava9/util/function/ToLongFunction;, "Ljava9/util/function/ToLongFunction<-TT;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    sget-object v1, Ljava9/util/stream/Collectors;->LNG_SUM_STATS:Ljava9/util/function/Supplier;

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda8;-><init>(Ljava9/util/function/ToLongFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda9;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda9;-><init>()V

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static summingDouble(Ljava9/util/function/ToDoubleFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToDoubleFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 798
    .local p0, "mapper":Ljava9/util/function/ToDoubleFunction;, "Ljava9/util/function/ToDoubleFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda46;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda46;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda47;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda47;-><init>(Ljava9/util/function/ToDoubleFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda48;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda48;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda49;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda49;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingInt(Ljava9/util/function/ToIntFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToIntFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 747
    .local p0, "mapper":Ljava9/util/function/ToIntFunction;, "Ljava9/util/function/ToIntFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda75;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda75;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda76;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda76;-><init>(Ljava9/util/function/ToIntFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda78;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda78;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda79;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda79;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static summingLong(Ljava9/util/function/ToLongFunction;)Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/ToLongFunction<",
            "-TT;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 765
    .local p0, "mapper":Ljava9/util/function/ToLongFunction;, "Ljava9/util/function/ToLongFunction<-TT;>;"
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda61;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda61;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda62;

    invoke-direct {v2, p0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda62;-><init>(Ljava9/util/function/ToLongFunction;)V

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda63;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda63;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda64;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda64;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static teeing(Ljava9/util/stream/Collector;Ljava9/util/stream/Collector;Ljava9/util/function/BiFunction;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Collector<",
            "-TT;*TR1;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;*TR2;>;",
            "Ljava9/util/function/BiFunction<",
            "-TR1;-TR2;TR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1975
    .local p0, "downstream1":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;*TR1;>;"
    .local p1, "downstream2":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;*TR2;>;"
    .local p2, "merger":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TR1;-TR2;TR;>;"
    invoke-static {p0, p1, p2}, Ljava9/util/stream/Collectors;->teeing0(Ljava9/util/stream/Collector;Ljava9/util/stream/Collector;Ljava9/util/function/BiFunction;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method private static teeing0(Ljava9/util/stream/Collector;Ljava9/util/stream/Collector;Ljava9/util/function/BiFunction;)Ljava9/util/stream/Collector;
    .locals 26
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "A1:",
            "Ljava/lang/Object;",
            "A2:",
            "Ljava/lang/Object;",
            "R1:",
            "Ljava/lang/Object;",
            "R2:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/stream/Collector<",
            "-TT;TA1;TR1;>;",
            "Ljava9/util/stream/Collector<",
            "-TT;TA2;TR2;>;",
            "Ljava9/util/function/BiFunction<",
            "-TR1;-TR2;TR;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TR;>;"
        }
    .end annotation

    .line 1982
    .local p0, "downstream1":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA1;TR1;>;"
    .local p1, "downstream2":Ljava9/util/stream/Collector;, "Ljava9/util/stream/Collector<-TT;TA2;TR2;>;"
    .local p2, "merger":Ljava9/util/function/BiFunction;, "Ljava9/util/function/BiFunction<-TR1;-TR2;TR;>;"
    const-string v0, "downstream1"

    move-object/from16 v1, p0

    invoke-static {v1, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1983
    const-string v0, "downstream2"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1984
    const-string v0, "merger"

    move-object/from16 v13, p2

    invoke-static {v13, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1986
    invoke-interface/range {p0 .. p0}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v0

    const-string v3, "downstream1 supplier"

    invoke-static {v0, v3}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava9/util/function/Supplier;

    .line 1987
    .local v0, "c1Supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TA1;>;"
    invoke-interface/range {p1 .. p1}, Ljava9/util/stream/Collector;->supplier()Ljava9/util/function/Supplier;

    move-result-object v3

    const-string v4, "downstream2 supplier"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v14, v3

    check-cast v14, Ljava9/util/function/Supplier;

    .line 1988
    .local v14, "c2Supplier":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TA2;>;"
    nop

    .line 1989
    invoke-interface/range {p0 .. p0}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v3

    const-string v4, "downstream1 accumulator"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object v15, v3

    check-cast v15, Ljava9/util/function/BiConsumer;

    .line 1990
    .local v15, "c1Accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA1;-TT;>;"
    nop

    .line 1991
    invoke-interface/range {p1 .. p1}, Ljava9/util/stream/Collector;->accumulator()Ljava9/util/function/BiConsumer;

    move-result-object v3

    const-string v4, "downstream2 accumulator"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v16, v3

    check-cast v16, Ljava9/util/function/BiConsumer;

    .line 1992
    .local v16, "c2Accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TA2;-TT;>;"
    invoke-interface/range {p0 .. p0}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v3

    const-string v4, "downstream1 combiner"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v17, v3

    check-cast v17, Ljava9/util/function/BinaryOperator;

    .line 1993
    .local v17, "c1Combiner":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TA1;>;"
    invoke-interface/range {p1 .. p1}, Ljava9/util/stream/Collector;->combiner()Ljava9/util/function/BinaryOperator;

    move-result-object v3

    const-string v4, "downstream2 combiner"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v18, v3

    check-cast v18, Ljava9/util/function/BinaryOperator;

    .line 1994
    .local v18, "c2Combiner":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TA2;>;"
    invoke-interface/range {p0 .. p0}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v3

    const-string v4, "downstream1 finisher"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v19, v3

    check-cast v19, Ljava9/util/function/Function;

    .line 1995
    .local v19, "c1Finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TA1;TR1;>;"
    invoke-interface/range {p1 .. p1}, Ljava9/util/stream/Collector;->finisher()Ljava9/util/function/Function;

    move-result-object v3

    const-string v4, "downstream2 finisher"

    invoke-static {v3, v4}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    move-object/from16 v20, v3

    check-cast v20, Ljava9/util/function/Function;

    .line 1998
    .local v20, "c2Finisher":Ljava9/util/function/Function;, "Ljava9/util/function/Function<TA2;TR2;>;"
    invoke-interface/range {p0 .. p0}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v12

    .line 1999
    .local v12, "c1Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    invoke-interface/range {p1 .. p1}, Ljava9/util/stream/Collector;->characteristics()Ljava/util/Set;

    move-result-object v11

    .line 2000
    .local v11, "c2Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    sget-object v3, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-interface {v3, v12}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-interface {v3, v11}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    .line 2003
    :cond_0
    const-class v3, Ljava9/util/stream/Collector$Characteristics;

    invoke-static {v3}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v3

    .line 2004
    .local v3, "c":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava9/util/stream/Collector$Characteristics;>;"
    invoke-virtual {v3, v12}, Ljava/util/EnumSet;->addAll(Ljava/util/Collection;)Z

    .line 2005
    invoke-virtual {v3, v11}, Ljava/util/EnumSet;->retainAll(Ljava/util/Collection;)Z

    .line 2006
    sget-object v4, Ljava9/util/stream/Collector$Characteristics;->IDENTITY_FINISH:Ljava9/util/stream/Collector$Characteristics;

    invoke-virtual {v3, v4}, Ljava/util/EnumSet;->remove(Ljava/lang/Object;)Z

    .line 2007
    invoke-static {v3}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v4

    move-object/from16 v21, v4

    .local v4, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    goto :goto_1

    .line 2001
    .end local v3    # "c":Ljava/util/EnumSet;, "Ljava/util/EnumSet<Ljava9/util/stream/Collector$Characteristics;>;"
    .end local v4    # "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    :cond_1
    :goto_0
    sget-object v4, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object/from16 v21, v4

    .line 2032
    .local v21, "characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    :goto_1
    new-instance v22, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v23, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda11;

    move-object/from16 v3, v23

    move-object v4, v0

    move-object v5, v14

    move-object v6, v15

    move-object/from16 v7, v16

    move-object/from16 v8, v17

    move-object/from16 v9, v18

    move-object/from16 v10, v19

    move-object/from16 v24, v11

    .end local v11    # "c2Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    .local v24, "c2Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    move-object/from16 v11, v20

    move-object/from16 v25, v12

    .end local v12    # "c1Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    .local v25, "c1Characteristics":Ljava/util/Set;, "Ljava/util/Set<Ljava9/util/stream/Collector$Characteristics;>;"
    move-object/from16 v12, p2

    invoke-direct/range {v3 .. v12}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda11;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BiFunction;)V

    new-instance v7, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda22;

    invoke-direct {v7}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda22;-><init>()V

    new-instance v8, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda33;

    invoke-direct {v8}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda33;-><init>()V

    new-instance v9, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda44;

    invoke-direct {v9}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda44;-><init>()V

    move-object/from16 v5, v22

    move-object/from16 v6, v23

    move-object/from16 v10, v21

    invoke-direct/range {v5 .. v10}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v22
.end method

.method public static toCollection(Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "TT;>;>(",
            "Ljava9/util/function/Supplier<",
            "TC;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TC;>;"
        }
    .end annotation

    .line 323
    .local p0, "collectionFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TC;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    new-instance v1, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda71;

    invoke-direct {v1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda71;-><init>()V

    new-instance v2, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda72;

    invoke-direct {v2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda72;-><init>()V

    sget-object v3, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, p0, v1, v2, v3}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1772
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->concHashMapNew2()Ljava9/util/function/Supplier;

    move-result-object v1

    .line 1773
    invoke-static {p0, p1}, Ljava9/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/function/BiConsumer;

    move-result-object v2

    .line 1774
    invoke-static {}, Ljava9/util/stream/Collectors;->uniqKeysMapMerger()Ljava9/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava9/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toConcurrentMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1832
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->concHashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava9/util/stream/Collectors;->toConcurrentMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toConcurrentMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/concurrent/ConcurrentMap<",
            "TK;TU;>;>(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava9/util/function/Supplier<",
            "TM;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1874
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TM;>;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda12;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda12;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)V

    .line 1876
    .local v0, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava9/util/stream/Collectors;->mapMergerConcurrent(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava9/util/stream/Collectors;->CH_CONCURRENT_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toList()Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 340
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->arrayListNew()Ljava9/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava9/util/stream/Collectors;->listAdd()Ljava9/util/function/BiConsumer;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda69;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda69;-><init>()V

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1520
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->hashMapNew()Ljava9/util/function/Supplier;

    move-result-object v1

    .line 1521
    invoke-static {p0, p1}, Ljava9/util/stream/Collectors;->uniqKeysMapAccumulator(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/function/BiConsumer;

    move-result-object v2

    .line 1522
    invoke-static {}, Ljava9/util/stream/Collectors;->uniqKeysMapMerger()Ljava9/util/function/BinaryOperator;

    move-result-object v3

    sget-object v4, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1622
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    invoke-static {}, Ljava9/util/stream/Collectors;->hashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava9/util/stream/Collectors;->toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TU;>;>(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;",
            "Ljava9/util/function/Supplier<",
            "TM;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*TM;>;"
        }
    .end annotation

    .line 1714
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    .local p3, "mapFactory":Ljava9/util/function/Supplier;, "Ljava9/util/function/Supplier<TM;>;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda10;

    invoke-direct {v0, p0, p1, p2}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda10;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)V

    .line 1716
    .local v0, "accumulator":Ljava9/util/function/BiConsumer;, "Ljava9/util/function/BiConsumer<TM;TT;>;"
    new-instance v1, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {p2}, Ljava9/util/stream/Collectors;->mapMerger(Ljava9/util/function/BinaryOperator;)Ljava9/util/function/BinaryOperator;

    move-result-object v2

    sget-object v3, Ljava9/util/stream/Collectors;->CH_ID:Ljava/util/Set;

    invoke-direct {v1, p3, v0, v2, v3}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v1
.end method

.method public static toSet()Ljava9/util/stream/Collector;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 381
    new-instance v0, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->hashSetNew()Ljava9/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava9/util/stream/Collectors;->setAdd()Ljava9/util/function/BiConsumer;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda19;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda19;-><init>()V

    sget-object v4, Ljava9/util/stream/Collectors;->CH_UNORDERED_ID:Ljava/util/Set;

    invoke-direct {v0, v1, v2, v3, v4}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava/util/Set;)V

    return-object v0
.end method

.method public static toUnmodifiableList()Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/List<",
            "TT;>;>;"
        }
    .end annotation

    .line 359
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->arrayListNew()Ljava9/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava9/util/stream/Collectors;->listAdd()Ljava9/util/function/BiConsumer;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda66;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda66;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda77;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda77;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method public static toUnmodifiableMap(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1557
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1558
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1559
    nop

    .line 1560
    invoke-static {p0, p1}, Ljava9/util/stream/Collectors;->toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;

    move-result-object v0

    .line 1561
    invoke-static {}, Ljava9/util/stream/Collectors;->unmodMapFinisher()Ljava9/util/function/Function;

    move-result-object v1

    .line 1559
    invoke-static {v0, v1}, Ljava9/util/stream/Collectors;->collectingAndThen(Ljava9/util/stream/Collector;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;)Ljava9/util/stream/Collector;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava9/util/function/BinaryOperator<",
            "TU;>;)",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 1662
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TU;>;"
    .local p2, "mergeFunction":Ljava9/util/function/BinaryOperator;, "Ljava9/util/function/BinaryOperator<TU;>;"
    const-string v0, "keyMapper"

    invoke-static {p0, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1663
    const-string v0, "valueMapper"

    invoke-static {p1, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1664
    const-string v0, "mergeFunction"

    invoke-static {p2, v0}, Ljava9/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 1665
    nop

    .line 1666
    invoke-static {}, Ljava9/util/stream/Collectors;->hashMapNew()Ljava9/util/function/Supplier;

    move-result-object v0

    invoke-static {p0, p1, p2, v0}, Ljava9/util/stream/Collectors;->toMap(Ljava9/util/function/Function;Ljava9/util/function/Function;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Supplier;)Ljava9/util/stream/Collector;

    move-result-object v0

    .line 1667
    invoke-static {}, Ljava9/util/stream/Collectors;->unmodMapFinisher()Ljava9/util/function/Function;

    move-result-object v1

    .line 1665
    invoke-static {v0, v1}, Ljava9/util/stream/Collectors;->collectingAndThen(Ljava9/util/stream/Collector;Ljava9/util/function/Function;)Ljava9/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toUnmodifiableSet()Ljava9/util/stream/Collector;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/stream/Collector<",
            "TT;*",
            "Ljava/util/Set<",
            "TT;>;>;"
        }
    .end annotation

    .line 410
    new-instance v6, Ljava9/util/stream/Collectors$CollectorImpl;

    invoke-static {}, Ljava9/util/stream/Collectors;->hashSetNew()Ljava9/util/function/Supplier;

    move-result-object v1

    invoke-static {}, Ljava9/util/stream/Collectors;->setAdd()Ljava9/util/function/BiConsumer;

    move-result-object v2

    new-instance v3, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda37;

    invoke-direct {v3}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda37;-><init>()V

    new-instance v4, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda38;

    invoke-direct {v4}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda38;-><init>()V

    sget-object v5, Ljava9/util/stream/Collectors;->CH_UNORDERED_NOID:Ljava/util/Set;

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Ljava9/util/stream/Collectors$CollectorImpl;-><init>(Ljava9/util/function/Supplier;Ljava9/util/function/BiConsumer;Ljava9/util/function/BinaryOperator;Ljava9/util/function/Function;Ljava/util/Set;)V

    return-object v6
.end method

.method private static uniqKeysMapAccumulator(Ljava9/util/function/Function;Ljava9/util/function/Function;)Ljava9/util/function/BiConsumer;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava9/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava9/util/function/Function<",
            "-TT;+TV;>;)",
            "Ljava9/util/function/BiConsumer<",
            "Ljava/util/Map<",
            "TK;TV;>;TT;>;"
        }
    .end annotation

    .line 235
    .local p0, "keyMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava9/util/function/Function;, "Ljava9/util/function/Function<-TT;+TV;>;"
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda70;

    invoke-direct {v0, p0, p1}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda70;-><init>(Ljava9/util/function/Function;Ljava9/util/function/Function;)V

    return-object v0
.end method

.method private static uniqKeysMapMerger()Ljava9/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>()",
            "Ljava9/util/function/BinaryOperator<",
            "TM;>;"
        }
    .end annotation

    .line 202
    new-instance v0, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda40;

    invoke-direct {v0}, Ljava9/util/stream/Collectors$$ExternalSyntheticLambda40;-><init>()V

    return-object v0
.end method

.method private static final unmodMapFinisher()Ljava9/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava9/util/function/Function<",
            "Ljava/util/Map<",
            "TK;TU;>;",
            "Ljava/util/Map<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 160
    sget-object v0, Ljava9/util/stream/Collectors;->UNMOD_MAP_FINISHER:Ljava9/util/function/Function;

    return-object v0
.end method
