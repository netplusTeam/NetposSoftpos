.class Lorg/jctools/maps/NonBlockingIdentityHashMap$2;
.super Ljava/util/AbstractSet;
.source "NonBlockingIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "TTypeK;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 1175
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1176
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1178
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTypeK;>;"
        }
    .end annotation

    .line 1180
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotK;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1179
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public size()I
    .locals 1

    .line 1177
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$2;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$2;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

    move-result v0

    return v0
.end method
