.class public Ljdbm/helper/MRU;
.super Ljava/lang/Object;
.source "MRU.java"

# interfaces
.implements Ljdbm/helper/CachePolicy;


# instance fields
.field _first:Ljdbm/helper/CacheEntry;

.field _hash:Ljava/util/Hashtable;

.field _last:Ljdbm/helper/CacheEntry;

.field _max:I

.field listeners:Ljava/util/Vector;


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "max"    # I

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    .line 89
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    .line 96
    if-lez p1, :cond_0

    .line 99
    iput p1, p0, Ljdbm/helper/MRU;->_max:I

    .line 100
    return-void

    .line 97
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "MRU cache must contain at least one entry"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method protected addEntry(Ljdbm/helper/CacheEntry;)V
    .locals 1
    .param p1, "entry"    # Ljdbm/helper/CacheEntry;

    .line 197
    iget-object v0, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    if-nez v0, :cond_0

    .line 198
    iput-object p1, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    .line 199
    iput-object p1, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    .line 200
    goto :goto_0

    .line 201
    :cond_0
    iget-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    invoke-virtual {v0, p1}, Ljdbm/helper/CacheEntry;->setNext(Ljdbm/helper/CacheEntry;)V

    .line 202
    iget-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    invoke-virtual {p1, v0}, Ljdbm/helper/CacheEntry;->setPrevious(Ljdbm/helper/CacheEntry;)V

    .line 203
    iput-object p1, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    .line 205
    :goto_0
    return-void
.end method

.method public addListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 2
    .param p1, "listener"    # Ljdbm/helper/CachePolicyListener;

    .line 176
    if-eqz p1, :cond_1

    .line 179
    iget-object v0, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 180
    iget-object v0, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 182
    :cond_0
    return-void

    .line 177
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot add null listener."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 2

    .line 167
    new-instance v0, Ljdbm/helper/MRUEnumeration;

    iget-object v1, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->elements()Ljava/util/Enumeration;

    move-result-object v1

    invoke-direct {v0, v1}, Ljdbm/helper/MRUEnumeration;-><init>(Ljava/util/Enumeration;)V

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p1, "key"    # Ljava/lang/Object;

    .line 131
    iget-object v0, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/CacheEntry;

    .line 132
    .local v0, "entry":Ljdbm/helper/CacheEntry;
    if-eqz v0, :cond_0

    .line 133
    invoke-virtual {p0, v0}, Ljdbm/helper/MRU;->touchEntry(Ljdbm/helper/CacheEntry;)V

    .line 134
    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v1

    return-object v1

    .line 136
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method protected purgeEntry()Ljdbm/helper/CacheEntry;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    .line 253
    .local v0, "entry":Ljdbm/helper/CacheEntry;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 254
    iget-object v2, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    invoke-virtual {v2, v1}, Ljava/util/Vector;->elementAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljdbm/helper/CachePolicyListener;

    .line 255
    .local v2, "listener":Ljdbm/helper/CachePolicyListener;
    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljdbm/helper/CachePolicyListener;->cacheObjectEvicted(Ljava/lang/Object;)V

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 258
    .end local v1    # "i":I
    .end local v2    # "listener":Ljdbm/helper/CachePolicyListener;
    :cond_0
    invoke-virtual {p0, v0}, Ljdbm/helper/MRU;->removeEntry(Ljdbm/helper/CacheEntry;)V

    .line 259
    iget-object v1, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 261
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljdbm/helper/CacheEntry;->setValue(Ljava/lang/Object;)V

    .line 262
    return-object v0
.end method

