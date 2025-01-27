.class public Lorg/apache/commons/collections4/list/NodeCachingLinkedList;
.super Lorg/apache/commons/collections4/list/AbstractLinkedList;
.source "NodeCachingLinkedList.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lorg/apache/commons/collections4/list/AbstractLinkedList<",
        "TE;>;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field private static final DEFAULT_MAXIMUM_CACHE_SIZE:I = 0x14

.field private static final serialVersionUID:J = 0x5fb9deb63bbc3f09L


# instance fields
.field private transient cacheSize:I

.field private transient firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation
.end field

.field private maximumCacheSize:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 73
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    const/16 v0, 0x14

    invoke-direct {p0, v0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;-><init>(I)V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 92
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-direct {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>()V

    .line 93
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 94
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->init()V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/util/Collection;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "+TE;>;)V"
        }
    .end annotation

    .line 82
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "coll":Ljava/util/Collection;, "Ljava/util/Collection<+TE;>;"
    invoke-direct {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;-><init>(Ljava/util/Collection;)V

    .line 83
    const/16 v0, 0x14

    iput v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 84
    return-void
.end method

.method private readObject(Ljava/io/ObjectInputStream;)V
    .locals 0
    .param p1, "in"    # Ljava/io/ObjectInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 246
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectInputStream;->defaultReadObject()V

    .line 247
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doReadObject(Ljava/io/ObjectInputStream;)V

    .line 248
    return-void
.end method

.method private writeObject(Ljava/io/ObjectOutputStream;)V
    .locals 0
    .param p1, "out"    # Ljava/io/ObjectOutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    invoke-virtual {p1}, Ljava/io/ObjectOutputStream;->defaultWriteObject()V

    .line 235
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->doWriteObject(Ljava/io/ObjectOutputStream;)V

    .line 236
    return-void
.end method


# virtual methods
.method protected addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 162
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->isCacheFull()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 164
    return-void

    .line 167
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 168
    .local v0, "nextCachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v1, 0x0

    iput-object v1, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->previous:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 169
    iput-object v0, p1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 170
    invoke-virtual {p1, v1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 171
    iput-object p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 172
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 173
    return-void
.end method

.method protected createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "value":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v0

    .line 186
    .local v0, "cachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    if-nez v0, :cond_0

    .line 187
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->createNode(Ljava/lang/Object;)Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    move-result-object v1

    return-object v1

    .line 189
    :cond_0
    invoke-virtual {v0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->setValue(Ljava/lang/Object;)V

    .line 190
    return-object v0
.end method

.method protected getMaximumCacheSize()I
    .locals 1

    .line 104
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    return v0
.end method

.method protected getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;"
        }
    .end annotation

    .line 135
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 136
    return-object v1

    .line 138
    :cond_0
    iget-object v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 139
    .local v0, "cachedNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v2, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iput-object v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->firstCachedNode:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 140
    iput-object v1, v0, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 142
    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    add-int/lit8 v1, v1, -0x1

    iput v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    .line 143
    return-object v0
.end method

.method protected isCacheFull()Z
    .locals 2

    .line 152
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected removeAllNodes()V
    .locals 4

    .line 216
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->size:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    iget v2, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 217
    .local v0, "numberOfNodesToCache":I
    iget-object v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->header:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 218
    .local v1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    const/4 v2, 0x0

    .local v2, "currentIndex":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 219
    move-object v3, v1

    .line 220
    .local v3, "oldNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    iget-object v1, v1, Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;->next:Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    .line 221
    invoke-virtual {p0, v3}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 218
    .end local v3    # "oldNode":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 223
    .end local v2    # "currentIndex":I
    :cond_0
    invoke-super {p0}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeAllNodes()V

    .line 224
    return-void
.end method

.method protected removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<",
            "TE;>;)V"
        }
    .end annotation

    .line 201
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    .local p1, "node":Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;, "Lorg/apache/commons/collections4/list/AbstractLinkedList$Node<TE;>;"
    invoke-super {p0, p1}, Lorg/apache/commons/collections4/list/AbstractLinkedList;->removeNode(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 202
    invoke-virtual {p0, p1}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->addNodeToCache(Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;)V

    .line 203
    return-void
.end method

.method protected setMaximumCacheSize(I)V
    .locals 0
    .param p1, "maximumCacheSize"    # I

    .line 113
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    iput p1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    .line 114
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->shrinkCacheToMaximumSize()V

    .line 115
    return-void
.end method

.method protected shrinkCacheToMaximumSize()V
    .locals 2

    .line 122
    .local p0, "this":Lorg/apache/commons/collections4/list/NodeCachingLinkedList;, "Lorg/apache/commons/collections4/list/NodeCachingLinkedList<TE;>;"
    :goto_0
    iget v0, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->cacheSize:I

    iget v1, p0, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->maximumCacheSize:I

    if-le v0, v1, :cond_0

    .line 123
    invoke-virtual {p0}, Lorg/apache/commons/collections4/list/NodeCachingLinkedList;->getNodeFromCache()Lorg/apache/commons/collections4/list/AbstractLinkedList$Node;

    goto :goto_0

    .line 125
    :cond_0
    return-void
.end method
