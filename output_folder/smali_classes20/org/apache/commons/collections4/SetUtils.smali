.class public Lorg/apache/commons/collections4/SetUtils;
.super Ljava/lang/Object;
.source "SetUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/SetUtils$SetView;
    }
.end annotation


# static fields
.field public static final EMPTY_SORTED_SET:Ljava/util/SortedSet;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 63
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    .line 64
    invoke-static {v0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/SetUtils;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    .line 63
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static difference(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/SetUtils$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 485
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 489
    new-instance v0, Lorg/apache/commons/collections4/SetUtils$2;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/SetUtils$2;-><init>(Ljava/util/Set;)V

    .line 496
    .local v0, "notContainedInB":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/SetUtils$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/commons/collections4/SetUtils$3;-><init>(Ljava/util/Set;Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1

    .line 486
    .end local v0    # "notContainedInB":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Sets must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static disjunction(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/SetUtils$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 564
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 568
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/SetUtils;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;

    move-result-object v0

    .line 569
    .local v0, "aMinusB":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    invoke-static {p1, p0}, Lorg/apache/commons/collections4/SetUtils;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;

    move-result-object v1

    .line 571
    .local v1, "bMinusA":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    new-instance v2, Lorg/apache/commons/collections4/SetUtils$6;

    invoke-direct {v2, p0, p1, v0, v1}, Lorg/apache/commons/collections4/SetUtils$6;-><init>(Ljava/util/Set;Ljava/util/Set;Lorg/apache/commons/collections4/SetUtils$SetView;Lorg/apache/commons/collections4/SetUtils$SetView;)V

    return-object v2

    .line 565
    .end local v0    # "aMinusB":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    .end local v1    # "bMinusA":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Sets must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static emptyIfNull(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TT;>;)",
            "Ljava/util/Set<",
            "TT;>;"
        }
    .end annotation

    .line 92
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static emptySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 55
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static emptySortedSet()Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 73
    sget-object v0, Lorg/apache/commons/collections4/SetUtils;->EMPTY_SORTED_SET:Ljava/util/SortedSet;

    return-object v0
.end method

.method public static hashCodeForSet(Ljava/util/Collection;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)I"
        }
    .end annotation

    .line 148
    .local p0, "set":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    .line 149
    const/4 v0, 0x0

    return v0

    .line 152
    :cond_0
    const/4 v0, 0x0

    .line 153
    .local v0, "hashCode":I
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 154
    .local v2, "obj":Ljava/lang/Object;, "TT;"
    if-eqz v2, :cond_1

    .line 155
    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    .line 157
    .end local v2    # "obj":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 158
    :cond_2
    return v0
.end method

.method public static intersection(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/SetUtils$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 523
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 527
    new-instance v0, Lorg/apache/commons/collections4/SetUtils$4;

    invoke-direct {v0, p1}, Lorg/apache/commons/collections4/SetUtils$4;-><init>(Ljava/util/Set;)V

    .line 534
    .local v0, "containedInB":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/SetUtils$5;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/commons/collections4/SetUtils$5;-><init>(Ljava/util/Set;Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)V

    return-object v1

    .line 524
    .end local v0    # "containedInB":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Sets must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isEqualSet(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 124
    .local p0, "set1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "set2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-ne p0, p1, :cond_0

    .line 125
    const/4 v0, 0x1

    return v0

    .line 127
    :cond_0
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_1

    goto :goto_0

    .line 131
    :cond_1
    invoke-interface {p0, p1}, Ljava/util/Collection;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 128
    :cond_2
    :goto_0
    const/4 v0, 0x0

    return v0
.end method

.method public static newIdentityHashSet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 181
    new-instance v0, Ljava/util/IdentityHashMap;

    invoke-direct {v0}, Ljava/util/IdentityHashMap;-><init>()V

    invoke-static {v0}, Ljava/util/Collections;->newSetFromMap(Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static orderedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 279
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/set/ListOrderedSet;->listOrderedSet(Ljava/util/Set;)Lorg/apache/commons/collections4/set/ListOrderedSet;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 399
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/PredicatedNavigableSet;->predicatedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedNavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 242
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/PredicatedSet;->predicatedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedSet;

    move-result-object v0

    return-object v0
.end method

.method public static predicatedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 341
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/PredicatedSortedSet;->predicatedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/set/PredicatedSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 210
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 308
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0}, Ljava/util/Collections;->synchronizedSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static transformedNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 421
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/TransformedNavigableSet;->transformingNavigableSet(Ljava/util/NavigableSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedNavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 263
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;->transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;

    move-result-object v0

    return-object v0
.end method

.method public static transformedSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 362
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/set/TransformedSortedSet;->transformingSortedSet(Ljava/util/SortedSet;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSortedSet;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Lorg/apache/commons/collections4/SetUtils$SetView<",
            "TE;>;"
        }
    .end annotation

    .line 441
    .local p0, "a":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    .local p1, "b":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 445
    invoke-static {p1, p0}, Lorg/apache/commons/collections4/SetUtils;->difference(Ljava/util/Set;Ljava/util/Set;)Lorg/apache/commons/collections4/SetUtils$SetView;

    move-result-object v0

    .line 447
    .local v0, "bMinusA":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    new-instance v1, Lorg/apache/commons/collections4/SetUtils$1;

    invoke-direct {v1, p0, p1, v0}, Lorg/apache/commons/collections4/SetUtils$1;-><init>(Ljava/util/Set;Ljava/util/Set;Lorg/apache/commons/collections4/SetUtils$SetView;)V

    return-object v1

    .line 442
    .end local v0    # "bMinusA":Lorg/apache/commons/collections4/SetUtils$SetView;, "Lorg/apache/commons/collections4/SetUtils$SetView<TE;>;"
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Sets must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/NavigableSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 379
    .local p0, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/set/UnmodifiableNavigableSet;->unmodifiableNavigableSet(Ljava/util/NavigableSet;)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 224
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<+TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSet;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;)",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 322
    .local p0, "set":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/set/UnmodifiableSortedSet;->unmodifiableSortedSet(Ljava/util/SortedSet;)Ljava/util/SortedSet;

    move-result-object v0

    return-object v0
.end method
