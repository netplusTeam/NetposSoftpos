.class abstract Ljava9/util/ImmutableCollections$AbstractImmutableCollection;
.super Ljava/util/AbstractCollection;
.source "ImmutableCollections.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableCollection"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/util/AbstractCollection<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 108
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 110
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public addAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 111
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public clear()V
    .locals 1

    .line 112
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 113
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 114
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 115
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableCollection;, "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-static {}, Ljava9/util/ImmutableCollections;->uoe()Ljava/lang/UnsupportedOperationException;

    move-result-object v0

    throw v0
.end method
