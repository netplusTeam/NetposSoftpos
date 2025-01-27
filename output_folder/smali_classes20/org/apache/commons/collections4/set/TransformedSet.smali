.class public Lorg/apache/commons/collections4/set/TransformedSet;
.super Lorg/apache/commons/collections4/collection/TransformedCollection;
.source "TransformedSet.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/TransformedCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x43f953bbd8fce12L


# direct methods
.method protected constructor <init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)V"
        }
    .end annotation

    .line 101
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSet;, "Lorg/apache/commons/collections4/set/TransformedSet<TE;>;"
    .local p1, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p2, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    invoke-direct {p0, p1, p2}, Lorg/apache/commons/collections4/collection/TransformedCollection;-><init>(Ljava/util/Collection;Lorg/apache/commons/collections4/Transformer;)V

    .line 102
    return-void
.end method

.method public static transformedSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Ljava/util/Set;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Ljava/util/Set<",
            "TE;>;"
        }
    .end annotation

    .line 77
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    .line 78
    .local v0, "decorated":Lorg/apache/commons/collections4/set/TransformedSet;, "Lorg/apache/commons/collections4/set/TransformedSet<TE;>;"
    invoke-interface {p0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_0

    .line 80
    invoke-interface {p0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    .line 81
    .local v1, "values":[Ljava/lang/Object;, "[TE;"
    invoke-interface {p0}, Ljava/util/Set;->clear()V

    .line 82
    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_0

    aget-object v4, v1, v3

    .line 83
    .local v4, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {v0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {p1, v4}, Lorg/apache/commons/collections4/Transformer;->transform(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 82
    .end local v4    # "value":Ljava/lang/Object;, "TE;"
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 86
    .end local v1    # "values":[Ljava/lang/Object;, "[TE;"
    :cond_0
    return-object v0
.end method

.method public static transformingSet(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)Lorg/apache/commons/collections4/set/TransformedSet;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Set<",
            "TE;>;",
            "Lorg/apache/commons/collections4/Transformer<",
            "-TE;+TE;>;)",
            "Lorg/apache/commons/collections4/set/TransformedSet<",
            "TE;>;"
        }
    .end annotation

    .line 58
    .local p0, "set":Ljava/util/Set;, "Ljava/util/Set<TE;>;"
    .local p1, "transformer":Lorg/apache/commons/collections4/Transformer;, "Lorg/apache/commons/collections4/Transformer<-TE;+TE;>;"
    new-instance v0, Lorg/apache/commons/collections4/set/TransformedSet;

    invoke-direct {v0, p0, p1}, Lorg/apache/commons/collections4/set/TransformedSet;-><init>(Ljava/util/Set;Lorg/apache/commons/collections4/Transformer;)V

    return-object v0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 106
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSet;, "Lorg/apache/commons/collections4/set/TransformedSet<TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Collection;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 111
    .local p0, "this":Lorg/apache/commons/collections4/set/TransformedSet;, "Lorg/apache/commons/collections4/set/TransformedSet<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/set/TransformedSet;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method
