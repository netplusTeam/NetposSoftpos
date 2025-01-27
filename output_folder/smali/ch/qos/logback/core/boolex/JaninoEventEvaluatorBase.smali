.class public abstract Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;
.super Lch/qos/logback/core/boolex/EventEvaluatorBase;
.source "JaninoEventEvaluatorBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/boolex/EventEvaluatorBase<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field public static final ERROR_THRESHOLD:I = 0x4

.field static EXPRESSION_TYPE:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field static THROWN_EXCEPTIONS:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# instance fields
.field private errorCount:I

.field private expression:Ljava/lang/String;

.field protected matcherList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/boolex/Matcher;",
            ">;"
        }
    .end annotation
.end field

.field scriptEvaluator:Lorg/codehaus/janino/ScriptEvaluator;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 28
    nop

    .line 30
    sget-object v0, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    sput-object v0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->EXPRESSION_TYPE:Ljava/lang/Class;

    .line 31
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Class;

    sput-object v0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->THROWN_EXCEPTIONS:[Ljava/lang/Class;

    .line 35
    const/4 v1, 0x0

    const-class v2, Lch/qos/logback/core/boolex/EvaluationException;

    aput-object v2, v0, v1

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 28
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/boolex/EventEvaluatorBase;-><init>()V

    .line 41
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->errorCount:I

    .line 51
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->matcherList:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public addMatcher(Lch/qos/logback/core/boolex/Matcher;)V
    .locals 1
    .param p1, "matcher"    # Lch/qos/logback/core/boolex/Matcher;

    .line 89
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->matcherList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 90
    return-void
.end method

.method public evaluate(Ljava/lang/Object;)Z
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/boolex/EvaluationException;
        }
    .end annotation

    .line 65
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->isStarted()Z

    move-result v0

    const-string v1, "Evaluator ["

    if-eqz v0, :cond_1

    .line 69
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->scriptEvaluator:Lorg/codehaus/janino/ScriptEvaluator;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->getParameterValues(Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/codehaus/janino/ScriptEvaluator;->evaluate([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    .line 70
    .local v0, "result":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 71
    .end local v0    # "result":Ljava/lang/Boolean;
    :catch_0
    move-exception v0

    .line 72
    .local v0, "ex":Ljava/lang/Exception;
    iget v2, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->errorCount:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->errorCount:I

    .line 73
    const/4 v3, 0x4

    if-lt v2, v3, :cond_0

    .line 74
    invoke-virtual {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->stop()V

    .line 76
    :cond_0
    new-instance v2, Lch/qos/logback/core/boolex/EvaluationException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v3, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "] caused an exception"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v2, v1, v0}, Lch/qos/logback/core/boolex/EvaluationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 66
    .end local v0    # "ex":Ljava/lang/Exception;
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] was called in stopped state"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract getDecoratedExpression()Ljava/lang/String;
.end method

.method public getExpression()Ljava/lang/String;
    .locals 1

    .line 81
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->expression:Ljava/lang/String;

    return-object v0
.end method

.method public getMatcherList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/boolex/Matcher;",
            ">;"
        }
    .end annotation

    .line 93
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->matcherList:Ljava/util/List;

    return-object v0
.end method

.method protected abstract getParameterNames()[Ljava/lang/String;
.end method

.method protected abstract getParameterTypes()[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end method

.method protected abstract getParameterValues(Ljava/lang/Object;)[Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)[",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public setExpression(Ljava/lang/String;)V
    .locals 0
    .param p1, "expression"    # Ljava/lang/String;

    .line 85
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->expression:Ljava/lang/String;

    .line 86
    return-void
.end method

.method public start()V
    .locals 7

    .line 56
    .local p0, "this":Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;, "Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase<TE;>;"
    :try_start_0
    iget-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->context:Lch/qos/logback/core/Context;

    if-eqz v0, :cond_0

    .line 57
    new-instance v0, Lorg/codehaus/janino/ScriptEvaluator;

    invoke-virtual {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->getDecoratedExpression()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->EXPRESSION_TYPE:Ljava/lang/Class;

    invoke-virtual {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->getParameterNames()[Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v5

    sget-object v6, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->THROWN_EXCEPTIONS:[Ljava/lang/Class;

    move-object v1, v0

    invoke-direct/range {v1 .. v6}, Lorg/codehaus/janino/ScriptEvaluator;-><init>(Ljava/lang/String;Ljava/lang/Class;[Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Class;)V

    iput-object v0, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->scriptEvaluator:Lorg/codehaus/janino/ScriptEvaluator;

    .line 58
    invoke-super {p0}, Lch/qos/logback/core/boolex/EventEvaluatorBase;->start()V

    .line 61
    goto :goto_1

    .line 59
    :catch_0
    move-exception v0

    goto :goto_0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 60
    .local v0, "e":Ljava/lang/Exception;
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not start evaluator with expression ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->expression:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/boolex/JaninoEventEvaluatorBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 62
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_1
    return-void
.end method
