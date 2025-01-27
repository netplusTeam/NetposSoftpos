.class public Lch/qos/logback/core/AsyncAppenderBase;
.super Lch/qos/logback/core/UnsynchronizedAppenderBase;
.source "AsyncAppenderBase.java"

# interfaces
.implements Lch/qos/logback/core/spi/AppenderAttachable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lch/qos/logback/core/AsyncAppenderBase$Worker;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/UnsynchronizedAppenderBase<",
        "TE;>;",
        "Lch/qos/logback/core/spi/AppenderAttachable<",
        "TE;>;"
    }
.end annotation


# static fields
.field public static final DEFAULT_MAX_FLUSH_TIME:I = 0x3e8

.field public static final DEFAULT_QUEUE_SIZE:I = 0x100

.field static final UNDEFINED:I = -0x1


# instance fields
.field aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/spi/AppenderAttachableImpl<",
            "TE;>;"
        }
    .end annotation
.end field

.field appenderCount:I

.field blockingQueue:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "TE;>;"
        }
    .end annotation
.end field

.field discardingThreshold:I

.field maxFlushTime:I

.field neverBlock:Z

.field queueSize:I

.field worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/AsyncAppenderBase<",
            "TE;>.Worker;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 40
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;-><init>()V

    .line 42
    new-instance v0, Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-direct {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    .line 49
    const/16 v0, 0x100

    iput v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    .line 51
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->appenderCount:I

    .line 54
    const/4 v1, -0x1

    iput v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    .line 55
    iput-boolean v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->neverBlock:Z

    .line 57
    new-instance v0, Lch/qos/logback/core/AsyncAppenderBase$Worker;

    invoke-direct {v0, p0}, Lch/qos/logback/core/AsyncAppenderBase$Worker;-><init>(Lch/qos/logback/core/AsyncAppenderBase;)V

    iput-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    .line 65
    const/16 v0, 0x3e8

    iput v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->maxFlushTime:I

    .line 280
    return-void
.end method

.method private isQueueBelowDiscardingThreshold()Z
    .locals 2

    .line 165
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    iget v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private put(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 169
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    iget-boolean v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->neverBlock:Z

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0, p1}, Ljava/util/concurrent/BlockingQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_0

    .line 172
    :cond_0
    invoke-direct {p0, p1}, Lch/qos/logback/core/AsyncAppenderBase;->putUninterruptibly(Ljava/lang/Object;)V

    .line 174
    :goto_0
    return-void
.end method

.method private putUninterruptibly(Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 177
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    .line 181
    .local v0, "interrupted":Z
    :goto_0
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1, p1}, Ljava/util/concurrent/BlockingQueue;->put(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 182
    nop

    .line 188
    if-eqz v0, :cond_0

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    .line 192
    :cond_0
    return-void

    .line 188
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    .line 189
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_1
    throw v1

    .line 183
    :catch_0
    move-exception v1

    .line 184
    .local v1, "e":Ljava/lang/InterruptedException;
    const/4 v0, 0x1

    .line 185
    .end local v1    # "e":Ljava/lang/InterruptedException;
    goto :goto_0
.end method


# virtual methods
.method public addAppender(Lch/qos/logback/core/Appender;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)V"
        }
    .end annotation

    .line 246
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "newAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->appenderCount:I

    if-nez v0, :cond_0

    .line 247
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->appenderCount:I

    .line 248
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Attaching appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "] to AsyncAppender."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 249
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->addAppender(Lch/qos/logback/core/Appender;)V

    goto :goto_0

    .line 251
    :cond_0
    const-string v0, "One and only one appender may be attached to AsyncAppender."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addWarn(Ljava/lang/String;)V

    .line 252
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Ignoring additional appender named ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-interface {p1}, Lch/qos/logback/core/Appender;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addWarn(Ljava/lang/String;)V

    .line 254
    :goto_0
    return-void
.end method

.method protected append(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 157
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    invoke-direct {p0}, Lch/qos/logback/core/AsyncAppenderBase;->isQueueBelowDiscardingThreshold()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Lch/qos/logback/core/AsyncAppenderBase;->isDiscardable(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 158
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0, p1}, Lch/qos/logback/core/AsyncAppenderBase;->preprocess(Ljava/lang/Object;)V

    .line 161
    invoke-direct {p0, p1}, Lch/qos/logback/core/AsyncAppenderBase;->put(Ljava/lang/Object;)V

    .line 162
    return-void
.end method

.method public detachAndStopAllAppenders()V
    .locals 1

    .line 269
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAndStopAllAppenders()V

    .line 270
    return-void
.end method

.method public detachAppender(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)Z"
        }
    .end annotation

    .line 273
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAppender(Lch/qos/logback/core/Appender;)Z

    move-result v0

    return v0
.end method

.method public detachAppender(Ljava/lang/String;)Z
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 277
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->detachAppender(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->getAppender(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v0

    return-object v0
.end method

.method public getDiscardingThreshold()I
    .locals 1

    .line 203
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    return v0
.end method

.method public getMaxFlushTime()I
    .locals 1

    .line 211
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->maxFlushTime:I

    return v0
.end method

.method public getNumberOfElementsInQueue()I
    .locals 1

    .line 224
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v0

    return v0
.end method

.method public getQueueSize()I
    .locals 1

    .line 195
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    return v0
.end method

.method public getRemainingCapacity()I
    .locals 1

    .line 242
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v0}, Ljava/util/concurrent/BlockingQueue;->remainingCapacity()I

    move-result v0

    return v0
.end method

.method public isAttached(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)Z"
        }
    .end annotation

    .line 265
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eAppender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->isAttached(Lch/qos/logback/core/Appender;)Z

    move-result v0

    return v0
.end method

.method protected isDiscardable(Ljava/lang/Object;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation

    .line 78
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    const/4 v0, 0x0

    return v0
.end method

.method public isNeverBlock()Z
    .locals 1

    .line 232
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-boolean v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->neverBlock:Z

    return v0
.end method

.method public iteratorForAppenders()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Lch/qos/logback/core/Appender<",
            "TE;>;>;"
        }
    .end annotation

    .line 257
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->aai:Lch/qos/logback/core/spi/AppenderAttachableImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/AppenderAttachableImpl;->iteratorForAppenders()Ljava/util/Iterator;

    move-result-object v0

    return-object v0
.end method

.method protected preprocess(Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 88
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    .local p1, "eventObject":Ljava/lang/Object;, "TE;"
    return-void
.end method

.method public setDiscardingThreshold(I)V
    .locals 0
    .param p1, "discardingThreshold"    # I

    .line 207
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    .line 208
    return-void
.end method

.method public setMaxFlushTime(I)V
    .locals 0
    .param p1, "maxFlushTime"    # I

    .line 215
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/AsyncAppenderBase;->maxFlushTime:I

    .line 216
    return-void
.end method

.method public setNeverBlock(Z)V
    .locals 0
    .param p1, "neverBlock"    # Z

    .line 228
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iput-boolean p1, p0, Lch/qos/logback/core/AsyncAppenderBase;->neverBlock:Z

    .line 229
    return-void
.end method

.method public setQueueSize(I)V
    .locals 0
    .param p1, "queueSize"    # I

    .line 199
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    .line 200
    return-void
.end method

.method public start()V
    .locals 3

    .line 92
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/AsyncAppenderBase;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 93
    return-void

    .line 94
    :cond_0
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->appenderCount:I

    if-nez v0, :cond_1

    .line 95
    const-string v0, "No attached appenders found."

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addError(Ljava/lang/String;)V

    .line 96
    return-void

    .line 98
    :cond_1
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    const/4 v1, 0x1

    if-ge v0, v1, :cond_2

    .line 99
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invalid queue size ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addError(Ljava/lang/String;)V

    .line 100
    return-void

    .line 102
    :cond_2
    new-instance v0, Ljava/util/concurrent/ArrayBlockingQueue;

    iget v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    invoke-direct {v0, v2}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    .line 104
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    const/4 v2, -0x1

    if-ne v0, v2, :cond_3

    .line 105
    iget v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->queueSize:I

    div-int/lit8 v0, v0, 0x5

    iput v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    .line 106
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting discardingThreshold to "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->discardingThreshold:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/AsyncAppenderBase;->addInfo(Ljava/lang/String;)V

    .line 107
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->setDaemon(Z)V

    .line 108
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "AsyncAppender-Worker-"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lch/qos/logback/core/AsyncAppenderBase;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->setName(Ljava/lang/String;)V

    .line 110
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->start()V

    .line 111
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    invoke-virtual {v0}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->start()V

    .line 112
    return-void
.end method

.method public stop()V
    .locals 5

    .line 116
    .local p0, "this":Lch/qos/logback/core/AsyncAppenderBase;, "Lch/qos/logback/core/AsyncAppenderBase<TE;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/AsyncAppenderBase;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 117
    return-void

    .line 122
    :cond_0
    invoke-super {p0}, Lch/qos/logback/core/UnsynchronizedAppenderBase;->stop()V

    .line 126
    iget-object v0, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    invoke-virtual {v0}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->interrupt()V

    .line 128
    new-instance v0, Lch/qos/logback/core/util/InterruptUtil;

    iget-object v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->context:Lch/qos/logback/core/Context;

    invoke-direct {v0, v1}, Lch/qos/logback/core/util/InterruptUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 131
    .local v0, "interruptUtil":Lch/qos/logback/core/util/InterruptUtil;
    :try_start_0
    invoke-virtual {v0}, Lch/qos/logback/core/util/InterruptUtil;->maskInterruptFlag()V

    .line 133
    iget-object v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    iget v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->maxFlushTime:I

    int-to-long v2, v2

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->join(J)V

    .line 136
    iget-object v1, p0, Lch/qos/logback/core/AsyncAppenderBase;->worker:Lch/qos/logback/core/AsyncAppenderBase$Worker;

    invoke-virtual {v1}, Lch/qos/logback/core/AsyncAppenderBase$Worker;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Max queue flush timeout ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->maxFlushTime:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ms) exceeded. Approximately "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " queued events were possibly discarded."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lch/qos/logback/core/AsyncAppenderBase;->addWarn(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_1
    const-string v1, "Queue flush finished successfully within timeout."

    invoke-virtual {p0, v1}, Lch/qos/logback/core/AsyncAppenderBase;->addInfo(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 147
    :goto_0
    invoke-virtual {v0}, Lch/qos/logback/core/util/InterruptUtil;->unmaskInterruptFlag()V

    .line 148
    goto :goto_1

    .line 147
    :catchall_0
    move-exception v1

    goto :goto_2

    .line 143
    :catch_0
    move-exception v1

    .line 144
    .local v1, "e":Ljava/lang/InterruptedException;
    :try_start_1
    iget-object v2, p0, Lch/qos/logback/core/AsyncAppenderBase;->blockingQueue:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v2}, Ljava/util/concurrent/BlockingQueue;->size()I

    move-result v2

    .line 145
    .local v2, "remaining":I
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Failed to join worker thread. "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " queued events may be discarded."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v1}, Lch/qos/logback/core/AsyncAppenderBase;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v1    # "e":Ljava/lang/InterruptedException;
    .end local v2    # "remaining":I
    goto :goto_0

    .line 149
    :goto_1
    return-void

    .line 147
    :goto_2
    invoke-virtual {v0}, Lch/qos/logback/core/util/InterruptUtil;->unmaskInterruptFlag()V

    throw v1
.end method
