.class public final Lio/netty/handler/codec/HeadersUtils;
.super Ljava/lang/Object;
.source "HeadersUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/netty/handler/codec/HeadersUtils$DelegatingStringSet;,
        Lio/netty/handler/codec/HeadersUtils$CharSequenceDelegatingStringSet;,
        Lio/netty/handler/codec/HeadersUtils$StringIterator;,
        Lio/netty/handler/codec/HeadersUtils$StringEntry;,
        Lio/netty/handler/codec/HeadersUtils$StringEntryIterator;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public static getAllAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/Headers<",
            "TK;TV;*>;TK;)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 42
    .local p0, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<TK;TV;*>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Lio/netty/handler/codec/Headers;->getAll(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 43
    .local v0, "allNames":Ljava/util/List;, "Ljava/util/List<TV;>;"
    new-instance v1, Lio/netty/handler/codec/HeadersUtils$1;

    invoke-direct {v1, v0}, Lio/netty/handler/codec/HeadersUtils$1;-><init>(Ljava/util/List;)V

    return-object v1
.end method

.method public static getAsString(Lio/netty/handler/codec/Headers;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lio/netty/handler/codec/Headers<",
            "TK;TV;*>;TK;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 64
    .local p0, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<TK;TV;*>;"
    .local p1, "name":Ljava/lang/Object;, "TK;"
    invoke-interface {p0, p1}, Lio/netty/handler/codec/Headers;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 65
    .local v0, "orig":Ljava/lang/Object;, "TV;"
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public static iteratorAsString(Ljava/lang/Iterable;)Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Iterable<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            ">;>;)",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 73
    .local p0, "headers":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/util/Map$Entry<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;>;"
    new-instance v0, Lio/netty/handler/codec/HeadersUtils$StringEntryIterator;

    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/HeadersUtils$StringEntryIterator;-><init>(Ljava/util/Iterator;)V

    return-object v0
.end method

.method public static namesAsString(Lio/netty/handler/codec/Headers;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/handler/codec/Headers<",
            "Ljava/lang/CharSequence;",
            "Ljava/lang/CharSequence;",
            "*>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 107
    .local p0, "headers":Lio/netty/handler/codec/Headers;, "Lio/netty/handler/codec/Headers<Ljava/lang/CharSequence;Ljava/lang/CharSequence;*>;"
    new-instance v0, Lio/netty/handler/codec/HeadersUtils$CharSequenceDelegatingStringSet;

    invoke-interface {p0}, Lio/netty/handler/codec/Headers;->names()Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Lio/netty/handler/codec/HeadersUtils$CharSequenceDelegatingStringSet;-><init>(Ljava/util/Set;)V

    return-object v0
.end method

.method public static toString(Ljava/lang/Class;Ljava/util/Iterator;I)Ljava/lang/String;
    .locals 5
    .param p2, "size"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TK;TV;>;>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 84
    .local p0, "headersClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .local p1, "headersIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/util/Map$Entry<TK;TV;>;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "simpleName":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 86
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "[]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 89
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, 0x2

    mul-int/lit8 v3, p2, 0x14

    add-int/2addr v2, v3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 90
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x5b

    .line 91
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 92
    .local v1, "sb":Ljava/lang/StringBuilder;
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 93
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 94
    .local v2, "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .end local v2    # "header":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    goto :goto_0

    .line 96
    :cond_1
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 97
    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method
