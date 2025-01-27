.class public final Lorg/apache/sshd/common/util/closeable/Builder;
.super Ljava/lang/Object;
.source "Builder.java"

# interfaces
.implements Lorg/apache/sshd/common/util/ObjectBuilder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/ObjectBuilder<",
        "Lorg/apache/sshd/common/Closeable;",
        ">;"
    }
.end annotation


# instance fields
.field private final closeables:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/apache/sshd/common/Closeable;",
            ">;"
        }
    .end annotation
.end field

.field private final lock:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .param p1, "lock"    # Ljava/lang/Object;

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    .line 39
    const-string v0, "No lock"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    .line 40
    return-void
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 1

    .line 34
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/closeable/Builder;->build()Lorg/apache/sshd/common/Closeable;

    move-result-object v0

    return-object v0
.end method

.method public build()Lorg/apache/sshd/common/Closeable;
    .locals 4

    .line 107
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 108
    new-instance v0, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/util/closeable/SimpleCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0

    .line 109
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 110
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/Closeable;

    return-object v0

    .line 112
    :cond_1
    new-instance v0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    iget-object v3, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V

    return-object v0
.end method

.method public close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 1
    .param p1, "c"    # Lorg/apache/sshd/common/Closeable;

    .line 99
    if-eqz p1, :cond_0

    .line 100
    iget-object v0, p0, Lorg/apache/sshd/common/util/closeable/Builder;->closeables:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    :cond_0
    return-object p0
.end method

.method public parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/Closeable;",
            ">;)",
            "Lorg/apache/sshd/common/util/closeable/Builder;"
        }
    .end annotation

    .line 95
    .local p2, "closeables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/Closeable;>;"
    new-instance v0, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/sshd/common/util/closeable/ParallelCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs parallel([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .param p1, "closeables"    # [Lorg/apache/sshd/common/Closeable;

    .line 86
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 87
    const/4 v0, 0x0

    aget-object v0, p1, v0

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    goto :goto_0

    .line 88
    :cond_0
    array-length v0, p1

    if-lez v0, :cond_1

    .line 89
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->parallel(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    .line 91
    :cond_1
    :goto_0
    return-object p0
.end method

.method public run(Ljava/lang/Object;Ljava/lang/Runnable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .param p2, "r"    # Ljava/lang/Runnable;

    .line 43
    new-instance v0, Lorg/apache/sshd/common/util/closeable/Builder$1;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    invoke-direct {v0, p0, p1, v1, p2}, Lorg/apache/sshd/common/util/closeable/Builder$1;-><init>(Lorg/apache/sshd/common/util/closeable/Builder;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Runnable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public sequential(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "Lorg/apache/sshd/common/Closeable;",
            ">;)",
            "Lorg/apache/sshd/common/util/closeable/Builder;"
        }
    .end annotation

    .line 82
    .local p2, "closeables":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Lorg/apache/sshd/common/Closeable;>;"
    new-instance v0, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/sshd/common/util/closeable/SequentialCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public varargs sequential([Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 3
    .param p1, "closeables"    # [Lorg/apache/sshd/common/Closeable;

    .line 75
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 76
    .local v2, "closeable":Lorg/apache/sshd/common/Closeable;
    invoke-virtual {p0, v2}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    .line 75
    .end local v2    # "closeable":Lorg/apache/sshd/common/Closeable;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 78
    :cond_0
    return-object p0
.end method

.method public when(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .param p1, "id"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/future/SshFuture;",
            ">(",
            "Ljava/lang/Object;",
            "Ljava/lang/Iterable<",
            "+",
            "Lorg/apache/sshd/common/future/SshFuture<",
            "TT;>;>;)",
            "Lorg/apache/sshd/common/util/closeable/Builder;"
        }
    .end annotation

    .line 71
    .local p2, "futures":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+Lorg/apache/sshd/common/future/SshFuture<TT;>;>;"
    new-instance v0, Lorg/apache/sshd/common/util/closeable/FuturesCloseable;

    iget-object v1, p0, Lorg/apache/sshd/common/util/closeable/Builder;->lock:Ljava/lang/Object;

    invoke-direct {v0, p1, v1, p2}, Lorg/apache/sshd/common/util/closeable/FuturesCloseable;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Iterable;)V

    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/util/closeable/Builder;->close(Lorg/apache/sshd/common/Closeable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    return-object v0
.end method

.method public when(Lorg/apache/sshd/common/future/SshFuture;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/future/SshFuture;",
            ">(",
            "Lorg/apache/sshd/common/future/SshFuture<",
            "TT;>;)",
            "Lorg/apache/sshd/common/util/closeable/Builder;"
        }
    .end annotation

    .line 57
    .local p1, "future":Lorg/apache/sshd/common/future/SshFuture;, "Lorg/apache/sshd/common/future/SshFuture<TT;>;"
    if-eqz p1, :cond_0

    .line 58
    invoke-interface {p1}, Lorg/apache/sshd/common/future/SshFuture;->getId()Ljava/lang/Object;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Collections;->singleton(Ljava/lang/Object;)Ljava/util/Set;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    .line 60
    :cond_0
    return-object p0
.end method

.method public final varargs when([Lorg/apache/sshd/common/future/SshFuture;)Lorg/apache/sshd/common/util/closeable/Builder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/future/SshFuture;",
            ">([",
            "Lorg/apache/sshd/common/future/SshFuture<",
            "TT;>;)",
            "Lorg/apache/sshd/common/util/closeable/Builder;"
        }
    .end annotation

    .annotation runtime Ljava/lang/SafeVarargs;
    .end annotation

    .line 66
    .local p1, "futures":[Lorg/apache/sshd/common/future/SshFuture;, "[Lorg/apache/sshd/common/future/SshFuture<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lorg/apache/sshd/common/util/closeable/Builder;->when(Ljava/lang/Object;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/closeable/Builder;

    move-result-object v0

    return-object v0
.end method
