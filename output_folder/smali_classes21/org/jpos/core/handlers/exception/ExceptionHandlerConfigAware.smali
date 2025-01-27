.class public interface abstract Lorg/jpos/core/handlers/exception/ExceptionHandlerConfigAware;
.super Ljava/lang/Object;
.source "ExceptionHandlerConfigAware.java"


# virtual methods
.method public addExceptionHandlers(Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;Lorg/jdom2/Element;Lorg/jpos/q2/QFactory;)V
    .locals 6
    .param p1, "receiver"    # Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;
    .param p2, "elem"    # Lorg/jdom2/Element;
    .param p3, "fact"    # Lorg/jpos/q2/QFactory;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 36
    const-string v0, "exception-handler"

    invoke-virtual {p2, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jdom2/Element;

    .line 37
    .local v1, "o":Lorg/jdom2/Element;
    const-string v2, "class"

    invoke-virtual {v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 38
    .local v2, "clazz":Ljava/lang/String;
    invoke-virtual {p3, v2}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/core/handlers/exception/ExceptionHandler;

    .line 39
    .local v3, "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    invoke-virtual {p3, v3, v1}, Lorg/jpos/q2/QFactory;->setLogger(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 40
    invoke-virtual {p3, v3, v1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 41
    const-string v4, "exception"

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 42
    .local v4, "exception":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 43
    invoke-interface {p1, v3}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->addHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;)V

    goto :goto_1

    .line 47
    :cond_0
    :try_start_0
    invoke-static {v4}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 50
    .local v5, "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Exception;>;"
    nop

    .line 51
    invoke-interface {p1, v3, v5}, Lorg/jpos/core/handlers/exception/ExceptionHandlerAware;->addHandler(Lorg/jpos/core/handlers/exception/ExceptionHandler;Ljava/lang/Class;)V

    .line 53
    .end local v1    # "o":Lorg/jdom2/Element;
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v3    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    .end local v4    # "exception":Ljava/lang/String;
    .end local v5    # "exceptionClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Exception;>;"
    :goto_1
    goto :goto_0

    .line 48
    .restart local v1    # "o":Lorg/jdom2/Element;
    .restart local v2    # "clazz":Ljava/lang/String;
    .restart local v3    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    .restart local v4    # "exception":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 49
    .local v0, "e":Ljava/lang/Exception;
    new-instance v5, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v5, v4, v0}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 54
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v1    # "o":Lorg/jdom2/Element;
    .end local v2    # "clazz":Ljava/lang/String;
    .end local v3    # "handler":Lorg/jpos/core/handlers/exception/ExceptionHandler;
    .end local v4    # "exception":Ljava/lang/String;
    :cond_1
    return-void
.end method
