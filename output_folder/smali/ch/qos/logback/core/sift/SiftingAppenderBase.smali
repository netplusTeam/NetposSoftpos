.class public abstract Lch/qos/logback/core/sift/SiftingAppenderBase;
.super Lch/qos/logback/core/AppenderBase;
.source "SiftingAppenderBase.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/AppenderBase<",
        "TE;>;"
    }
.end annotation


# instance fields
.field appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/AppenderFactory<",
            "TE;>;"
        }
    .end annotation
.end field

.field protected appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/AppenderTracker<",
            "TE;>;"
        }
    .end annotation
.end field

.field discriminator:Lch/qos/logback/core/sift/Discriminator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;"
        }
    .end annotation
.end field

.field maxAppenderCount:I

.field timeout:Lch/qos/logback/core/util/Duration;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 30
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/AppenderBase;-><init>()V

    .line 34
    new-instance v0, Lch/qos/logback/core/util/Duration;

    const-wide/32 v1, 0x1b7740

    invoke-direct {v0, v1, v2}, Lch/qos/logback/core/util/Duration;-><init>(J)V

    iput-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->timeout:Lch/qos/logback/core/util/Duration;

    .line 35
    const v0, 0x7fffffff

    iput v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->maxAppenderCount:I

    return-void
.end method


# virtual methods
.method protected append(Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)V"
        }
    .end annotation

    .line 98
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    .local p1, "event":Ljava/lang/Object;, "TE;"
    invoke-virtual {p0}, Lch/qos/logback/core/sift/SiftingAppenderBase;->isStarted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 99
    return-void

    .line 101
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    invoke-interface {v0, p1}, Lch/qos/logback/core/sift/Discriminator;->getDiscriminatingValue(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 102
    .local v0, "discriminatingValue":Ljava/lang/String;
    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->getTimestamp(Ljava/lang/Object;)J

    move-result-wide v1

    .line 104
    .local v1, "timestamp":J
    iget-object v3, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    invoke-virtual {v3, v0, v1, v2}, Lch/qos/logback/core/sift/AppenderTracker;->getOrCreate(Ljava/lang/String;J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lch/qos/logback/core/Appender;

    .line 106
    .local v3, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->eventMarksEndOfLife(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 107
    iget-object v4, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    invoke-virtual {v4, v0}, Lch/qos/logback/core/sift/AppenderTracker;->endOfLife(Ljava/lang/String;)V

    .line 109
    :cond_1
    iget-object v4, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    invoke-virtual {v4, v1, v2}, Lch/qos/logback/core/sift/AppenderTracker;->removeStaleComponents(J)V

    .line 110
    invoke-interface {v3, p1}, Lch/qos/logback/core/Appender;->doAppend(Ljava/lang/Object;)V

    .line 111
    return-void
.end method

.method protected abstract eventMarksEndOfLife(Ljava/lang/Object;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)Z"
        }
    .end annotation
.end method

.method public getAppenderTracker()Lch/qos/logback/core/sift/AppenderTracker;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/sift/AppenderTracker<",
            "TE;>;"
        }
    .end annotation

    .line 133
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    return-object v0
.end method

.method public getDiscriminator()Lch/qos/logback/core/sift/Discriminator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;"
        }
    .end annotation

    .line 116
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    return-object v0
.end method

.method public getDiscriminatorKey()Ljava/lang/String;
    .locals 1

    .line 137
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    if-eqz v0, :cond_0

    .line 138
    invoke-interface {v0}, Lch/qos/logback/core/sift/Discriminator;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 140
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public getMaxAppenderCount()I
    .locals 1

    .line 48
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->maxAppenderCount:I

    return v0
.end method

.method public getTimeout()Lch/qos/logback/core/util/Duration;
    .locals 1

    .line 40
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->timeout:Lch/qos/logback/core/util/Duration;

    return-object v0
.end method

.method protected abstract getTimestamp(Ljava/lang/Object;)J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TE;)J"
        }
    .end annotation
.end method

