.class public Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;
.super Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;
.source "DefaultIoServiceFactoryFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory$LazyDefaultIoServiceFactoryFactoryHolder;
    }
.end annotation


# static fields
.field private static final LOGGER:Lorg/slf4j/Logger;


# instance fields
.field private factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 37
    const-class v0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 42
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;-><init>(Lorg/apache/sshd/common/Factory;)V

    .line 43
    return-void
.end method

.method protected constructor <init>(Lorg/apache/sshd/common/Factory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/Factory<",
            "Lorg/apache/sshd/common/util/threads/CloseableExecutorService;",
            ">;)V"
        }
    .end annotation

    .line 46
    .local p1, "factory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    invoke-direct {p0, p1}, Lorg/apache/sshd/common/io/AbstractIoServiceFactoryFactory;-><init>(Lorg/apache/sshd/common/Factory;)V

    .line 47
    return-void
.end method

.method public static getDefaultIoServiceFactoryFactoryInstance()Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;
    .locals 1

    .line 186
    invoke-static {}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory$LazyDefaultIoServiceFactoryFactoryHolder;->access$000()Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Ljava/lang/Class;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 83
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 84
    .local v0, "propName":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 85
    .local v1, "factory":Ljava/lang/String;
    invoke-static {v1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 86
    invoke-static {p0, v1}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->newInstance(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v2

    return-object v2

    .line 89
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    .line 90
    .local v2, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v2}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 91
    .local v3, "cl":Ljava/lang/ClassLoader;
    if-eqz v3, :cond_1

    .line 92
    invoke-static {p0, v3}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v4

    invoke-static {v0, v4}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->tryLoad(Ljava/lang/String;Ljava/util/ServiceLoader;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v4

    .line 93
    .local v4, "t":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    if-eqz v4, :cond_1

    .line 94
    return-object v4

    .line 98
    .end local v4    # "t":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    :cond_1
    const-class v4, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 99
    .local v4, "clDefault":Ljava/lang/ClassLoader;
    if-eq v3, v4, :cond_2

    .line 100
    invoke-static {p0, v4}, Ljava/util/ServiceLoader;->load(Ljava/lang/Class;Ljava/lang/ClassLoader;)Ljava/util/ServiceLoader;

    move-result-object v5

    invoke-static {v0, v5}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->tryLoad(Ljava/lang/String;Ljava/util/ServiceLoader;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v5

    .line 101
    .local v5, "t":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    if-eqz v5, :cond_2

    .line 102
    return-object v5

    .line 106
    .end local v5    # "t":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    :cond_2
    const/4 v5, 0x0

    return-object v5
.end method

.method public static newInstance(Ljava/lang/Class;Ljava/lang/String;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 8
    .param p1, "factory"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 145
    .local p0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->fromFactoryName(Ljava/lang/String;)Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    move-result-object v0

    .line 146
    .local v0, "builtin":Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;
    if-eqz v0, :cond_0

    .line 147
    invoke-virtual {v0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->create()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v1

    .line 148
    .local v1, "builtinInstance":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    invoke-virtual {p0, v1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    return-object v2

    .line 151
    .end local v1    # "builtinInstance":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    :cond_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    .line 152
    .local v1, "currentThread":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 153
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v3, "Exception while loading factory "

    if-eqz v2, :cond_1

    .line 155
    :try_start_0
    invoke-virtual {v2, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 156
    .local v4, "loaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    .line 157
    .local v5, "factoryInstance":Ljava/lang/Object;
    invoke-virtual {p0, v5}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v6

    .line 158
    .end local v4    # "loaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v5    # "factoryInstance":Ljava/lang/Object;
    :catchall_0
    move-exception v4

    .line 159
    .local v4, "t":Ljava/lang/Throwable;
    sget-object v5, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 163
    .end local v4    # "t":Ljava/lang/Throwable;
    :cond_1
    const-class v4, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    .line 164
    .local v4, "clDefault":Ljava/lang/ClassLoader;
    if-eq v2, v4, :cond_2

    .line 166
    :try_start_1
    invoke-virtual {v4, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    .line 167
    .local v5, "loaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v6

    .line 168
    .local v6, "factoryInstance":Ljava/lang/Object;
    invoke-virtual {p0, v6}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    return-object v7

    .line 169
    .end local v5    # "loaded":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v6    # "factoryInstance":Ljava/lang/Object;
    :catchall_1
    move-exception v5

    .line 170
    .local v5, "t":Ljava/lang/Throwable;
    sget-object v6, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v6, v3, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 173
    .end local v5    # "t":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unable to create instance of class "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public static tryLoad(Ljava/lang/String;Ljava/util/ServiceLoader;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 8
    .param p0, "propName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/io/IoServiceFactoryFactory;",
            ">(",
            "Ljava/lang/String;",
            "Ljava/util/ServiceLoader<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 110
    .local p1, "loader":Ljava/util/ServiceLoader;, "Ljava/util/ServiceLoader<TT;>;"
    invoke-virtual {p1}, Ljava/util/ServiceLoader;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 111
    .local v0, "it":Ljava/util/Iterator;, "Ljava/util/Iterator<TT;>;"
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 113
    .local v1, "services":Ljava/util/Deque;, "Ljava/util/Deque<TT;>;"
    :goto_0
    :try_start_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    if-eqz v2, :cond_0

    .line 115
    :try_start_1
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 116
    .local v2, "instance":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    invoke-interface {v1, v2}, Ljava/util/Deque;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 119
    .end local v2    # "instance":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    :goto_1
    goto :goto_0

    .line 117
    :catchall_0
    move-exception v2

    .line 118
    .local v2, "t":Ljava/lang/Throwable;
    :try_start_2
    sget-object v3, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Exception while instantiating factory from ServiceLoader"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .end local v2    # "t":Ljava/lang/Throwable;
    goto :goto_1

    .line 123
    :cond_0
    goto :goto_2

    .line 121
    :catchall_1
    move-exception v2

    .line 122
    .restart local v2    # "t":Ljava/lang/Throwable;
    sget-object v3, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    const-string v4, "Exception while loading factory from ServiceLoader"

    invoke-interface {v3, v4, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 125
    .end local v2    # "t":Ljava/lang/Throwable;
    :goto_2
    invoke-interface {v1}, Ljava/util/Deque;->size()I

    move-result v2

    .line 126
    .local v2, "numDetected":I
    if-gtz v2, :cond_1

    .line 127
    const/4 v3, 0x0

    return-object v3

    .line 130
    :cond_1
    const/4 v3, 0x1

    if-eq v2, v3, :cond_3

    .line 131
    sget-object v3, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const-string v5, "Multiple ({}) registered instances detected:"

    invoke-interface {v3, v5, v4}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 133
    .local v4, "s":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    sget-object v5, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->LOGGER:Lorg/slf4j/Logger;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    const-string v7, "===> {}"

    invoke-interface {v5, v7, v6}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V

    .line 134
    .end local v4    # "s":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;, "TT;"
    goto :goto_3

    .line 135
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Multiple ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") registered "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-class v5, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 136
    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " instances detected. Please use -D"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "=...factory class.. to select one or remove the extra providers from the classpath"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 141
    :cond_3
    invoke-interface {v1}, Ljava/util/Deque;->removeFirst()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    return-object v3
.end method


# virtual methods
.method public create(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/common/io/IoServiceFactory;
    .locals 2
    .param p1, "manager"    # Lorg/apache/sshd/common/FactoryManager;

    .line 51
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->getIoServiceProvider()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v0

    .line 52
    .local v0, "factoryInstance":Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    invoke-interface {v0, p1}, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;->create(Lorg/apache/sshd/common/FactoryManager;)Lorg/apache/sshd/common/io/IoServiceFactory;

    move-result-object v1

    return-object v1
.end method

.method public getIoServiceProvider()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;
    .locals 3

    .line 59
    monitor-enter p0

    .line 60
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    if-eqz v0, :cond_0

    .line 61
    monitor-exit p0

    return-object v0

    .line 64
    :cond_0
    const-class v0, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-static {v0}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->newInstance(Ljava/lang/Class;)Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 65
    if-nez v0, :cond_1

    .line 66
    sget-object v0, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->NIO2:Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;

    invoke-virtual {v0}, Lorg/apache/sshd/common/io/BuiltinIoServiceFactoryFactories;->create()Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 67
    iget-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->log:Lorg/slf4j/Logger;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No detected/configured "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-class v2, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " using "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    .line 68
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 67
    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    :cond_1
    iget-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->log:Lorg/slf4j/Logger;

    const-string v1, "Using {}"

    iget-object v2, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;Ljava/lang/Object;)V

    .line 73
    :goto_0
    invoke-virtual {p0}, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->getExecutorServiceFactory()Lorg/apache/sshd/common/Factory;

    move-result-object v0

    .line 74
    .local v0, "executorServiceFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    if-eqz v0, :cond_2

    .line 75
    iget-object v1, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    invoke-interface {v1, v0}, Lorg/apache/sshd/common/io/IoServiceFactoryFactory;->setExecutorServiceFactory(Lorg/apache/sshd/common/Factory;)V

    .line 77
    .end local v0    # "executorServiceFactory":Lorg/apache/sshd/common/Factory;, "Lorg/apache/sshd/common/Factory<Lorg/apache/sshd/common/util/threads/CloseableExecutorService;>;"
    :cond_2
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    iget-object v0, p0, Lorg/apache/sshd/common/io/DefaultIoServiceFactoryFactory;->factory:Lorg/apache/sshd/common/io/IoServiceFactoryFactory;

    return-object v0

    .line 77
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
