.class public Ljdbm/helper/SoftCache;
.super Ljava/lang/Object;
.source "SoftCache.java"

# interfaces
.implements Ljdbm/helper/CachePolicy;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljdbm/helper/SoftCache$Entry;
    }
.end annotation


# static fields
.field private static final DEFAULT_LOAD_FACTOR:F = 1.5f

.field private static final INITIAL_CAPACITY:I = 0x80


# instance fields
.field private final _cacheMap:Ljava/util/Map;

.field private final _clearQueue:Ljava/lang/ref/ReferenceQueue;

.field private final _internal:Ljdbm/helper/CachePolicy;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 99
    new-instance v0, Ljdbm/helper/MRU;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Ljdbm/helper/MRU;-><init>(I)V

    invoke-direct {p0, v0}, Ljdbm/helper/SoftCache;-><init>(Ljdbm/helper/CachePolicy;)V

    .line 100
    return-void
.end method

.method public constructor <init>(FLjdbm/helper/CachePolicy;)V
    .locals 2
    .param p1, "loadFactor"    # F
    .param p2, "internal"    # Ljdbm/helper/CachePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 125
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    new-instance v0, Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v0}, Ljava/lang/ref/ReferenceQueue;-><init>()V

    iput-object v0, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    .line 126
    if-eqz p2, :cond_0

    .line 129
    iput-object p2, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    .line 130
    new-instance v0, Ljava/util/HashMap;

    const/16 v1, 0x80

    invoke-direct {v0, v1, p1}, Ljava/util/HashMap;-><init>(IF)V

    iput-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    .line 131
    return-void

    .line 127
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "Internal cache cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljdbm/helper/CachePolicy;)V
    .locals 1
    .param p1, "internal"    # Ljdbm/helper/CachePolicy;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;
        }
    .end annotation

    .line 110
    const/high16 v0, 0x3fc00000    # 1.5f

    invoke-direct {p0, v0, p1}, Ljdbm/helper/SoftCache;-><init>(FLjdbm/helper/CachePolicy;)V

    .line 111
    return-void
.end method

.method private final removeClearedEntries()V
    .locals 3

    .line 253
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v0}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    .local v0, "r":Ljava/lang/ref/Reference;
    :goto_0
    if-eqz v0, :cond_0

    .line 254
    move-object v1, v0

    check-cast v1, Ljdbm/helper/SoftCache$Entry;

    invoke-virtual {v1}, Ljdbm/helper/SoftCache$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    .line 255
    .local v1, "key":Ljava/lang/Object;
    iget-object v2, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    .end local v1    # "key":Ljava/lang/Object;
    iget-object v1, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-virtual {v1}, Ljava/lang/ref/ReferenceQueue;->poll()Ljava/lang/ref/Reference;

    move-result-object v0

    goto :goto_0

    .line 257
    .end local v0    # "r":Ljava/lang/ref/Reference;
    :cond_0
    return-void
.end method


# virtual methods
.method public addListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 1
    .param p1, "listener"    # Ljdbm/helper/CachePolicyListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 235
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->addListener(Ljdbm/helper/CachePolicyListener;)V

    .line 236
    return-void
.end method

.method public elements()Ljava/util/Enumeration;
    .locals 1

    .line 224
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->elements()Ljava/util/Enumeration;

    move-result-object v0

    return-object v0
.end method

.method public get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p1, "key"    # Ljava/lang/Object;

    .line 175
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 176
    .local v0, "value":Ljava/lang/Object;
    if-eqz v0, :cond_0

    .line 177
    return-object v0

    .line 180
    :cond_0
    invoke-direct {p0}, Ljdbm/helper/SoftCache;->removeClearedEntries()V

    .line 181
    iget-object v1, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljdbm/helper/SoftCache$Entry;

    .line 182
    .local v1, "entry":Ljdbm/helper/SoftCache$Entry;
    const/4 v2, 0x0

    if-nez v1, :cond_1

    .line 183
    return-object v2

    .line 185
    :cond_1
    invoke-virtual {v1}, Ljdbm/helper/SoftCache$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    .line 186
    if-nez v0, :cond_2

    .line 187
    return-object v2

    .line 191
    :cond_2
    :try_start_0
    iget-object v3, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v3, p1, v0}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljdbm/helper/CacheEvictionException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    nop

    .line 197
    return-object v0

    .line 192
    :catch_0
    move-exception v3

    .line 194
    .local v3, "e":Ljdbm/helper/CacheEvictionException;
    iget-object v4, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 195
    return-object v2
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

    .line 143
    if-eqz p1, :cond_1

    .line 145
    if-eqz p2, :cond_0

    .line 148
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1, p2}, Ljdbm/helper/CachePolicy;->put(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 149
    invoke-direct {p0}, Ljdbm/helper/SoftCache;->removeClearedEntries()V

    .line 150
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    new-instance v1, Ljdbm/helper/SoftCache$Entry;

    iget-object v2, p0, Ljdbm/helper/SoftCache;->_clearQueue:Ljava/lang/ref/ReferenceQueue;

    invoke-direct {v1, p1, p2, v2}, Ljdbm/helper/SoftCache$Entry;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/ref/ReferenceQueue;)V

    invoke-interface {v0, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    return-void

    .line 146
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "value cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 144
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "key cannot be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public remove(Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;

    .line 207
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 208
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->remove(Ljava/lang/Object;)V

    .line 209
    return-void
.end method

.method public removeAll()V
    .locals 1

    .line 215
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_cacheMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 216
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0}, Ljdbm/helper/CachePolicy;->removeAll()V

    .line 217
    return-void
.end method

.method public removeListener(Ljdbm/helper/CachePolicyListener;)V
    .locals 1
    .param p1, "listener"    # Ljdbm/helper/CachePolicyListener;

    .line 243
    iget-object v0, p0, Ljdbm/helper/SoftCache;->_internal:Ljdbm/helper/CachePolicy;

    invoke-interface {v0, p1}, Ljdbm/helper/CachePolicy;->removeListener(Ljdbm/helper/CachePolicyListener;)V

    .line 244
    return-void
.end method
