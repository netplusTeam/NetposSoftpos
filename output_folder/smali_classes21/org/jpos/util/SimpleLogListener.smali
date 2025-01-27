.class public Lorg/jpos/util/SimpleLogListener;
.super Ljava/lang/Object;
.source "SimpleLogListener.java"

# interfaces
.implements Lorg/jpos/util/LogListener;
.implements Lorg/jpos/core/XmlConfigurable;
.implements Ljava/util/function/Consumer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/jpos/util/LogListener;",
        "Lorg/jpos/core/XmlConfigurable;",
        "Ljava/util/function/Consumer<",
        "Lorg/jpos/util/LogEventWriter;",
        ">;"
    }
.end annotation


# instance fields
.field p:Ljava/io/PrintStream;

.field writer:Lorg/jpos/util/LogEventWriter;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/SimpleLogListener;->writer:Lorg/jpos/util/LogEventWriter;

    .line 42
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "p"    # Ljava/io/PrintStream;

    .line 45
    invoke-direct {p0}, Lorg/jpos/util/SimpleLogListener;-><init>()V

    .line 46
    invoke-virtual {p0, p1}, Lorg/jpos/util/SimpleLogListener;->setPrintStream(Ljava/io/PrintStream;)V

    .line 47
    return-void
.end method


# virtual methods
.method public bridge synthetic accept(Ljava/lang/Object;)V
    .locals 0

    .line 36
    check-cast p1, Lorg/jpos/util/LogEventWriter;

    invoke-virtual {p0, p1}, Lorg/jpos/util/SimpleLogListener;->accept(Lorg/jpos/util/LogEventWriter;)V

    return-void
.end method

.method public accept(Lorg/jpos/util/LogEventWriter;)V
    .locals 1
    .param p1, "writer"    # Lorg/jpos/util/LogEventWriter;

    .line 79
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 80
    invoke-interface {p1, v0}, Lorg/jpos/util/LogEventWriter;->setPrintStream(Ljava/io/PrintStream;)V

    .line 82
    :cond_0
    iput-object p1, p0, Lorg/jpos/util/SimpleLogListener;->writer:Lorg/jpos/util/LogEventWriter;

    .line 83
    return-void
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 56
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->writer:Lorg/jpos/util/LogEventWriter;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 57
    invoke-interface {v0}, Lorg/jpos/util/LogEventWriter;->close()V

    .line 58
    iput-object v1, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    .line 60
    .end local p0    # "this":Lorg/jpos/util/SimpleLogListener;
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 61
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 62
    iput-object v1, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 64
    :cond_1
    monitor-exit p0

    return-void

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized log(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 2
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    monitor-enter p0

    .line 66
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->writer:Lorg/jpos/util/LogEventWriter;

    if-eqz v0, :cond_0

    .line 67
    invoke-interface {v0, p1}, Lorg/jpos/util/LogEventWriter;->write(Lorg/jpos/util/LogEvent;)V

    goto :goto_0

    .line 69
    .end local p0    # "this":Lorg/jpos/util/SimpleLogListener;
    :cond_0
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    if-eqz v0, :cond_1

    .line 70
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    :cond_1
    :goto_0
    monitor-exit p0

    return-object p1

    .line 65
    .end local p1    # "ev":Lorg/jpos/util/LogEvent;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 6
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 87
    const-string v0, "writer"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChild(Ljava/lang/String;)Lorg/jdom2/Element;

    move-result-object v0

    .line 89
    .local v0, "ew":Lorg/jdom2/Element;
    if-eqz v0, :cond_3

    .line 90
    const-string v1, "class"

    invoke-virtual {v0, v1}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 91
    .local v1, "clazz":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 93
    :try_start_0
    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/util/LogEventWriter;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    .local v2, "writer":Lorg/jpos/util/LogEventWriter;
    nop

    .line 97
    if-eqz v2, :cond_3

    .line 98
    instance-of v3, v2, Lorg/jpos/core/Configurable;

    if-eqz v3, :cond_0

    .line 99
    new-instance v3, Lorg/jpos/q2/SimpleConfigurationFactory;

    invoke-direct {v3}, Lorg/jpos/q2/SimpleConfigurationFactory;-><init>()V

    .line 100
    .local v3, "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    move-object v4, v2

    check-cast v4, Lorg/jpos/core/Configurable;

    invoke-virtual {v3, v0}, Lorg/jpos/q2/SimpleConfigurationFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v5

    invoke-interface {v4, v5}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 102
    .end local v3    # "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    :cond_0
    instance-of v3, v2, Lorg/jpos/core/XmlConfigurable;

    if-eqz v3, :cond_1

    .line 103
    move-object v3, v2

    check-cast v3, Lorg/jpos/core/XmlConfigurable;

    invoke-interface {v3, v0}, Lorg/jpos/core/XmlConfigurable;->setConfiguration(Lorg/jdom2/Element;)V

    .line 105
    :cond_1
    invoke-virtual {p0, v2}, Lorg/jpos/util/SimpleLogListener;->accept(Lorg/jpos/util/LogEventWriter;)V

    goto :goto_0

    .line 94
    .end local v2    # "writer":Lorg/jpos/util/LogEventWriter;
    :catch_0
    move-exception v2

    .line 95
    .local v2, "ex":Ljava/lang/Exception;
    new-instance v3, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v3, v2}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 108
    .end local v2    # "ex":Ljava/lang/Exception;
    :cond_2
    new-instance v2, Lorg/jpos/core/ConfigurationException;

    const-string v3, "The writer configuration requires a class attribute"

    invoke-direct {v2, v3}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 111
    .end local v1    # "clazz":Ljava/lang/String;
    :cond_3
    :goto_0
    return-void
.end method

.method public declared-synchronized setPrintStream(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;

    monitor-enter p0

    .line 49
    :try_start_0
    iput-object p1, p0, Lorg/jpos/util/SimpleLogListener;->p:Ljava/io/PrintStream;

    .line 50
    iget-object v0, p0, Lorg/jpos/util/SimpleLogListener;->writer:Lorg/jpos/util/LogEventWriter;

    if-eqz v0, :cond_0

    .line 51
    invoke-interface {v0, p1}, Lorg/jpos/util/LogEventWriter;->setPrintStream(Ljava/io/PrintStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 53
    .end local p0    # "this":Lorg/jpos/util/SimpleLogListener;
    :cond_0
    monitor-exit p0

    return-void

    .line 48
    .end local p1    # "p":Ljava/io/PrintStream;
    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
