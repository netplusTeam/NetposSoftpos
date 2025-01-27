.class final Lio/netty/util/collection/ByteCollections$UnmodifiableMap;
.super Ljava/lang/Object;
.source "ByteCollections.java"

# interfaces
.implements Lio/netty/util/collection/ByteObjectMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ByteCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "UnmodifiableMap"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/util/collection/ByteCollections$UnmodifiableMap$EntryImpl;,
        Lio/netty/util/collection/ByteCollections$UnmodifiableMap$IteratorImpl;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/ByteObjectMap<",
        "TV;>;"
    }
.end annotation


# instance fields
.field private entries:Ljava/lang/Iterable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private entrySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "TV;>;>;"
        }
    .end annotation
.end field

.field private keySet:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation
.end field

.field private final map:Lio/netty/util/collection/ByteObjectMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/netty/util/collection/ByteObjectMap<",
            "TV;>;"
        }
    .end annotation
.end field

.field private values:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lio/netty/util/collection/ByteObjectMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/collection/ByteObjectMap<",
            "TV;>;)V"
        }
    .end annotation

    .line 151
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    .local p1, "map":Lio/netty/util/collection/ByteObjectMap;, "Lio/netty/util/collection/ByteObjectMap<TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 152
    iput-object p1, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    .line 153
    return-void
.end method

.method static synthetic access$100(Lio/netty/util/collection/ByteCollections$UnmodifiableMap;)Lio/netty/util/collection/ByteObjectMap;
    .locals 1
    .param p0, "x0"    # Lio/netty/util/collection/ByteCollections$UnmodifiableMap;

    .line 144
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    return-object v0
.end method


# virtual methods
.method public clear()V
    .locals 2

    .line 182
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "clear"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public containsKey(B)Z
    .locals 1
    .param p1, "key"    # B

    .line 187
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/ByteObjectMap;->containsKey(B)Z

    move-result v0

    return v0
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 197
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/ByteObjectMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 192
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/ByteObjectMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<",
            "TV;>;>;"
        }
    .end annotation

    .line 222
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entries:Ljava/lang/Iterable;

    if-nez v0, :cond_0

    .line 223
    new-instance v0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$1;

    invoke-direct {v0, p0}, Lio/netty/util/collection/ByteCollections$UnmodifiableMap$1;-><init>(Lio/netty/util/collection/ByteCollections$UnmodifiableMap;)V

    iput-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entries:Ljava/lang/Iterable;

    .line 231
    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entries:Ljava/lang/Iterable;

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Byte;",
            "TV;>;>;"
        }
    .end annotation

    .line 244
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 245
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/ByteObjectMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    .line 247
    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->entrySet:Ljava/util/Set;

    return-object v0
.end method

.method public get(B)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    .line 157
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/ByteObjectMap;->get(B)Ljava/lang/Object;

    move-result-object v0

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

    .line 202
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0, p1}, Lio/netty/util/collection/ByteObjectMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 177
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/ByteObjectMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 236
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->keySet:Ljava/util/Set;

    if-nez v0, :cond_0

    .line 237
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/ByteObjectMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->keySet:Ljava/util/Set;

    .line 239
    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->keySet:Ljava/util/Set;

    return-object v0
.end method

.method public put(BLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BTV;)TV;"
        }
    .end annotation

    .line 162
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "put"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public put(Ljava/lang/Byte;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Byte;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Byte;",
            "TV;)TV;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    .local p2, "value":Ljava/lang/Object;, "TV;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "put"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 144
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    check-cast p1, Ljava/lang/Byte;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->put(Ljava/lang/Byte;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Byte;",
            "+TV;>;)V"
        }
    .end annotation

    .line 217
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Byte;+TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "putAll"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(B)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)TV;"
        }
    .end annotation

    .line 167
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TV;"
        }
    .end annotation

    .line 212
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "remove"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public size()I
    .locals 1

    .line 172
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/ByteObjectMap;->size()I

    move-result v0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "TV;>;"
        }
    .end annotation

    .line 252
    .local p0, "this":Lio/netty/util/collection/ByteCollections$UnmodifiableMap;, "Lio/netty/util/collection/ByteCollections$UnmodifiableMap<TV;>;"
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->values:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->map:Lio/netty/util/collection/ByteObjectMap;

    invoke-interface {v0}, Lio/netty/util/collection/ByteObjectMap;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableCollection(Ljava/util/Collection;)Ljava/util/Collection;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->values:Ljava/util/Collection;

    .line 255
    :cond_0
    iget-object v0, p0, Lio/netty/util/collection/ByteCollections$UnmodifiableMap;->values:Ljava/util/Collection;

    return-object v0
.end method
