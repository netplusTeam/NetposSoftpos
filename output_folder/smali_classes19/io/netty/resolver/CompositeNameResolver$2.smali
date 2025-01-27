.class Lio/netty/resolver/CompositeNameResolver$2;
.super Ljava/lang/Object;
.source "CompositeNameResolver.java"

# interfaces
.implements Lio/netty/util/concurrent/FutureListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/netty/resolver/CompositeNameResolver;->doResolveAllRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lio/netty/util/concurrent/FutureListener<",
        "Ljava/util/List<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lio/netty/resolver/CompositeNameResolver;

.field final synthetic val$inetHost:Ljava/lang/String;

.field final synthetic val$promise:Lio/netty/util/concurrent/Promise;

.field final synthetic val$resolverIndex:I


# direct methods
.method constructor <init>(Lio/netty/resolver/CompositeNameResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;I)V
    .locals 0
    .param p1, "this$0"    # Lio/netty/resolver/CompositeNameResolver;

    .line 95
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver$2;, "Lio/netty/resolver/CompositeNameResolver$2;"
    iput-object p1, p0, Lio/netty/resolver/CompositeNameResolver$2;->this$0:Lio/netty/resolver/CompositeNameResolver;

    iput-object p2, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iput-object p3, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$inetHost:Ljava/lang/String;

    iput p4, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$resolverIndex:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public operationComplete(Lio/netty/util/concurrent/Future;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/Future<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 98
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver$2;, "Lio/netty/resolver/CompositeNameResolver$2;"
    .local p1, "future":Lio/netty/util/concurrent/Future;, "Lio/netty/util/concurrent/Future<Ljava/util/List<TT;>;>;"
    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->isSuccess()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->getNow()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lio/netty/util/concurrent/Promise;->setSuccess(Ljava/lang/Object;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 101
    :cond_0
    iget-object v0, p0, Lio/netty/resolver/CompositeNameResolver$2;->this$0:Lio/netty/resolver/CompositeNameResolver;

    iget-object v1, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$inetHost:Ljava/lang/String;

    iget-object v2, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$promise:Lio/netty/util/concurrent/Promise;

    iget v3, p0, Lio/netty/resolver/CompositeNameResolver$2;->val$resolverIndex:I

    add-int/lit8 v3, v3, 0x1

    invoke-interface {p1}, Lio/netty/util/concurrent/Future;->cause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lio/netty/resolver/CompositeNameResolver;->access$100(Lio/netty/resolver/CompositeNameResolver;Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V

    .line 103
    :goto_0
    return-void
.end method
