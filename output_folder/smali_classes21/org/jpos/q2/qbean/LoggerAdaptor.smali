.class public Lorg/jpos/q2/qbean/LoggerAdaptor;
.super Lorg/jpos/q2/QBeanSupport;
.source "LoggerAdaptor.java"


# instance fields
.field private logger:Lorg/jpos/util/Logger;

.field private originalErr:Ljava/io/PrintStream;

.field private originalOut:Ljava/io/PrintStream;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 32
    invoke-direct {p0}, Lorg/jpos/q2/QBeanSupport;-><init>()V

    .line 34
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalOut:Ljava/io/PrintStream;

    .line 35
    iput-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalErr:Ljava/io/PrintStream;

    return-void
.end method

.method private addListener(Lorg/jdom2/Element;)V
    .locals 4
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 74
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerAdaptor;->getServer()Lorg/jpos/q2/Q2;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jpos/q2/Q2;->getFactory()Lorg/jpos/q2/QFactory;

    move-result-object v0

    .line 75
    .local v0, "factory":Lorg/jpos/q2/QFactory;
    invoke-static {p1}, Lorg/jpos/q2/QFactory;->isEnabled(Lorg/jdom2/Element;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    const-string v1, "class"

    invoke-virtual {p1, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 77
    .local v1, "clazz":Ljava/lang/String;
    invoke-virtual {v0, v1}, Lorg/jpos/q2/QFactory;->newInstance(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/util/LogListener;

    .line 78
    .local v2, "listener":Lorg/jpos/util/LogListener;
    invoke-virtual {v0, v2, p1}, Lorg/jpos/q2/QFactory;->setConfiguration(Ljava/lang/Object;Lorg/jdom2/Element;)V

    .line 79
    iget-object v3, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    invoke-virtual {v3, v2}, Lorg/jpos/util/Logger;->addListener(Lorg/jpos/util/LogListener;)V

    .line 81
    .end local v1    # "clazz":Ljava/lang/String;
    .end local v2    # "listener":Lorg/jpos/util/LogListener;
    :cond_0
    return-void
.end method


# virtual methods
.method protected destroyService()V
    .locals 0

    .line 70
    return-void
.end method

.method protected initService()V
    .locals 1

    .line 38
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerAdaptor;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    .line 39
    return-void
.end method

.method protected startService()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    invoke-virtual {v0}, Lorg/jpos/util/Logger;->removeAllListeners()V

    .line 42
    invoke-virtual {p0}, Lorg/jpos/q2/qbean/LoggerAdaptor;->getPersist()Lorg/jdom2/Element;

    move-result-object v0

    const-string v1, "log-listener"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 43
    .local v1, "o":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/jdom2/Element;

    invoke-direct {p0, v2}, Lorg/jpos/q2/qbean/LoggerAdaptor;->addListener(Lorg/jdom2/Element;)V

    .end local v1    # "o":Ljava/lang/Object;
    goto :goto_0

    .line 45
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->cfg:Lorg/jpos/core/Configuration;

    const-string v1, "redirect"

    invoke-interface {v0, v1}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 46
    .local v0, "redirect":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->cfg:Lorg/jpos/core/Configuration;

    const-wide/16 v2, 0x1f4

    const-string v4, "delay"

    invoke-interface {v1, v4, v2, v3}, Lorg/jpos/core/Configuration;->getLong(Ljava/lang/String;J)J

    move-result-wide v1

    .line 48
    .local v1, "delay":J
    const-string v3, "stdout"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 49
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v4, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalOut:Ljava/io/PrintStream;

    .line 50
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Lorg/jpos/util/LogEventOutputStream;

    iget-object v6, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    invoke-direct {v5, v6, v3, v1, v2}, Lorg/jpos/util/LogEventOutputStream;-><init>(Lorg/jpos/util/Logger;Ljava/lang/String;J)V

    invoke-direct {v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 52
    :cond_1
    const-string v3, "stderr"

    invoke-virtual {v0, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 53
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    iput-object v4, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalErr:Ljava/io/PrintStream;

    .line 54
    new-instance v4, Ljava/io/PrintStream;

    new-instance v5, Lorg/jpos/util/LogEventOutputStream;

    iget-object v6, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    invoke-direct {v5, v6, v3, v1, v2}, Lorg/jpos/util/LogEventOutputStream;-><init>(Lorg/jpos/util/Logger;Ljava/lang/String;J)V

    invoke-direct {v4, v5}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    invoke-static {v4}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 56
    :cond_2
    return-void
.end method

.method protected stopService()V
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalOut:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 59
    invoke-static {v0}, Ljava/lang/System;->setOut(Ljava/io/PrintStream;)V

    .line 60
    :cond_0
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->originalErr:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 61
    invoke-static {v0}, Ljava/lang/System;->setErr(Ljava/io/PrintStream;)V

    .line 62
    :cond_1
    iget-object v0, p0, Lorg/jpos/q2/qbean/LoggerAdaptor;->logger:Lorg/jpos/util/Logger;

    invoke-virtual {v0}, Lorg/jpos/util/Logger;->removeAllListeners()V

    .line 63
    return-void
.end method
