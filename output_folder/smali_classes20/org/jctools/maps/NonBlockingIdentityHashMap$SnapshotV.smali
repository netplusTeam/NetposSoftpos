.class Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;
.super Ljava/lang/Object;
.source "NonBlockingIdentityHashMap.java"

# interfaces
.implements Ljava/util/Iterator;
.implements Ljava/util/Enumeration;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
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

.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method public constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 3

    .line 1060
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1062
    :goto_0
    invoke-static {p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1100(Lorg/jctools/maps/NonBlockingIdentityHashMap;)[Ljava/lang/Object;

    move-result-object v0

    .line 1063
    .local v0, "topkvs":[Ljava/lang/Object;
    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$700([Ljava/lang/Object;)Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;

    move-result-object v1

    .line 1064
    .local v1, "topchm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    iget-object v2, v1, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->_newkvs:[Ljava/lang/Object;

    if-nez v2, :cond_0

    .line 1068
    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    .line 1069
    nop

    .line 1076
    .end local v0    # "topkvs":[Ljava/lang/Object;
    .end local v1    # "topchm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    .line 1077
    return-void

    .line 1073
    .restart local v0    # "topkvs":[Ljava/lang/Object;
    .restart local v1    # "topchm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    :cond_0
    const/4 v2, 0x1

    invoke-static {v1, p1, v0, v2}, Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;->access$500(Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Z)V

    .line 1074
    .end local v0    # "topkvs":[Ljava/lang/Object;
    .end local v1    # "topchm":Lorg/jctools/maps/NonBlockingIdentityHashMap$CHM;
    goto :goto_0
.end method

.method static synthetic access$2000(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    .line 1058
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$2100(Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;)Ljava/lang/Object;
    .locals 1
    .param p0, "x0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    .line 1058
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public hasMoreElements()Z
    .locals 1

    .line 1112
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->hasNext()Z

    move-result v0

    return v0
.end method

.method public hasNext()Z
    .locals 1

    .line 1083
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

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

    .line 1079
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1300([Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method length()I
    .locals 1

    .line 1078
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    invoke-static {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$800([Ljava/lang/Object;)I

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

    .line 1090
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 1091
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    .line 1092
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1093
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    .line 1096
    :cond_2
    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->length()I

    move-result v1

    if-ge v0, v1, :cond_3

    .line 1097
    iget v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    add-int/lit8 v1, v0, 0x1

    iput v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_idx:I

    invoke-virtual {p0, v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->key(I)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    .line 1098
    if-eqz v0, :cond_2

    .line 1099
    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v1

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextK:Ljava/lang/Object;

    .line 1100
    invoke-virtual {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_nextV:Ljava/lang/Object;

    if-eqz v0, :cond_2

    .line 1103
    :cond_3
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    return-object v0
.end method

.method public nextElement()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TTypeV;"
        }
    .end annotation

    .line 1111
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->next()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 5

    .line 1106
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.SnapshotV;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_sskvs:[Ljava/lang/Object;

    iget-object v2, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevK:Ljava/lang/Object;

    invoke-static {}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1400()Ljava/lang/Object;

    move-result-object v3

    iget-object v4, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    invoke-static {v0, v1, v2, v3, v4}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->access$1900(Lorg/jctools/maps/NonBlockingIdentityHashMap;[Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1108
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;->_prevV:Ljava/lang/Object;

    .line 1109
    return-void

    .line 1106
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method
