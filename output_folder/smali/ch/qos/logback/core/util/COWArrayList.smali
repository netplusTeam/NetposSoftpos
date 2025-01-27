.class public Lch/qos/logback/core/util/COWArrayList;
.super Ljava/lang/Object;
.source "COWArrayList.java"

# interfaces
.implements Ljava/util/List;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/List<",
        "TE;>;"
    }
.end annotation


# instance fields
.field fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

.field final modelArray:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field ourCopy:[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[TE;"
        }
    .end annotation
.end field

.field underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/CopyOnWriteArrayList<",
            "TE;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>([Ljava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([TE;)V"
        }
    .end annotation

    .line 50
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "modelArray":[Ljava/lang/Object;, "[TE;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 46
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    .line 51
    iput-object p1, p0, Lch/qos/logback/core/util/COWArrayList;->modelArray:[Ljava/lang/Object;

    .line 52
    return-void
.end method

.method private isFresh()Z
    .locals 1

    .line 81
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    return v0
.end method

.method private markAsStale()V
    .locals 2

    .line 115
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 116
    return-void
.end method

.method private refreshCopy()V
    .locals 2

    .line 85
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Lch/qos/logback/core/util/COWArrayList;->modelArray:[Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    .line 86
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->fresh:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 87
    return-void
.end method

.method private refreshCopyIfNecessary()V
    .locals 1

    .line 75
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->isFresh()Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopy()V

    .line 78
    :cond_0
    return-void
.end method


# virtual methods
.method public add(ILjava/lang/Object;)V
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)V"
        }
    .end annotation

    .line 191
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(ILjava/lang/Object;)V

    .line 192
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 193
    return-void
.end method

.method public add(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 125
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->add(Ljava/lang/Object;)Z

    move-result v0

    .line 126
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 127
    return v0
.end method

.method public addAll(ILjava/util/Collection;)Z
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/Collection<",
            "+TE;>;)Z"
        }
    .end annotation

    .line 151
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p2, "col":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(ILjava/util/Collection;)Z

    move-result v0

    .line 152
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 153
    return v0
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

    .line 144
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addAll(Ljava/util/Collection;)Z

    move-result v0

    .line 145
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 146
    return v0
.end method

.method public addIfAbsent(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "e":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->addIfAbsent(Ljava/lang/Object;)Z

    .line 120
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 121
    return-void
.end method

.method public asTypedArray()[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[TE;"
        }
    .end annotation

    .line 110
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    .line 111
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    return-object v0
.end method

.method public clear()V
    .locals 1

    .line 172
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->clear()V

    .line 173
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 174
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 66
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsAll(Ljava/util/Collection;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 139
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "c":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    return v0
.end method

.method public get(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    .line 179
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public indexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 204
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 61
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TE;>;"
        }
    .end annotation

    .line 71
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method public lastIndexOf(Ljava/lang/Object;)I
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 209
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->lastIndexOf(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public listIterator()Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 214
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator()Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "TE;>;"
        }
    .end annotation

    .line 219
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->listIterator(I)Ljava/util/ListIterator;

    move-result-object v0

    return-object v0
.end method

.method public remove(I)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TE;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v0

    .line 198
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 199
    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 132
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    .line 133
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 134
    return v0
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

    .line 158
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    .line 159
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 160
    return v0
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

    .line 165
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "col":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->retainAll(Ljava/util/Collection;)Z

    move-result v0

    .line 166
    .local v0, "result":Z
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 167
    return v0
.end method

.method public set(ILjava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITE;)TE;"
        }
    .end annotation

    .line 184
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p2, "element":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 185
    .local v0, "e":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->markAsStale()V

    .line 186
    return-object v0
.end method

.method public size()I
    .locals 1

    .line 56
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0}, Ljava/util/concurrent/CopyOnWriteArrayList;->size()I

    move-result v0

    return v0
.end method

.method public subList(II)Ljava/util/List;
    .locals 1
    .param p1, "fromIndex"    # I
    .param p2, "toIndex"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "TE;>;"
        }
    .end annotation

    .line 224
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->underlyingList:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/CopyOnWriteArrayList;->subList(II)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public toArray()[Ljava/lang/Object;
    .locals 1

    .line 91
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    .line 92
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    return-object v0
.end method

.method public toArray([Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">([TT;)[TT;"
        }
    .end annotation

    .line 98
    .local p0, "this":Lch/qos/logback/core/util/COWArrayList;, "Lch/qos/logback/core/util/COWArrayList<TE;>;"
    .local p1, "a":[Ljava/lang/Object;, "[TT;"
    invoke-direct {p0}, Lch/qos/logback/core/util/COWArrayList;->refreshCopyIfNecessary()V

    .line 99
    iget-object v0, p0, Lch/qos/logback/core/util/COWArrayList;->ourCopy:[Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    return-object v0
.end method
