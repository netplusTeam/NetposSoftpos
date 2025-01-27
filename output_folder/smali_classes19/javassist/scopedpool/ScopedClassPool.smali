.class public Ljavassist/scopedpool/ScopedClassPool;
.super Ljavassist/ClassPool;
.source "ScopedClassPool.java"


# instance fields
.field protected classLoader:Ljava/lang/ref/Reference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/Reference<",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field protected classPath:Ljavassist/LoaderClassPath;

.field isBootstrapCl:Z

.field protected repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

.field protected softcache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljavassist/CtClass;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    const/4 v0, 0x0

    sput-boolean v0, Ljavassist/ClassPool;->doPruning:Z

    .line 50
    sput-boolean v0, Ljavassist/ClassPool;->releaseUnmodifiedClassFile:Z

    .line 51
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;)V
    .locals 1
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "src"    # Ljavassist/ClassPool;
    .param p3, "repository"    # Ljavassist/scopedpool/ScopedClassPoolRepository;

    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Ljavassist/scopedpool/ScopedClassPool;-><init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;Z)V

    .line 67
    return-void
.end method

.method protected constructor <init>(Ljava/lang/ClassLoader;Ljavassist/ClassPool;Ljavassist/scopedpool/ScopedClassPoolRepository;Z)V
    .locals 2
    .param p1, "cl"    # Ljava/lang/ClassLoader;
    .param p2, "src"    # Ljavassist/ClassPool;
    .param p3, "repository"    # Ljavassist/scopedpool/ScopedClassPoolRepository;
    .param p4, "isTemp"    # Z

    .line 84
    invoke-direct {p0, p2}, Ljavassist/ClassPool;-><init>(Ljavassist/ClassPool;)V

    .line 44
    new-instance v0, Ljavassist/scopedpool/SoftValueHashMap;

    invoke-direct {v0}, Ljavassist/scopedpool/SoftValueHashMap;-><init>()V

    iput-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    .line 46
    const/4 v0, 0x1

    iput-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    .line 85
    iput-object p3, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    .line 86
    new-instance v1, Ljava/lang/ref/WeakReference;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Ljavassist/scopedpool/ScopedClassPool;->classLoader:Ljava/lang/ref/Reference;

    .line 87
    if-eqz p1, :cond_0

    .line 88
    new-instance v1, Ljavassist/LoaderClassPath;

    invoke-direct {v1, p1}, Ljavassist/LoaderClassPath;-><init>(Ljava/lang/ClassLoader;)V

    iput-object v1, p0, Ljavassist/scopedpool/ScopedClassPool;->classPath:Ljavassist/LoaderClassPath;

    .line 89
    invoke-virtual {p0, v1}, Ljavassist/scopedpool/ScopedClassPool;->insertClassPath(Ljavassist/ClassPath;)Ljavassist/ClassPath;

    .line 91
    :cond_0
    iput-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPool;->childFirstLookup:Z

    .line 92
    if-nez p4, :cond_1

    if-nez p1, :cond_1

    .line 94
    iput-boolean v0, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    .line 96
    :cond_1
    return-void
.end method


# virtual methods
.method protected cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;
    .param p2, "c"    # Ljavassist/CtClass;
    .param p3, "dynamic"    # Z

    .line 222
    if-eqz p3, :cond_0

    .line 223
    invoke-super {p0, p1, p2, p3}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    goto :goto_0

    .line 226
    :cond_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {v0}, Ljavassist/scopedpool/ScopedClassPoolRepository;->isPrune()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 227
    invoke-virtual {p2}, Ljavassist/CtClass;->prune()V

    .line 228
    :cond_1
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    :goto_0
    return-void
.end method

.method public close()V
    .locals 1

    .line 121
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classPath:Ljavassist/LoaderClassPath;

    invoke-virtual {p0, v0}, Ljavassist/scopedpool/ScopedClassPool;->removeClassPath(Ljavassist/ClassPath;)V

    .line 122
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    .line 123
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 124
    return-void
.end method

