.class Lorg/jctools/maps/NonBlockingHashMapLong$2;
.super Ljava/util/AbstractSet;
.source "NonBlockingHashMapLong.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingHashMapLong;->keySet()Ljava/util/Set;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractSet<",
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingHashMapLong;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingHashMapLong;

    .line 1103
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1104
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1106
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic iterator()Ljava/util/Iterator;
    .locals 1

    .line 1103
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    invoke-virtual {p0}, Lorg/jctools/maps/NonBlockingHashMapLong$2;->iterator()Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    move-result-object v0

    return-object v0
.end method

.method public iterator()Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/jctools/maps/NonBlockingHashMapLong<",
            "TTypeV;>.Iterator",
            "Long;"
        }
    .end annotation

    .line 1108
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    new-instance v0, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingHashMapLong$IteratorLong;-><init>(Lorg/jctools/maps/NonBlockingHashMapLong;)V

    return-object v0
.end method

.method public remove(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "k"    # Ljava/lang/Object;

    .line 1107
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingHashMapLong;->remove(Ljava/lang/Object;)Ljava/lang/Object;

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

    .line 1105
    .local p0, "this":Lorg/jctools/maps/NonBlockingHashMapLong$2;, "Lorg/jctools/maps/NonBlockingHashMapLong$2;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingHashMapLong$2;->this$0:Lorg/jctools/maps/NonBlockingHashMapLong;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingHashMapLong;->size()I

    move-result v0

    return v0
.end method
