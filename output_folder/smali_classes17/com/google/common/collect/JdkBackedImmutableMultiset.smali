.class final Lcom/google/common/collect/JdkBackedImmutableMultiset;
.super Lcom/google/common/collect/ImmutableMultiset;
.source "JdkBackedImmutableMultiset.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableMultiset<",
        "TE;>;"
    }
.end annotation


# instance fields
.field private final delegateMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private transient elementSet:Lcom/google/common/collect/ImmutableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private final entries:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;"
        }
    .end annotation
.end field

.field private final size:J


# direct methods
.method private constructor <init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V
    .locals 0
    .param p3, "size"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/google/common/collect/ImmutableList<",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;>;J)V"
        }
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    .local p1, "delegateMap":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Integer;>;"
    .local p2, "entries":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/google/common/collect/Multiset$Entry<TE;>;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableMultiset;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    .line 60
    iput-object p2, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    .line 61
    iput-wide p3, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->size:J

    .line 62
    return-void
.end method

.method static create(Ljava/util/Collection;)Lcom/google/common/collect/ImmutableMultiset;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lcom/google/common/collect/Multiset$Entry<",
            "+TE;>;>;)",
            "Lcom/google/common/collect/ImmutableMultiset<",
            "TE;>;"
        }
    .end annotation

    .line 40
    .local p0, "entries":Ljava/util/Collection;, "Ljava/util/Collection<+Lcom/google/common/collect/Multiset$Entry<+TE;>;>;"
    const/4 v0, 0x0

    new-array v0, v0, [Lcom/google/common/collect/Multiset$Entry;

    invoke-interface {p0, v0}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/common/collect/Multiset$Entry;

    .line 41
    .local v0, "entriesArray":[Lcom/google/common/collect/Multiset$Entry;, "[Lcom/google/common/collect/Multiset$Entry<TE;>;"
    array-length v1, v0

    invoke-static {v1}, Lcom/google/common/collect/Maps;->newHashMapWithExpectedSize(I)Ljava/util/HashMap;

    move-result-object v1

    .line 42
    .local v1, "delegateMap":Ljava/util/Map;, "Ljava/util/Map<TE;Ljava/lang/Integer;>;"
    const-wide/16 v2, 0x0

    .line 43
    .local v2, "size":J
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v5, v0

    if-ge v4, v5, :cond_1

    .line 44
    aget-object v5, v0, v4

    .line 45
    .local v5, "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    invoke-interface {v5}, Lcom/google/common/collect/Multiset$Entry;->getCount()I

    move-result v6

    .line 46
    .local v6, "count":I
    int-to-long v7, v6

    add-long/2addr v2, v7

    .line 47
    invoke-interface {v5}, Lcom/google/common/collect/Multiset$Entry;->getElement()Ljava/lang/Object;

    move-result-object v7

    invoke-static {v7}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .line 48
    .local v7, "element":Ljava/lang/Object;, "TE;"
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v1, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    instance-of v8, v5, Lcom/google/common/collect/Multisets$ImmutableEntry;

    if-nez v8, :cond_0

    .line 50
    invoke-static {v7, v6}, Lcom/google/common/collect/Multisets;->immutableEntry(Ljava/lang/Object;I)Lcom/google/common/collect/Multiset$Entry;

    move-result-object v8

    aput-object v8, v0, v4

    .line 43
    .end local v5    # "entry":Lcom/google/common/collect/Multiset$Entry;, "Lcom/google/common/collect/Multiset$Entry<TE;>;"
    .end local v6    # "count":I
    .end local v7    # "element":Ljava/lang/Object;, "TE;"
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 53
    .end local v4    # "i":I
    :cond_1
    new-instance v4, Lcom/google/common/collect/JdkBackedImmutableMultiset;

    .line 54
    invoke-static {v0}, Lcom/google/common/collect/ImmutableList;->asImmutableList([Ljava/lang/Object;)Lcom/google/common/collect/ImmutableList;

    move-result-object v5

    invoke-direct {v4, v1, v5, v2, v3}, Lcom/google/common/collect/JdkBackedImmutableMultiset;-><init>(Ljava/util/Map;Lcom/google/common/collect/ImmutableList;J)V

    .line 53
    return-object v4
.end method


# virtual methods
.method public count(Ljava/lang/Object;)I
    .locals 2
    .param p1, "element"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 66
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->delegateMap:Ljava/util/Map;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public elementSet()Lcom/google/common/collect/ImmutableSet;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    .line 74
    .local v0, "result":Lcom/google/common/collect/ImmutableSet;, "Lcom/google/common/collect/ImmutableSet<TE;>;"
    if-nez v0, :cond_0

    new-instance v1, Lcom/google/common/collect/ImmutableMultiset$ElementSet;

    iget-object v2, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-direct {v1, v2, p0}, Lcom/google/common/collect/ImmutableMultiset$ElementSet;-><init>(Ljava/util/List;Lcom/google/common/collect/Multiset;)V

    iput-object v1, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet:Lcom/google/common/collect/ImmutableSet;

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    return-object v1
.end method

.method public bridge synthetic elementSet()Ljava/util/Set;
    .locals 1

    .line 31
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/JdkBackedImmutableMultiset;->elementSet()Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method getEntry(I)Lcom/google/common/collect/Multiset$Entry;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Lcom/google/common/collect/Multiset$Entry<",
            "TE;>;"
        }
    .end annotation

    .line 79
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    iget-object v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->entries:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0, p1}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/common/collect/Multiset$Entry;

    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 84
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 2

    .line 89
    .local p0, "this":Lcom/google/common/collect/JdkBackedImmutableMultiset;, "Lcom/google/common/collect/JdkBackedImmutableMultiset<TE;>;"
    iget-wide v0, p0, Lcom/google/common/collect/JdkBackedImmutableMultiset;->size:J

    invoke-static {v0, v1}, Lcom/google/common/primitives/Ints;->saturatedCast(J)I

    move-result v0

    return v0
.end method
