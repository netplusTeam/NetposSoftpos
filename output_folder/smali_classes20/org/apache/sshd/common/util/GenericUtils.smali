.class public final Lorg/apache/sshd/common/util/GenericUtils;
.super Ljava/lang/Object;
.source "GenericUtils.java"


# static fields
.field private static final CASE_INSENSITIVE_MAP_FACTORY:Ljava/util/function/Supplier;

.field public static final CASE_SENSITIVE_ORDER:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMPTY_BOOLEAN_ARRAY:[Z

.field public static final EMPTY_BYTE_ARRAY:[B

.field public static final EMPTY_CHAR_ARRAY:[C

.field public static final EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

.field public static final EMPTY_STRING_ARRAY:[Ljava/lang/String;

.field public static final NULL:Ljava/lang/Object;

.field public static final QUOTES:Ljava/lang/String; = "\"\'"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 65
    const/4 v0, 0x0

    new-array v1, v0, [B

    sput-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BYTE_ARRAY:[B

    .line 66
    new-array v1, v0, [C

    sput-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_CHAR_ARRAY:[C

    .line 67
    new-array v1, v0, [Ljava/lang/String;

    sput-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    .line 68
    new-array v1, v0, [Ljava/lang/Object;

    sput-object v1, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_OBJECT_ARRAY:[Ljava/lang/Object;

    .line 69
    new-array v0, v0, [Z

    sput-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_BOOLEAN_ARRAY:[Z

    .line 75
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/GenericUtils;->NULL:Ljava/lang/Object;

    .line 80
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/GenericUtils;->CASE_SENSITIVE_ORDER:Ljava/util/Comparator;

    .line 91
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/GenericUtils;->CASE_INSENSITIVE_MAP_FACTORY:Ljava/util/function/Supplier;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 93
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Throwable;",
            ">(TT;TT;)TT;"
        }
    .end annotation

    .line 863
    .local p0, "current":Ljava/lang/Throwable;, "TT;"
    .local p1, "extra":Ljava/lang/Throwable;, "TT;"
    if-nez p0, :cond_0

    .line 864
    return-object p1

    .line 867
    :cond_0
    if-eqz p1, :cond_2

    if-ne p1, p0, :cond_1

    goto :goto_0

    .line 871
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .line 872
    return-object p0

    .line 868
    :cond_2
    :goto_0
    return-object p0
.end method

.method public static varargs asList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 559
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public static varargs asSet([Ljava/lang/Object;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 564
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    new-instance v0, Ljava/util/HashSet;

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static asSortedSet(Ljava/util/Collection;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable<",
            "TV;>;>(",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 573
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;",
            "Ljava/util/Collection<",
            "+TV;>;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .line 597
    .local p0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    new-instance v0, Ljava/util/TreeSet;

    const-string v1, "No comparator"

    invoke-static {p0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    .line 598
    .local v0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TV;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    .line 599
    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->addAll(Ljava/util/Collection;)Z

    .line 601
    :cond_0
    return-object v0
.end method

.method public static varargs asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TV;>;[TV;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 585
    .local p0, "comp":Ljava/util/Comparator;, "Ljava/util/Comparator<-TV;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;Ljava/util/Collection;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static varargs asSortedSet([Ljava/lang/Comparable;)Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V::",
            "Ljava/lang/Comparable<",
            "TV;>;>([TV;)",
            "Ljava/util/NavigableSet<",
            "TV;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 569
    .local p0, "values":[Ljava/lang/Comparable;, "[TV;"
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0, p0}, Lorg/apache/sshd/common/util/GenericUtils;->asSortedSet(Ljava/util/Comparator;[Ljava/lang/Object;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static caseInsensitiveMap()Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<V:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/Supplier<",
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "TV;>;>;"
        }
    .end annotation

    .line 611
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->CASE_INSENSITIVE_MAP_FACTORY:Ljava/util/function/Supplier;

    return-object v0
.end method

.method public static compare([C[C)I
    .locals 7
    .param p0, "c1"    # [C
    .param p1, "c2"    # [C

    .line 363
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    .line 364
    .local v0, "l1":I
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v1

    .line 365
    .local v1, "l2":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 366
    .local v2, "cmpLen":I
    const/4 v3, 0x0

    .local v3, "index":I
    :goto_0
    if-ge v3, v2, :cond_1

    .line 367
    aget-char v4, p0, v3

    .line 368
    .local v4, "c11":C
    aget-char v5, p1, v3

    .line 369
    .local v5, "c22":C
    invoke-static {v4, v5}, Ljava/lang/Character;->compare(CC)I

    move-result v6

    .line 370
    .local v6, "nRes":I
    if-eqz v6, :cond_0

    .line 371
    return v6

    .line 366
    .end local v4    # "c11":C
    .end local v5    # "c22":C
    .end local v6    # "nRes":I
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 375
    .end local v3    # "index":I
    :cond_1
    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v3

    .line 376
    .local v3, "nRes":I
    if-eqz v3, :cond_2

    .line 377
    return v3

    .line 380
    :cond_2
    const/4 v4, 0x0

    return v4
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 477
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 478
    return v1

    .line 481
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 482
    .local v2, "v":Ljava/lang/Object;, "TT;"
    invoke-interface {p0, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 483
    const/4 v0, 0x1

    return v0

    .line 485
    .end local v2    # "v":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 487
    :cond_2
    return v1
.end method

.method public static downcast()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<B:",
            "Ljava/lang/Object;",
            "D:TB;>()",
            "Ljava/util/function/Function<",
            "TD;TB;>;"
        }
    .end annotation

    .line 912
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda7;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda7;-><init>()V

    return-object v0
.end method

.method public static findFirstDifferentValueIndex(Ljava/lang/Iterable;Ljava/lang/Iterable;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)I"
        }
    .end annotation

    .line 438
    .local p0, "c1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "c2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->defaultEquality()Lorg/apache/sshd/common/util/functors/UnaryEquator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I

    move-result v0

    return v0
.end method

.method public static findFirstDifferentValueIndex(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 443
    .local p0, "c1":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "c2":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p2, "equator":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<-TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;

    move-result-object v1

    invoke-static {v0, v1, p2}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I

    move-result v0

    return v0
.end method

.method public static findFirstDifferentValueIndex(Ljava/util/Iterator;Ljava/util/Iterator;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;)I"
        }
    .end annotation

    .line 447
    .local p0, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->defaultEquality()Lorg/apache/sshd/common/util/functors/UnaryEquator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I

    move-result v0

    return v0
.end method

.method public static findFirstDifferentValueIndex(Ljava/util/Iterator;Ljava/util/Iterator;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Ljava/util/Iterator<",
            "+TT;>;",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 452
    .local p0, "i1":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p1, "i2":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    .local p2, "equator":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<-TT;>;"
    const-string v0, "No equator provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 454
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p0

    .line 455
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object p1

    .line 456
    const/4 v0, 0x0

    .line 457
    .local v0, "index":I
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 458
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 459
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 460
    .local v1, "v1":Ljava/lang/Object;, "TT;"
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 461
    .local v2, "v2":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v1, v2}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 462
    return v0

    .line 464
    .end local v1    # "v1":Ljava/lang/Object;, "TT;"
    .end local v2    # "v2":Ljava/lang/Object;, "TT;"
    :cond_0
    nop

    .line 456
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 465
    :cond_1
    return v0

    .line 467
    :cond_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 468
    return v0

    .line 470
    :cond_3
    const/4 v1, -0x1

    return v1
.end method

.method public static findFirstDifferentValueIndex(Ljava/util/List;Ljava/util/List;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;)I"
        }
    .end annotation

    .line 410
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->defaultEquality()Lorg/apache/sshd/common/util/functors/UnaryEquator;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstDifferentValueIndex(Ljava/util/List;Ljava/util/List;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I

    move-result v0

    return v0
.end method

.method public static findFirstDifferentValueIndex(Ljava/util/List;Ljava/util/List;Lorg/apache/sshd/common/util/functors/UnaryEquator;)I
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "+TT;>;",
            "Ljava/util/List<",
            "+TT;>;",
            "Lorg/apache/sshd/common/util/functors/UnaryEquator<",
            "-TT;>;)I"
        }
    .end annotation

    .line 415
    .local p0, "c1":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p1, "c2":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    .local p2, "equator":Lorg/apache/sshd/common/util/functors/UnaryEquator;, "Lorg/apache/sshd/common/util/functors/UnaryEquator<-TT;>;"
    const-string v0, "No equator provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 417
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    .line 418
    .local v0, "l1":I
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    .line 419
    .local v1, "l2":I
    const/4 v2, 0x0

    .local v2, "index":I
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v3

    .local v3, "count":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 420
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    .line 421
    .local v4, "v1":Ljava/lang/Object;, "TT;"
    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    .line 422
    .local v5, "v2":Ljava/lang/Object;, "TT;"
    invoke-interface {p2, v4, v5}, Lorg/apache/sshd/common/util/functors/UnaryEquator;->test(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 423
    return v2

    .line 419
    .end local v4    # "v1":Ljava/lang/Object;, "TT;"
    .end local v5    # "v2":Ljava/lang/Object;, "TT;"
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 428
    .end local v2    # "index":I
    .end local v3    # "count":I
    :cond_1
    if-ge v0, v1, :cond_2

    .line 429
    return v0

    .line 430
    :cond_2
    if-ge v1, v0, :cond_3

    .line 431
    return v1

    .line 433
    :cond_3
    const/4 v2, -0x1

    return v2
.end method

.method public static findFirstMatchingMember(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 684
    .local p0, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->selectMatchingMembers(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 685
    .local v0, "matches":Ljava/util/List;, "Ljava/util/List<TT;>;"
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method public static varargs findFirstMatchingMember(Ljava/util/function/Predicate;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;[TT;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 678
    .local p0, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    nop

    .line 679
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 678
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->findFirstMatchingMember(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static flipMap(Ljava/util/Map;Ljava/util/function/Supplier;Z)Ljava/util/Map;
    .locals 2
    .param p2, "allowDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TV;TK;>;>(",
            "Ljava/util/Map<",
            "+TK;+TV;>;",
            "Ljava/util/function/Supplier<",
            "+TM;>;Z)TM;"
        }
    .end annotation

    .line 629
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    .local p1, "mapCreator":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TM;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "No map created"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 630
    .local v0, "result":Ljava/util/Map;, "TM;"
    new-instance v1, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;

    invoke-direct {v1, v0, p2}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda9;-><init>(Ljava/util/Map;Z)V

    invoke-interface {p0, v1}, Ljava/util/Map;->forEach(Ljava/util/function/BiConsumer;)V

    .line 637
    return-object v0
.end method

.method public static forEach(Ljava/lang/Iterable;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/function/Consumer<",
            "-TT;>;)V"
        }
    .end annotation

    .line 492
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isNotEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 493
    invoke-interface {p0, p1}, Ljava/lang/Iterable;->forEach(Ljava/util/function/Consumer;)V

    .line 495
    :cond_0
    return-void
.end method

.method public static hashCode(Ljava/lang/String;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 120
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I

    move-result v0

    return v0
.end method

.method public static hashCode(Ljava/lang/String;Ljava/lang/Boolean;)I
    .locals 1
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "useUppercase"    # Ljava/lang/Boolean;

    .line 136
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 137
    const/4 v0, 0x0

    return v0

    .line 138
    :cond_0
    if-nez p1, :cond_1

    .line 139
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 140
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 141
    invoke-virtual {p0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0

    .line 143
    :cond_2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public static head(Ljava/lang/Iterable;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 924
    .local p0, "it":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 925
    return-object v0

    .line 926
    :cond_0
    instance-of v1, p0, Ljava/util/Deque;

    if-eqz v1, :cond_2

    .line 927
    move-object v1, p0

    check-cast v1, Ljava/util/Deque;

    .line 928
    .local v1, "l":Ljava/util/Deque;, "Ljava/util/Deque<+TT;>;"
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v2

    if-lez v2, :cond_1

    invoke-interface {v1}, Ljava/util/Deque;->getFirst()Ljava/lang/Object;

    move-result-object v0

    :cond_1
    return-object v0

    .line 929
    .end local v1    # "l":Ljava/util/Deque;, "Ljava/util/Deque<+TT;>;"
    :cond_2
    instance-of v1, p0, Ljava/util/List;

    if-eqz v1, :cond_4

    .line 930
    move-object v1, p0

    check-cast v1, Ljava/util/List;

    .line 931
    .local v1, "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_3

    const/4 v0, 0x0

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    :cond_3
    return-object v0

    .line 932
    .end local v1    # "l":Ljava/util/List;, "Ljava/util/List<+TT;>;"
    :cond_4
    instance-of v1, p0, Ljava/util/SortedSet;

    if-eqz v1, :cond_6

    .line 933
    move-object v1, p0

    check-cast v1, Ljava/util/SortedSet;

    .line 934
    .local v1, "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TT;>;"
    invoke-interface {v1}, Ljava/util/SortedSet;->size()I

    move-result v2

    if-lez v2, :cond_5

    invoke-interface {v1}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    :cond_5
    return-object v0

    .line 936
    .end local v1    # "s":Ljava/util/SortedSet;, "Ljava/util/SortedSet<+TT;>;"
    :cond_6
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 937
    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-eqz v1, :cond_8

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_7

    goto :goto_0

    :cond_7
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    :cond_8
    :goto_0
    return-object v0
.end method

.method public static indexOf(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "c"    # C

    .line 178
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 179
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "pos":I
    :goto_0
    if-ge v1, v0, :cond_1

    .line 180
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 181
    .local v2, "ch":C
    if-ne v2, p1, :cond_0

    .line 182
    return v1

    .line 179
    .end local v2    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 186
    .end local v1    # "pos":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static isEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 170
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 319
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    if-nez p0, :cond_0

    .line 320
    const/4 v0, 0x1

    return v0

    .line 321
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 322
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 324
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static isEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 294
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty(Ljava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 333
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public static isEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 306
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Map;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isEmpty([C)Z
    .locals 1
    .param p0, "chars"    # [C

    .line 350
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([C)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static varargs isEmpty([Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 342
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length([Ljava/lang/Object;)I

    move-result v0

    if-gtz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isNotEmpty(Ljava/lang/CharSequence;)Z
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 174
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 329
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 298
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/util/Iterator;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TT;>;)Z"
        }
    .end annotation

    .line 337
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Iterator;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isNotEmpty(Ljava/util/Map;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)Z"
        }
    .end annotation

    .line 310
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Map;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;TT;)Z"
        }
    .end annotation

    .line 162
    .local p0, "o1":Ljava/lang/Object;, "TT;"
    .local p1, "o2":Ljava/lang/Object;, "TT;"
    if-ne p0, p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static iteratorOf(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 903
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static iteratorOf(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;)",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 950
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyIterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;C)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 244
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/util/Iterator;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 269
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/util/Iterator;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;C)Ljava/lang/String;
    .locals 3
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 248
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 252
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 254
    .local v0, "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 256
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 258
    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 259
    .end local v1    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 261
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 249
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static join(Ljava/util/Iterator;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 3
    .param p1, "sep"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 273
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    if-eqz p0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 277
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 279
    .local v0, "sb":Ljava/lang/StringBuilder;
    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 280
    .local v1, "o":Ljava/lang/Object;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 281
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 283
    :cond_2
    invoke-static {v1}, Ljava/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 284
    .end local v1    # "o":Ljava/lang/Object;
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1

    .line 286
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 274
    .end local v0    # "sb":Ljava/lang/StringBuilder;
    :cond_3
    :goto_0
    const-string v0, ""

    return-object v0
.end method

.method public static join([Ljava/lang/Object;C)Ljava/lang/String;
    .locals 1
    .param p1, "ch"    # C
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;C)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 240
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static join([Ljava/lang/Object;Ljava/lang/CharSequence;)Ljava/lang/String;
    .locals 1
    .param p1, "sep"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;",
            "Ljava/lang/CharSequence;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 265
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->join(Ljava/lang/Iterable;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$downcast$7(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "t"    # Ljava/lang/Object;

    .line 912
    return-object p0
.end method

.method static synthetic lambda$flipMap$5(Ljava/util/Map;ZLjava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p0, "result"    # Ljava/util/Map;
    .param p1, "allowDuplicates"    # Z
    .param p2, "key"    # Ljava/lang/Object;
    .param p3, "value"    # Ljava/lang/Object;

    .line 631
    invoke-interface {p0, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 632
    .local v0, "prev":Ljava/lang/Object;, "TK;"
    if-eqz v0, :cond_0

    if-nez p1, :cond_0

    .line 633
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p3, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    const-string v2, "Multiple values for key=%s: current=%s, previous=%s"

    invoke-static {v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->throwIllegalArgumentException(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 635
    :cond_0
    return-void
.end method

.method static synthetic lambda$multiIterableSuppliers$10(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 2
    .param p0, "providers"    # Ljava/lang/Iterable;

    .line 1021
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda2;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda2;-><init>()V

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->flatMap(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$null$9(Ljava/util/function/Supplier;)Ljava/util/stream/Stream;
    .locals 1
    .param p0, "s"    # Ljava/util/function/Supplier;

    .line 1021
    invoke-interface {p0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$static$0(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;

    .line 81
    if-ne p0, p1, :cond_0

    .line 82
    const/4 v0, 0x0

    return v0

    .line 84
    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic lambda$static$1()Ljava/lang/Object;
    .locals 2

    .line 91
    new-instance v0, Ljava/util/TreeMap;

    sget-object v1, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$supplierOf$6(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .param p0, "value"    # Ljava/lang/Object;

    .line 890
    return-object p0
.end method

.method static synthetic lambda$throwingMerger$3(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .param p0, "u"    # Ljava/lang/Object;
    .param p1, "v"    # Ljava/lang/Object;

    .line 522
    new-instance v0, Ljava/lang/IllegalStateException;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const-string v2, "Duplicate key %s"

    invoke-static {v2, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$toSortedMap$2(Ljava/util/Comparator;)Ljava/util/NavigableMap;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 517
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0, p0}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$toSortedSet$4(Ljava/util/Comparator;)Ljava/util/NavigableSet;
    .locals 1
    .param p0, "comparator"    # Ljava/util/Comparator;

    .line 527
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0, p0}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method

.method static synthetic lambda$wrapIterable$8(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;
    .locals 1
    .param p0, "iter"    # Ljava/lang/Iterable;
    .param p1, "mapper"    # Ljava/util/function/Function;

    .line 955
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->wrapIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static lastIndexOf(Ljava/lang/CharSequence;C)I
    .locals 3
    .param p0, "cs"    # Ljava/lang/CharSequence;
    .param p1, "c"    # C

    .line 190
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->length(Ljava/lang/CharSequence;)I

    move-result v0

    .line 191
    .local v0, "len":I
    add-int/lit8 v1, v0, -0x1

    .local v1, "pos":I
    :goto_0
    if-ltz v1, :cond_1

    .line 192
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    .line 193
    .local v2, "ch":C
    if-ne v2, p1, :cond_0

    .line 194
    return v1

    .line 191
    .end local v2    # "ch":C
    :cond_0
    add-int/lit8 v1, v1, -0x1

    goto :goto_0

    .line 198
    .end local v1    # "pos":I
    :cond_1
    const/4 v1, -0x1

    return v1
.end method

.method public static length(Ljava/lang/CharSequence;)I
    .locals 1
    .param p0, "cs"    # Ljava/lang/CharSequence;

    .line 166
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static length([C)I
    .locals 1
    .param p0, "chars"    # [C

    .line 346
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static varargs length([Ljava/lang/Object;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 315
    .local p0, "a":[Ljava/lang/Object;, "[TT;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    array-length v0, p0

    :goto_0
    return v0
.end method

.method public static map(Ljava/util/Collection;Ljava/util/function/Function;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;)",
            "Ljava/util/List<",
            "TU;>;"
        }
    .end annotation

    .line 499
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static mapSort(Ljava/util/Collection;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "U:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TU;>;)",
            "Ljava/util/NavigableSet<",
            "TU;>;"
        }
    .end annotation

    .line 504
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TU;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->toSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method public static mapValues(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/Collection;)Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "TK;TV;>;>(",
            "Ljava/util/function/Function<",
            "-TV;+TK;>;",
            "Ljava/util/function/Supplier<",
            "+TM;>;",
            "Ljava/util/Collection<",
            "+TV;>;)TM;"
        }
    .end annotation

    .line 664
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TK;>;"
    .local p1, "mapCreator":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TM;>;"
    .local p2, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TV;>;"
    invoke-interface {p1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 665
    .local v0, "map":Ljava/util/Map;, "TM;"
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 666
    .local v2, "v":Ljava/lang/Object;, "TV;"
    invoke-interface {p0, v2}, Ljava/util/function/Function;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 667
    .local v3, "k":Ljava/lang/Object;, "TK;"
    if-nez v3, :cond_0

    .line 668
    goto :goto_0

    .line 670
    :cond_0
    invoke-interface {v0, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 671
    .end local v2    # "v":Ljava/lang/Object;, "TV;"
    .end local v3    # "k":Ljava/lang/Object;, "TK;"
    goto :goto_0

    .line 673
    :cond_1
    return-object v0
.end method

.method public static varargs mapValues(Ljava/util/function/Function;Ljava/util/function/Supplier;[Ljava/lang/Object;)Ljava/util/Map;
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
            "Ljava/util/function/Function<",
            "-TV;+TK;>;",
            "Ljava/util/function/Supplier<",
            "+TM;>;[TV;)TM;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 643
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TV;+TK;>;"
    .local p1, "mapCreator":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+TM;>;"
    .local p2, "values":[Ljava/lang/Object;, "[TV;"
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/sshd/common/util/GenericUtils;->mapValues(Ljava/util/function/Function;Ljava/util/function/Supplier;Ljava/util/Collection;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public static multiIterableSuppliers(Ljava/lang/Iterable;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/lang/Iterable<",
            "+TT;>;>;>;)",
            "Ljava/lang/Iterable<",
            "TT;>;"
        }
    .end annotation

    .line 1021
    .local p0, "providers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Ljava/util/function/Supplier<+Ljava/lang/Iterable<+TT;>;>;>;"
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda6;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public static of(Ljava/util/Collection;)Ljava/util/Set;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>(",
            "Ljava/util/Collection<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 389
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 390
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0

    .line 393
    :cond_0
    const/4 v0, 0x0

    .line 394
    .local v0, "result":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Enum;

    .line 399
    .local v2, "v":Ljava/lang/Enum;, "TE;"
    if-nez v0, :cond_1

    .line 400
    invoke-static {v2}, Ljava/util/EnumSet;->of(Ljava/lang/Enum;)Ljava/util/EnumSet;

    move-result-object v0

    goto :goto_1

    .line 402
    :cond_1
    invoke-interface {v0, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 404
    .end local v2    # "v":Ljava/lang/Enum;, "TE;"
    :goto_1
    goto :goto_0

    .line 406
    :cond_2
    return-object v0
.end method

.method public static varargs of([Ljava/lang/Enum;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Enum<",
            "TE;>;>([TE;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 385
    .local p0, "values":[Ljava/lang/Enum;, "[TE;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    :goto_0
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->of(Ljava/util/Collection;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 792
    if-nez p0, :cond_0

    .line 793
    return-object p0

    .line 794
    :cond_0
    instance-of v0, p0, Ljava/lang/reflect/UndeclaredThrowableException;

    if-eqz v0, :cond_3

    .line 795
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/UndeclaredThrowableException;

    invoke-virtual {v0}, Ljava/lang/reflect/UndeclaredThrowableException;->getUndeclaredThrowable()Ljava/lang/Throwable;

    move-result-object v0

    .line 798
    .local v0, "wrapped":Ljava/lang/Throwable;
    if-eqz v0, :cond_1

    .line 799
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 802
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 803
    if-eq v0, p0, :cond_2

    .line 804
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 806
    .end local v0    # "wrapped":Ljava/lang/Throwable;
    :cond_2
    goto :goto_1

    :cond_3
    instance-of v0, p0, Ljava/lang/reflect/InvocationTargetException;

    if-eqz v0, :cond_5

    .line 807
    move-object v0, p0

    check-cast v0, Ljava/lang/reflect/InvocationTargetException;

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v0

    .line 808
    .local v0, "target":Ljava/lang/Throwable;
    if-eqz v0, :cond_4

    .line 809
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 811
    .end local v0    # "target":Ljava/lang/Throwable;
    :cond_4
    goto :goto_1

    :cond_5
    instance-of v0, p0, Ljavax/management/ReflectionException;

    if-eqz v0, :cond_7

    .line 812
    move-object v0, p0

    check-cast v0, Ljavax/management/ReflectionException;

    invoke-virtual {v0}, Ljavax/management/ReflectionException;->getTargetException()Ljava/lang/Exception;

    move-result-object v0

    .line 813
    .restart local v0    # "target":Ljava/lang/Throwable;
    if-eqz v0, :cond_6

    .line 814
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 816
    .end local v0    # "target":Ljava/lang/Throwable;
    :cond_6
    goto :goto_1

    :cond_7
    instance-of v0, p0, Ljava/util/concurrent/ExecutionException;

    if-eqz v0, :cond_9

    .line 817
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->resolveExceptionCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 818
    .local v0, "wrapped":Ljava/lang/Throwable;
    if-eqz v0, :cond_8

    .line 819
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 818
    .end local v0    # "wrapped":Ljava/lang/Throwable;
    :cond_8
    goto :goto_0

    .line 821
    :cond_9
    instance-of v0, p0, Ljavax/management/MBeanException;

    if-eqz v0, :cond_a

    .line 822
    move-object v0, p0

    check-cast v0, Ljavax/management/MBeanException;

    invoke-virtual {v0}, Ljavax/management/MBeanException;->getTargetException()Ljava/lang/Exception;

    move-result-object v0

    .line 823
    .local v0, "target":Ljava/lang/Throwable;
    if-eqz v0, :cond_b

    .line 824
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    return-object v1

    .line 821
    .end local v0    # "target":Ljava/lang/Throwable;
    :cond_a
    :goto_0
    nop

    .line 828
    :cond_b
    :goto_1
    return-object p0
.end method

.method public static replaceWhitespaceAndTrim(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "s"    # Ljava/lang/String;

    .line 106
    if-eqz p0, :cond_0

    .line 107
    const/16 v0, 0x9

    const/16 v1, 0x20

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object p0

    .line 110
    :cond_0
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->trimToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static resolveExceptionCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 838
    if-nez p0, :cond_0

    .line 839
    return-object p0

    .line 842
    :cond_0
    invoke-virtual {p0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    .line 843
    .local v0, "c":Ljava/lang/Throwable;
    if-nez v0, :cond_1

    .line 844
    return-object p0

    .line 846
    :cond_1
    return-object v0
.end method

.method public static safeCompare(Ljava/lang/String;Ljava/lang/String;Z)I
    .locals 1
    .param p0, "s1"    # Ljava/lang/String;
    .param p1, "s2"    # Ljava/lang/String;
    .param p2, "caseSensitive"    # Z

    .line 148
    invoke-static {p0, p1}, Lorg/apache/sshd/common/util/GenericUtils;->isSameReference(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 150
    :cond_0
    if-nez p0, :cond_1

    .line 151
    const/4 v0, 0x1

    return v0

    .line 152
    :cond_1
    if-nez p1, :cond_2

    .line 153
    const/4 v0, -0x1

    return v0

    .line 154
    :cond_2
    if-eqz p2, :cond_3

    .line 155
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    .line 157
    :cond_3
    invoke-virtual {p0, p1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static selectMatchingMembers(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 712
    .local p0, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 713
    invoke-interface {v0, p0}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 714
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 712
    return-object v0
.end method

.method public static varargs selectMatchingMembers(Ljava/util/function/Predicate;[Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/function/Predicate<",
            "-TT;>;[TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 698
    .local p0, "acceptor":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-TT;>;"
    .local p1, "values":[Ljava/lang/Object;, "[TT;"
    nop

    .line 699
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty([Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 698
    :goto_0
    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->selectMatchingMembers(Ljava/util/function/Predicate;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static selectNextMatchingValue(Ljava/util/Iterator;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "*>;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 989
    .local p0, "values":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    .local p1, "type":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    const-string v0, "No type selector specified"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 990
    const/4 v0, 0x0

    if-nez p0, :cond_0

    .line 991
    return-object v0

    .line 994
    :cond_0
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 995
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 996
    .local v1, "o":Ljava/lang/Object;
    if-nez v1, :cond_1

    .line 997
    goto :goto_0

    .line 1000
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 1001
    .local v2, "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1, v2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1002
    invoke-virtual {p1, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1004
    .end local v1    # "o":Ljava/lang/Object;
    .end local v2    # "t":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_2
    goto :goto_0

    .line 1006
    :cond_3
    return-object v0
.end method

.method public static size(Ljava/util/Collection;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)I"
        }
    .end annotation

    .line 290
    .local p0, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static size(Ljava/util/Map;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "**>;)I"
        }
    .end annotation

    .line 302
    .local p0, "m":Ljava/util/Map;, "Ljava/util/Map<**>;"
    if-nez p0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {p0}, Ljava/util/Map;->size()I

    move-result v0

    :goto_0
    return v0
.end method

.method public static split(Ljava/lang/String;C)[Ljava/lang/String;
    .locals 5
    .param p0, "s"    # Ljava/lang/String;
    .param p1, "ch"    # C

    .line 203
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 204
    sget-object v0, Lorg/apache/sshd/common/util/GenericUtils;->EMPTY_STRING_ARRAY:[Ljava/lang/String;

    return-object v0

    .line 207
    :cond_0
    const/4 v0, 0x0

    .line 208
    .local v0, "lastPos":I
    invoke-virtual {p0, p1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    .line 209
    .local v1, "curPos":I
    if-gez v1, :cond_1

    .line 210
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    return-object v2

    .line 213
    :cond_1
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 215
    .local v2, "values":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/lang/String;>;"
    :cond_2
    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 216
    .local v3, "v":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 219
    add-int/lit8 v0, v1, 0x1

    .line 220
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v0, v4, :cond_3

    .line 221
    goto :goto_0

    .line 224
    :cond_3
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v1

    .line 225
    if-ge v1, v0, :cond_4

    .line 226
    goto :goto_0

    .line 228
    .end local v3    # "v":Ljava/lang/String;
    :cond_4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-lt v1, v3, :cond_2

    .line 231
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_5

    .line 232
    invoke-virtual {p0, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    .line 233
    .restart local v3    # "v":Ljava/lang/String;
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 236
    .end local v3    # "v":Ljava/lang/String;
    :cond_5
    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v3

    new-array v3, v3, [Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    return-object v3
.end method

.method public static stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;)",
            "Ljava/util/stream/Stream<",
            "TT;>;"
        }
    .end annotation

    .line 531
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 532
    invoke-static {}, Ljava/util/stream/Stream;->empty()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 533
    :cond_0
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_1

    .line 534
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0

    .line 536
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->spliterator()Ljava/util/Spliterator;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/stream/StreamSupport;->stream(Ljava/util/Spliterator;Z)Ljava/util/stream/Stream;

    move-result-object v0

    return-object v0
.end method

.method public static stripDelimiters(Ljava/lang/CharSequence;C)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;
    .param p1, "delim"    # C

    .line 747
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x2

    if-ge v0, v1, :cond_0

    goto :goto_1

    .line 751
    :cond_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    .line 752
    .local v0, "lastPos":I
    const/4 v2, 0x0

    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-ne v2, p1, :cond_2

    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    if-eq v2, p1, :cond_1

    goto :goto_0

    .line 755
    :cond_1
    invoke-interface {p0, v1, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    return-object v1

    .line 753
    :cond_2
    :goto_0
    return-object p0

    .line 748
    .end local v0    # "lastPos":I
    :cond_3
    :goto_1
    return-object p0
.end method

.method public static stripQuotes(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3
    .param p0, "s"    # Ljava/lang/CharSequence;

    .line 725
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 726
    return-object p0

    .line 729
    :cond_0
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    const-string v1, "\"\'"

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v0, v2, :cond_2

    .line 730
    invoke-virtual {v1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 731
    .local v1, "delim":C
    invoke-static {p0, v1}, Lorg/apache/sshd/common/util/GenericUtils;->stripDelimiters(Ljava/lang/CharSequence;C)Ljava/lang/CharSequence;

    move-result-object v2

    .line 732
    .local v2, "v":Ljava/lang/CharSequence;
    if-eq v2, p0, :cond_1

    .line 733
    return-object v2

    .line 729
    .end local v1    # "delim":C
    .end local v2    # "v":Ljava/lang/CharSequence;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 737
    .end local v0    # "index":I
    :cond_2
    return-object p0
.end method

.method public static supplierOf(Ljava/lang/Object;)Ljava/util/function/Supplier;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;)",
            "Ljava/util/function/Supplier<",
            "TT;>;"
        }
    .end annotation

    .line 890
    .local p0, "value":Ljava/lang/Object;, "TT;"
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda8;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda8;-><init>(Ljava/lang/Object;)V

    return-object v0
.end method

.method public static throwingMerger()Ljava/util/function/BinaryOperator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/function/BinaryOperator<",
            "TT;>;"
        }
    .end annotation

    .line 521
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda10;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda10;-><init>()V

    return-object v0
.end method

.method public static toIOException(Ljava/lang/Throwable;)Ljava/io/IOException;
    .locals 1
    .param p0, "e"    # Ljava/lang/Throwable;

    .line 876
    instance-of v0, p0, Ljava/io/IOException;

    if-eqz v0, :cond_0

    .line 877
    move-object v0, p0

    check-cast v0, Ljava/io/IOException;

    return-object v0

    .line 879
    :cond_0
    new-instance v0, Ljava/io/IOException;

    invoke-direct {v0, p0}, Ljava/io/IOException;-><init>(Ljava/lang/Throwable;)V

    return-object v0
.end method

.method public static toRuntimeException(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;
    .locals 1
    .param p0, "t"    # Ljava/lang/Throwable;

    .line 760
    const/4 v0, 0x1

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/GenericUtils;->toRuntimeException(Ljava/lang/Throwable;Z)Ljava/lang/RuntimeException;

    move-result-object v0

    return-object v0
.end method

.method public static toRuntimeException(Ljava/lang/Throwable;Z)Ljava/lang/RuntimeException;
    .locals 2
    .param p0, "t"    # Ljava/lang/Throwable;
    .param p1, "peelThrowable"    # Z

    .line 774
    if-eqz p1, :cond_0

    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    .line 775
    .local v0, "e":Ljava/lang/Throwable;
    :goto_0
    instance-of v1, v0, Ljava/lang/RuntimeException;

    if-eqz v1, :cond_1

    .line 776
    move-object v1, v0

    check-cast v1, Ljava/lang/RuntimeException;

    return-object v1

    .line 779
    :cond_1
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public static toSortedMap(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableMap;
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
            "Ljava/lang/Iterable<",
            "+TT;>;",
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/NavigableMap<",
            "TK;TU;>;"
        }
    .end annotation

    .line 510
    .local p0, "values":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    .local p1, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p2, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p3, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-static {p1, p2, p3}, Lorg/apache/sshd/common/util/GenericUtils;->toSortedMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public static toSortedMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/stream/Collector;
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
            "Ljava/util/function/Function<",
            "-TT;+TK;>;",
            "Ljava/util/function/Function<",
            "-TT;+TU;>;",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/NavigableMap<",
            "TK;TU;>;>;"
        }
    .end annotation

    .line 517
    .local p0, "keyMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TK;>;"
    .local p1, "valueMapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TT;+TU;>;"
    .local p2, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/GenericUtils;->throwingMerger()Ljava/util/function/BinaryOperator;

    move-result-object v0

    new-instance v1, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda5;

    invoke-direct {v1, p2}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda5;-><init>(Ljava/util/Comparator;)V

    invoke-static {p0, p1, v0, v1}, Ljava/util/stream/Collectors;->toMap(Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/function/BinaryOperator;Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static toSortedSet(Ljava/util/Comparator;)Ljava/util/stream/Collector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TT;>;)",
            "Ljava/util/stream/Collector<",
            "TT;*",
            "Ljava/util/NavigableSet<",
            "TT;>;>;"
        }
    .end annotation

    .line 527
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TT;>;"
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda1;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/stream/Collectors;->toCollection(Ljava/util/function/Supplier;)Ljava/util/stream/Collector;

    move-result-object v0

    return-object v0
.end method

.method public static trimToEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "s"    # Ljava/lang/String;

    .line 98
    if-nez p0, :cond_0

    .line 99
    const-string v0, ""

    return-object v0

    .line 101
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/Collection;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 546
    .local p0, "values":Ljava/util/Collection;, "Ljava/util/Collection<+TT;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 547
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 549
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableList(Ljava/util/stream/Stream;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/stream/Stream<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 554
    .local p0, "values":Ljava/util/stream/Stream;, "Ljava/util/stream/Stream<TT;>;"
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static varargs unmodifiableList([Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 542
    .local p0, "values":[Ljava/lang/Object;, "[TT;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->unmodifiableList(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static wrapIterable(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TU;>;",
            "Ljava/util/function/Function<",
            "-TU;+TV;>;)",
            "Ljava/lang/Iterable<",
            "TV;>;"
        }
    .end annotation

    .line 955
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TU;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TU;+TV;>;"
    new-instance v0, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0, p1}, Lorg/apache/sshd/common/util/GenericUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Iterable;Ljava/util/function/Function;)V

    return-object v0
.end method

.method public static wrapIterator(Ljava/lang/Iterable;Ljava/util/function/Function;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TU;>;",
            "Ljava/util/function/Function<",
            "-TU;+TV;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 961
    .local p0, "iter":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TU;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TU;+TV;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->stream(Ljava/lang/Iterable;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/stream/Stream;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public static wrapIterator(Ljava/util/Iterator;Ljava/util/function/Function;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<U:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "+TU;>;",
            "Ljava/util/function/Function<",
            "-TU;+TV;>;)",
            "Ljava/util/Iterator<",
            "TV;>;"
        }
    .end annotation

    .line 966
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<+TU;>;"
    .local p1, "mapper":Ljava/util/function/Function;, "Ljava/util/function/Function<-TU;+TV;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->iteratorOf(Ljava/util/Iterator;)Ljava/util/Iterator;

    move-result-object v0

    .line 967
    .local v0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TU;>;"
    new-instance v1, Lorg/apache/sshd/common/util/GenericUtils$1;

    invoke-direct {v1, v0, p1}, Lorg/apache/sshd/common/util/GenericUtils$1;-><init>(Ljava/util/Iterator;Ljava/util/function/Function;)V

    return-object v1
.end method
