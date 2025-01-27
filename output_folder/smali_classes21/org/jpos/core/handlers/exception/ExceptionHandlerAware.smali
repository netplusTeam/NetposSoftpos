.class public interface abstract Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;
.super Ljava/lang/Object;
.source "ExceptionHandlerAware.java"


# direct methods
.method public static synthetic lambda$addHandler$0(Ljava/lang/Class;)Ljava/util/List;
    .locals 1
    .param p0, "f"    # Ljava/lang/Class;

    .line 68
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method


# virtual methods
.method public addHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/jpos/core/handlers/exception/ExceptionHandler;

    .line 59
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->addHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;Ljava/lang/Class;)V

    .line 60
    return-void
.end method

.method public addHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;Ljava/lang/Class;)V
    .locals 2
    .param p1, "handler"    # Lorg/jpos/core/handlers/exception/ExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/core/handlers/exception/ExceptionHandler;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 68
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Exception;>;"
    invoke-interface {p0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->getExceptionHandlers()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v0, p2, v1}, Ljava/util/Map;->computeIfAbsent(Ljava/lang/Object;Ljava/util/function/Function;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 69
    .local v0, "handlers":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/core/handlers/exception/ExceptionHandler;>;"
    if-eqz p1, :cond_0

    .line 70
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 72
    :cond_0
    return-void
.end method

.method public abstract getExceptionHandlers()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;",
            "Ljava/util/List<",
            "Lorg/jpos/core/handlers/exception/ExceptionHandler;",
            ">;>;"
        }
    .end annotation
.end method

.method public handle(Ljava/lang/Exception;)Ljava/lang/Exception;
    .locals 5
    .param p1, "e"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 117
    move-object v0, p1

    .line 118
    .local v0, "exception":Ljava/lang/Exception;
    invoke-interface {p0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->getExceptionHandlers()Ljava/util/Map;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 119
    .local v1, "defaultExceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/core/handlers/exception/ExceptionHandler;>;"
    invoke-interface {p0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->getExceptionHandlers()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/List;

    .line 121
    .local v2, "targetedExceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/core/handlers/exception/ExceptionHandler;>;"
    if-nez v2, :cond_1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 122
    :cond_0
    throw p1

    .line 125
    :cond_1
    :goto_0
    if-eqz v2, :cond_2

    .line 126
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/core/handlers/exception/ExceptionHandler;

    .line 127
    .local v4, "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    invoke-interface {v4, v0}, Lorg/jpos/core/handlers/exception/ExceptionHandler;->handle(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 128
    .end local v4    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    goto :goto_1

    .line 131
    :cond_2
    if-eqz v1, :cond_3

    .line 132
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/core/handlers/exception/ExceptionHandler;

    .line 133
    .restart local v4    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    invoke-interface {v4, v0}, Lorg/jpos/core/handlers/exception/ExceptionHandler;->handle(Ljava/lang/Exception;)Ljava/lang/Exception;

    move-result-object v0

    .line 134
    .end local v4    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    goto :goto_2

    .line 137
    :cond_3
    return-object v0
.end method

.method public removeHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;)V
    .locals 1
    .param p1, "handler"    # Lorg/jpos/core/handlers/exception/ExceptionHandler;

    .line 79
    const/4 v0, 0x0

    invoke-interface {p0, p1, v0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->removeHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;Ljava/lang/Class;)V

    .line 80
    return-void
.end method

.method public removeHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;Ljava/lang/Class;)V
    .locals 2
    .param p1, "handler"    # Lorg/jpos/core/handlers/exception/ExceptionHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jpos/core/handlers/exception/ExceptionHandler;",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 90
    .local p2, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Exception;>;"
    invoke-interface {p0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->getExceptionHandlers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 91
    .local v0, "exceptionHandlers":Ljava/util/List;, "Ljava/util/List<Lorg/jpos/core/handlers/exception/ExceptionHandler;>;"
    if-eqz v0, :cond_0

    .line 92
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 93
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 94
    invoke-interface {p0, p2}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->removeHandlers(Ljava/lang/Class;)V

    .line 97
    :cond_0
    return-void
.end method

.method public removeHandlers(Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Exception;",
            ">;)V"
        }
    .end annotation

    .line 104
    .local p1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Exception;>;"
    invoke-interface {p0}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->getExceptionHandlers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 105
    return-void
.end method
