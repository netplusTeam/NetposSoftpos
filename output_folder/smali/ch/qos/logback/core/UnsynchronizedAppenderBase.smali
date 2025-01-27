.class public abstract Lch/qos/logback/core/UnsynchronizedAppenderBase;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "UnsynchronizedAppenderBase.java"

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
.field static final ALLOWED_REPEATS:I = 0x3


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

.field private guard:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field protected name:Ljava/lang/String;

.field protected started:Z

.field private statusRepeatCount:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 31
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 33
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    .line 42
    new-instance v1, Ljava/lang/ThreadLocal;

    invoke-direct {v1}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    .line 49
    new-instance v1, Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-direct {v1}, Lch/qos/logback/core/spi/FilterAttachableImpl;-><init>()V

    iput-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    .line 55
    iput v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->statusRepeatCount:I

    .line 56
    iput v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->exceptionCount:I

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

    .line 121
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    .local p1, "newFilter":Lch/qos/logback/core/filter/Filter;, "Lch/qos/logback/core/filter/Filter<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->addFilter(Lch/qos/logback/core/filter/Filter;)V

    .line 122
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

    .line 125
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/FilterAttachableImpl;->clearAllFilters()V

    .line 126
    return-void
.end method

.method public doAppend(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 65
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    sget-object v0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    iget-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    return-void

    .line 70
    :cond_0
    const/4 v0, 0x3

    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 72
    iget-boolean v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    if-nez v1, :cond_2

    .line 73
    iget v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->statusRepeatCount:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->statusRepeatCount:I

    if-ge v1, v0, :cond_1

    .line 74
    new-instance v1, Lch/qos/logback/core/status/WarnStatus;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Attempted to append to non started appender ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p0}, Lch/qos/logback/core/status/WarnStatus;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p0, v1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addStatus(Lch/qos/logback/core/status/Status;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 91
    :cond_1
    :goto_0
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void

    .line 79
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v1

    sget-object v2, Lch/qos/logback/core/spi/FilterReply;->DENY:Lch/qos/logback/core/spi/FilterReply;

    if-ne v1, v2, :cond_3

    .line 91
    goto :goto_0

    .line 84
    :cond_3
    invoke-virtual {p0, p1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->append(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 91
    :catchall_0
    move-exception v0

    goto :goto_2

    .line 86
    :catch_0
    move-exception v1

    .line 87
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    iget v2, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->exceptionCount:I

    add-int/lit8 v3, v2, 0x1

    iput v3, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->exceptionCount:I

    if-ge v2, v0, :cond_4

    .line 88
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Appender ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v2, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "] failed to append."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 91
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    :goto_1
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 92
    nop

    .line 93
    return-void

    .line 91
    :goto_2
    iget-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->guard:Ljava/lang/ThreadLocal;

    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0
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

    .line 129
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

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

    .line 133
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->fai:Lch/qos/logback/core/spi/FilterAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/FilterAttachableImpl;->getFilterChainDecision(Ljava/lang/Object;)Lch/qos/logback/core/spi/FilterReply;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 52
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isStarted()Z
    .locals 1

    .line 113
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    return v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 101
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    .line 102
    return-void
.end method

.method public start()V
    .locals 1

    .line 105
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    .line 106
    return-void
.end method

.method public stop()V
    .locals 1

    .line 109
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->started:Z

    .line 110
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 117
    .local p0, "this":Lch/qos/logback/core/UnsynchronizedAppenderBase;, "Lch/qos/logback/core/UnsynchronizedAppenderBase<TE;>;"
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

    iget-object v1, p0, Lch/qos/logback/core/UnsynchronizedAppenderBase;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
