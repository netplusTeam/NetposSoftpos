.class public Lch/qos/logback/core/sift/AppenderTracker;
.super Lch/qos/logback/core/spi/AbstractComponentTracker;
.source "AppenderTracker.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lch/qos/logback/core/spi/AbstractComponentTracker<",
        "Lch/qos/logback/core/Appender<",
        "TE;>;>;"
    }
.end annotation


# instance fields
.field final appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lch/qos/logback/core/sift/AppenderFactory<",
            "TE;>;"
        }
    .end annotation
.end field

.field final context:Lch/qos/logback/core/Context;

.field final contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

.field nopaWarningCount:I


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/sift/AppenderFactory;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Context;",
            "Lch/qos/logback/core/sift/AppenderFactory<",
            "TE;>;)V"
        }
    .end annotation

    .line 41
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    .local p2, "appenderFactory":Lch/qos/logback/core/sift/AppenderFactory;, "Lch/qos/logback/core/sift/AppenderFactory<TE;>;"
    invoke-direct {p0}, Lch/qos/logback/core/spi/AbstractComponentTracker;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    .line 42
    iput-object p1, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    .line 43
    iput-object p2, p0, Lch/qos/logback/core/sift/AppenderTracker;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    .line 44
    new-instance v0, Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-direct {v0, p1, p0}, Lch/qos/logback/core/spi/ContextAwareImpl;-><init>(Lch/qos/logback/core/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    .line 45
    return-void
.end method

.method private buildNOPAppender(Ljava/lang/String;)Lch/qos/logback/core/helpers/NOPAppender;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/helpers/NOPAppender<",
            "TE;>;"
        }
    .end annotation

    .line 68
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    iget v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    const/4 v1, 0x4

    if-ge v0, v1, :cond_0

    .line 69
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->nopaWarningCount:I

    .line 70
    iget-object v0, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Building NOPAppender for discriminating value ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;)V

    .line 72
    :cond_0
    new-instance v0, Lch/qos/logback/core/helpers/NOPAppender;

    invoke-direct {v0}, Lch/qos/logback/core/helpers/NOPAppender;-><init>()V

    .line 73
    .local v0, "nopa":Lch/qos/logback/core/helpers/NOPAppender;, "Lch/qos/logback/core/helpers/NOPAppender<TE;>;"
    iget-object v1, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v0, v1}, Lch/qos/logback/core/helpers/NOPAppender;->setContext(Lch/qos/logback/core/Context;)V

    .line 74
    invoke-virtual {v0}, Lch/qos/logback/core/helpers/NOPAppender;->start()V

    .line 75
    return-object v0
.end method


# virtual methods
.method protected buildComponent(Ljava/lang/String;)Lch/qos/logback/core/Appender;
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lch/qos/logback/core/Appender<",
            "TE;>;"
        }
    .end annotation

    .line 54
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    const/4 v0, 0x0

    .line 56
    .local v0, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/sift/AppenderTracker;->appenderFactory:Lch/qos/logback/core/sift/AppenderFactory;

    iget-object v2, p0, Lch/qos/logback/core/sift/AppenderTracker;->context:Lch/qos/logback/core/Context;

    invoke-interface {v1, v2, p1}, Lch/qos/logback/core/sift/AppenderFactory;->buildAppender(Lch/qos/logback/core/Context;Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object v1
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 59
    goto :goto_0

    .line 57
    :catch_0
    move-exception v1

    .line 58
    .local v1, "je":Lch/qos/logback/core/joran/spi/JoranException;
    iget-object v2, p0, Lch/qos/logback/core/sift/AppenderTracker;->contextAware:Lch/qos/logback/core/spi/ContextAwareImpl;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while building appender with discriminating value ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "]"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;)V

    .line 60
    .end local v1    # "je":Lch/qos/logback/core/joran/spi/JoranException;
    :goto_0
    if-nez v0, :cond_0

    .line 61
    invoke-direct {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->buildNOPAppender(Ljava/lang/String;)Lch/qos/logback/core/helpers/NOPAppender;

    move-result-object v0

    .line 64
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic buildComponent(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0

    .line 32
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->buildComponent(Ljava/lang/String;)Lch/qos/logback/core/Appender;

    move-result-object p1

    return-object p1
.end method

.method protected isComponentStale(Lch/qos/logback/core/Appender;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)Z"
        }
    .end annotation

    .line 80
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    .local p1, "appender":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {p1}, Lch/qos/logback/core/Appender;->isStarted()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected bridge synthetic isComponentStale(Ljava/lang/Object;)Z
    .locals 0

    .line 32
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    check-cast p1, Lch/qos/logback/core/Appender;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->isComponentStale(Lch/qos/logback/core/Appender;)Z

    move-result p1

    return p1
.end method

.method protected processPriorToRemoval(Lch/qos/logback/core/Appender;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lch/qos/logback/core/Appender<",
            "TE;>;)V"
        }
    .end annotation

    .line 49
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    .local p1, "component":Lch/qos/logback/core/Appender;, "Lch/qos/logback/core/Appender<TE;>;"
    invoke-interface {p1}, Lch/qos/logback/core/Appender;->stop()V

    .line 50
    return-void
.end method

.method protected bridge synthetic processPriorToRemoval(Ljava/lang/Object;)V
    .locals 0

    .line 32
    .local p0, "this":Lch/qos/logback/core/sift/AppenderTracker;, "Lch/qos/logback/core/sift/AppenderTracker<TE;>;"
    check-cast p1, Lch/qos/logback/core/Appender;

    invoke-virtual {p0, p1}, Lch/qos/logback/core/sift/AppenderTracker;->processPriorToRemoval(Lch/qos/logback/core/Appender;)V

    return-void
.end method
