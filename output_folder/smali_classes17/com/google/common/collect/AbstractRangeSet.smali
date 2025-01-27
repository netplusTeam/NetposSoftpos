.class abstract Lcom/google/common/collect/AbstractRangeSet;
.super Ljava/lang/Object;
.source "AbstractRangeSet.java"

# interfaces
.implements Lcom/google/common/collect/RangeSet;


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C::",
        "Ljava/lang/Comparable;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/common/collect/RangeSet<",
        "TC;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 28
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 46
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public addAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 66
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->addAll(Ljava/lang/Iterable;)V

    .line 67
    return-void
.end method

.method public clear()V
    .locals 1

    .line 56
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-static {}, Lcom/google/common/collect/Range;->all()Lcom/google/common/collect/Range;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->remove(Lcom/google/common/collect/Range;)V

    .line 57
    return-void
.end method

.method public contains(Ljava/lang/Comparable;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)Z"
        }
    .end annotation

    .line 32
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "value":Ljava/lang/Comparable;, "TC;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public abstract encloses(Lcom/google/common/collect/Range;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation
.end method

.method public enclosesAll(Lcom/google/common/collect/RangeSet;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)Z"
        }
    .end annotation

    .line 61
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->enclosesAll(Ljava/lang/Iterable;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "obj"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 84
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    if-ne p1, p0, :cond_0

    .line 85
    const/4 v0, 0x1

    return v0

    .line 86
    :cond_0
    instance-of v0, p1, Lcom/google/common/collect/RangeSet;

    if-eqz v0, :cond_1

    .line 87
    move-object v0, p1

    check-cast v0, Lcom/google/common/collect/RangeSet;

    .line 88
    .local v0, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1

    .line 90
    .end local v0    # "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<*>;"
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public final hashCode()I
    .locals 1

    .line 95
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->hashCode()I

    move-result v0

    return v0
.end method

.method public intersects(Lcom/google/common/collect/Range;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)Z"
        }
    .end annotation

    .line 76
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "otherRange":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    invoke-virtual {p0, p1}, Lcom/google/common/collect/AbstractRangeSet;->subRangeSet(Lcom/google/common/collect/Range;)Lcom/google/common/collect/RangeSet;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/common/collect/RangeSet;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 41
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public abstract rangeContaining(Ljava/lang/Comparable;)Lcom/google/common/collect/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TC;)",
            "Lcom/google/common/collect/Range<",
            "TC;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end method

.method public remove(Lcom/google/common/collect/Range;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/Range<",
            "TC;>;)V"
        }
    .end annotation

    .line 51
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "range":Lcom/google/common/collect/Range;, "Lcom/google/common/collect/Range<TC;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public removeAll(Lcom/google/common/collect/RangeSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/RangeSet<",
            "TC;>;)V"
        }
    .end annotation

    .line 71
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    .local p1, "other":Lcom/google/common/collect/RangeSet;, "Lcom/google/common/collect/RangeSet<TC;>;"
    invoke-interface {p1}, Lcom/google/common/collect/RangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/google/common/collect/AbstractRangeSet;->removeAll(Ljava/lang/Iterable;)V

    .line 72
    return-void
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 100
    .local p0, "this":Lcom/google/common/collect/AbstractRangeSet;, "Lcom/google/common/collect/AbstractRangeSet<TC;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/AbstractRangeSet;->asRanges()Ljava/util/Set;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
