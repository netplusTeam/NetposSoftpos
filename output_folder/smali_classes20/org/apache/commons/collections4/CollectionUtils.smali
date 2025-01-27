.class public Lorg/apache/commons/collections4/CollectionUtils;
.super Ljava/lang/Object;
.source "CollectionUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;,
        Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;,
        Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;
    }
.end annotation


# static fields
.field public static final EMPTY_COLLECTION:Ljava/util/Collection;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 182
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    sput-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 187
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addAll(Ljava/util/Collection;Ljava/lang/Iterable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/lang/Iterable<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1140
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TC;>;"
    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    .line 1141
    move-object v0, p1

    check-cast v0, Ljava/util/Collection;

    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    move-result v0

    return v0

    .line 1143
    :cond_0
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z

    move-result v0

    return v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Enumeration;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Enumeration<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1173
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "enumeration":Ljava/util/Enumeration;, "Ljava/util/Enumeration<+TC;>;"
    const/4 v0, 0x0

    .line 1174
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1175
    invoke-interface {p1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1177
    :cond_0
    return v0
.end method

.method public static addAll(Ljava/util/Collection;Ljava/util/Iterator;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Iterator<",
            "+TC;>;)Z"
        }
    .end annotation

    .line 1156
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TC;>;"
    const/4 v0, 0x0

    .line 1157
    .local v0, "changed":Z
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1158
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {p0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v1

    or-int/2addr v0, v1

    goto :goto_0

    .line 1160
    :cond_0
    return v0
.end method

.method public static varargs addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;[TC;)Z"
        }
    .end annotation

    .line 1190
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "elements":[Ljava/lang/Object;, "[TC;"
    const/4 v0, 0x0

    .line 1191
    .local v0, "changed":Z
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_0

    aget-object v3, p1, v2

    .line 1192
    .local v3, "element":Ljava/lang/Object;, "TC;"
    invoke-interface {p0, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v4

    or-int/2addr v0, v4

    .line 1191
    .end local v3    # "element":Ljava/lang/Object;, "TC;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1194
    :cond_0
    return v0
.end method

.method public static addIgnoreNull(Ljava/util/Collection;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;TT;)Z"
        }
    .end annotation

    .line 1122
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    .local p1, "object":Ljava/lang/Object;, "TT;"
    if-eqz p0, :cond_1

    .line 1125
    if-eqz p1, :cond_0

    invoke-interface {p0, p1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1123
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static cardinality(Ljava/lang/Object;Ljava/lang/Iterable;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(TO;",
            "Ljava/lang/Iterable<",
            "-TO;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 649
    .local p0, "obj":Ljava/lang/Object;, "TO;"
    .local p1, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<-TO;>;"
    if-eqz p1, :cond_0

    .line 652
    invoke-static {p1, p0}, Lorg/apache/commons/collections4/IterableUtils;->frequency(Ljava/lang/Iterable;Ljava/lang/Object;)I

    move-result v0

    return v0

    .line 650
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "coll must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static checkIndexBounds(I)V
    .locals 3
    .param p0, "index"    # I

    .line 1223
    if-ltz p0, :cond_0

    .line 1226
    return-void

    .line 1224
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Index cannot be negative: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1540
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1580
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TO;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;
    .locals 6
    .param p3, "includeDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/util/Comparator<",
            "-TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1602
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "c":Ljava/util/Comparator;, "Ljava/util/Comparator<-TO;>;"
    if-eqz p0, :cond_6

    if-eqz p1, :cond_6

    .line 1605
    if-eqz p2, :cond_5

    .line 1610
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    instance-of v0, p1, Ljava/util/Collection;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 1611
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    move-object v2, p1

    check-cast v2, Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->size()I

    move-result v2

    add-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    goto :goto_0

    :cond_0
    const/16 v0, 0xa

    .line 1613
    .local v0, "totalSize":I
    :goto_0
    new-instance v1, Lorg/apache/commons/collections4/iterators/CollatingIterator;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    invoke-direct {v1, p2, v2, v3}, Lorg/apache/commons/collections4/iterators/CollatingIterator;-><init>(Ljava/util/Comparator;Ljava/util/Iterator;Ljava/util/Iterator;)V

    .line 1614
    .local v1, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TO;>;"
    if-eqz p3, :cond_1

    .line 1615
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->toList(Ljava/util/Iterator;I)Ljava/util/List;

    move-result-object v2

    return-object v2

    .line 1617
    :cond_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1619
    .local v2, "mergedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    const/4 v3, 0x0

    .line 1620
    .local v3, "lastItem":Ljava/lang/Object;, "TO;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 1621
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1622
    .local v4, "item":Ljava/lang/Object;, "TO;"
    if-eqz v3, :cond_2

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 1623
    :cond_2
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1625
    :cond_3
    move-object v3, v4

    .line 1626
    .end local v4    # "item":Ljava/lang/Object;, "TO;"
    goto :goto_1

    .line 1628
    :cond_4
    invoke-virtual {v2}, Ljava/util/ArrayList;->trimToSize()V

    .line 1629
    return-object v2

    .line 1606
    .end local v0    # "totalSize":I
    .end local v1    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TO;>;"
    .end local v2    # "mergedList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    .end local v3    # "lastItem":Ljava/lang/Object;, "TO;"
    :cond_5
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The comparator must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1603
    :cond_6
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collections must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Z)Ljava/util/List;
    .locals 1
    .param p2, "includeDuplicates"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O::",
            "Ljava/lang/Comparable<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;Z)",
            "Ljava/util/List<",
            "TO;>;"
        }
    .end annotation

    .line 1561
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/ComparatorUtils;->naturalComparator()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p0, p1, v0, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collate(Ljava/lang/Iterable;Ljava/lang/Iterable;Ljava/util/Comparator;Z)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1032
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 1033
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1034
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    .line 1074
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_0

    .line 1075
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0

    .line 1077
    :cond_0
    return-object p2
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 1051
    .local p0, "inputIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method

.method public static collect(Ljava/util/Iterator;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/util/Iterator<",
            "+TI;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TI;+TO;>;TR;)TR;"
        }
    .end annotation

    .line 1100
    .local p0, "inputIterator":Ljava/util/Iterator;, "Ljava/util/Iterator<+TI;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TI;+TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 1101
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1102
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 1103
    .local v0, "item":Ljava/lang/Object;, "TI;"
    invoke-interface {p1, v0}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1104
    .local v1, "value":Ljava/lang/Object;, "TO;"
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1105
    .end local v0    # "item":Ljava/lang/Object;, "TI;"
    .end local v1    # "value":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 1107
    :cond_0
    return-object p2
.end method

.method public static containsAll(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 369
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 370
    return v1

    .line 372
    :cond_0
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 373
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 374
    .local v2, "elementsAlreadySeen":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/Object;>;"
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 375
    .local v4, "nextElement":Ljava/lang/Object;
    invoke-interface {v2, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 376
    goto :goto_0

    .line 379
    :cond_1
    const/4 v5, 0x0

    .line 380
    .local v5, "foundCurrentElement":Z
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 381
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    .line 382
    .local v6, "p":Ljava/lang/Object;
    invoke-interface {v2, v6}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 383
    if-nez v4, :cond_2

    if-nez v6, :cond_3

    goto :goto_2

    :cond_2
    invoke-virtual {v4, v6}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 384
    :goto_2
    const/4 v5, 0x1

    .line 385
    goto :goto_3

    .line 387
    .end local v6    # "p":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 389
    :cond_4
    :goto_3
    if-nez v5, :cond_5

    .line 390
    const/4 v1, 0x0

    return v1

    .line 392
    .end local v4    # "nextElement":Ljava/lang/Object;
    .end local v5    # "foundCurrentElement":Z
    :cond_5
    goto :goto_0

    .line 393
    :cond_6
    return v1
.end method

.method public static containsAny(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 439
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x1

    if-ge v0, v1, :cond_2

    .line 440
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 441
    .local v1, "aColl1":Ljava/lang/Object;
    invoke-interface {p1, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 442
    return v2

    .line 444
    .end local v1    # "aColl1":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 446
    :cond_2
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 447
    .local v1, "aColl2":Ljava/lang/Object;
    invoke-interface {p0, v1}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 448
    return v2

    .line 450
    .end local v1    # "aColl2":Ljava/lang/Object;
    :cond_3
    goto :goto_1

    .line 452
    :cond_4
    :goto_2
    const/4 v0, 0x0

    return v0
.end method

.method public static varargs containsAny(Ljava/util/Collection;[Ljava/lang/Object;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "*>;[TT;)Z"
        }
    .end annotation

    .line 410
    .local p0, "coll1":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "coll2":[Ljava/lang/Object;, "[TT;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ge v0, v1, :cond_2

    .line 411
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 412
    .local v1, "aColl1":Ljava/lang/Object;
    invoke-static {p1, v1}, Lorg/apache/commons/collections4/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 413
    return v3

    .line 415
    .end local v1    # "aColl1":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    :cond_1
    goto :goto_2

    .line 417
    :cond_2
    array-length v0, p1

    move v1, v2

    :goto_1
    if-ge v1, v0, :cond_4

    aget-object v4, p1, v1

    .line 418
    .local v4, "aColl2":Ljava/lang/Object;
    invoke-interface {p0, v4}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 419
    return v3

    .line 417
    .end local v4    # "aColl2":Ljava/lang/Object;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 423
    :cond_4
    :goto_2
    return v2
.end method

.method public static countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)I"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 840
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->countMatches(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)J

    move-result-wide v0

    long-to-int v0, v0

    :goto_0
    return v0
.end method

.method public static disjunction(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 282
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 283
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 284
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v4

    sub-int/2addr v3, v4

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 285
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 286
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static emptyCollection()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 199
    sget-object v0, Lorg/apache/commons/collections4/CollectionUtils;->EMPTY_COLLECTION:Ljava/util/Collection;

    return-object v0
.end method

.method public static emptyIfNull(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TT;>;)",
            "Ljava/util/Collection<",
            "TT;>;"
        }
    .end annotation

    .line 211
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TT;>;"
    if-nez p0, :cond_0

    invoke-static {}, Lorg/apache/commons/collections4/CollectionUtils;->emptyCollection()Ljava/util/Collection;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method

.method public static exists(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 857
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAny(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static extractSingleton(Ljava/util/Collection;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)TE;"
        }
    .end annotation

    .line 1908
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    if-eqz p0, :cond_1

    .line 1911
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1914
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1912
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can extract singleton only when collection size == 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1909
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Collection must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 762
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    const/4 v0, 0x0

    .line 763
    .local v0, "result":Z
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 764
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 765
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 766
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 767
    const/4 v0, 0x1

    goto :goto_0

    .line 771
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    :cond_1
    return v0
.end method

.method public static filterInverse(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)Z"
        }
    .end annotation

    .line 789
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/apache/commons/collections4/PredicateUtils;->notPredicate(Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    :goto_0
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->filter(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    return v0
.end method

.method public static find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TT;>;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 669
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TT;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->find(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllButLastDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 729
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->forEachButLast(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllButLastDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 747
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEachButLast(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public static forAllDo(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/lang/Iterable<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 686
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    .line 687
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->forEach(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Closure;)V

    .line 689
    :cond_0
    return-object p1
.end method

.method public static forAllDo(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)Lorg/apache/commons/collections4/Closure;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            "C::",
            "Lorg/apache/commons/collections4/Closure<",
            "-TT;>;>(",
            "Ljava/util/Iterator<",
            "TT;>;TC;)TC;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 707
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    .local p1, "closure":Lorg/apache/commons/collections4/Closure;, "TC;"
    if-eqz p1, :cond_0

    .line 708
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->forEach(Ljava/util/Iterator;Lorg/apache/commons/collections4/Closure;)V

    .line 710
    :cond_0
    return-object p1
.end method

.method public static get(Ljava/lang/Iterable;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1243
    .local p0, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;
    .param p1, "index"    # I

    .line 1277
    move v0, p1

    .line 1278
    .local v0, "i":I
    if-ltz v0, :cond_6

    .line 1281
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 1282
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    .line 1283
    .local v1, "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 1284
    .local v2, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v2, v0}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v3

    return-object v3

    .line 1285
    .end local v1    # "map":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .end local v2    # "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_0
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_1

    .line 1286
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    aget-object v1, v1, v0

    return-object v1

    .line 1287
    :cond_1
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_2

    .line 1288
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    .line 1289
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1290
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 1291
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    .line 1292
    .local v1, "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/IterableUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1293
    .end local v1    # "iterable":Ljava/lang/Iterable;, "Ljava/lang/Iterable<*>;"
    :cond_3
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_4

    .line 1294
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 1295
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    invoke-static {v1, v0}, Lorg/apache/commons/collections4/EnumerationUtils;->get(Ljava/util/Enumeration;I)Ljava/lang/Object;

    move-result-object v2

    return-object v2

    .line 1296
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_4
    if-eqz p0, :cond_5

    .line 1300
    :try_start_0
    invoke-static {p0, v0}, Ljava/lang/reflect/Array;->get(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1301
    :catch_0
    move-exception v1

    .line 1302
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1297
    .end local v1    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_5
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Unsupported object type: null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1279
    :cond_6
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Index cannot be negative: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static get(Ljava/util/Iterator;I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TT;>;I)TT;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1214
    .local p0, "iterator":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IteratorUtils;->get(Ljava/util/Iterator;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static get(Ljava/util/Map;I)Ljava/util/Map$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;I)",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 1319
    .local p0, "map":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-static {p1}, Lorg/apache/commons/collections4/CollectionUtils;->checkIndexBounds(I)V

    .line 1320
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->get(Ljava/lang/Iterable;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    return-object v0
.end method

.method public static getCardinalityMap(Ljava/lang/Iterable;)Ljava/util/Map;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Map<",
            "TO;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 468
    .local p0, "coll":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 469
    .local v0, "count":Ljava/util/Map;, "Ljava/util/Map<TO;Ljava/lang/Integer;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 470
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 471
    .local v3, "c":Ljava/lang/Integer;
    const/4 v4, 0x1

    if-nez v3, :cond_0

    .line 472
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 474
    :cond_0
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v5

    add-int/2addr v5, v4

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v0, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 476
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    .end local v3    # "c":Ljava/lang/Integer;
    :goto_1
    goto :goto_0

    .line 477
    :cond_1
    return-object v0
.end method

.method public static intersection(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 254
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 255
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 256
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->min(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 257
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 258
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
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

    .line 1426
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    if-eqz p0, :cond_1

    invoke-interface {p0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

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

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 540
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    .line 541
    return v2

    .line 543
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 544
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Ljava/lang/Object;>;"
    iget-object v1, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    iget-object v3, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityB:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->size()I

    move-result v3

    if-eq v1, v3, :cond_1

    .line 545
    return v2

    .line 547
    :cond_1
    iget-object v1, v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->cardinalityA:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 548
    .local v3, "obj":Ljava/lang/Object;
    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v4

    invoke-virtual {v0, v3}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v5

    if-eq v4, v5, :cond_2

    .line 549
    return v2

    .line 551
    .end local v3    # "obj":Ljava/lang/Object;
    :cond_2
    goto :goto_0

    .line 552
    :cond_3
    const/4 v1, 0x1

    return v1
.end method

.method public static isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;Lorg/apache/commons/collections4/Equator;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Ljava/util/Collection<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 579
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    if-eqz p2, :cond_1

    .line 583
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 584
    const/4 v0, 0x0

    return v0

    .line 588
    :cond_0
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$1;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$1;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 595
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;*>;"
    invoke-static {p0, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v1

    invoke-static {p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/apache/commons/collections4/CollectionUtils;->isEqualCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v1

    return v1

    .line 580
    .end local v0    # "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;*>;"
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Equator must not be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static isFull(Ljava/util/Collection;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)Z"
        }
    .end annotation

    .line 1478
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 1481
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1482
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result v0

    return v0

    .line 1485
    :cond_0
    nop

    .line 1486
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    .line 1487
    .local v0, "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->isFull()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1488
    .end local v0    # "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    :catch_0
    move-exception v0

    .line 1489
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, 0x0

    return v1

    .line 1479
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
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

    .line 1439
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/CollectionUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public static isProperSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
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

    .line 524
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {p0}, Ljava/util/Collection;->size()I

    move-result v0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static isSubCollection(Ljava/util/Collection;Ljava/util/Collection;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 493
    .local p0, "a":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    .local p1, "b":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 494
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper<Ljava/lang/Object;>;"
    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 495
    .local v2, "obj":Ljava/lang/Object;
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqA(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$CardinalityHelper;->freqB(Ljava/lang/Object;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 496
    const/4 v1, 0x0

    return v1

    .line 498
    .end local v2    # "obj":Ljava/lang/Object;
    :cond_0
    goto :goto_0

    .line 499
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method public static matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)Z"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 877
    .local p0, "input":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    if-eqz p1, :cond_0

    invoke-static {p0, p1}, Lorg/apache/commons/collections4/IterableUtils;->matchesAll(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public static maxSize(Ljava/util/Collection;)I
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+",
            "Ljava/lang/Object;",
            ">;)I"
        }
    .end annotation

    .line 1509
    .local p0, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/Object;>;"
    if-eqz p0, :cond_1

    .line 1512
    instance-of v0, p0, Lorg/apache/commons/collections4/BoundedCollection;

    if-eqz v0, :cond_0

    .line 1513
    move-object v0, p0

    check-cast v0, Lorg/apache/commons/collections4/BoundedCollection;

    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v0

    return v0

    .line 1516
    :cond_0
    nop

    .line 1517
    :try_start_0
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableBoundedCollection;->unmodifiableBoundedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/BoundedCollection;

    move-result-object v0

    .line 1518
    .local v0, "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    invoke-interface {v0}, Lorg/apache/commons/collections4/BoundedCollection;->maxSize()I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 1519
    .end local v0    # "bcoll":Lorg/apache/commons/collections4/BoundedCollection;, "Lorg/apache/commons/collections4/BoundedCollection<*>;"
    :catch_0
    move-exception v0

    .line 1520
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    const/4 v1, -0x1

    return v1

    .line 1510
    .end local v0    # "ex":Ljava/lang/IllegalArgumentException;
    :cond_1
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "The collection must not be null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static permutations(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;)",
            "Ljava/util/Collection<",
            "Ljava/util/List<",
            "TE;>;>;"
        }
    .end annotation

    .line 1653
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/iterators/PermutationIterator;

    invoke-direct {v0, p0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;-><init>(Ljava/util/Collection;)V

    .line 1654
    .local v0, "it":Lorg/apache/commons/collections4/iterators/PermutationIterator;, "Lorg/apache/commons/collections4/iterators/PermutationIterator<TE;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1655
    .local v1, "result":Ljava/util/Collection;, "Ljava/util/Collection<Ljava/util/List<TE;>;>;"
    :goto_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1656
    invoke-virtual {v0}, Lorg/apache/commons/collections4/iterators/PermutationIterator;->next()Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1658
    :cond_0
    return-object v1
.end method

.method public static predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1874
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TC;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/PredicatedCollection;->predicatedCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Predicate;)Lorg/apache/commons/collections4/collection/PredicatedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static removeAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1793
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "remove":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$3;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$3;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 1800
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1801
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1803
    .local v1, "removeSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1804
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1805
    .local v4, "element":Ljava/lang/Object;, "TE;"
    new-instance v5, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    invoke-direct {v5, p2, v4}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1806
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1808
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1809
    :cond_1
    return-object v2
.end method

.method public static removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1760
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "remove":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->removeAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static retainAll(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Equator;)Ljava/util/Collection;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "TE;>;",
            "Ljava/lang/Iterable<",
            "+TE;>;",
            "Lorg/apache/commons/collections4/Equator<",
            "-TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1717
    .local p0, "collection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<TE;>;"
    .local p1, "retain":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TE;>;"
    .local p2, "equator":Lorg/apache/commons/collections4/Equator;, "Lorg/apache/commons/collections4/Equator<-TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$2;

    invoke-direct {v0, p2}, Lorg/apache/commons/collections4/CollectionUtils$2;-><init>(Lorg/apache/commons/collections4/Equator;)V

    .line 1724
    .local v0, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<TE;Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 1725
    invoke-static {p1, v0, v1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    .line 1727
    .local v1, "retainSet":Ljava/util/Set;, "Ljava/util/Set<Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper<TE;>;>;"
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1728
    .local v2, "list":Ljava/util/List;, "Ljava/util/List<TE;>;"
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 1729
    .local v4, "element":Ljava/lang/Object;, "TE;"
    new-instance v5, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;

    invoke-direct {v5, p2, v4}, Lorg/apache/commons/collections4/CollectionUtils$EquatorWrapper;-><init>(Lorg/apache/commons/collections4/Equator;Ljava/lang/Object;)V

    invoke-interface {v1, v5}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 1730
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1732
    .end local v4    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    goto :goto_0

    .line 1733
    :cond_1
    return-object v2
.end method

.method public static retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Ljava/util/Collection<",
            "*>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .line 1685
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "retain":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/ListUtils;->retainAll(Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public static reverseArray([Ljava/lang/Object;)V
    .locals 4
    .param p0, "array"    # [Ljava/lang/Object;

    .line 1449
    const/4 v0, 0x0

    .line 1450
    .local v0, "i":I
    array-length v1, p0

    add-int/lit8 v1, v1, -0x1

    .line 1453
    .local v1, "j":I
    :goto_0
    if-le v1, v0, :cond_0

    .line 1454
    aget-object v2, p0, v1

    .line 1455
    .local v2, "tmp":Ljava/lang/Object;
    aget-object v3, p0, v0

    aput-object v3, p0, v1

    .line 1456
    aput-object v2, p0, v0

    .line 1457
    add-int/lit8 v1, v1, -0x1

    .line 1458
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1460
    .end local v2    # "tmp":Ljava/lang/Object;
    :cond_0
    return-void
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 894
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 895
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 896
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    .line 917
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 918
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 919
    .local v1, "item":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 920
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 922
    .end local v1    # "item":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 924
    :cond_1
    return-object p2
.end method

.method public static select(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;TR;)TR;"
        }
    .end annotation

    .line 957
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    .local p3, "rejectedCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 958
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 959
    .local v1, "element":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 960
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 962
    :cond_0
    invoke-interface {p3, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 964
    .end local v1    # "element":Ljava/lang/Object;, "TO;"
    :goto_1
    goto :goto_0

    .line 966
    :cond_1
    return-object p2
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 984
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    instance-of v0, p0, Ljava/util/Collection;

    if-eqz v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    .line 985
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 986
    .local v0, "answer":Ljava/util/Collection;, "Ljava/util/Collection<TO;>;"
    :goto_0
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static selectRejected(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;Ljava/util/Collection;)Ljava/util/Collection;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/util/Collection<",
            "-TO;>;>(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "-TO;>;TR;)TR;"
        }
    .end annotation

    .line 1007
    .local p0, "inputCollection":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "predicate":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<-TO;>;"
    .local p2, "outputCollection":Ljava/util/Collection;, "TR;"
    if-eqz p0, :cond_1

    if-eqz p1, :cond_1

    .line 1008
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1009
    .local v1, "item":Ljava/lang/Object;, "TO;"
    invoke-interface {p1, v1}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1010
    invoke-interface {p2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1012
    .end local v1    # "item":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 1014
    :cond_1
    return-object p2
.end method

.method public static size(Ljava/lang/Object;)I
    .locals 5
    .param p0, "object"    # Ljava/lang/Object;

    .line 1341
    if-nez p0, :cond_0

    .line 1342
    const/4 v0, 0x0

    return v0

    .line 1344
    :cond_0
    const/4 v0, 0x0

    .line 1345
    .local v0, "total":I
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 1346
    move-object v1, p0

    check-cast v1, Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v0

    goto :goto_1

    .line 1347
    :cond_1
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_2

    .line 1348
    move-object v1, p0

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v0

    goto :goto_1

    .line 1349
    :cond_2
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_3

    .line 1350
    move-object v1, p0

    check-cast v1, Ljava/lang/Iterable;

    invoke-static {v1}, Lorg/apache/commons/collections4/IterableUtils;->size(Ljava/lang/Iterable;)I

    move-result v0

    goto :goto_1

    .line 1351
    :cond_3
    instance-of v1, p0, [Ljava/lang/Object;

    if-eqz v1, :cond_4

    .line 1352
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v0, v1

    goto :goto_1

    .line 1353
    :cond_4
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_5

    .line 1354
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    invoke-static {v1}, Lorg/apache/commons/collections4/IteratorUtils;->size(Ljava/util/Iterator;)I

    move-result v0

    goto :goto_1

    .line 1355
    :cond_5
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_7

    .line 1356
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    .line 1357
    .local v1, "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 1358
    add-int/lit8 v0, v0, 0x1

    .line 1359
    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    goto :goto_0

    .line 1361
    .end local v1    # "it":Ljava/util/Enumeration;, "Ljava/util/Enumeration<*>;"
    :cond_6
    goto :goto_1

    .line 1363
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v1

    .line 1366
    nop

    .line 1368
    :goto_1
    return v0

    .line 1364
    :catch_0
    move-exception v1

    .line 1365
    .local v1, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unsupported object type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static sizeIsEmpty(Ljava/lang/Object;)Z
    .locals 4
    .param p0, "object"    # Ljava/lang/Object;

    .line 1392
    const/4 v0, 0x1

    if-nez p0, :cond_0

    .line 1393
    return v0

    .line 1394
    :cond_0
    instance-of v1, p0, Ljava/util/Collection;

    if-eqz v1, :cond_1

    .line 1395
    move-object v0, p0

    check-cast v0, Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    return v0

    .line 1396
    :cond_1
    instance-of v1, p0, Ljava/lang/Iterable;

    if-eqz v1, :cond_2

    .line 1397
    move-object v0, p0

    check-cast v0, Ljava/lang/Iterable;

    invoke-static {v0}, Lorg/apache/commons/collections4/IterableUtils;->isEmpty(Ljava/lang/Iterable;)Z

    move-result v0

    return v0

    .line 1398
    :cond_2
    instance-of v1, p0, Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 1399
    move-object v0, p0

    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0

    .line 1400
    :cond_3
    instance-of v1, p0, [Ljava/lang/Object;

    const/4 v2, 0x0

    if-eqz v1, :cond_5

    .line 1401
    move-object v1, p0

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    array-length v1, v1

    if-nez v1, :cond_4

    goto :goto_0

    :cond_4
    move v0, v2

    :goto_0
    return v0

    .line 1402
    :cond_5
    instance-of v1, p0, Ljava/util/Iterator;

    if-eqz v1, :cond_6

    .line 1403
    move-object v1, p0

    check-cast v1, Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1404
    :cond_6
    instance-of v1, p0, Ljava/util/Enumeration;

    if-eqz v1, :cond_7

    .line 1405
    move-object v1, p0

    check-cast v1, Ljava/util/Enumeration;

    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v1

    xor-int/2addr v0, v1

    return v0

    .line 1408
    :cond_7
    :try_start_0
    invoke-static {p0}, Ljava/lang/reflect/Array;->getLength(Ljava/lang/Object;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move v0, v2

    :goto_1
    return v0

    .line 1409
    :catch_0
    move-exception v0

    .line 1410
    .local v0, "ex":Ljava/lang/IllegalArgumentException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported object type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 303
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    invoke-static {}, Lorg/apache/commons/collections4/functors/TruePredicate;->truePredicate()Lorg/apache/commons/collections4/Predicate;

    move-result-object v0

    .line 304
    .local v0, "p":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TO;>;"
    invoke-static {p0, p1, v0}, Lorg/apache/commons/collections4/CollectionUtils;->subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static subtract(Ljava/lang/Iterable;Ljava/lang/Iterable;Lorg/apache/commons/collections4/Predicate;)Ljava/util/Collection;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Lorg/apache/commons/collections4/Predicate<",
            "TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 331
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p2, "p":Lorg/apache/commons/collections4/Predicate;, "Lorg/apache/commons/collections4/Predicate<TO;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 332
    .local v0, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<TO;>;"
    new-instance v1, Lorg/apache/commons/collections4/bag/HashBag;

    invoke-direct {v1}, Lorg/apache/commons/collections4/bag/HashBag;-><init>()V

    .line 333
    .local v1, "bag":Lorg/apache/commons/collections4/bag/HashBag;, "Lorg/apache/commons/collections4/bag/HashBag<TO;>;"
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 334
    .local v3, "element":Ljava/lang/Object;, "TO;"
    invoke-interface {p2, v3}, Lorg/apache/commons/collections4/Predicate;->evaluate(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 335
    invoke-virtual {v1, v3}, Lorg/apache/commons/collections4/bag/HashBag;->add(Ljava/lang/Object;)Z

    .line 337
    .end local v3    # "element":Ljava/lang/Object;, "TO;"
    :cond_0
    goto :goto_0

    .line 338
    :cond_1
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 339
    .restart local v3    # "element":Ljava/lang/Object;, "TO;"
    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Lorg/apache/commons/collections4/bag/HashBag;->remove(Ljava/lang/Object;I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 340
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .end local v3    # "element":Ljava/lang/Object;, "TO;"
    :cond_2
    goto :goto_1

    .line 343
    :cond_3
    return-object v0
.end method

.method public static synchronizedCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1839
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/SynchronizedCollection;->synchronizedCollection(Ljava/util/Collection;)Lorg/apache/commons/collections4/collection/SynchronizedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static transform(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TC;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TC;+TC;>;)V"
        }
    .end annotation

    .line 812
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TC;+TC;>;"
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    .line 813
    instance-of v0, p0, Ljava/util/List;

    if-eqz v0, :cond_1

    .line 814
    move-object v0, p0

    check-cast v0, Ljava/util/List;

    .line 815
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<TC;>;"
    invoke-interface {v0}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .local v1, "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TC;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 816
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 818
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<TC;>;"
    .end local v1    # "it":Ljava/util/ListIterator;, "Ljava/util/ListIterator<TC;>;"
    :cond_0
    goto :goto_1

    .line 819
    :cond_1
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/CollectionUtils;->collect(Ljava/lang/Iterable;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;

    move-result-object v0

    .line 820
    .local v0, "resultCollection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    invoke-interface {p0}, Ljava/util/Collection;->clear()V

    .line 821
    invoke-interface {p0, v0}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    .line 824
    .end local v0    # "resultCollection":Ljava/util/Collection;, "Ljava/util/Collection<TC;>;"
    :cond_2
    :goto_1
    return-void
.end method

.method public static transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 1895
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-static {p0, p1}, Lorg/apache/commons/collections4/collection/TransformedCollection;->transformingCollection(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/collection/TransformedCollection;

    move-result-object v0

    return-object v0
.end method

.method public static union(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Iterable<",
            "+TO;>;",
            "Ljava/lang/Iterable<",
            "+TO;>;)",
            "Ljava/util/Collection<",
            "TO;>;"
        }
    .end annotation

    .line 230
    .local p0, "a":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    .local p1, "b":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TO;>;"
    new-instance v0, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;-><init>(Ljava/lang/Iterable;Ljava/lang/Iterable;)V

    .line 231
    .local v0, "helper":Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;, "Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper<TO;>;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 232
    .local v2, "obj":Ljava/lang/Object;, "TO;"
    invoke-virtual {v0, v2}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->max(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v0, v2, v3}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->setCardinality(Ljava/lang/Object;I)V

    .line 233
    .end local v2    # "obj":Ljava/lang/Object;, "TO;"
    goto :goto_0

    .line 234
    :cond_0
    invoke-virtual {v0}, Lorg/apache/commons/collections4/CollectionUtils$SetOperationCardinalityHelper;->list()Ljava/util/Collection;

    move-result-object v1

    return-object v1
.end method

.method public static unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<C:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+TC;>;)",
            "Ljava/util/Collection<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1855
    .local p0, "collection":Ljava/util/Collection;, "Ljava/util/Collection<+TC;>;"
    invoke-static {p0}, Lorg/apache/commons/collections4/collection/UnmodifiableCollection;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    return-object v0
.end method