.method public setAppenderFactory(Lch/qos/logback/core/sift/AppenderFactory;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/AppenderFactory<",
            "TE;>;)V"
        }
    .end annotation

    .line 60
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    .local p1, "appenderFactory":Lch/qos/logback/core/sift/AppenderFactory;, "Lch/qos/logback/core/sift/AppenderFactory<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    .line 61
    return-void
.end method

.method public setDiscriminator(Lch/qos/logback/core/sift/Discriminator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/sift/Discriminator<",
            "TE;>;)V"
        }
    .end annotation

    .line 120
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    .local p1, "discriminator":Lch/qos/logback/core/sift/Discriminator;, "Lch/qos/logback/core/sift/Discriminator<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    .line 121
    return-void
.end method

.method public setMaxAppenderCount(I)V
    .locals 0
    .param p1, "maxAppenderCount"    # I

    .line 52
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iput p1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->maxAppenderCount:I

    .line 53
    return-void
.end method

.method public setTimeout(Lch/qos/logback/core/util/Duration;)V
    .locals 0
    .param p1, "timeout"    # Lch/qos/logback/core/util/Duration;

    .line 44
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iput-object p1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->timeout:Lch/qos/logback/core/util/Duration;

    .line 45
    return-void
.end method

.method public start()V
    .locals 4

    .line 65
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    const/4 v0, 0x0

    .line 66
    .local v0, "errors":I
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    if-nez v1, :cond_0

    .line 67
    const-string v1, "Missing discriminator. Aborting"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->addError(Ljava/lang/String;)V

    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 70
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->discriminator:Lch/qos/logback/core/sift/Discriminator;

    invoke-interface {v1}, Lch/qos/logback/core/sift/Discriminator;->isStarted()Z

    move-result v1

    if-nez v1, :cond_1

    .line 71
    const-string v1, "Discriminator has not started successfully. Aborting"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->addError(Ljava/lang/String;)V

    .line 72
    add-int/lit8 v0, v0, 0x1

    .line 74
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    if-nez v1, :cond_2

    .line 75
    const-string v1, "AppenderFactory has not been set. Aborting"

    invoke-virtual {p0, v1}, Lch/qos/logback/core/sift/SiftingAppenderBase;->addError(Ljava/lang/String;)V

    .line 76
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 78
    :cond_2
    new-instance v1, Lch/qos/logback/core/sift/AppenderTracker;

    iget-object v2, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->context:Lch/qos/logback/core/Context;

    iget-object v3, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    invoke-direct {v1, v2, v3}, Lch/qos/logback/core/sift/AppenderTracker;-><init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/sift/AppenderFactory;)V

    iput-object v1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    .line 79
    iget v2, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->maxAppenderCount:I

    invoke-virtual {v1, v2}, Lch/qos/logback/core/sift/AppenderTracker;->setMaxComponents(I)V

    .line 80
    iget-object v1, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    iget-object v2, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->timeout:Lch/qos/logback/core/util/Duration;

    invoke-virtual {v2}, Lch/qos/logback/core/util/Duration;->getMilliseconds()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Lch/qos/logback/core/sift/AppenderTracker;->setTimeout(J)V

    .line 82
    :goto_0
    if-nez v0, :cond_3

    .line 83
    invoke-super {p0}, Lch/qos/logback/core/AppenderBase;->start()V

    .line 85
    :cond_3
    return-void
.end method

.method public stop()V
    .locals 2

    .line 89
    .local p0, "this":Lch/qos/logback/core/sift/SiftingAppenderBase;, "Lch/qos/logback/core/sift/SiftingAppenderBase<TE;>;"
    iget-object v0, p0, Lch/qos/logback/core/sift/SiftingAppenderBase;->appenderTracker:Lch/qos/logback/core/sift/AppenderTracker;

    invoke-virtual {v0}, Lch/qos/logback/core/sift/AppenderTracker;->allComponents()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/Appender;

    .line 90
    .local v1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {v1}, Lch/qos/logback/core/Appender;->stop()V

    .line 91
    .end local v1    # "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    goto :goto_0

    .line 92
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_0
    return-void
.end method
