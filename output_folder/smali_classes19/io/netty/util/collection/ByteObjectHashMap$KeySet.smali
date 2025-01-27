.class final Lio/netty/util/collection/ByteObjectHashMap$KeySet;
.super Ljava/util/AbstractSet;
.source "ByteObjectHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/netty/util/collection/ByteObjectHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "KeySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Byte;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/collection/ByteObjectHashMap;


# direct methods
.method private constructor <init>(Lio/netty/util/collection/ByteObjectHashMap;)V
    .locals 0

    .line 534
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    iput-object p1, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lio/netty/util/collection/ByteObjectHashMap;Lio/netty/util/collection/ByteObjectHashMap$1;)V
    .locals 0
    .param p1, "x0"    # Lio/netty/util/collection/ByteObjectHashMap;
    .param p2, "x1"    # Lio/netty/util/collection/ByteObjectHashMap$1;

    .line 534
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    invoke-direct {p0, p1}, Lio/netty/util/collection/ByteObjectHashMap$KeySet;-><init>(Lio/netty/util/collection/ByteObjectHashMap;)V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 565
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v0}, Lio/netty/util/collection/ByteObjectHashMap;->clear()V

    .line 566
    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 542
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v0, p1}, Lio/netty/util/collection/ByteObjectHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/Byte;",
            ">;"
        }
    .end annotation

    .line 570
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    new-instance v0, Lio/netty/util/collection/ByteObjectHashMap$KeySet$1;

    invoke-direct {v0, p0}, Lio/netty/util/collection/ByteObjectHashMap$KeySet$1;-><init>(Lio/netty/util/collection/ByteObjectHashMap$KeySet;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "o"    # Ljava/lang/Object;

    .line 547
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v0, p1}, Lio/netty/util/collection/ByteObjectHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public retainAll(Ljava/util/Collection;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "*>;)Z"
        }
    .end annotation

    .line 552
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    .local p1, "retainedKeys":Ljava/util/Collection;, "Ljava/util/Collection<*>;"
    const/4 v0, 0x0

    .line 553
    .local v0, "changed":Z
    iget-object v1, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v1}, Lio/netty/util/collection/ByteObjectHashMap;->entries()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<TV;>;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 554
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry;

    .line 555
    .local v2, "entry":Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry;, "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<TV;>;"
    invoke-interface {v2}, Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry;->key()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    invoke-interface {p1, v3}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 556
    const/4 v0, 0x1

    .line 557
    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    .line 559
    .end local v2    # "entry":Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry;, "Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<TV;>;"
    :cond_0
    goto :goto_0

    .line 560
    .end local v1    # "iter":Ljava/util/Iterator;, "Ljava/util/Iterator<Lio/netty/util/collection/ByteObjectMap$PrimitiveEntry<TV;>;>;"
    :cond_1
    return v0
.end method

.method public size()I
    .locals 1

    .line 537
    .local p0, "this":Lio/netty/util/collection/ByteObjectHashMap$KeySet;, "Lio/netty/util/collection/ByteObjectHashMap<TV;>.KeySet;"
    iget-object v0, p0, Lio/netty/util/collection/ByteObjectHashMap$KeySet;->this$0:Lio/netty/util/collection/ByteObjectHashMap;

    invoke-virtual {v0}, Lio/netty/util/collection/ByteObjectHashMap;->size()I

    move-result v0

    return v0
.end method
