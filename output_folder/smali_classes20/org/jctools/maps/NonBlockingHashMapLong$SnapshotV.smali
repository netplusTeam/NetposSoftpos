.class Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;
.super Ljava/lang/Object;
.source "NonBlockingHashMapLong.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SnapshotV"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TTypeV;>;",
        "Ljava/util/Enumeration<",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field private _idx:I

.field private _nextK:J

.field private _nextV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field private _prevK:J

.field private _prevV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field final _sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 2

    .line 975
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 978
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$1500(Lorg/jctools/maps/NonBlockingHashMapLong;)Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    move-result-object v0

    .line 979
    .local v0, "topchm":Lorg/jctools/maps/NonBlockingHashMapLong$CHM;
    iget-object v1, v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_newchm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    if-nez v1, :cond_0

    .line 980
    nop

    .line 988
    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    .line 990
    const/4 p1, -0x1

    iput p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    .line 991
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    .line 992
    return-void

    .line 983
    :cond_0
    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$300(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;Z)V

    goto :goto_0
.end method

.method static synthetic access$1900(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)J
    .locals 2
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    .line 973
    iget-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    return-wide v0
.end method

.method static synthetic access$2000(Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;

    .line 973
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1030
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 998
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method key(I)J
    .locals 2
    .param p1, "idx"    # I

    .line 994
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method length()I
    .locals 1

    .line 993
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-object v0, v0, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->_keys:[J

    array-length v0, v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 1005
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1006
    :cond_1
    :goto_0
    iget-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    iput-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    .line 1007
    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1008
    const/4 v2, 0x0

    iput-object v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    .line 1011
    const-wide/16 v2, 0x0

    if-ne v0, v1, :cond_2

    .line 1012
    const/4 v0, 0x0

    iput v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    .line 1013
    iput-wide v2, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    .line 1014
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0, v2, v3}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0

    .line 1016
    :cond_2
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1017
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_idx:I

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->key(I)J

    move-result-wide v0

    iput-wide v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextK:J

    .line 1018
    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 1019
    invoke-virtual {v4, v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong;->get(J)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1022
    :cond_3
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 1029
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 5

    .line 1025
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1026
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_sschm:Lorg/jctools/maps/NonBlockingHashMapLong$CHM;

    iget-wide v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevK:J

    invoke-static {}, Lorg/jctools/maps/NonBlockingHashMapLong;->access$800()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMapLong$CHM;->access$100(Lorg/jctools/maps/NonBlockingHashMapLong$CHM;JLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1027
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1028
    return-void

    .line 1025
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
