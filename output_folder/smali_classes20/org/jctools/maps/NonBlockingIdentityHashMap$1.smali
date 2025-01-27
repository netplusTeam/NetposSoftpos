.class Lorg/jctools/maps/NonBlockingIdentityHashMap$1;
.super Ljava/util/AbstractCollection;
.source "NonBlockingIdentityHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/jctools/maps/NonBlockingIdentityHashMap;->values()Ljava/util/Collection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractCollection<",
        "TTypeV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;


# direct methods
.method constructor <init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jctools/maps/NonBlockingIdentityHashMap;

    .line 1136
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$1;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$1;"
    iput-object p1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {p0}, Ljava/util/AbstractCollection;-><init>()V

    return-void
.end method


# virtual methods
.method public clear()V
    .locals 1

    .line 1137
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$1;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$1;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->clear()V

    return-void
.end method

.method public contains(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "v"    # Ljava/lang/Object;

    .line 1139
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$1;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$1;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0, p1}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->containsValue(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "TTypeV;>;"
        }
    .end annotation

    .line 1140
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$1;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$1;"
    new-instance v0, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;

    iget-object v1, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-direct {v0, v1}, Lorg/jctools/maps/NonBlockingIdentityHashMap$SnapshotV;-><init>(Lorg/jctools/maps/NonBlockingIdentityHashMap;)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1138
    .local p0, "this":Lorg/jctools/maps/NonBlockingIdentityHashMap$1;, "Lorg/jctools/maps/NonBlockingIdentityHashMap$1;"
    iget-object v0, p0, Lorg/jctools/maps/NonBlockingIdentityHashMap$1;->this$0:Lorg/jctools/maps/NonBlockingIdentityHashMap;

    invoke-virtual {v0}, Lorg/jctools/maps/NonBlockingIdentityHashMap;->size()I

    move-result v0

    return v0
.end method
