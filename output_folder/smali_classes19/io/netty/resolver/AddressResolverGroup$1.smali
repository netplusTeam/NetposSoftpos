.class Lio/netty/resolver/AddressResolverGroup$1;
.super Ljava/lang/Object;
.source "AddressResolverGroup.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/AddressResolverGroup;->getResolver(Lio/netty/util/concurrent/EventExecutor;)Lio/netty/resolver/AddressResolver;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/AddressResolverGroup;

.field final synthetic val$executor:Lio/netty/util/concurrent/EventExecutor;

.field final synthetic val$newResolver:Lio/netty/resolver/AddressResolver;


# direct methods
.method constructor <init>(Lio/netty/resolver/AddressResolverGroup;Lio/netty/util/concurrent/EventExecutor;Lio/netty/resolver/AddressResolver;)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/AddressResolverGroup;

    .line 77
    .local p0, "this":Lio/netty/resolver/AddressResolverGroup$1;, "Lio/netty/resolver/AddressResolverGroup$1;"
    iput-object p1, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    iput-object p2, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$executor:Lio/netty/util/concurrent/EventExecutor;

    iput-object p3, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$newResolver:Lio/netty/resolver/AddressResolver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 80
    .local p0, "this":Lio/netty/resolver/AddressResolverGroup$1;, "Lio/netty/resolver/AddressResolverGroup$1;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/lang/Object;>;"
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v0}, Lio/netty/resolver/AddressResolverGroup;->access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;

    move-result-object v0

    monitor-enter v0

    .line 81
    :try_start_0
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v1}, Lio/netty/resolver/AddressResolverGroup;->access$000(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    iget-object v1, p0, Lio/netty/resolver/AddressResolverGroup$1;->this$0:Lio/netty/resolver/AddressResolverGroup;

    invoke-static {v1}, Lio/netty/resolver/AddressResolverGroup;->access$100(Lio/netty/resolver/AddressResolverGroup;)Ljava/util/Map;

    move-result-object v1

    iget-object v2, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$executor:Lio/netty/util/concurrent/EventExecutor;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 84
    iget-object v0, p0, Lio/netty/resolver/AddressResolverGroup$1;->val$newResolver:Lio/netty/resolver/AddressResolver;

    invoke-interface {v0}, Lio/netty/resolver/AddressResolver;->close()V

    .line 85
    return-void

    .line 83
    :catchall_0
    move-exception v1

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method
