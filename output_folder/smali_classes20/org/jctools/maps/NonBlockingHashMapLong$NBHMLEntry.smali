.class Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;
.super Lorg/jctools/maps/AbstractEntry;
.source "NonBlockingHashMapLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NBHMLEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jctools/maps/AbstractEntry<",
        "Ljava/lang/Long;",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;Ljava/lang/Long;Ljava/lang/Object;)V
    .locals 0
    .param p2, "k"    # Ljava/lang/Long;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            "TTypeV;)V"
        }
    .end annotation

    .line 1126
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.NBHMLEntry;"
    .local p3, "v":Ljava/lang/Object;, "TTypeV;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0, p2, p3}, Lorg/jctools/maps/AbstractEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeV;)TTypeV;"
        }
    .end annotation

    .line 1128
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;, "Lorg/jctools/maps/NonBlockingHashMapLong<TTypeV;>.NBHMLEntry;"
    .local p1, "val":Ljava/lang/Object;, "TTypeV;"
    if-eqz p1, :cond_0

    .line 1129
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->_val:Ljava/lang/Object;

    .line 1130
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$NBHMLEntry;->_key:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v0, v1, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->put(Ljava/lang/Long;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1128
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
