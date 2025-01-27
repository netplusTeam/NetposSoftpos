.class public Ljavassist/scopedpool/SoftValueHashMap;
.super Ljava/lang/Object;
.source "SoftValueHashMap.java"

# interfaces
.implements Ljava/util/Map;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Map<",
        "TK;TV;>;"
    }
.end annotation


# instance fields
.field private hash:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "TK;",
            "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<",
            "TK;TV;>;>;"
        }
    .end annotation
.end field

.field private queue:Ljava/lang/ref/ReferenceQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/ReferenceQueue<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 130
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 131
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    .line 132
    return-void
.end method

.method public constructor <init>(I)V
    .locals 1
    .param p1, "initialCapacity"    # I

    .line 122
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 123
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(I)V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    .line 124
    return-void
.end method

.method public constructor <init>(IF)V
    .locals 1
    .param p1, "initialCapacity"    # I
    .param p2, "loadFactor"    # F

    .line 108
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 73
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    .line 109
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0, p1, p2}, Ljava/util/concurrent/ConcurrentHashMap;-><init>(IF)V

    iput-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    .line 110
    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 144
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    .local p1, "t":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v0

    mul-int/lit8 v0, v0, 0x2

    const/16 v1, 0xb

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v0

    const/high16 v1, 0x3f400000    # 0.75f

    invoke-direct {p0, v0, v1}, Ljavassist/scopedpool/SoftValueHashMap;-><init>(IF)V

    .line 145
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/SoftValueHashMap;->putAll(Ljava/util/Map;)V

    .line 146
    return-void
.end method

.method private processQueue()V
    .locals 4

    .line 81
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 82
    :cond_0
    :goto_0
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    move-object v1, v0

    .local v1, "ref":Ljava/lang/Object;
    if-eqz v0, :cond_2

    .line 83
    instance-of v0, v1, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    if-eqz v0, :cond_0

    .line 85
    move-object v0, v1

    check-cast v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    .line 86
    .local v0, "que":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    iget-object v2, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v3, v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-ne v1, v2, :cond_1

    .line 88
    iget-object v2, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v3, v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->key:Ljava/lang/Object;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    .end local v0    # "que":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;
    :cond_1
    goto :goto_0

    .line 90
    .end local v1    # "ref":Ljava/lang/Object;
    :cond_2
    return-void
.end method

.method private valueOrNull(Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<",
            "TK;TV;>;)TV;"
        }
    .end annotation

    .line 289
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    .local p1, "rtn":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    if-nez p1, :cond_0

    .line 290
    const/4 v0, 0x0

    return-object v0

    .line 291
    :cond_0
    invoke-virtual {p1}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->get()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 242
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 243
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 244
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 180
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 181
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "arg0"    # Ljava/lang/Object;

    .line 253
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 254
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 255
    return v0

    .line 257
    :cond_0
    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    .line 258
    .local v2, "e":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 259
    const/4 v0, 0x1

    return v0

    .line 260
    .end local v2    # "e":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    :cond_2
    return v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;"
        }
    .end annotation

    .line 61
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 62
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 63
    .local v0, "ret":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<TK;TV;>;>;"
    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 64
    .local v2, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;>;"
    new-instance v3, Ljava/util/AbstractMap$SimpleImmutableEntry;

    .line 65
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-virtual {v5}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->get()Ljava/lang/Object;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 64
    invoke-interface {v0, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 66
    .end local v2    # "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<TK;Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;>;"
    :cond_0
    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 196
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 197
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-direct {p0, v0}, Ljavassist/scopedpool/SoftValueHashMap;->valueOrNull(Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 167
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 168
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "TK;>;"
        }
    .end annotation

    .line 266
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 267
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)TV;"
        }
    .end annotation

    .line 217
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    .local p1, "key":Ljava/lang/Object;, "TK;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 218
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->queue:Ljava/lang/ref/ReferenceQueue;

    invoke-static {p1, p2, v1}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->access$000(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-direct {p0, v0}, Ljavassist/scopedpool/SoftValueHashMap;->valueOrNull(Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)V"
        }
    .end annotation

    .line 273
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    .local p1, "arg0":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 274
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 275
    .local v1, "key":Ljava/lang/Object;, "TK;"
    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Ljavassist/scopedpool/SoftValueHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 276
    .end local v1    # "key":Ljava/lang/Object;, "TK;"
    :cond_0
    return-void
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 233
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 234
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    invoke-direct {p0, v0}, Ljavassist/scopedpool/SoftValueHashMap;->valueOrNull(Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 158
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 159
    iget-object v0, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 281
    .local p0, "this":Ljavassist/scopedpool/SoftValueHashMap;, "Ljavassist/scopedpool/SoftValueHashMap<TK;TV;>;"
    invoke-direct {p0}, Ljavassist/scopedpool/SoftValueHashMap;->processQueue()V

    .line 282
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 283
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<TV;>;"
    iget-object v1, p0, Ljavassist/scopedpool/SoftValueHashMap;->hash:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;

    .line 284
    .local v2, "e":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    invoke-virtual {v2}, Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;->get()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 285
    .end local v2    # "e":Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef;, "Ljavassist/scopedpool/SoftValueHashMap$SoftValueRef<TK;TV;>;"
    :cond_0
    return-object v0
.end method
