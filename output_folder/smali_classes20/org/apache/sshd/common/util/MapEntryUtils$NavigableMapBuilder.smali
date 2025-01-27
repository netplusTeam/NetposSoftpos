.class public Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
.super Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
.source "MapEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/MapEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NavigableMapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
        "TK;TV;",
        "Ljava/util/NavigableMap<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/Comparator;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Comparator<",
            "-TK;>;)V"
        }
    .end annotation

    .line 137
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    .local p1, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    new-instance v0, Ljava/util/TreeMap;

    const-string v1, "No comparator provided"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeMap;-><init>(Ljava/util/Comparator;)V

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;-><init>(Ljava/util/Map;)V

    .line 138
    return-void
.end method

.method public static builder()Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K::",
            "Ljava/lang/Comparable<",
            "-TK;>;V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 173
    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->builder(Ljava/util/Comparator;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public static builder(Ljava/util/Comparator;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Comparator<",
            "-TK;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 177
    .local p0, "comparator":Ljava/util/Comparator;, "Ljava/util/Comparator<-TK;>;"
    new-instance v0, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;-><init>(Ljava/util/Comparator;)V

    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 165
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->get()Ljava/util/Map;

    move-result-object v0

    check-cast v0, Ljava/util/NavigableMap;

    return-object v0
.end method

.method public bridge synthetic clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1

    .line 135
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 160
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 161
    return-object p0
.end method

.method public immutable()Ljava/util/NavigableMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/NavigableMap<",
            "TK;TV;>;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->build()Ljava/util/NavigableMap;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 135
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 142
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 143
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 135
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 155
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 135
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;->remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 148
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$NavigableMapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 149
    return-object p0
.end method
