.class public Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
.super Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
.source "MapEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/MapEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumMapBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Enum<",
        "TK;>;V:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator<",
        "TK;TV;",
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TK;>;)V"
        }
    .end annotation

    .line 183
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    .local p1, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Ljava/util/EnumMap;

    const-string v1, "No enum class specified"

    invoke-static {p1, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;-><init>(Ljava/util/Map;)V

    .line 184
    return-void
.end method

.method public static builder(Ljava/lang/Class;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Enum<",
            "TK;>;V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TK;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 219
    .local p0, "keyType":Ljava/lang/Class;, "Ljava/lang/Class<TK;>;"
    new-instance v0, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;-><init>(Ljava/lang/Class;)V

    return-object v0
.end method


# virtual methods
.method public build()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 211
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 206
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 207
    return-object p0
.end method

.method public bridge synthetic clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1

    .line 181
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public immutable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "TK;TV;>;"
        }
    .end annotation

    .line 215
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 188
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Enum;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 189
    return-object p0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 181
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->put(Ljava/lang/Enum;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 200
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 201
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 181
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Enum;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Enum;, "TK;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 195
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 181
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder<TK;TV;>;"
    check-cast p1, Ljava/lang/Enum;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;->remove(Ljava/lang/Enum;)Lorg/apache/sshd/common/util/MapEntryUtils$EnumMapBuilder;

    move-result-object p1

    return-object p1
.end method
