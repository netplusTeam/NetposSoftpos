.class Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;
.super Ljava/lang/Object;
.source "AbstractReferenceMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/commons/collections4/map/AbstractReferenceMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ReferenceBaseIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<K:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field currentKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field currentValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field expectedModCount:I

.field index:I

.field nextKey:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TK;"
        }
    .end annotation
.end field

.field nextValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TV;"
        }
    .end annotation
.end field

.field final parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;"
        }
    .end annotation
.end field

.field previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lorg/apache/commons/collections4/map/AbstractReferenceMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap<",
            "TK;TV;>;)V"
        }
    .end annotation

    .line 777
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    .local p1, "parent":Lorg/apache/commons/collections4/map/AbstractReferenceMap;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap<TK;TV;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 778
    iput-object p1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    .line 779
    invoke-virtual {p1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    array-length v0, v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 782
    iget v0, p1, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    .line 783
    return-void
.end method

.method private checkMod()V
    .locals 2

    .line 811
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    if-ne v0, v1, :cond_0

    .line 814
    return-void

    .line 812
    :cond_0
    new-instance v0, Ljava/util/ConcurrentModificationException;

    invoke-direct {v0}, Ljava/util/ConcurrentModificationException;-><init>()V

    throw v0
.end method

.method private nextNull()Z
    .locals 1

    .line 817
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    if-nez v0, :cond_0

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


# virtual methods
.method protected currentEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 835
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 836
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 786
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 787
    :goto_0
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 788
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 789
    .local v0, "e":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    iget v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 790
    .local v1, "i":I
    :goto_1
    if-nez v0, :cond_0

    if-lez v1, :cond_0

    .line 791
    add-int/lit8 v1, v1, -0x1

    .line 792
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v2, v2, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->data:[Lorg/apache/commons/collections4/map/AbstractHashedMap$HashEntry;

    aget-object v2, v2, v1

    move-object v0, v2

    check-cast v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    goto :goto_1

    .line 794
    :cond_0
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 795
    iput v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->index:I

    .line 796
    if-nez v0, :cond_1

    .line 797
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 798
    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 799
    const/4 v2, 0x0

    return v2

    .line 801
    :cond_1
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 802
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->getValue()Ljava/lang/Object;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 803
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 804
    iget-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    invoke-virtual {v2}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v2

    iput-object v2, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 806
    .end local v0    # "e":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<TK;TV;>;"
    .end local v1    # "i":I
    :cond_2
    goto :goto_0

    .line 807
    :cond_3
    const/4 v0, 0x1

    return v0
.end method

.method protected nextEntry()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry<",
            "TK;TV;>;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 822
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextNull()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 823
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 825
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 826
    invoke-virtual {v0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;->next()Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->entry:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 827
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 828
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 829
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextKey:Ljava/lang/Object;

    .line 830
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->nextValue:Ljava/lang/Object;

    .line 831
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 840
    .local p0, "this":Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;, "Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator<TK;TV;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->checkMod()V

    .line 841
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    if-eqz v0, :cond_0

    .line 844
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget-object v1, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 845
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->previous:Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceEntry;

    .line 846
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentKey:Ljava/lang/Object;

    .line 847
    iput-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->currentValue:Ljava/lang/Object;

    .line 848
    iget-object v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->parent:Lorg/apache/commons/collections4/map/AbstractReferenceMap;

    iget v0, v0, Lorg/apache/commons/collections4/map/AbstractReferenceMap;->modCount:I

    iput v0, p0, Lorg/apache/commons/collections4/map/AbstractReferenceMap$ReferenceBaseIterator;->expectedModCount:I

    .line 849
    return-void

    .line 842
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
