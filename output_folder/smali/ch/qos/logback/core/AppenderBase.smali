.class public abstract Lch/qos/logback/core/AppenderBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "AppenderBase.java"

# interfaces
.implements Lch/qos/logback/core/Appender;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/ContextAwareBase;",
        "Lch/qos/logback/core/Appender<",
        "TE;>;"
    }
.end annotation


# static fields
.field static final ALLOWED_REPEATS:I = 0x5


# instance fields
.field private exceptionCount:I

.field private fai:Lch/qos/logback/core/spi/FilterAttachableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/FilterAttachableImpl<",
            "TE;>;"
        }
    .end annotation
.end field

.field private guard:Z

.field protected name:Ljava/lang/String;

.field protected volatile started:Z

.field private statusRepeatCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 32
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    .line 40
    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    .line 47
    new-instance v1, Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-direct {v1}, Lch/qos/logback/core/spi/FilterAttachableImpl;-><init>()V

    iput-object v1, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    .line 53
    iput v0, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I

    .line 54
    iput v0, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    return-void
.end method


# virtual methods
.method public addFilter(Lch/qos/logback/core/filter/Filter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/filter/Filter<",
            "TE;>;)V"
        }
    .end annotation

    .line 119
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    .local p1, "newFilter":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->addFilter(Lch/qos/logback/core/filter/Filter;)V

    .line 120
    return-void
.end method

.method protected abstract append(Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation
.end method

.method public clearAllFilters()V
    .locals 1

    .line 123
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/FilterAttachableImpl;->clearAllFilters()V

    .line 124
    return-void
.end method

.method public declared-synchronized doAppend(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    monitor-enter p0

    .line 63
    :try_start_0
    iget-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    if-eqz v0, :cond_0

    .line 64
    monitor-exit p0

    return-void

    .line 68
    :cond_0
    const/4 v0, 0x5

    const/4 v1, 0x1

    const/4 v2, 0x0

    :try_start_1
    iput-boolean v1, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    .line 70
    iget-boolean v1, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    if-nez v1, :cond_2

    .line 71
    iget v1, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I

    add-int/lit8 v3, v1, 0x1

    iput v3, p0, Lch/qos/logback/core/AppenderBase;->statusRepeatCount:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ge v1, v0, :cond_1

    .line 72
    :try_start_2
    new-instance v1, Lch/qos/logback/core/status/WarnStatus;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Attempted to append to non started appender ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/AppenderBase;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 89
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 84
    :catch_0
    move-exception v1

    goto :goto_1

    .line 89
    :cond_1
    :goto_0
    :try_start_3
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    monitor-exit p0

    return-void

    .line 77
    .end local p0    # "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    :cond_2
    :try_start_4
    invoke-virtual {p0, p1}, Lch/qos/logback/core/AppenderBase;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v1

    sget-object v3, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne v1, v3, :cond_3

    .line 89
    :try_start_5
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    monitor-exit p0

    return-void

    .line 82
    :cond_3
    :try_start_6
    invoke-virtual {p0, p1}, Lch/qos/logback/core/AppenderBase;->append(Ljava/lang/Object;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    goto :goto_2

    .line 89
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 84
    :catch_1
    move-exception v1

    .line 85
    .local v1, "e":Ljava/lang/Exception;
    :goto_1
    :try_start_7
    iget v3, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lch/qos/logback/core/AppenderBase;->exceptionCount:I

    if-ge v3, v0, :cond_4

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Appender ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "] failed to append."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/AppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 89
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_2
    :try_start_8
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 90
    nop

    .line 91
    monitor-exit p0

    return-void

    .line 89
    :goto_3
    :try_start_9
    iput-boolean v2, p0, Lch/qos/logback/core/AppenderBase;->guard:Z

    throw v0
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 62
    .end local p1    # "eventObject":Ljava/lang/Object;, "TE;"
    :catchall_2
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public getCopyOfAttachedFiltersList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/filter/Filter<",
            "TE;>;>;"
        }
    .end annotation

    .line 127
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/FilterAttachableImpl;->getCopyOfAttachedFiltersList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)",
            "Lch/qos/logback/core/spi/FilterReply;"
        }
    .end annotation

    .line 131
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 50
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 111
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 99
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    .line 100
    return-void
.end method

.method public start()V
    .locals 1

    .line 103
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    .line 104
    return-void
.end method

.method public stop()V
    .locals 1

    .line 107
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/AppenderBase;->started:Z

    .line 108
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 115
    .local p0, "this":Lch/qos/logback/core/AppenderBase;, "Lch/qos/logback/core/AppenderBase<TE;>;"
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lch/qos/logback/core/AppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
