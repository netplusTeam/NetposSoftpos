.class public final Lorg/apache/sshd/common/util/EventListenerUtils;
.super Ljava/lang/Object;
.source "EventListenerUtils.java"


# static fields
.field public static final LISTENER_INSTANCE_COMPARATOR:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ljava/util/EventListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 40
    new-instance v0, Lorg/apache/sshd/common/util/EventListenerUtils$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/EventListenerUtils$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/EventListenerUtils;->LISTENER_INSTANCE_COMPARATOR:Ljava/util/Comparator;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 88
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "No instance"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic lambda$proxyWrapper$1(Ljava/lang/Iterable;Ljava/lang/Object;Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5
    .param p0, "listeners"    # Ljava/lang/Iterable;
    .param p1, "proxy"    # Ljava/lang/Object;
    .param p2, "method"    # Ljava/lang/reflect/Method;
    .param p3, "args"    # [Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 194
    const/4 v0, 0x0

    .line 195
    .local v0, "err":Ljava/lang/Throwable;
    invoke-interface {p0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/SshdEventListener;

    .line 197
    .local v2, "l":Lorg/apache/sshd/common/util/SshdEventListener;, "TT;"
    :try_start_0
    invoke-virtual {p2, v2, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 201
    goto :goto_1

    .line 198
    :catchall_0
    move-exception v3

    .line 199
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v3}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v4

    .line 200
    .local v4, "e":Ljava/lang/Throwable;
    invoke-static {v0, v4}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 202
    .end local v2    # "l":Lorg/apache/sshd/common/util/SshdEventListener;, "TT;"
    .end local v3    # "t":Ljava/lang/Throwable;
    .end local v4    # "e":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 204
    :cond_0
    if-nez v0, :cond_1

    .line 208
    const/4 v1, 0x0

    return-object v1

    .line 205
    :cond_1
    throw v0
.end method

.method static synthetic lambda$static$0(Ljava/util/EventListener;Ljava/util/EventListener;)I
    .locals 9
    .param p0, "l1"    # Ljava/util/EventListener;
    .param p1, "l2"    # Ljava/util/EventListener;

    .line 41
    if-ne p0, p1, :cond_0

    .line 42
    const/4 v0, 0x0

    return v0

    .line 43
    :cond_0
    const/4 v0, 0x1

    if-nez p0, :cond_1

    .line 44
    return v0

    .line 45
    :cond_1
    const/4 v1, -0x1

    if-nez p1, :cond_2

    .line 46
    return v1

    .line 49
    :cond_2
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    .line 50
    .local v2, "c1":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    .line 51
    .local v3, "c2":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    .line 52
    .local v4, "checkHashCodes":Z
    invoke-static {v2}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 53
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 54
    const/4 v4, 0x0

    goto :goto_0

    .line 56
    :cond_3
    return v0

    .line 58
    :cond_4
    invoke-static {v3}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 59
    return v1

    .line 62
    :cond_5
    :goto_0
    if-eqz v4, :cond_6

    .line 63
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 64
    .local v0, "nRes":I
    if-eqz v0, :cond_6

    .line 65
    return v0

    .line 69
    .end local v0    # "nRes":I
    :cond_6
    invoke-static {p0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {p1}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v0, v1}, Ljava/lang/Integer;->compare(II)I

    move-result v0

    .line 70
    .restart local v0    # "nRes":I
    if-eqz v0, :cond_7

    .line 71
    return v0

    .line 74
    :cond_7
    if-eq v2, v3, :cond_8

    .line 75
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v1

    return v1

    .line 78
    :cond_8
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-static {v1, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "s1":Ljava/lang/String;
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v5}, Ljava/util/Objects;->toString(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 80
    .local v5, "s2":Ljava/lang/String;
    invoke-virtual {v1, v5}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    .line 81
    if-eqz v0, :cond_9

    .line 82
    return v0

    .line 84
    :cond_9
    new-instance v6, Ljava/lang/UnsupportedOperationException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Ran out of options to compare instance of "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " vs. "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v6
.end method

.method public static proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;
    .locals 3
    .param p1, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/util/SshdEventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/Iterable<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 189
    .local p0, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p2, "listeners":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    const-string v0, "No listener type specified"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 190
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Target proxy is not an interface: %s"

    invoke-static {v0, v2, v1}, Lorg/apache/sshd/common/util/ValidateUtils;->checkTrue(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 191
    const-string v0, "No listeners container provided"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 193
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    aput-object p0, v0, v1

    new-instance v1, Lorg/apache/sshd/common/util/EventListenerUtils$$ExternalSyntheticLambda0;

    invoke-direct {v1, p2}, Lorg/apache/sshd/common/util/EventListenerUtils$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Iterable;)V

    invoke-static {p1, v0, v1}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    .line 210
    .local v0, "wrapper":Ljava/lang/Object;
    invoke-virtual {p0, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/sshd/common/util/SshdEventListener;

    return-object v1
.end method

.method public static proxyWrapper(Ljava/lang/Class;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lorg/apache/sshd/common/util/SshdEventListener;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Ljava/lang/Iterable<",
            "+TT;>;)TT;"
        }
    .end annotation

    .line 151
    .local p0, "listenerType":Ljava/lang/Class;, "Ljava/lang/Class<TT;>;"
    .local p1, "listeners":Ljava/lang/Iterable;, "Ljava/lang/Iterable<+TT;>;"
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/util/EventListenerUtils;->proxyWrapper(Ljava/lang/Class;Ljava/lang/ClassLoader;Ljava/lang/Iterable;)Lorg/apache/sshd/common/util/SshdEventListener;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedListenersSet()Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/common/util/SshdEventListener;",
            ">()",
            "Ljava/util/Set<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 116
    new-instance v0, Ljava/util/TreeSet;

    sget-object v1, Lorg/apache/sshd/common/util/EventListenerUtils;->LISTENER_INSTANCE_COMPARATOR:Ljava/util/Comparator;

    invoke-direct {v0, v1}, Ljava/util/TreeSet;-><init>(Ljava/util/Comparator;)V

    invoke-static {v0}, Ljava/util/Collections;->synchronizedSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method

.method public static synchronizedListenersSet(Ljava/util/Collection;)Ljava/util/Set;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<",
            "L::Lorg/apache/sshd/common/util/SshdEventListener;",
            ">(",
            "Ljava/util/Collection<",
            "+T",
            "L;",
            ">;)",
            "Ljava/util/Set<",
            "T",
            "L;",
            ">;"
        }
    .end annotation

    .line 100
    .local p0, "listeners":Ljava/util/Collection;, "Ljava/util/Collection<+TL;>;"
    invoke-static {}, Lorg/apache/sshd/common/util/EventListenerUtils;->synchronizedListenersSet()Ljava/util/Set;

    move-result-object v0

    .line 101
    .local v0, "s":Ljava/util/Set;, "Ljava/util/Set<TL;>;"
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->size(Ljava/util/Collection;)I

    move-result v1

    if-lez v1, :cond_0

    .line 102
    invoke-interface {v0, p0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 105
    :cond_0
    return-object v0
.end method
