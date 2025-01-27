.class Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;
.super Ljava/lang/Object;
.source "NonBlockingHashMapLong.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
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
        "Ljava/lang/Long;",
        "TTypeV;>;>;"
    }
.end annotation


# instance fields
.field final _ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/jctools/maps/NonBlockingHashMapLong<",
            "TTypeV;>.SnapshotV;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 1

    .line 1135
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotE;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1138
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 1133
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotE;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->next()Ljava/util/Map$Entry;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/util/Map$Entry;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map$Entry<",
            "Ljava/lang/Long;",
            "TTypeV;>;"
        }
    .end annotation

    .line 1137
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {v2}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iget-object v3, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-static {v3}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->access$2000(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)Ljava/lang/Object;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;Ljava/lang/Long;Ljava/lang/Object;)V

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1136
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotE;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotE;->_ss:Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->remove()V

    return-void
.end method
