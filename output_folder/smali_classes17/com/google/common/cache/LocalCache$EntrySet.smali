.class final Lcom/google/common/cache/LocalCache$EntrySet;
.super Lcom/google/common/cache/LocalCache$AbstractCacheSet;
.source "LocalCache.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/cache/LocalCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "EntrySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/common/cache/LocalCache<",
        "TK;TV;>.AbstractCacheSet<",
        "Ljava/util/Map$Entry<",
        "TK;TV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/common/cache/LocalCache;


# direct methods
.method constructor <init>(Lcom/google/common/cache/LocalCache;)V
    .locals 0
    .param p1, "this$0"    # Lcom/google/common/cache/LocalCache;

    .line 4629
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    iput-object p1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {p0, p1}, Lcom/google/common/cache/LocalCache$AbstractCacheSet;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-void
.end method

.method static synthetic lambda$removeIf$0(Ljava/util/function/Predicate;Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 1
    .param p0, "filter"    # Ljava/util/function/Predicate;
    .param p1, "k"    # Ljava/lang/Object;
    .param p2, "v"    # Ljava/lang/Object;

    .line 4639
    invoke-static {p1, p2}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-interface {p0, v0}, Ljava/util/function/Predicate;->test(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public contains(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 4644
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4645
    return v1

    .line 4647
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4648
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4649
    .local v2, "key":Ljava/lang/Object;
    if-nez v2, :cond_1

    .line 4650
    return v1

    .line 4652
    :cond_1
    iget-object v3, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-virtual {v3, v2}, Lcom/google/common/cache/LocalCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 4654
    .local v3, "v":Ljava/lang/Object;, "TV;"
    if-eqz v3, :cond_2

    iget-object v4, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    iget-object v4, v4, Lcom/google/common/cache/LocalCache;->valueEquivalence:Lcom/google/common/base/Equivalence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lcom/google/common/base/Equivalence;->equivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 4633
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    new-instance v0, Lcom/google/common/cache/LocalCache$EntryIterator;

    iget-object v1, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-direct {v0, v1}, Lcom/google/common/cache/LocalCache$EntryIterator;-><init>(Lcom/google/common/cache/LocalCache;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "o"    # Ljava/lang/Object;

    .line 4659
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4660
    return v1

    .line 4662
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 4663
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    .line 4664
    .local v2, "key":Ljava/lang/Object;
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v2, v4}, Lcom/google/common/cache/LocalCache;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public removeIf(Ljava/util/function/Predicate;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Predicate<",
            "-",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;)Z"
        }
    .end annotation

    .line 4638
    .local p0, "this":Lcom/google/common/cache/LocalCache$EntrySet;, "Lcom/google/common/cache/LocalCache<TK;TV;>.EntrySet;"
    .local p1, "filter":Ljava/util/function/Predicate;, "Ljava/util/function/Predicate<-Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4639
    iget-object v0, p0, Lcom/google/common/cache/LocalCache$EntrySet;->this$0:Lcom/google/common/cache/LocalCache;

    new-instance v1, Lcom/google/common/cache/LocalCache$EntrySet$$ExternalSyntheticLambda0;

    invoke-direct {v1, p1}, Lcom/google/common/cache/LocalCache$EntrySet$$ExternalSyntheticLambda0;-><init>(Ljava/util/function/Predicate;)V

    invoke-virtual {v0, v1}, Lcom/google/common/cache/LocalCache;->removeIf(Ljava/util/function/BiPredicate;)Z

    move-result v0

    return v0
.end method
