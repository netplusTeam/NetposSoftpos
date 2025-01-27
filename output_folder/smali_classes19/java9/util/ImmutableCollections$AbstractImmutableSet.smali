.class abstract Ljava9/util/ImmutableCollections$AbstractImmutableSet;
.super Ljava9/util/ImmutableCollections$AbstractImmutableCollection;
.source "ImmutableCollections.java"

# interfaces
.implements Ljava/util/Set;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava9/util/ImmutableCollections;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x408
    name = "AbstractImmutableSet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava9/util/ImmutableCollections$AbstractImmutableCollection<",
        "TE;>;",
        "Ljava/util/Set<",
        "TE;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 539
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableSet;, "Ljava9/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    invoke-direct {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 6
    .param p1, "o"    # Ljava/lang/Object;

    .line 544
    .local p0, "this":Ljava9/util/ImmutableCollections$AbstractImmutableSet;, "Ljava9/util/ImmutableCollections$AbstractImmutableSet<TE;>;"
    const/4 v0, 0x1

    if-ne p1, p0, :cond_0

    .line 545
    return v0

    .line 546
    :cond_0
    instance-of v1, p1, Ljava/util/Set;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 547
    return v2

    .line 550
    :cond_1
    move-object v1, p1

    check-cast v1, Ljava/util/Collection;

    .line 551
    .local v1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {p0}, Ljava9/util/ImmutableCollections$AbstractImmutableSet;->size()I

    move-result v4

    if-eq v3, v4, :cond_2

    .line 552
    return v2

    .line 554
    :cond_2
    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 555
    .local v4, "e":Ljava/lang/Object;
    if-eqz v4, :cond_4

    invoke-virtual {p0, v4}, Ljava9/util/ImmutableCollections$AbstractImmutableSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto :goto_1

    .line 558
    .end local v4    # "e":Ljava/lang/Object;
    :cond_3
    goto :goto_0

    .line 556
    .restart local v4    # "e":Ljava/lang/Object;
    :cond_4
    :goto_1
    return v2

    .line 559
    .end local v4    # "e":Ljava/lang/Object;
    :cond_5
    return v0
.end method

.method public abstract hashCode()I
.end method
