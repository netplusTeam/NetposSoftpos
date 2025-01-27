.class public abstract Lch/qos/logback/core/joran/GenericConfigurator;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "GenericConfigurator.java"


# instance fields
.field private beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

.field protected interpreter:Lch/qos/logback/core/joran/spi/Interpreter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 37
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    return-void
.end method

.method public static informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V
    .locals 0
    .param p0, "context"    # Lch/qos/logback/core/Context;
    .param p1, "url"    # Ljava/net/URL;

    .line 100
    invoke-static {p0, p1}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->setMainWatchURL(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    .line 101
    return-void
.end method


# virtual methods
.method protected addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V
    .locals 0
    .param p1, "registry"    # Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    .line 126
    return-void
.end method

.method protected abstract addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V
.end method

.method protected abstract addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V
.end method

.method protected buildInterpreter()V
    .locals 4

    .line 133
    new-instance v0, Lch/qos/logback/core/joran/spi/SimpleRuleStore;

    iget-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/spi/SimpleRuleStore;-><init>(Lch/qos/logback/core/Context;)V

    .line 134
    .local v0, "rs":Lch/qos/logback/core/joran/spi/RuleStore;
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->addInstanceRules(Lch/qos/logback/core/joran/spi/RuleStore;)V

    .line 135
    new-instance v1, Lch/qos/logback/core/joran/spi/Interpreter;

    iget-object v2, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->initialElementPath()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lch/qos/logback/core/joran/spi/Interpreter;-><init>(Lch/qos/logback/core/Context;Lch/qos/logback/core/joran/spi/RuleStore;Lch/qos/logback/core/joran/spi/ElementPath;)V

    iput-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    .line 136
    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getInterpretationContext()Lch/qos/logback/core/joran/spi/InterpretationContext;

    move-result-object v1

    .line 137
    .local v1, "interpretationContext":Lch/qos/logback/core/joran/spi/InterpretationContext;
    iget-object v2, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-virtual {v1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->setContext(Lch/qos/logback/core/Context;)V

    .line 138
    iget-object v2, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/GenericConfigurator;->addImplicitRules(Lch/qos/logback/core/joran/spi/Interpreter;)V

    .line 139
    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getDefaultNestedComponentRegistry()Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;

    move-result-object v2

    invoke-virtual {p0, v2}, Lch/qos/logback/core/joran/GenericConfigurator;->addDefaultNestedComponentRegistryRules(Lch/qos/logback/core/joran/spi/DefaultNestedComponentRegistry;)V

    .line 140
    return-void
.end method

.method public final doConfigure(Ljava/io/File;)V
    .locals 6
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 76
    const-string v0, "Could not close ["

    const-string v1, "]."

    const/4 v2, 0x0

    .line 78
    .local v2, "fis":Ljava/io/FileInputStream;
    :try_start_0
    invoke-virtual {p1}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v3

    invoke-virtual {v3}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v3

    .line 79
    .local v3, "url":Ljava/net/URL;
    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->getContext()Lch/qos/logback/core/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lch/qos/logback/core/joran/GenericConfigurator;->informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    .line 80
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v4

    .line 81
    invoke-virtual {v3}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v2, v4}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 87
    .end local v3    # "url":Ljava/net/URL;
    nop

    .line 89
    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 94
    nop

    .line 97
    return-void

    .line 90
    :catch_0
    move-exception v3

    .line 91
    .local v3, "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .local v0, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v1, v0, v3}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 87
    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v3    # "ioe":Ljava/io/IOException;
    :catchall_0
    move-exception v3

    goto :goto_0

    .line 82
    :catch_1
    move-exception v3

    .line 83
    .restart local v3    # "ioe":Ljava/io/IOException;
    :try_start_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not open ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 84
    .local v4, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v4, v3}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 85
    new-instance v5, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v5, v4, v3}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v2    # "fis":Ljava/io/FileInputStream;
    .end local p1    # "file":Ljava/io/File;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 87
    .end local v3    # "ioe":Ljava/io/IOException;
    .end local v4    # "errMsg":Ljava/lang/String;
    .restart local v2    # "fis":Ljava/io/FileInputStream;
    .restart local p1    # "file":Ljava/io/File;
    :goto_0
    if-eqz v2, :cond_0

    .line 89
    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 94
    goto :goto_1

    .line 90
    :catch_2
    move-exception v3

    .line 91
    .restart local v3    # "ioe":Ljava/io/IOException;
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 92
    .restart local v0    # "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v0, v3}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 93
    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v1, v0, v3}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .end local v0    # "errMsg":Ljava/lang/String;
    .end local v3    # "ioe":Ljava/io/IOException;
    :cond_0
    :goto_1
    throw v3
.end method

.method public final doConfigure(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Lorg/xml/sax/InputSource;)V

    .line 105
    return-void
.end method

.method public final doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 108
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 109
    .local v0, "inputSource":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 110
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Lorg/xml/sax/InputSource;)V

    .line 111
    return-void
.end method

.method public final doConfigure(Ljava/lang/String;)V
    .locals 1
    .param p1, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 72
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/File;)V

    .line 73
    return-void
.end method

