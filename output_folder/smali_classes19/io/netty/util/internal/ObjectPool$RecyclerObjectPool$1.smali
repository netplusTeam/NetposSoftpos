.class Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;
.super Lio/netty/util/Recycler;
.source "ObjectPool.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;-><init>(Lio/netty/util/internal/ObjectPool$ObjectCreator;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/netty/util/Recycler<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

.field final synthetic val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;


# direct methods
.method constructor <init>(Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;Lio/netty/util/internal/ObjectPool$ObjectCreator;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

    .line 74
    .local p0, "this":Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;, "Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;"
    iput-object p1, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->this$0:Lio/netty/util/internal/ObjectPool$RecyclerObjectPool;

    iput-object p2, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;

    invoke-direct {p0}, Lio/netty/util/Recycler;-><init>()V

    return-void
.end method


# virtual methods
.method protected newObject(Lio/netty/util/Recycler$Handle;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/Recycler$Handle<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 77
    .local p0, "this":Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;, "Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;"
    .local p1, "handle":Lio/netty/util/Recycler$Handle;, "Lio/netty/util/Recycler$Handle<TT;>;"
    iget-object v0, p0, Lio/netty/util/internal/ObjectPool$RecyclerObjectPool$1;->val$creator:Lio/netty/util/internal/ObjectPool$ObjectCreator;

    invoke-interface {v0, p1}, Lio/netty/util/internal/ObjectPool$ObjectCreator;->newObject(Lio/netty/util/internal/ObjectPool$Handle;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method
