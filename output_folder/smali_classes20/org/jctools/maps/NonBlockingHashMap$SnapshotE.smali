.class Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;
.super Ljava/lang/Object;
.source "NonBlockingHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotE"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/util/Map$Entry<",
        "TTypeK;TTypeV;>;>;"
    }
.end annotation


# instance fields
.field final _ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingHashMap<",
            "TTypeK;TTypeV;>.SnapshotV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 1

    .line 1360
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1363
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1358
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotE;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "TTypeK;TTypeV;>;"
        }
    .end annotation

    .line 1362
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->next()Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$NBHMEntry;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-static {v3}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->access$2000(Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMap$NBHMEntry;-><init>(Lorg/jctools/maps/NonBlockingHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1361
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->remove()V

    return-void
.end method
