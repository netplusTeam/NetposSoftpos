.class public final Lio/netty/resolver/CompositeNameResolver;
.super Lio/netty/resolver/SimpleNameResolver;
.source "CompositeNameResolver.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lio/netty/resolver/SimpleNameResolver<",
        "TT;>;"
    }
.end annotation


# instance fields
.field private final resolvers:[Lio/netty/resolver/NameResolver;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Lio/netty/resolver/NameResolver<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public varargs constructor <init>(Lio/netty/util/concurrent/EventExecutor;[Lio/netty/resolver/NameResolver;)V
    .locals 4
    .param p1, "executor"    # Lio/netty/util/concurrent/EventExecutor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/netty/util/concurrent/EventExecutor;",
            "[",
            "Lio/netty/resolver/NameResolver<",
            "TT;>;)V"
        }
    .end annotation

    .line 44
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver;, "Lio/netty/resolver/CompositeNameResolver<TT;>;"
    .local p2, "resolvers":[Lio/netty/resolver/NameResolver;, "[Lio/netty/resolver/NameResolver<TT;>;"
    invoke-direct {p0, p1}, Lio/netty/resolver/SimpleNameResolver;-><init>(Lio/netty/util/concurrent/EventExecutor;)V

    .line 45
    const-string v0, "resolvers"

    invoke-static {p2, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p2

    if-ge v0, v1, :cond_0

    .line 47
    aget-object v1, p2, v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "resolvers["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const/16 v3, 0x5d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 46
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 49
    .end local v0    # "i":I
    :cond_0
    array-length v0, p2

    const/4 v1, 0x2

    if-lt v0, v1, :cond_1

    .line 53
    invoke-virtual {p2}, [Lio/netty/resolver/NameResolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/netty/resolver/NameResolver;

    iput-object v0, p0, Lio/netty/resolver/CompositeNameResolver;->resolvers:[Lio/netty/resolver/NameResolver;

    .line 54
    return-void

    .line 50
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resolvers: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: at least 2 resolvers)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lio/netty/resolver/CompositeNameResolver;Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/resolver/CompositeNameResolver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/resolver/CompositeNameResolver;->doResolveRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V

    return-void
.end method

.method static synthetic access$100(Lio/netty/resolver/CompositeNameResolver;Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V
    .locals 0
    .param p0, "x0"    # Lio/netty/resolver/CompositeNameResolver;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Lio/netty/util/concurrent/Promise;
    .param p3, "x3"    # I
    .param p4, "x4"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1, p2, p3, p4}, Lio/netty/resolver/CompositeNameResolver;->doResolveAllRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V

    return-void
.end method

.method private doResolveAllRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p3, "resolverIndex"    # I
    .param p4, "lastFailure"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 91
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver;, "Lio/netty/resolver/CompositeNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    iget-object v0, p0, Lio/netty/resolver/CompositeNameResolver;->resolvers:[Lio/netty/resolver/NameResolver;

    array-length v1, v0

    if-lt p3, v1, :cond_0

    .line 92
    invoke-interface {p2, p4}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 94
    :cond_0
    aget-object v0, v0, p3

    .line 95
    .local v0, "resolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<TT;>;"
    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolveAll(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/netty/resolver/CompositeNameResolver$2;

    invoke-direct {v2, p0, p2, p1, p3}, Lio/netty/resolver/CompositeNameResolver$2;-><init>(Lio/netty/resolver/CompositeNameResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 106
    .end local v0    # "resolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<TT;>;"
    :goto_0
    return-void
.end method

.method private doResolveRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V
    .locals 3
    .param p1, "inetHost"    # Ljava/lang/String;
    .param p3, "resolverIndex"    # I
    .param p4, "lastFailure"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;I",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver;, "Lio/netty/resolver/CompositeNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    iget-object v0, p0, Lio/netty/resolver/CompositeNameResolver;->resolvers:[Lio/netty/resolver/NameResolver;

    array-length v1, v0

    if-lt p3, v1, :cond_0

    .line 66
    invoke-interface {p2, p4}, Lio/netty/util/concurrent/Promise;->setFailure(Ljava/lang/Throwable;)Lio/netty/util/concurrent/Promise;

    goto :goto_0

    .line 68
    :cond_0
    aget-object v0, v0, p3

    .line 69
    .local v0, "resolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<TT;>;"
    invoke-interface {v0, p1}, Lio/netty/resolver/NameResolver;->resolve(Ljava/lang/String;)Lio/netty/util/concurrent/Future;

    move-result-object v1

    new-instance v2, Lio/netty/resolver/CompositeNameResolver$1;

    invoke-direct {v2, p0, p2, p1, p3}, Lio/netty/resolver/CompositeNameResolver$1;-><init>(Lio/netty/resolver/CompositeNameResolver;Lio/netty/util/concurrent/Promise;Ljava/lang/String;I)V

    invoke-interface {v1, v2}, Lio/netty/util/concurrent/Future;->addListener(Lio/netty/util/concurrent/GenericFutureListener;)Lio/netty/util/concurrent/Future;

    .line 80
    .end local v0    # "resolver":Lio/netty/resolver/NameResolver;, "Lio/netty/resolver/NameResolver<TT;>;"
    :goto_0
    return-void
.end method


# virtual methods
.method protected doResolve(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 58
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver;, "Lio/netty/resolver/CompositeNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<TT;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/resolver/CompositeNameResolver;->doResolveRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V

    .line 59
    return-void
.end method

.method protected doResolveAll(Ljava/lang/String;Lio/netty/util/concurrent/Promise;)V
    .locals 2
    .param p1, "inetHost"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lio/netty/util/concurrent/Promise<",
            "Ljava/util/List<",
            "TT;>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 84
    .local p0, "this":Lio/netty/resolver/CompositeNameResolver;, "Lio/netty/resolver/CompositeNameResolver<TT;>;"
    .local p2, "promise":Lio/netty/util/concurrent/Promise;, "Lio/netty/util/concurrent/Promise<Ljava/util/List<TT;>;>;"
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lio/netty/resolver/CompositeNameResolver;->doResolveAllRec(Ljava/lang/String;Lio/netty/util/concurrent/Promise;ILjava/lang/Throwable;)V

    .line 85
    return-void
.end method
