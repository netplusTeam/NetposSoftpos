.class public interface abstract Lorg/apache/sshd/common/util/Invoker;
.super Ljava/lang/Object;
.source "Invoker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ARG:",
        "Ljava/lang/Object;",
        "RET:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# direct methods
.method public static invokeAll(Ljava/lang/Object;Ljava/util/Collection;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ARG:",
            "Ljava/lang/Object;",
            ">(TARG;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/Invoker<",
            "-TARG;*>;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 69
    .local p0, "arg":Ljava/lang/Object;, "TARG;"
    .local p1, "invokers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/Invoker<-TARG;*>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 70
    return-void

    .line 73
    :cond_0
    const/4 v0, 0x0

    .line 74
    .local v0, "err":Ljava/lang/Throwable;
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/Invoker;

    .line 75
    .local v2, "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    if-nez v2, :cond_1

    .line 76
    goto :goto_0

    .line 80
    :cond_1
    :try_start_0
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 83
    goto :goto_1

    .line 81
    :catchall_0
    move-exception v3

    .line 82
    .local v3, "t":Ljava/lang/Throwable;
    invoke-static {v0, v3}, Lorg/apache/sshd/common/util/GenericUtils;->accumulateException(Ljava/lang/Throwable;Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v0

    .line 84
    .end local v2    # "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    .end local v3    # "t":Ljava/lang/Throwable;
    :goto_1
    goto :goto_0

    .line 86
    :cond_2
    if-nez v0, :cond_3

    .line 89
    return-void

    .line 87
    :cond_3
    throw v0
.end method

.method public static invokeTillFirstFailure(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/AbstractMap$SimpleImmutableEntry;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ARG:",
            "Ljava/lang/Object;",
            ">(TARG;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/Invoker<",
            "-TARG;*>;>;)",
            "Ljava/util/AbstractMap$SimpleImmutableEntry<",
            "Lorg/apache/sshd/common/util/Invoker<",
            "-TARG;*>;",
            "Ljava/lang/Throwable;",
            ">;"
        }
    .end annotation

    .line 126
    .local p0, "arg":Ljava/lang/Object;, "TARG;"
    .local p1, "invokers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/Invoker<-TARG;*>;>;"
    invoke-static {p1}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 127
    return-object v1

    .line 130
    :cond_0
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/util/Invoker;

    .line 131
    .local v2, "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    if-nez v2, :cond_1

    .line 132
    goto :goto_0

    .line 136
    :cond_1
    :try_start_0
    invoke-interface {v2, p0}, Lorg/apache/sshd/common/util/Invoker;->invoke(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 139
    nop

    .line 140
    .end local v2    # "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    goto :goto_0

    .line 137
    .restart local v2    # "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    :catchall_0
    move-exception v0

    .line 138
    .local v0, "t":Ljava/lang/Throwable;
    new-instance v1, Ljava/util/AbstractMap$SimpleImmutableEntry;

    invoke-direct {v1, v2, v0}, Ljava/util/AbstractMap$SimpleImmutableEntry;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 142
    .end local v0    # "t":Ljava/lang/Throwable;
    .end local v2    # "i":Lorg/apache/sshd/common/util/Invoker;, "Lorg/apache/sshd/common/util/Invoker<-TARG;*>;"
    :cond_2
    return-object v1
.end method

.method public static synthetic lambda$wrapAll$0(Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 1
    .param p0, "invokers"    # Ljava/util/Collection;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 51
    invoke-static {p1, p0}, Lorg/apache/sshd/common/util/Invoker;->invokeAll(Ljava/lang/Object;Ljava/util/Collection;)V

    .line 52
    const/4 v0, 0x0

    return-object v0
.end method

.method public static synthetic lambda$wrapFirst$1(Ljava/util/Collection;Ljava/lang/Object;)Ljava/lang/Void;
    .locals 2
    .param p0, "invokers"    # Ljava/util/Collection;
    .param p1, "arg"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 104
    nop

    .line 105
    invoke-static {p1, p0}, Lorg/apache/sshd/common/util/Invoker;->invokeTillFirstFailure(Ljava/lang/Object;Ljava/util/Collection;)Ljava/util/AbstractMap$SimpleImmutableEntry;

    move-result-object v0

    .line 106
    .local v0, "result":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lorg/apache/sshd/common/util/Invoker<-TARG;*>;Ljava/lang/Throwable;>;"
    if-nez v0, :cond_0

    .line 109
    const/4 v1, 0x0

    return-object v1

    .line 107
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Throwable;

    throw v1
.end method

.method public static wrapAll(Ljava/util/Collection;)Lorg/apache/sshd/common/util/Invoker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ARG:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/Invoker<",
            "-TARG;*>;>;)",
            "Lorg/apache/sshd/common/util/Invoker<",
            "TARG;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 50
    .local p0, "invokers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/Invoker<-TARG;*>;>;"
    new-instance v0, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda1;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public static wrapFirst(Ljava/util/Collection;)Lorg/apache/sshd/common/util/Invoker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<ARG:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/common/util/Invoker<",
            "-TARG;*>;>;)",
            "Lorg/apache/sshd/common/util/Invoker<",
            "TARG;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .line 103
    .local p0, "invokers":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/common/util/Invoker<-TARG;*>;>;"
    new-instance v0, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda0;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/Invoker$$ExternalSyntheticLambda0;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method


# virtual methods
.method public abstract invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TARG;)TRET;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation
.end method
