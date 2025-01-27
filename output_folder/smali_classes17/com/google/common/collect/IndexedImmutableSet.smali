.class abstract Lcom/google/common/collect/IndexedImmutableSet;
.super Lcom/google/common/collect/ImmutableSet$CachingAsList;
.source "IndexedImmutableSet.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableSet$CachingAsList<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 29
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableSet$CachingAsList;-><init>()V

    return-void
.end method


# virtual methods
.method copyIntoArray([Ljava/lang/Object;I)I
    .locals 1
    .param p1, "dst"    # [Ljava/lang/Object;
    .param p2, "offset"    # I

    .line 54
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/IndexedImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/google/common/collect/ImmutableList;->copyIntoArray([Ljava/lang/Object;I)I

    move-result v0

    return v0
.end method

.method createAsList()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList<",
            "TE;>;"
        }
    .end annotation

    .line 59
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    new-instance v0, Lcom/google/common/collect/IndexedImmutableSet$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/IndexedImmutableSet$1;-><init>(Lcom/google/common/collect/IndexedImmutableSet;)V

    return-object v0
.end method

.method public forEach(Ljava/util/function/Consumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-TE;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    .local p1, "consumer":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-TE;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    invoke-virtual {p0}, Lcom/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    .line 46
    .local v0, "n":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 47
    invoke-virtual {p0, v1}, Lcom/google/common/collect/IndexedImmutableSet;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/function/Consumer;->accept(Ljava/lang/Object;)V

    .line 46
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 49
    .end local v1    # "i":I
    :cond_0
    return-void
.end method

.method abstract get(I)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation
.end method

.method public iterator()Lcom/google/common/collect/UnmodifiableIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/UnmodifiableIterator<",
            "TE;>;"
        }
    .end annotation

    .line 34
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/IndexedImmutableSet;->asList()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 27
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/IndexedImmutableSet;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v0

    return-object v0
.end method

.method public spliterator()Ljava/util/Spliterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "TE;>;"
        }
    .end annotation

    .line 39
    .local p0, "this":Lcom/google/common/collect/IndexedImmutableSet;, "Lcom/google/common/collect/IndexedImmutableSet<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/IndexedImmutableSet;->size()I

    move-result v0

    new-instance v1, Lcom/google/common/collect/IndexedImmutableSet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p0}, Lcom/google/common/collect/IndexedImmutableSet$$ExternalSyntheticLambda0;-><init>(Lcom/google/common/collect/IndexedImmutableSet;)V

    const/16 v2, 0x511

    invoke-static {v0, v2, v1}, Lcom/google/common/collect/CollectSpliterators;->indexed(IILjava/util/function/IntFunction;)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method
