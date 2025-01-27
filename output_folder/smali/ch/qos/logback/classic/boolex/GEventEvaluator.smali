.class public Lch/qos/logback/classic/boolex/GEventEvaluator;
.super Lch/qos/logback/core/boolex/EventEvaluatorBase;
.source "GEventEvaluator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lch/qos/logback/core/boolex/EventEvaluatorBase<",
        "Lch/qos/logback/classic/spi/ILoggingEvent;",
        ">;"
    }
.end annotation


# instance fields
.field delegateEvaluator:Lch/qos/logback/classic/boolex/IEvaluator;

.field expression:Ljava/lang/String;

.field script:Lgroovy/lang/Script;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 26
    invoke-direct {p0}, Lch/qos/logback/core/boolex/EventEvaluatorBase;-><init>()V

    return-void
.end method


# virtual methods
.method public evaluate(Lch/qos/logback/classic/spi/ILoggingEvent;)Z
    .locals 1
    .param p1, "event"    # Lch/qos/logback/classic/spi/ILoggingEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->delegateEvaluator:Lch/qos/logback/classic/boolex/IEvaluator;

    if-nez v0, :cond_0

    .line 83
    const/4 v0, 0x0

    return v0

    .line 85
    :cond_0
    invoke-interface {v0, p1}, Lch/qos/logback/classic/boolex/IEvaluator;->doEvaluate(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic evaluate(Ljava/lang/Object;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NullPointerException;,
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 26
    check-cast p1, Lch/qos/logback/classic/spi/ILoggingEvent;

    invoke-virtual {p0, p1}, Lch/qos/logback/classic/boolex/GEventEvaluator;->evaluate(Lch/qos/logback/classic/spi/ILoggingEvent;)Z

    move-result p1

    return p1
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 34
    iget-object v0, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .line 38
    iput-object p1, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    .line 39
    return-void
.end method

.method public start()V
    .locals 11

    .line 42
    const-string v0, "Failed to compile expression ["

    const/4 v1, 0x0

    .line 43
    .local v1, "errors":I
    iget-object v2, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    if-eqz v2, :cond_3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_0

    goto/16 :goto_2

    .line 47
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Expression to evaluate ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/classic/boolex/GEventEvaluator;->addInfo(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 51
    .local v2, "classLoader":Ljava/lang/ClassLoader;
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v4

    .line 52
    .local v4, "currentPackageName":Ljava/lang/String;
    const/16 v5, 0x2e

    const/16 v6, 0x2f

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    .line 54
    new-instance v5, Lch/qos/logback/core/util/FileUtil;

    invoke-virtual {p0}, Lch/qos/logback/classic/boolex/GEventEvaluator;->getContext()Lch/qos/logback/core/Context;

    move-result-object v6

    invoke-direct {v5, v6}, Lch/qos/logback/core/util/FileUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 55
    .local v5, "fileUtil":Lch/qos/logback/core/util/FileUtil;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/EvaluatorTemplate.groovy"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Lch/qos/logback/core/util/FileUtil;->resourceAsString(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 56
    .local v6, "scriptText":Ljava/lang/String;
    if-nez v6, :cond_1

    .line 57
    return-void

    .line 61
    :cond_1
    iget-object v7, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    const-string v8, "//EXPRESSION"

    invoke-virtual {v6, v8, v7}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v6

    .line 63
    new-instance v7, Lgroovy/lang/GroovyClassLoader;

    invoke-direct {v7, v2}, Lgroovy/lang/GroovyClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 65
    .local v7, "gLoader":Lgroovy/lang/GroovyClassLoader;
    :try_start_0
    invoke-virtual {v7, v6}, Lgroovy/lang/GroovyClassLoader;->parseClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v8

    .line 67
    .local v8, "scriptClass":Ljava/lang/Class;
    invoke-virtual {v8}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lgroovy/lang/GroovyObject;

    .line 68
    .local v9, "goo":Lgroovy/lang/GroovyObject;
    move-object v10, v9

    check-cast v10, Lch/qos/logback/classic/boolex/IEvaluator;

    iput-object v10, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->delegateEvaluator:Lch/qos/logback/classic/boolex/IEvaluator;
    :try_end_0
    .catch Lorg/codehaus/groovy/control/CompilationFailedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v8    # "scriptClass":Ljava/lang/Class;
    .end local v9    # "goo":Lgroovy/lang/GroovyObject;
    goto :goto_0

    .line 73
    :catch_0
    move-exception v8

    .line 74
    .local v8, "e":Ljava/lang/Exception;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lch/qos/logback/classic/boolex/GEventEvaluator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 75
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 70
    .end local v8    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v8

    .line 71
    .local v8, "cfe":Lorg/codehaus/groovy/control/CompilationFailedException;
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v9, p0, Lch/qos/logback/classic/boolex/GEventEvaluator;->expression:Ljava/lang/String;

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v8}, Lch/qos/logback/classic/boolex/GEventEvaluator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 72
    nop

    .end local v8    # "cfe":Lorg/codehaus/groovy/control/CompilationFailedException;
    add-int/lit8 v1, v1, 0x1

    .line 76
    :goto_0
    nop

    .line 77
    :goto_1
    if-nez v1, :cond_2

    .line 78
    invoke-super {p0}, Lch/qos/logback/core/boolex/EventEvaluatorBase;->start()V

    .line 79
    :cond_2
    return-void

    .line 44
    .end local v2    # "classLoader":Ljava/lang/ClassLoader;
    .end local v4    # "currentPackageName":Ljava/lang/String;
    .end local v5    # "fileUtil":Lch/qos/logback/core/util/FileUtil;
    .end local v6    # "scriptText":Ljava/lang/String;
    .end local v7    # "gLoader":Lgroovy/lang/GroovyClassLoader;
    :cond_3
    :goto_2
    const-string v0, "Empty expression"

    invoke-virtual {p0, v0}, Lch/qos/logback/classic/boolex/GEventEvaluator;->addError(Ljava/lang/String;)V

    .line 45
    return-void
.end method