.method public put(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljdbm/helper/CacheEvictionException;
        }
    .end annotation

    .line 107
    iget-object v0, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/CacheEntry;

    .line 108
    .local v0, "entry":Ljdbm/helper/CacheEntry;
    if-eqz v0, :cond_0

    .line 109
    invoke-virtual {v0, p2}, Ljdbm/helper/CacheEntry;->setValue(Ljava/lang/Object;)V

    .line 110
    invoke-virtual {p0, v0}, Ljdbm/helper/MRU;->touchEntry(Ljdbm/helper/CacheEntry;)V

    .line 111
    goto :goto_1

    .line 113
    :cond_0
    iget-object v1, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v1}, Ljava/util/Hashtable;->size()I

    move-result v1

    iget v2, p0, Ljdbm/helper/MRU;->_max:I

    if-ne v1, v2, :cond_1

    .line 115
    invoke-virtual {p0}, Ljdbm/helper/MRU;->purgeEntry()Ljdbm/helper/CacheEntry;

    move-result-object v0

    .line 116
    invoke-virtual {v0, p1}, Ljdbm/helper/CacheEntry;->setKey(Ljava/lang/Object;)V

    .line 117
    invoke-virtual {v0, p2}, Ljdbm/helper/CacheEntry;->setValue(Ljava/lang/Object;)V

    .line 118
    goto :goto_0

    .line 119
    :cond_1
    new-instance v1, Ljdbm/helper/CacheEntry;

    invoke-direct {v1, p1, p2}, Ljdbm/helper/CacheEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v0, v1

    .line 121
    :goto_0
    invoke-virtual {p0, v0}, Ljdbm/helper/MRU;->addEntry(Ljdbm/helper/CacheEntry;)V

    .line 122
    iget-object v1, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    :goto_1
    return-void
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 3
    .param p1, "key"    # Ljava/lang/Object;

    .line 145
    iget-object v0, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljdbm/helper/CacheEntry;

    .line 146
    .local v0, "entry":Ljdbm/helper/CacheEntry;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {p0, v0}, Ljdbm/helper/MRU;->removeEntry(Ljdbm/helper/CacheEntry;)V

    .line 148
    iget-object v1, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljdbm/helper/CacheEntry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    :cond_0
    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 157
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Ljdbm/helper/MRU;->_hash:Ljava/util/Hashtable;

    .line 158
    const/4 v0, 0x0

    iput-object v0, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    .line 159
    iput-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    .line 160
    return-void
.end method

.method protected removeEntry(Ljdbm/helper/CacheEntry;)V
    .locals 3
    .param p1, "entry"    # Ljdbm/helper/CacheEntry;

    .line 212
    iget-object v0, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    if-ne p1, v0, :cond_0

    .line 213
    invoke-virtual {p1}, Ljdbm/helper/CacheEntry;->getNext()Ljdbm/helper/CacheEntry;

    move-result-object v0

    iput-object v0, p0, Ljdbm/helper/MRU;->_first:Ljdbm/helper/CacheEntry;

    .line 215
    :cond_0
    iget-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    if-ne v0, p1, :cond_1

    .line 216
    invoke-virtual {p1}, Ljdbm/helper/CacheEntry;->getPrevious()Ljdbm/helper/CacheEntry;

    move-result-object v0

    iput-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    .line 218
    :cond_1
    invoke-virtual {p1}, Ljdbm/helper/CacheEntry;->getPrevious()Ljdbm/helper/CacheEntry;

    move-result-object v0

    .line 219
    .local v0, "previous":Ljdbm/helper/CacheEntry;
    invoke-virtual {p1}, Ljdbm/helper/CacheEntry;->getNext()Ljdbm/helper/CacheEntry;

    move-result-object v1

    .line 220
    .local v1, "next":Ljdbm/helper/CacheEntry;
    if-eqz v0, :cond_2

    .line 221
    invoke-virtual {v0, v1}, Ljdbm/helper/CacheEntry;->setNext(Ljdbm/helper/CacheEntry;)V

    .line 223
    :cond_2
    if-eqz v1, :cond_3

    .line 224
    invoke-virtual {v1, v0}, Ljdbm/helper/CacheEntry;->setPrevious(Ljdbm/helper/CacheEntry;)V

    .line 226
    :cond_3
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljdbm/helper/CacheEntry;->setPrevious(Ljdbm/helper/CacheEntry;)V

    .line 227
    invoke-virtual {p1, v2}, Ljdbm/helper/CacheEntry;->setNext(Ljdbm/helper/CacheEntry;)V

    .line 228
    return-void
.end method

.method public removeListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 1
    .param p1, "listener"    # Ljdbm/helper/CachePolicyListener;

    .line 190
    iget-object v0, p0, Ljdbm/helper/MRU;->listeners:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->removeElement(Ljava/lang/Object;)Z

    .line 191
    return-void
.end method

.method protected touchEntry(Ljdbm/helper/CacheEntry;)V
    .locals 1
    .param p1, "entry"    # Ljdbm/helper/CacheEntry;

    .line 234
    iget-object v0, p0, Ljdbm/helper/MRU;->_last:Ljdbm/helper/CacheEntry;

    if-ne v0, p1, :cond_0

    .line 235
    return-void

    .line 237
    :cond_0
    invoke-virtual {p0, p1}, Ljdbm/helper/MRU;->removeEntry(Ljdbm/helper/CacheEntry;)V

    .line 238
    invoke-virtual {p0, p1}, Ljdbm/helper/MRU;->addEntry(Ljdbm/helper/CacheEntry;)V

    .line 239
    return-void
.end method