.method public declared-synchronized flushClass(Ljava/lang/String;)V
    .locals 1
    .param p1, "classname"    # Ljava/lang/String;

    monitor-enter p0

    .line 133
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 135
    monitor-exit p0

    return-void

    .line 132
    .end local p0    # "this":Ljavassist/scopedpool/ScopedClassPool;
    .end local p1    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method protected getCached(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 10
    .param p1, "classname"    # Ljava/lang/String;

    .line 168
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPool;->getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v0

    .line 169
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez v0, :cond_6

    .line 170
    const/4 v1, 0x0

    .line 172
    .local v1, "isLocal":Z
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 173
    .local v2, "dcl":Ljava/lang/ClassLoader;
    if-eqz v2, :cond_2

    .line 174
    const/16 v3, 0x24

    invoke-virtual {p1, v3}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v3

    .line 175
    .local v3, "lastIndex":I
    const/4 v4, 0x0

    .line 176
    .local v4, "classResourceName":Ljava/lang/String;
    const/4 v5, 0x0

    if-gez v3, :cond_0

    .line 177
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "[\\.]"

    const-string v8, "/"

    invoke-virtual {p1, v7, v8}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 181
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    const-string v8, "[\\.]"

    const-string v9, "/"

    .line 182
    invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 183
    invoke-virtual {p1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".class"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 186
    :goto_0
    invoke-virtual {v2, v4}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v6

    if-eqz v6, :cond_1

    const/4 v5, 0x1

    :cond_1
    move v1, v5

    .line 189
    .end local v3    # "lastIndex":I
    .end local v4    # "classResourceName":Ljava/lang/String;
    :cond_2
    if-nez v1, :cond_6

    .line 190
    iget-object v3, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {v3}, Ljavassist/scopedpool/ScopedClassPoolRepository;->getRegisteredCLs()Ljava/util/Map;

    move-result-object v3

    .line 191
    .local v3, "registeredCLs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/ClassLoader;Ljavassist/scopedpool/ScopedClassPool;>;"
    monitor-enter v3

    .line 192
    :try_start_0
    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavassist/scopedpool/ScopedClassPool;

    .line 193
    .local v5, "pool":Ljavassist/scopedpool/ScopedClassPool;
    invoke-virtual {v5}, Ljavassist/scopedpool/ScopedClassPool;->isUnloadedClassLoader()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 194
    iget-object v6, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    .line 195
    invoke-virtual {v5}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v7

    .line 194
    invoke-interface {v6, v7}, Ljavassist/scopedpool/ScopedClassPoolRepository;->unregisterClassLoader(Ljava/lang/ClassLoader;)V

    .line 196
    goto :goto_1

    .line 199
    :cond_3
    invoke-virtual {v5, p1}, Ljavassist/scopedpool/ScopedClassPool;->getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;

    move-result-object v6

    move-object v0, v6

    .line 200
    if-eqz v0, :cond_4

    .line 201
    monitor-exit v3

    return-object v0

    .line 203
    .end local v5    # "pool":Ljavassist/scopedpool/ScopedClassPool;
    :cond_4
    goto :goto_1

    .line 204
    :cond_5
    monitor-exit v3

    goto :goto_2

    :catchall_0
    move-exception v4

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4

    .line 208
    .end local v1    # "isLocal":Z
    .end local v2    # "dcl":Ljava/lang/ClassLoader;
    .end local v3    # "registeredCLs":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/ClassLoader;Ljavassist/scopedpool/ScopedClassPool;>;"
    :cond_6
    :goto_2
    return-object v0
.end method

.method protected getCachedLocally(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 3
    .param p1, "classname"    # Ljava/lang/String;

    .line 250
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    .line 251
    .local v0, "cached":Ljavassist/CtClass;
    if-eqz v0, :cond_0

    .line 252
    return-object v0

    .line 253
    :cond_0
    iget-object v1, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    monitor-enter v1

    .line 254
    :try_start_0
    iget-object v2, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-interface {v2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavassist/CtClass;

    monitor-exit v1

    return-object v2

    .line 255
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 3

    .line 104
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 105
    .local v0, "cl":Ljava/lang/ClassLoader;
    if-nez v0, :cond_1

    iget-boolean v1, p0, Ljavassist/scopedpool/ScopedClassPool;->isBootstrapCl:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 107
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "ClassLoader has been garbage collected"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 110
    :cond_1
    :goto_0
    return-object v0
.end method

.method protected getClassLoader0()Ljava/lang/ClassLoader;
    .locals 1

    .line 114
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classLoader:Ljava/lang/ref/Reference;

    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public declared-synchronized getLocally(Ljava/lang/String;)Ljavassist/CtClass;
    .locals 2
    .param p1, "classname"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/NotFoundException;
        }
    .end annotation

    monitor-enter p0

    .line 269
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavassist/CtClass;

    .line 271
    .local v0, "clazz":Ljavassist/CtClass;
    if-nez v0, :cond_1

    .line 272
    const/4 v1, 0x1

    invoke-virtual {p0, p1, v1}, Ljavassist/scopedpool/ScopedClassPool;->createCtClass(Ljava/lang/String;Z)Ljavassist/CtClass;

    move-result-object v1

    move-object v0, v1

    .line 273
    if-eqz v0, :cond_0

    .line 275
    const/4 v1, 0x0

    invoke-super {p0, p1, v0, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    goto :goto_0

    .line 274
    .end local p0    # "this":Ljavassist/scopedpool/ScopedClassPool;
    :cond_0
    new-instance v1, Ljavassist/NotFoundException;

    invoke-direct {v1, p1}, Ljavassist/NotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 278
    :cond_1
    :goto_0
    monitor-exit p0

    return-object v0

    .line 268
    .end local v0    # "clazz":Ljavassist/CtClass;
    .end local p1    # "classname":Ljava/lang/String;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public isUnloadedClassLoader()Z
    .locals 1

    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method public lockInCache(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "c"    # Ljavassist/CtClass;

    .line 239
    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-super {p0, v0, p1, v1}, Ljavassist/ClassPool;->cacheCtClass(Ljava/lang/String;Ljavassist/CtClass;Z)V

    .line 240
    return-void
.end method

.method public declared-synchronized soften(Ljavassist/CtClass;)V
    .locals 2
    .param p1, "clazz"    # Ljavassist/CtClass;

    monitor-enter p0

    .line 144
    :try_start_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->repository:Ljavassist/scopedpool/ScopedClassPoolRepository;

    invoke-interface {v0}, Ljavassist/scopedpool/ScopedClassPoolRepository;->isPrune()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 145
    invoke-virtual {p1}, Ljavassist/CtClass;->prune()V

    .line 146
    .end local p0    # "this":Ljavassist/scopedpool/ScopedClassPool;
    :cond_0
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->classes:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Hashtable;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    iget-object v0, p0, Ljavassist/scopedpool/ScopedClassPool;->softcache:Ljava/util/Map;

    invoke-virtual {p1}, Ljavassist/CtClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 148
    monitor-exit p0

    return-void

    .line 143
    .end local p1    # "clazz":Ljavassist/CtClass;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;
    .locals 1
    .param p1, "ct"    # Ljavassist/CtClass;
    .param p2, "loader"    # Ljava/lang/ClassLoader;
    .param p3, "domain"    # Ljava/security/ProtectionDomain;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavassist/CtClass;",
            "Ljava/lang/ClassLoader;",
            "Ljava/security/ProtectionDomain;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavassist/CannotCompileException;
        }
    .end annotation

    .line 305
    invoke-virtual {p0, p1}, Ljavassist/scopedpool/ScopedClassPool;->lockInCache(Ljavassist/CtClass;)V

    .line 306
    invoke-virtual {p0}, Ljavassist/scopedpool/ScopedClassPool;->getClassLoader0()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-super {p0, p1, v0, p3}, Ljavassist/ClassPool;->toClass(Ljavassist/CtClass;Ljava/lang/ClassLoader;Ljava/security/ProtectionDomain;)Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method
