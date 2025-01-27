.class Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;
.super Ljava/lang/Object;
.source "NonBlockingHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotK"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTypeK;>;",
        "Ljava/util/Enumeration<",
        "TTypeK;>;"
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

    .line 1280
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-direct {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingHashMap;)V

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    return-void
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1285
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1283
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeK;"
        }
    .end annotation

    .line 1282
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->next()Ljava/lang/Object;

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->access$1900(Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeK;"
        }
    .end annotation

    .line 1284
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 1281
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotK;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotK;->_ss:Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->remove()V

    return-void
.end method
