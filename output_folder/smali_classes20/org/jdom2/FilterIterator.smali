.class final Lorg/jdom2/FilterIterator;
.super Ljava/lang/Object;
.source "FilterIterator.java"

# interfaces
.implements Lorg/jdom2/util/IteratorIterable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/jdom2/util/IteratorIterable<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private canremove:Z

.field private final filter:Lorg/jdom2/filter/Filter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jdom2/filter/Filter<",
            "TT;>;"
        }
    .end annotation
.end field

.field private final iterator:Lorg/jdom2/DescendantIterator;

.field private nextObject:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/jdom2/DescendantIterator;Lorg/jdom2/filter/Filter;)V
    .locals 2
    .param p1, "iterator"    # Lorg/jdom2/DescendantIterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/DescendantIterator;",
            "Lorg/jdom2/filter/Filter<",
            "TT;>;)V"
        }
    .end annotation

    .line 76
    .local p0, "this":Lorg/jdom2/FilterIterator;, "Lorg/jdom2/FilterIterator<TT;>;"
    .local p2, "filter":Lorg/jdom2/filter/Filter;, "Lorg/jdom2/filter/Filter<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/FilterIterator;->canremove:Z

    .line 78
    if-eqz p2, :cond_0

    .line 82
    iput-object p1, p0, Lorg/jdom2/FilterIterator;->iterator:Lorg/jdom2/DescendantIterator;

    .line 83
    iput-object p2, p0, Lorg/jdom2/FilterIterator;->filter:Lorg/jdom2/filter/Filter;

    .line 84
    return-void

    .line 79
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Cannot specify a null Filter for a FilterIterator"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 4

    .line 94
    .local p0, "this":Lorg/jdom2/FilterIterator;, "Lorg/jdom2/FilterIterator<TT;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/FilterIterator;->canremove:Z

    .line 96
    iget-object v1, p0, Lorg/jdom2/FilterIterator;->nextObject:Ljava/lang/Object;

    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 97
    return v2

    .line 100
    :cond_0
    :goto_0
    iget-object v1, p0, Lorg/jdom2/FilterIterator;->iterator:Lorg/jdom2/DescendantIterator;

    invoke-virtual {v1}, Lorg/jdom2/DescendantIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 101
    iget-object v1, p0, Lorg/jdom2/FilterIterator;->iterator:Lorg/jdom2/DescendantIterator;

    invoke-virtual {v1}, Lorg/jdom2/DescendantIterator;->next()Lorg/jdom2/Content;

    move-result-object v1

    .line 102
    .local v1, "obj":Ljava/lang/Object;
    iget-object v3, p0, Lorg/jdom2/FilterIterator;->filter:Lorg/jdom2/filter/Filter;

    invoke-interface {v3, v1}, Lorg/jdom2/filter/Filter;->filter(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 103
    .local v3, "f":Ljava/lang/Object;, "TT;"
    if-eqz v3, :cond_1

    .line 104
    iput-object v3, p0, Lorg/jdom2/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 105
    return v2

    .line 107
    .end local v1    # "obj":Ljava/lang/Object;
    .end local v3    # "f":Ljava/lang/Object;, "TT;"
    :cond_1
    goto :goto_0

    .line 108
    :cond_2
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TT;>;"
        }
    .end annotation

    .line 88
    .local p0, "this":Lorg/jdom2/FilterIterator;, "Lorg/jdom2/FilterIterator<TT;>;"
    new-instance v0, Lorg/jdom2/FilterIterator;

    iget-object v1, p0, Lorg/jdom2/FilterIterator;->iterator:Lorg/jdom2/DescendantIterator;

    invoke-virtual {v1}, Lorg/jdom2/DescendantIterator;->iterator()Lorg/jdom2/DescendantIterator;

    move-result-object v1

    iget-object v2, p0, Lorg/jdom2/FilterIterator;->filter:Lorg/jdom2/filter/Filter;

    invoke-direct {v0, v1, v2}, Lorg/jdom2/FilterIterator;-><init>(Lorg/jdom2/DescendantIterator;Lorg/jdom2/filter/Filter;)V

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 113
    .local p0, "this":Lorg/jdom2/FilterIterator;, "Lorg/jdom2/FilterIterator<TT;>;"
    invoke-virtual {p0}, Lorg/jdom2/FilterIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 117
    iget-object v0, p0, Lorg/jdom2/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 118
    .local v0, "obj":Ljava/lang/Object;, "TT;"
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/jdom2/FilterIterator;->nextObject:Ljava/lang/Object;

    .line 119
    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jdom2/FilterIterator;->canremove:Z

    .line 120
    return-object v0

    .line 114
    .end local v0    # "obj":Ljava/lang/Object;, "TT;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 125
    .local p0, "this":Lorg/jdom2/FilterIterator;, "Lorg/jdom2/FilterIterator<TT;>;"
    iget-boolean v0, p0, Lorg/jdom2/FilterIterator;->canremove:Z

    if-eqz v0, :cond_0

    .line 131
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/jdom2/FilterIterator;->canremove:Z

    .line 132
    iget-object v0, p0, Lorg/jdom2/FilterIterator;->iterator:Lorg/jdom2/DescendantIterator;

    invoke-virtual {v0}, Lorg/jdom2/DescendantIterator;->remove()V

    .line 133
    return-void

    .line 126
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "remove() can only be called on the FilterIterator immediately after a successful call to next(). A call to remove() immediately after a call to hasNext() or remove() will also fail."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
