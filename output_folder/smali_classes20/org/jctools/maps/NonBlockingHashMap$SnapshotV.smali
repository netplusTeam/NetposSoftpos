.class Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;
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

.field private _nextK:Ljava/lang/Object;

.field private _nextV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field private _prevK:Ljava/lang/Object;

.field private _prevV:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TTypeV;"
        }
    .end annotation
.end field

.field final _sskvs:[Ljava/lang/Object;

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingHashMap;)V
    .locals 3

    .line 1192
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1194
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingHashMap;->access$1100(Lorg/jctools/maps/NonBlockingHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .line 1195
    .local v0, "topkvs":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingHashMap$CHM;

    move-result-object v1

    .line 1196
    .local v1, "topchm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    iget-object v2, v1, Lorg/jctools/maps/NonBlockingHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1200
    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    .line 1201
    nop

    .line 1208
    .end local v0    # "topkvs":[Ljava/lang/Object;
    .end local v1    # "topchm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->next()Ljava/lang/Object;

    .line 1209
    return-void

    .line 1205
    .restart local v0    # "topkvs":[Ljava/lang/Object;
    .restart local v1    # "topchm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lorg/jctools/maps/NonBlockingHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingHashMap$CHM;Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Z)V

    .line 1206
    .end local v0    # "topkvs":[Ljava/lang/Object;
    .end local v1    # "topchm":Lorg/jctools/maps/NonBlockingHashMap$CHM;
    goto :goto_0
.end method

.method static synthetic access$1900(Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    .line 1190
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2000(Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;

    .line 1190
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1244
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1215
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method key(I)Ljava/lang/Object;
    .locals 1
    .param p1, "idx"    # I

    .line 1211
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/jctools/maps/NonBlockingHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method length()I
    .locals 1

    .line 1210
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingHashMap;->access$800([Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 1222
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_idx:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1223
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    .line 1224
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1225
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    .line 1228
    :cond_2
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1229
    iget v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->key(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    .line 1230
    if-eqz v0, :cond_2

    sget-object v1, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    .line 1232
    invoke-virtual {v0, v1}, Lorg/jctools/maps/NonBlockingHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1235
    :cond_3
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 1243
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 5

    .line 1238
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1239
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    sget-object v3, Lorg/jctools/maps/NonBlockingHashMap;->TOMBSTONE:Ljava/lang/Object;

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingHashMap;->access$1800(Lorg/jctools/maps/NonBlockingHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1240
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1241
    return-void

    .line 1238
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
