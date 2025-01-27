.class Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;
.super Lorg/jctools/maps/AbstractEntry;
.source "NonBlockingIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "NBHMEntry"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/jctools/maps/AbstractEntry<",
        "TTypeK;TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TTypeK;TTypeV;)V"
        }
    .end annotation

    .line 1188
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.NBHMEntry;"
    .local p2, "k":Ljava/lang/Object;, "TTypeK;"
    .local p3, "v":Ljava/lang/Object;, "TTypeV;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

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

    .line 1190
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;, "Lorg/jctools/maps/NonBlockingIdentityHashMap<TTypeK;TTypeV;>.NBHMEntry;"
    .local p1, "val":Ljava/lang/Object;, "TTypeV;"
    if-eqz p1, :cond_0

    .line 1191
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->_val:Ljava/lang/Object;

    .line 1192
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$NBHMEntry;->_key:Ljava/lang/Object;

    invoke-virtual {v0, v1, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/NullPointerException;

    invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V

    throw v0
.end method
