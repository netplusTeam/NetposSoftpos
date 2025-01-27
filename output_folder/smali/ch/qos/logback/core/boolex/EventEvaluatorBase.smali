.class public abstract Lch/qos/logback/core/boolex/EventEvaluatorBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "EventEvaluatorBase.java"

# interfaces
.implements Lch/qos/logback/core/boolex/EventEvaluator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/boolex/EventEvaluator<",
        "TE;>;"
    }
.end annotation


# instance fields
.field name:Ljava/lang/String;

.field started:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .line 24
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 35
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->started:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 28
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->name:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 31
    iput-object p1, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->name:Ljava/lang/String;

    .line 32
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "name has been already set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public start()V
    .locals 1

    .line 39
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->started:Z

    .line 40
    return-void
.end method

.method public stop()V
    .locals 1

    .line 43
    .local p0, "this":Lch/qos/logback/core/boolex/EventEvaluatorBase;, "Lch/qos/logback/core/boolex/EventEvaluatorBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/boolex/EventEvaluatorBase;->started:Z

    .line 44
    return-void
.end method
