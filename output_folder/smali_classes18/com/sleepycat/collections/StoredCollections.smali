.class public Lcom/sleepycat/collections/StoredCollections;
.super Ljava/lang/Object;
.source "StoredCollections.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static configuredCollection(Ljava/util/Collection;Lcom/sleepycat/je/CursorConfig;)Ljava/util/Collection;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/Collection<",
            "TE;>;"
        }
    .end annotation

    .line 73
    .local p0, "storedCollection":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    .line 74
    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    .line 73
    return-object v0
.end method

.method public static configuredList(Ljava/util/List;Lcom/sleepycat/je/CursorConfig;)Ljava/util/List;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/List<",
            "TE;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 98
    .local p0, "storedList":Ljava/util/List;, "Ljava/util/List<TE;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public static configuredMap(Ljava/util/Map;Lcom/sleepycat/je/CursorConfig;)Ljava/util/Map;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Map<",
            "TK;TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 121
    .local p0, "storedMap":Ljava/util/Map;, "Ljava/util/Map<TK;TV;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    return-object v0
.end method

.method public static configuredSet(Ljava/util/Set;Lcom/sleepycat/je/CursorConfig;)Ljava/util/Set;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 142
    .local p0, "storedSet":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method public static configuredSortedMap(Ljava/util/SortedMap;Lcom/sleepycat/je/CursorConfig;)Ljava/util/SortedMap;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedMap<",
            "TK;TV;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/SortedMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 165
    .local p0, "storedSortedMap":Ljava/util/SortedMap;, "Ljava/util/SortedMap<TK;TV;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    .line 166
    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/SortedMap;

    .line 165
    return-object v0
.end method

.method public static configuredSortedSet(Ljava/util/SortedSet;Lcom/sleepycat/je/CursorConfig;)Ljava/util/SortedSet;
    .locals 1
    .param p1, "config"    # Lcom/sleepycat/je/CursorConfig;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/SortedSet<",
            "TE;>;",
            "Lcom/sleepycat/je/CursorConfig;",
            ")",
            "Ljava/util/SortedSet<",
            "TE;>;"
        }
    .end annotation

    .line 188
    .local p0, "storedSortedSet":Ljava/util/SortedSet;, "Ljava/util/SortedSet<TE;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/StoredContainer;

    .line 189
    invoke-virtual {v0, p1}, Lcom/sleepycat/collections/StoredContainer;->configuredClone(Lcom/sleepycat/je/CursorConfig;)Lcom/sleepycat/collections/StoredContainer;

    move-result-object v0

    check-cast v0, Ljava/util/SortedSet;

    .line 188
    return-object v0
.end method

.method public static iterator(Ljava/util/Iterator;)Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Iterator<",
            "TE;>;)",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 207
    .local p0, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    move-object v0, p0

    check-cast v0, Lcom/sleepycat/collections/BaseIterator;

    invoke-virtual {v0}, Lcom/sleepycat/collections/BaseIterator;->dup()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method
