.class public abstract Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;
.super Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;
.source "AbstractNavigableSetDecorator.java"

# interfaces
.implements Ljava/util/NavigableSet;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator<",
        "TE;>;",
        "Ljava/util/NavigableSet<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x1337900L


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 41
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;-><init>()V

    .line 42
    return-void
.end method

.method protected constructor <init>(Ljava/util/NavigableSet;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/NavigableSet<",
            "TE;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "set":Ljava/util/NavigableSet;, "Ljava/util/NavigableSet<TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;-><init>(Ljava/util/Set;)V

    .line 52
    return-void
.end method


# virtual methods
.method public ceiling(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 78
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Collection;
    .locals 1

    .line 30
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected decorated()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-super {p0}, Lorg/apache/commons/collections4/set/AbstractSortedSetDecorator;->decorated()Ljava/util/SortedSet;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableSet;

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/Set;
    .locals 1

    .line 30
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method protected bridge synthetic decorated()Ljava/util/SortedSet;
    .locals 1

    .line 30
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public descendingIterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 103
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingIterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public descendingSet()Ljava/util/NavigableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->descendingSet()Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public floor(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 114
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->headSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public higher(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 83
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->higher(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public lower(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)TE;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/NavigableSet;->lower(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollFirst()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollFirst()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public pollLast()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->pollLast()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "fromInclusive"    # Z
    .param p4, "toInclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;ZTE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 109
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    .local p3, "toElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Ljava/util/NavigableSet;->subSet(Ljava/lang/Object;ZLjava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method

.method public tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;
    .locals 1
    .param p2, "inclusive"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;Z)",
            "Ljava/util/NavigableSet<",
            "TE;>;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;, "Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator<TE;>;"
    .local p1, "fromElement":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/AbstractNavigableSetDecorator;->decorated()Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Ljava/util/NavigableSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    return-object v0
.end method
