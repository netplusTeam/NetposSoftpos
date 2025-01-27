.class public abstract Lio/netty/util/ConstantPool;
.super Ljava/lang/Object;
.source "ConstantPool.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lio/netty/util/Constant<",
        "TT;>;>",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private final constants:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap<",
            "Ljava/lang/String;",
            "TT;>;"
        }
    .end annotation
.end field

.field private final nextId:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 30
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    invoke-static {}, Lio/netty/util/internal/PlatformDependent;->newConcurrentHashMap()Ljava/util/concurrent/ConcurrentMap;

    move-result-object v0

    iput-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    .line 34
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lio/netty/util/ConstantPool;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private static checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 113
    const-string v0, "name"

    invoke-static {p0, v0}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 115
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 119
    return-object p0

    .line 116
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private createOrThrow(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 100
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Constant;

    .line 101
    .local v0, "constant":Lio/netty/util/Constant;, "TT;"
    if-nez v0, :cond_0

    .line 102
    invoke-virtual {p0}, Lio/netty/util/ConstantPool;->nextId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lio/netty/util/ConstantPool;->newConstant(ILjava/lang/String;)Lio/netty/util/Constant;

    move-result-object v1

    .line 103
    .local v1, "tempConstant":Lio/netty/util/Constant;, "TT;"
    iget-object v2, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/netty/util/Constant;

    .line 104
    if-nez v0, :cond_0

    .line 105
    return-object v1

    .line 109
    .end local v1    # "tempConstant":Lio/netty/util/Constant;, "TT;"
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const-string v3, "\'%s\' is already in use"

    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private getOrCreate(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 65
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lio/netty/util/Constant;

    .line 66
    .local v0, "constant":Lio/netty/util/Constant;, "TT;"
    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lio/netty/util/ConstantPool;->nextId()I

    move-result v1

    invoke-virtual {p0, v1, p1}, Lio/netty/util/ConstantPool;->newConstant(ILjava/lang/String;)Lio/netty/util/Constant;

    move-result-object v1

    .line 68
    .local v1, "tempConstant":Lio/netty/util/Constant;, "TT;"
    iget-object v2, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    check-cast v0, Lio/netty/util/Constant;

    .line 69
    if-nez v0, :cond_0

    .line 70
    return-object v1

    .line 74
    .end local v1    # "tempConstant":Lio/netty/util/Constant;, "TT;"
    :cond_0
    return-object v0
.end method


# virtual methods
.method public exists(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 81
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    iget-object v0, p0, Lio/netty/util/ConstantPool;->constants:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected abstract newConstant(ILjava/lang/String;)Lio/netty/util/Constant;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation
.end method

.method public newInstance(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 90
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 91
    invoke-direct {p0, p1}, Lio/netty/util/ConstantPool;->createOrThrow(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    return-object v0
.end method

.method public final nextId()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 126
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    iget-object v0, p0, Lio/netty/util/ConstantPool;->nextId:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    return v0
.end method

.method public valueOf(Ljava/lang/Class;Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 2
    .param p2, "secondNameComponent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 40
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    .local p1, "firstNameComponent":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 41
    const-string v1, "firstNameComponent"

    invoke-static {p1, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x23

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 43
    const-string v1, "secondNameComponent"

    invoke-static {p2, v1}, Lio/netty/util/internal/ObjectUtil;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 40
    invoke-virtual {p0, v0}, Lio/netty/util/ConstantPool;->valueOf(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    return-object v0
.end method

.method public valueOf(Ljava/lang/String;)Lio/netty/util/Constant;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lio/netty/util/ConstantPool;, "Lio/netty/util/ConstantPool<TT;>;"
    invoke-static {p1}, Lio/netty/util/ConstantPool;->checkNotNullAndNotEmpty(Ljava/lang/String;)Ljava/lang/String;

    .line 56
    invoke-direct {p0, p1}, Lio/netty/util/ConstantPool;->getOrCreate(Ljava/lang/String;)Lio/netty/util/Constant;

    move-result-object v0

    return-object v0
.end method
