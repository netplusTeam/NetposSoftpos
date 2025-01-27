.class Lorg/jctools/maps/NonBlockingHashMap$3;
.super Ljava/util/AbstractSet;
.source "NonBlockingHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMap;->entrySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/util/Map$Entry<",
        "TTypeK;TTypeV;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingHashMap;

    .line 1389
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1390
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1398
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 1399
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1400
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jctools/maps/NonBlockingHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 1401
    .local v2, "v":Ljava/lang/Object;, "TTypeV;"
    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/util/Map$Entry<",
            "TTypeK;TTypeV;>;>;"
        }
    .end annotation

    .line 1403
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1393
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1394
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1395
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .line 1391
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$3;, "Lorg/jctools/maps/NonBlockingHashMap$3;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap;->size()I

    move-result v0

    return v0
.end method
