.class public Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
.super Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
.source "MapEntryUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/util/MapEntryUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MapBuilder"
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
        "Ljava/util/Map<",
        "TK;TV;>;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 94
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;-><init>(Ljava/util/Map;)V

    .line 95
    return-void
.end method

.method public static builder()Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 130
    new-instance v0, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;-><init>()V

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

    .line 122
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->get()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 1

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clear()Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 117
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-super {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->clear()Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 118
    return-object p0
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

    .line 126
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->build()Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;TV;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 99
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    .local p2, "v":Ljava/lang/Object;, "TV;"
    invoke-super {p0, p1, p2}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->put(Ljava/lang/Object;Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 100
    return-object p0
.end method

.method public bridge synthetic putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "+TK;+TV;>;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 111
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    .local p1, "other":Ljava/util/Map;, "Ljava/util/Map<+TK;+TV;>;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->putAll(Ljava/util/Map;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 112
    return-object p0
.end method

.method public bridge synthetic remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;
    .locals 0

    .line 92
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;->remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;

    move-result-object p1

    return-object p1
.end method

.method public remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TK;)",
            "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<",
            "TK;TV;>;"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder;, "Lorg/apache/sshd/common/util/MapEntryUtils$MapBuilder<TK;TV;>;"
    .local p1, "k":Ljava/lang/Object;, "TK;"
    invoke-super {p0, p1}, Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;->remove(Ljava/lang/Object;)Lorg/apache/sshd/common/util/MapEntryUtils$GenericMapPopulator;

    .line 106
    return-object p0
.end method
