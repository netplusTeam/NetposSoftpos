.class final Lio/netty/util/collection/ShortCollections$EmptyMap;
.super Ljava/lang/Object;
.source "ShortCollections.java"

# interfaces
.implements Lio/netty/util/collection/ShortObjectMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ShortCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "EmptyMap"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/collection/ShortObjectMap<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/collection/ShortCollections$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/collection/ShortCollections$1;

    .line 52
    invoke-direct {p0}, Lio/netty/util/collection/ShortCollections$EmptyMap;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 0

    .line 86
    return-void
.end method

.method public containsKey(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public containsKey(S)Z
    .locals 1
    .param p1, "key"    # S

    .line 95
    const/4 v0, 0x0

    return v0
.end method

.method public containsValue(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "value"    # Ljava/lang/Object;

    .line 100
    const/4 v0, 0x0

    return v0
.end method

.method public entries()Ljava/lang/Iterable;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Lio/netty/util/collection/ShortObjectMap$PrimitiveEntry<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 105
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public entrySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Short;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation

    .line 135
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 110
    const/4 v0, 0x0

    return-object v0
.end method

.method public get(S)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # S

    .line 55
    const/4 v0, 0x0

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 75
    const/4 v0, 0x1

    return v0
.end method

.method public keySet()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Ljava/lang/Short;",
            ">;"
        }
    .end annotation

    .line 90
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 52
    check-cast p1, Ljava/lang/Short;

    invoke-virtual {p0, p1, p2}, Lio/netty/util/collection/ShortCollections$EmptyMap;->put(Ljava/lang/Short;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Short;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Short;
    .param p2, "value"    # Ljava/lang/Object;

    .line 115
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public put(SLjava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # S
    .param p2, "value"    # Ljava/lang/Object;

    .line 60
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "put"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public putAll(Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+",
            "Ljava/lang/Short;",
            "*>;)V"
        }
    .end annotation

    .line 125
    .local p1, "m":Ljava/util/Map;, "Ljava/util/Map<+Ljava/lang/Short;*>;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 120
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove(S)Ljava/lang/Object;
    .locals 1
    .param p1, "key"    # S

    .line 65
    const/4 v0, 0x0

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method public values()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 130
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
