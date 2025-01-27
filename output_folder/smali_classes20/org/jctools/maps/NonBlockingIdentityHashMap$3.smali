.class Lorg/jctools/maps/NonBlockingIdentityHashMap$3;
.super Ljava/util/AbstractSet;
.source "NonBlockingIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;->entrySet()Ljava/util/Set;
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
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 1227
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1228
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "o"    # Ljava/lang/Object;

    .line 1236
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1237
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1238
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 1239
    .local v1, "v":Ljava/lang/Object;, "TTypeV;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2
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

    .line 1241
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 4
    .param p1, "o"    # Ljava/lang/Object;

    .line 1231
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    instance-of v0, p1, Ljava/util/Map$Entry;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 1232
    :cond_0
    move-object v0, p1

    check-cast v0, Ljava/util/Map$Entry;

    .line 1233
    .local v0, "e":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->remove(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public size()I
    .locals 1

    .line 1229
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$3;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$3;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$3;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

    move-result v0

    return v0
.end method
