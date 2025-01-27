.class final Lcom/google/common/collect/SingletonImmutableBiMap;
.super Lcom/google/common/collect/ImmutableBiMap;
.source "SingletonImmutableBiMap.java"


# annotations
.annotation runtime Lcom/google/common/collect/ElementTypesAreNonnullByDefault;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/google/common/collect/ImmutableBiMap<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private final transient inverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field private transient lazyInverse:Lcom/google/common/collect/ImmutableBiMap;
    .annotation runtime Lcom/google/errorprone/annotations/concurrent/LazyInit;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation
.end field

.field final transient singleKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field final transient singleValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)V"
        }
    .end annotation

    .line 42
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    .local p1, "singleKey":Ljava/lang/Object;, "TK;"
    .local p2, "singleValue":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 43
    invoke-static {p1, p2}, Lcom/google/common/collect/CollectPreconditions;->checkEntryNotNull(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 44
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 45
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 47
    return-void
.end method

.method private constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    .local p1, "singleKey":Ljava/lang/Object;, "TK;"
    .local p2, "singleValue":Ljava/lang/Object;, "TV;"
    .local p3, "inverse":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    invoke-direct {p0}, Lcom/google/common/collect/ImmutableBiMap;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    .line 51
    iput-object p2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    .line 52
    iput-object p3, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 53
    return-void
.end method


# virtual methods
.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 73
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param

    .line 78
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method createEntrySet()Lcom/google/common/collect/ImmutableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/google/common/collect/Maps;->immutableEntry(Ljava/lang/Object;Ljava/lang/Object;)Ljava/util/Map$Entry;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method createKeySet()Lcom/google/common/collect/ImmutableSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableSet<",
            "TK;>;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-static {v0}, Lcom/google/common/collect/ImmutableSet;->of(Ljava/lang/Object;)Lcom/google/common/collect/ImmutableSet;

    move-result-object v0

    return-object v0
.end method

.method public forEach(Ljava/util/function/BiConsumer;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/BiConsumer<",
            "-TK;-TV;>;)V"
        }
    .end annotation

    .line 68
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    .local p1, "action":Ljava/util/function/BiConsumer;, "Ljava/util/function/BiConsumer<-TK;-TV;>;"
    invoke-static {p1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/function/BiConsumer;

    iget-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    invoke-interface {v0, v1, v2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 69
    return-void
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
        .annotation runtime Ljavax/annotation/CheckForNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/CheckForNull;
    .end annotation

    .line 58
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public bridge synthetic inverse()Lcom/google/common/collect/BiMap;
    .locals 1

    .line 34
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    invoke-virtual {p0}, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse()Lcom/google/common/collect/ImmutableBiMap;

    move-result-object v0

    return-object v0
.end method

.method public inverse()Lcom/google/common/collect/ImmutableBiMap;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableBiMap<",
            "TV;TK;>;"
        }
    .end annotation

    .line 101
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->inverse:Lcom/google/common/collect/ImmutableBiMap;

    if-eqz v0, :cond_0

    .line 102
    return-object v0

    .line 105
    :cond_0
    iget-object v0, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->lazyInverse:Lcom/google/common/collect/ImmutableBiMap;

    .line 106
    .local v0, "result":Lcom/google/common/collect/ImmutableBiMap;, "Lcom/google/common/collect/ImmutableBiMap<TV;TK;>;"
    if-nez v0, :cond_1

    .line 107
    new-instance v1, Lcom/google/common/collect/SingletonImmutableBiMap;

    iget-object v2, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleValue:Ljava/lang/Object;

    iget-object v3, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->singleKey:Ljava/lang/Object;

    invoke-direct {v1, v2, v3, p0}, Lcom/google/common/collect/SingletonImmutableBiMap;-><init>(Ljava/lang/Object;Ljava/lang/Object;Lcom/google/common/collect/ImmutableBiMap;)V

    iput-object v1, p0, Lcom/google/common/collect/SingletonImmutableBiMap;->lazyInverse:Lcom/google/common/collect/ImmutableBiMap;

    return-object v1

    .line 109
    :cond_1
    return-object v0
.end method

.method isPartialView()Z
    .locals 1

    .line 83
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x0

    return v0
.end method

.method public size()I
    .locals 1

    .line 63
    .local p0, "this":Lcom/google/common/collect/SingletonImmutableBiMap;, "Lcom/google/common/collect/SingletonImmutableBiMap<TK;TV;>;"
    const/4 v0, 0x1

    return v0
.end method