.method public final doConfigure(Ljava/net/URL;)V
    .locals 4
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 44
    const/4 v0, 0x0

    .line 46
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-static {v1, p1}, Lch/qos/logback/core/joran/GenericConfigurator;->informContextOfURLUsedForConfiguration(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    .line 47
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    .line 50
    .local v1, "urlConnection":Ljava/net/URLConnection;
    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/net/URLConnection;->setUseCaches(Z)V

    .line 52
    invoke-virtual {v1}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    move-object v0, v2

    .line 53
    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/io/InputStream;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 59
    .end local v1    # "urlConnection":Ljava/net/URLConnection;
    if-eqz v0, :cond_0

    .line 61
    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 66
    goto :goto_0

    .line 62
    :catch_0
    move-exception v1

    .line 63
    .local v1, "ioe":Ljava/io/IOException;
    const-string v2, "Could not close input stream"

    .line 64
    .local v2, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance v3, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v3, v2, v1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .line 69
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 59
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 54
    :catch_1
    move-exception v1

    .line 55
    .restart local v1    # "ioe":Ljava/io/IOException;
    :try_start_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Could not open URL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 56
    .restart local v2    # "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    new-instance v3, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v3, v2, v1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .end local v0    # "in":Ljava/io/InputStream;
    .end local p1    # "url":Ljava/net/URL;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 59
    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "errMsg":Ljava/lang/String;
    .restart local v0    # "in":Ljava/io/InputStream;
    .restart local p1    # "url":Ljava/net/URL;
    :goto_1
    if-eqz v0, :cond_1

    .line 61
    :try_start_3
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 66
    goto :goto_2

    .line 62
    :catch_2
    move-exception v1

    .line 63
    .restart local v1    # "ioe":Ljava/io/IOException;
    const-string v2, "Could not close input stream"

    .line 64
    .restart local v2    # "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v2, v1}, Lch/qos/logback/core/joran/GenericConfigurator;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 65
    new-instance v3, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v3, v2, v1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3

    .end local v1    # "ioe":Ljava/io/IOException;
    .end local v2    # "errMsg":Ljava/lang/String;
    :cond_1
    :goto_2
    throw v1
.end method

.method public doConfigure(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 162
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->buildInterpreter()V

    .line 164
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-interface {v0}, Lch/qos/logback/core/Context;->getConfigurationLock()Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 165
    :try_start_0
    iget-object v1, p0, Lch/qos/logback/core/joran/GenericConfigurator;->interpreter:Lch/qos/logback/core/joran/spi/Interpreter;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/Interpreter;->getEventPlayer()Lch/qos/logback/core/joran/spi/EventPlayer;

    move-result-object v1

    invoke-virtual {v1, p1}, Lch/qos/logback/core/joran/spi/EventPlayer;->play(Ljava/util/List;)V

    .line 166
    monitor-exit v0

    .line 167
    return-void

    .line 166
    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public final doConfigure(Lorg/xml/sax/InputSource;)V
    .locals 5
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 150
    .local v0, "threshold":J
    new-instance v2, Lch/qos/logback/core/joran/event/SaxEventRecorder;

    iget-object v3, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-direct {v2, v3}, Lch/qos/logback/core/joran/event/SaxEventRecorder;-><init>(Lch/qos/logback/core/Context;)V

    .line 151
    .local v2, "recorder":Lch/qos/logback/core/joran/event/SaxEventRecorder;
    invoke-virtual {v2, p1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->recordEvents(Lorg/xml/sax/InputSource;)Ljava/util/List;

    .line 152
    iget-object v3, v2, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/GenericConfigurator;->doConfigure(Ljava/util/List;)V

    .line 154
    new-instance v3, Lch/qos/logback/core/status/StatusUtil;

    iget-object v4, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    invoke-direct {v3, v4}, Lch/qos/logback/core/status/StatusUtil;-><init>(Lch/qos/logback/core/Context;)V

    .line 155
    .local v3, "statusUtil":Lch/qos/logback/core/status/StatusUtil;
    invoke-virtual {v3, v0, v1}, Lch/qos/logback/core/status/StatusUtil;->noXMLParsingErrorsOccurred(J)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 156
    const-string v4, "Registering current configuration as safe fallback point"

    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/GenericConfigurator;->addInfo(Ljava/lang/String;)V

    .line 157
    iget-object v4, v2, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-virtual {p0, v4}, Lch/qos/logback/core/joran/GenericConfigurator;->registerSafeConfiguration(Ljava/util/List;)V

    .line 159
    :cond_0
    return-void
.end method

.method protected getBeanDescriptionCache()Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;
    .locals 2

    .line 114
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    if-nez v0, :cond_0

    .line 115
    new-instance v0, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/GenericConfigurator;->getContext()Lch/qos/logback/core/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;-><init>(Lch/qos/logback/core/Context;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    .line 117
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->beanDescriptionCache:Lch/qos/logback/core/joran/util/beans/BeanDescriptionCache;

    return-object v0
.end method

.method protected initialElementPath()Lch/qos/logback/core/joran/spi/ElementPath;
    .locals 1

    .line 129
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    return-object v0
.end method

.method public recallSafeConfiguration()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 184
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    const-string v1, "SAFE_JORAN_CONFIGURATION"

    invoke-interface {v0, v1}, Lch/qos/logback/core/Context;->getObject(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public registerSafeConfiguration(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;)V"
        }
    .end annotation

    .line 176
    .local p1, "eventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    iget-object v0, p0, Lch/qos/logback/core/joran/GenericConfigurator;->context:Lch/qos/logback/core/Context;

    const-string v1, "SAFE_JORAN_CONFIGURATION"

    invoke-interface {v0, v1, p1}, Lch/qos/logback/core/Context;->putObject(Ljava/lang/String;Ljava/lang/Object;)V

    .line 177
    return-void
.end method
