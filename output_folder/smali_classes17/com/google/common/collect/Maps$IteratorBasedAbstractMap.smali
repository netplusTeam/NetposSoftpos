.class abstract Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;
.super Ljava/util/AbstractMap;
.source "Maps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/collect/Maps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "IteratorBasedAbstractMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractMap<",
        "TK;TV;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 3724
    .local p0, "this":Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;, "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/util/AbstractMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 3768
    .local p0, "this":Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;, "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/Iterators;->clear(Ljava/util/Iterator;)V

    .line 3769
    return-void
.end method

.method abstract entryIterator()Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3739
    .local p0, "this":Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;, "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<TK;TV;>;"
    new-instance v0, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;

    invoke-direct {v0, p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap$1;-><init>(Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;)V

    return-object v0
.end method

.method entrySpliterator()Ljava/util/Spliterator;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Spliterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 3733
    .local p0, "this":Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;, "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<TK;TV;>;"
    nop

    .line 3734
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-virtual {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;->size()I

    move-result v1

    int-to-long v1, v1

    .line 3733
    const/16 v3, 0x41

    invoke-static {v0, v1, v2, v3}, Ljava/util/Spliterators;->spliterator(Ljava/util/Iterator;JI)Ljava/util/Spliterator;

    move-result-object v0

    return-object v0
.end method

.method forEachEntry(Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Consumer<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)V"
        }
    .end annotation

    .line 3763
    .local p0, "this":Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;, "Lcom/google/common/collect/Maps$IteratorBasedAbstractMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/Consumer;, "Ljava/util/function/Consumer<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/Maps$IteratorBasedAbstractMap;->entryIterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Iterator;->forEachRemaining(Ljava/util/function/Consumer;)V

    .line 3764
    return-void
.end method

.method public abstract size()I
.end method
