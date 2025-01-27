.class public abstract Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;
.super Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;
.source "AbstractDualBidiMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40c
    name = "View"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        "E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator<",
        "TE;>;"
    }
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x4022e75e5da6958fL


# instance fields
.field protected final parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/util/Collection;Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "TE;>;",
            "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<TE;>;"
    .local p2, "parent":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap<TK;TV;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/collection/AbstractCollectionDecorator;-><init>(Ljava/util/Collection;)V

    .line 360
    iput-object p2, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    .line 361
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 417
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->clear()V

    .line 418
    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "object"    # Ljava/lang/Object;

    .line 365
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    if-eq p1, p0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->decorated()Ljava/util/Collection;

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

    .line 370
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->decorated()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->hashCode()I

    move-result v0

    return v0
.end method

.method public removeAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 375
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 378
    :cond_0
    const/4 v0, 0x0

    .line 379
    .local v0, "modified":Z
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 380
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 381
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->remove(Ljava/lang/Object;)Z

    move-result v2

    or-int/2addr v0, v2

    goto :goto_0

    .line 383
    :cond_1
    return v0

    .line 376
    .end local v0    # "modified":Z
    .end local v1    # "it":Ljava/util/Iterator;, "Ljava/util/Iterator<*>;"
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 397
    .local p0, "this":Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;, "Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View<TK;TV;TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 398
    const/4 v0, 0x0

    return v0

    .line 400
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    iget-object v0, p0, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->parent:Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;

    invoke-virtual {v0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap;->clear()V

    .line 402
    const/4 v0, 0x1

    return v0

    .line 404
    :cond_1
    const/4 v0, 0x0

    .line 405
    .local v0, "modified":Z
    invoke-virtual {p0}, Lorg/apache/commons/collections4/bidimap/AbstractDualBidiMap$View;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 406
    .local v1, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TE;>;"
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 407
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {p1, v2}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 408
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 409
    const/4 v0, 0x1

    goto :goto_0

    .line 412
    :cond_3
    return v0
.end method
