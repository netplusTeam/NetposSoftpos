.class public final Lorg/jline/utils/Signals;
.super Ljava/lang/Object;
.source "Signals.java"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 25
    return-void
.end method

.method private static doRegister(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 10
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "handler"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 89
    new-instance v0, Lorg/jline/utils/Signals$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0, p1}, Lorg/jline/utils/Signals$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v0}, Lorg/jline/utils/Log;->trace(Ljava/util/function/Supplier;)V

    .line 90
    const-string v0, "sun.misc.Signal"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 91
    .local v0, "signalClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Class;

    const-class v3, Ljava/lang/String;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 94
    .local v2, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v3, 0x0

    const/4 v5, 0x2

    :try_start_0
    new-array v6, v1, [Ljava/lang/Object;

    aput-object p0, v6, v4

    invoke-virtual {v2, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    .line 102
    .local v6, "signal":Ljava/lang/Object;
    nop

    .line 103
    const-string v7, "sun.misc.SignalHandler"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v7

    .line 104
    .local v7, "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v8, v5, [Ljava/lang/Class;

    aput-object v0, v8, v4

    aput-object v7, v8, v1

    const-string v9, "handle"

    invoke-virtual {v0, v9, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v6, v5, v4

    aput-object p1, v5, v1

    .line 105
    invoke-virtual {v8, v3, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 104
    return-object v1

    .line 95
    .end local v6    # "signal":Ljava/lang/Object;
    .end local v7    # "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v6

    .line 96
    .local v6, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v6}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v7

    instance-of v7, v7, Ljava/lang/IllegalArgumentException;

    if-eqz v7, :cond_0

    .line 97
    new-instance v1, Lorg/jline/utils/Signals$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0}, Lorg/jline/utils/Signals$$ExternalSyntheticLambda2;-><init>(Ljava/lang/String;)V

    invoke-static {v1}, Lorg/jline/utils/Log;->trace(Ljava/util/function/Supplier;)V

    goto :goto_0

    .line 99
    :cond_0
    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const-string v8, "Error registering handler for signal "

    aput-object v8, v7, v4

    aput-object p0, v7, v1

    aput-object v6, v7, v5

    invoke-static {v7}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 101
    :goto_0
    return-object v3
.end method

.method static synthetic lambda$doRegister$2(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "handler"    # Ljava/lang/Object;

    .line 89
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Registering signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " with handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lorg/jline/utils/Signals;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$doRegister$3(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "name"    # Ljava/lang/String;

    .line 97
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring unsupported signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$register$0(Ljava/lang/Runnable;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "handler"    # Ljava/lang/Runnable;
    .param p1, "name"    # Ljava/lang/String;

    .line 52
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Calling handler "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Lorg/jline/utils/Signals;->toString(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " for signal "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic lambda$register$1(Ljava/lang/Runnable;Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .param p0, "handler"    # Ljava/lang/Runnable;
    .param p1, "signalHandlerClass"    # Ljava/lang/Class;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "proxy"    # Ljava/lang/Object;
    .param p4, "method"    # Ljava/lang/reflect/Method;
    .param p5, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 47
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    .line 48
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "toString"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 49
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 51
    :cond_0
    invoke-virtual {p4}, Ljava/lang/reflect/Method;->getDeclaringClass()Ljava/lang/Class;

    move-result-object v0

    if-ne v0, p1, :cond_1

    .line 52
    new-instance v0, Lorg/jline/utils/Signals$$ExternalSyntheticLambda3;

    invoke-direct {v0, p0, p2}, Lorg/jline/utils/Signals$$ExternalSyntheticLambda3;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jline/utils/Log;->trace(Ljava/util/function/Supplier;)V

    .line 53
    invoke-interface {p0}, Ljava/lang/Runnable;->run()V

    .line 55
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/Runnable;)Ljava/lang/Object;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "handler"    # Ljava/lang/Runnable;

    .line 36
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 37
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, p1, v0}, Lorg/jline/utils/Signals;->register(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/ClassLoader;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static register(Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/ClassLoader;)Ljava/lang/Object;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "handler"    # Ljava/lang/Runnable;
    .param p2, "loader"    # Ljava/lang/ClassLoader;

    .line 42
    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "sun.misc.SignalHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 44
    .local v2, "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    new-array v3, v0, [Ljava/lang/Class;

    aput-object v2, v3, v1

    new-instance v4, Lorg/jline/utils/Signals$$ExternalSyntheticLambda0;

    invoke-direct {v4, p1, v2, p0}, Lorg/jline/utils/Signals$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Runnable;Ljava/lang/Class;Ljava/lang/String;)V

    invoke-static {p2, v3, v4}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v3

    .line 57
    .local v3, "signalHandler":Ljava/lang/Object;
    invoke-static {p0, v3}, Lorg/jline/utils/Signals;->doRegister(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 58
    .end local v2    # "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v3    # "signalHandler":Ljava/lang/Object;
    :catch_0
    move-exception v2

    .line 60
    .local v2, "e":Ljava/lang/Exception;
    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const-string v4, "Error registering handler for signal "

    aput-object v4, v3, v1

    aput-object p0, v3, v0

    const/4 v0, 0x2

    aput-object v2, v3, v0

    invoke-static {v3}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 61
    const/4 v0, 0x0

    return-object v0
.end method

.method public static registerDefault(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .line 67
    const/4 v0, 0x0

    :try_start_0
    const-string v1, "sun.misc.SignalHandler"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 68
    .local v1, "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "SIG_DFL"

    invoke-virtual {v1, v2}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-static {p0, v2}, Lorg/jline/utils/Signals;->doRegister(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 69
    .end local v1    # "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :catch_0
    move-exception v1

    .line 71
    .local v1, "e":Ljava/lang/Exception;
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    const-string v4, "Error registering default handler for signal "

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object p0, v2, v3

    const/4 v3, 0x2

    aput-object v1, v2, v3

    invoke-static {v2}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    .line 72
    return-object v0
.end method

.method private static toString(Ljava/lang/Object;)Ljava/lang/String;
    .locals 5
    .param p0, "handler"    # Ljava/lang/Object;

    .line 111
    const-string v0, "SIG_IGN"

    const-string v1, "SIG_DFL"

    :try_start_0
    const-string v2, "sun.misc.SignalHandler"

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    .line 112
    .local v2, "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v2, v1}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    if-ne p0, v3, :cond_0

    .line 113
    return-object v1

    .line 115
    :cond_0
    invoke-virtual {v2, v0}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    invoke-virtual {v1, v4}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ne p0, v1, :cond_1

    .line 116
    return-object v0

    .line 120
    .end local v2    # "signalHandlerClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :cond_1
    goto :goto_0

    .line 118
    :catchall_0
    move-exception v0

    .line 121
    :goto_0
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_2
    const-string v0, "null"

    :goto_1
    return-object v0
.end method

.method public static unregister(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 4
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "previous"    # Ljava/lang/Object;

    .line 79
    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-static {p0, p1}, Lorg/jline/utils/Signals;->doRegister(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 82
    :catch_0
    move-exception v0

    .line 84
    .local v0, "e":Ljava/lang/Exception;
    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, "Error unregistering handler for signal "

    aput-object v3, v1, v2

    const/4 v2, 0x1

    aput-object p0, v1, v2

    const/4 v2, 0x2

    aput-object v0, v1, v2

    invoke-static {v1}, Lorg/jline/utils/Log;->debug([Ljava/lang/Object;)V

    goto :goto_1

    .line 85
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    nop

    .line 86
    :goto_1
    return-void
.end method
