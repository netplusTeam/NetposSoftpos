.class public Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;
.super Ljava/lang/Object;
.source "ScopedClassPoolRepositoryImpl.java"

# interfaces
.implements Ljavassist/scopedpool/ScopedClassPoolRepository;


# static fields
.field private static final instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;


# instance fields
.field protected classpool:Ljavassist/ClassPool;

.field protected factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

.field private prune:Z

.field pruneWhenCached:Z

.field protected registeredCLs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljavassist/scopedpool/ScopedClassPool;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    new-instance v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    invoke-direct {v0}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;-><init>()V

    sput-object v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    return-void
.end method

.method private constructor <init>()V
    .locals 3

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    .line 46
    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    .line 47
    invoke-static {v0}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    .line 53
    new-instance v0, Ljavassist/scopedpool/ScopedClassPoolFactoryImpl;

    invoke-direct {v0}, Ljavassist/scopedpool/ScopedClassPoolFactoryImpl;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    .line 68
    invoke-static {}, Ljavassist/ClassPool;->getDefault()Ljavassist/ClassPool;

    move-result-object v0

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    .line 70
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 71
    .local v0, "cl":Ljava/lang/ClassLoader;
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    new-instance v2, Ljavassist/LoaderClassPath;

    invoke-direct {v2, v0}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    invoke-virtual {v1, v2}, Ljavassist/ClassPool;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    .line 72
    return-void
.end method

.method public static getInstance()Ljavassist/scopedpool/ScopedClassPoolRepository;
    .locals 1

    .line 61
    sget-object v0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->instance:Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;

    return-object v0
.end method


# virtual methods
.method public clearUnregisteredClassLoaders()V
    .locals 7

    .line 152
    const/4 v0, 0x0

    .line 153
    .local v0, "toUnregister":Ljava/util/List;, "Ljava/util/List<Ljava/lang/ClassLoader;>;"
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v1

    .line 154
    :try_start_0
    iget-object v2, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Map$Entry;

    .line 155
    .local v3, "reg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljavassist/scopedpool/ScopedClassPool;>;"
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/scopedpool/ScopedClassPool;

    invoke-virtual {v4}, Ljavassist/scopedpool/ScopedClassPool;->isUnloadedClassLoader()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 156
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavassist/scopedpool/ScopedClassPool;

    invoke-virtual {v4}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 157
    .local v4, "cl":Ljava/lang/ClassLoader;
    if-eqz v4, :cond_1

    .line 158
    if-nez v0, :cond_0

    .line 159
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    move-object v0, v5

    .line 160
    :cond_0
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 162
    :cond_1
    iget-object v5, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 164
    .end local v3    # "reg":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/ClassLoader;Ljavassist/scopedpool/ScopedClassPool;>;"
    .end local v4    # "cl":Ljava/lang/ClassLoader;
    :cond_2
    goto :goto_0

    .line 165
    :cond_3
    if-eqz v0, :cond_4

    .line 166
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/ClassLoader;

    .line 167
    .local v3, "cl":Ljava/lang/ClassLoader;
    invoke-virtual {p0, v3}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->unregisterClassLoader(Ljava/lang/ClassLoader;)V

    .end local v3    # "cl":Ljava/lang/ClassLoader;
    goto :goto_1

    .line 168
    :cond_4
    monitor-exit v1

    .line 169
    return-void

    .line 168
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public createScopedClassPool(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljavassist/scopedpool/ScopedClassPool;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "src"    # Ljavassist/ClassPool;

    .line 103
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    invoke-interface {v0, p1, p2, p0}, Ljavassist/scopedpool/ScopedClassPoolFactory;->create(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;)Ljavassist/scopedpool/ScopedClassPool;

    move-result-object v0

    return-object v0
.end method

.method public findClassPool(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 108
    if-nez p1, :cond_0

    .line 109
    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;

    move-result-object v0

    return-object v0

    .line 111
    :cond_0
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;

    move-result-object v0

    return-object v0
.end method

.method public getClassPoolFactory()Ljavassist/scopedpool/ScopedClassPoolFactory;
    .locals 1

    .line 191
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    return-object v0
.end method

.method public getRegisteredCLs()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/ClassLoader;",
            "Ljavassist/scopedpool/ScopedClassPool;",
            ">;"
        }
    .end annotation

    .line 142
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->clearUnregisteredClassLoaders()V

    .line 143
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    return-object v0
.end method

.method public insertDelegate(Ljavassist/scopedpool/ScopedClassPoolRepository;)V
    .locals 0
    .param p1, "delegate"    # Ljavassist/scopedpool/ScopedClassPoolRepository;

    .line 182
    return-void
.end method

.method public isPrune()Z
    .locals 1

    .line 81
    iget-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    return v0
.end method

.method public registerClassLoader(Ljava/lang/ClassLoader;)Ljavassist/ClassPool;
    .locals 3
    .param p1, "ucl"    # Ljava/lang/ClassLoader;

    .line 122
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v0

    .line 128
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 129
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/ClassPool;

    monitor-exit v0

    return-object v1

    .line 131
    :cond_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->classpool:Ljavassist/ClassPool;

    invoke-virtual {p0, p1, v1}, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->createScopedClassPool(Ljava/lang/ClassLoader;Ljavassist/ClassPool;)Ljavassist/scopedpool/ScopedClassPool;

    move-result-object v1

    .line 132
    .local v1, "pool":Ljavassist/scopedpool/ScopedClassPool;
    iget-object v2, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    monitor-exit v0

    return-object v1

    .line 134
    .end local v1    # "pool":Ljavassist/scopedpool/ScopedClassPool;
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setClassPoolFactory(Ljavassist/scopedpool/ScopedClassPoolFactory;)V
    .locals 0
    .param p1, "factory"    # Ljavassist/scopedpool/ScopedClassPoolFactory;

    .line 186
    iput-object p1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->factory:Ljavassist/scopedpool/ScopedClassPoolFactory;

    .line 187
    return-void
.end method

.method public setPrune(Z)V
    .locals 0
    .param p1, "prune"    # Z

    .line 91
    iput-boolean p1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->prune:Z

    .line 92
    return-void
.end method

.method public unregisterClassLoader(Ljava/lang/ClassLoader;)V
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;

    .line 173
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    monitor-enter v0

    .line 174
    :try_start_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPoolRepositoryImpl;->registeredCLs:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavassist/scopedpool/ScopedClassPool;

    .line 175
    .local v1, "pool":Ljavassist/scopedpool/ScopedClassPool;
    if-eqz v1, :cond_0

    .line 176
    invoke-virtual {v1}, Ljavassist/scopedpool/ScopedClassPool;->close()V

    .line 177
    .end local v1    # "pool":Ljavassist/scopedpool/ScopedClassPool;
    :cond_0
    monitor-exit v0

    .line 178
    return-void

    .line 177
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method
