.class Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;
.super Ljava/lang/Object;
.source "NonBlockingIdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
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
.field final _ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingIdentityHashMap<",
            "TTypeK;TTypeV;>.SnapshotV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 1

    .line 1198
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1201
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1196
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotE;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->next()Ljava/util/Map$Entry;

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

    .line 1200
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->access$2000(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object v2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-static {v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->access$2100(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1199
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->remove()V

    return-void
.end method
