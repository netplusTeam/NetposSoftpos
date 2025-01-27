.class public Lorg/jpos/util/MappingLogEventWriter;
.super Lorg/jpos/util/BaseLogEventWriter;
.source "MappingLogEventWriter.java"

# interfaces
.implements Lorg/jpos/core/XmlConfigurable;


# instance fields
.field captureOutputStream:Ljava/io/ByteArrayOutputStream;

.field capturePrintStream:Ljava/io/PrintStream;

.field eventMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/util/function/LogEventMapper;",
            ">;"
        }
    .end annotation
.end field

.field outputMappers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/jpos/util/function/ByteArrayMapper;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/jpos/util/BaseLogEventWriter;-><init>()V

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    .line 73
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 74
    invoke-virtual {v0}, Ljava/io/PrintStream;->close()V

    .line 75
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    .line 76
    iput-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 78
    .end local p0    # "this":Lorg/jpos/util/MappingLogEventWriter;
    :cond_0
    invoke-super {p0}, Lorg/jpos/util/BaseLogEventWriter;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 79
    monitor-exit p0

    return-void

    .line 72
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method protected configureCaptureStreams()V
    .locals 2

    .line 107
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->outputMappers:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 108
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    iput-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    .line 109
    new-instance v0, Ljava/io/PrintStream;

    iget-object v1, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    iput-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    .line 111
    :cond_0
    return-void
.end method

.method protected configureEventMappers(Lorg/jdom2/Element;)V
    .locals 8
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 114
    const-string v0, "event-mapper"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 116
    .local v0, "eventMappers":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 117
    .local v2, "em":Lorg/jdom2/Element;
    const-string v3, "class"

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 118
    .local v3, "clazz":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 120
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/util/function/LogEventMapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 123
    .local v4, "mapper":Lorg/jpos/util/function/LogEventMapper;
    nop

    .line 124
    if-eqz v4, :cond_3

    .line 125
    instance-of v5, v4, Lorg/jpos/core/Configurable;

    if-eqz v5, :cond_0

    .line 126
    new-instance v5, Lorg/jpos/q2/SimpleConfigurationFactory;

    invoke-direct {v5}, Lorg/jpos/q2/SimpleConfigurationFactory;-><init>()V

    .line 127
    .local v5, "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    move-object v6, v4

    check-cast v6, Lorg/jpos/core/Configurable;

    invoke-virtual {v5, v2}, Lorg/jpos/q2/SimpleConfigurationFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 129
    .end local v5    # "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    :cond_0
    instance-of v5, v4, Lorg/jpos/core/XmlConfigurable;

    if-eqz v5, :cond_1

    .line 130
    move-object v5, v4

    check-cast v5, Lorg/jpos/core/XmlConfigurable;

    invoke-interface {v5, v2}, Lorg/jpos/core/XmlConfigurable;->setConfiguration(Lorg/jdom2/Element;)V

    .line 132
    :cond_1
    iget-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->eventMappers:Ljava/util/List;

    if-nez v5, :cond_2

    .line 133
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->eventMappers:Ljava/util/List;

    .line 135
    :cond_2
    iget-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->eventMappers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 121
    .end local v4    # "mapper":Lorg/jpos/util/function/LogEventMapper;
    :catch_0
    move-exception v1

    .line 122
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v4, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 138
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "em":Lorg/jdom2/Element;
    .end local v3    # "clazz":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 139
    :cond_4
    return-void
.end method

.method protected configureOutputMappers(Lorg/jdom2/Element;)V
    .locals 8
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 142
    const-string v0, "output-mapper"

    invoke-virtual {p1, v0}, Lorg/jdom2/Element;->getChildren(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 144
    .local v0, "outputMappers":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Element;>;"
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Element;

    .line 145
    .local v2, "em":Lorg/jdom2/Element;
    const-string v3, "class"

    invoke-virtual {v2, v3}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 146
    .local v3, "clazz":Ljava/lang/String;
    if-eqz v3, :cond_3

    .line 148
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jpos/util/function/ByteArrayMapper;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    .local v4, "mapper":Lorg/jpos/util/function/ByteArrayMapper;
    nop

    .line 152
    if-eqz v4, :cond_3

    .line 153
    instance-of v5, v4, Lorg/jpos/core/Configurable;

    if-eqz v5, :cond_0

    .line 154
    new-instance v5, Lorg/jpos/q2/SimpleConfigurationFactory;

    invoke-direct {v5}, Lorg/jpos/q2/SimpleConfigurationFactory;-><init>()V

    .line 155
    .local v5, "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    move-object v6, v4

    check-cast v6, Lorg/jpos/core/Configurable;

    invoke-virtual {v5, v2}, Lorg/jpos/q2/SimpleConfigurationFactory;->getConfiguration(Lorg/jdom2/Element;)Lorg/jpos/core/Configuration;

    move-result-object v7

    invoke-interface {v6, v7}, Lorg/jpos/core/Configurable;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 157
    .end local v5    # "factory":Lorg/jpos/q2/SimpleConfigurationFactory;
    :cond_0
    instance-of v5, v4, Lorg/jpos/core/XmlConfigurable;

    if-eqz v5, :cond_1

    .line 158
    move-object v5, v4

    check-cast v5, Lorg/jpos/core/XmlConfigurable;

    invoke-interface {v5, v2}, Lorg/jpos/core/XmlConfigurable;->setConfiguration(Lorg/jdom2/Element;)V

    .line 160
    :cond_1
    iget-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->outputMappers:Ljava/util/List;

    if-nez v5, :cond_2

    .line 161
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->outputMappers:Ljava/util/List;

    .line 163
    :cond_2
    iget-object v5, p0, Lorg/jpos/util/MappingLogEventWriter;->outputMappers:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 149
    .end local v4    # "mapper":Lorg/jpos/util/function/ByteArrayMapper;
    :catch_0
    move-exception v1

    .line 150
    .local v1, "ex":Ljava/lang/Exception;
    new-instance v4, Lorg/jpos/core/ConfigurationException;

    invoke-direct {v4, v1}, Lorg/jpos/core/ConfigurationException;-><init>(Ljava/lang/Throwable;)V

    throw v4

    .line 166
    .end local v1    # "ex":Ljava/lang/Exception;
    .end local v2    # "em":Lorg/jdom2/Element;
    .end local v3    # "clazz":Ljava/lang/String;
    :cond_3
    :goto_1
    goto :goto_0

    .line 167
    :cond_4
    return-void
.end method

.method protected delegateWriteToSuper(Lorg/jpos/util/LogEvent;)V
    .locals 0
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 194
    invoke-super {p0, p1}, Lorg/jpos/util/BaseLogEventWriter;->write(Lorg/jpos/util/LogEvent;)V

    .line 195
    return-void
.end method

.method protected mapEvents(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;
    .locals 3
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 170
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->eventMappers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 171
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/function/LogEventMapper;

    .line 172
    .local v1, "mapper":Lorg/jpos/util/function/LogEventMapper;
    invoke-interface {v1, p1}, Lorg/jpos/util/function/LogEventMapper;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, Lorg/jpos/util/LogEvent;

    .line 173
    .end local v1    # "mapper":Lorg/jpos/util/function/LogEventMapper;
    goto :goto_0

    .line 175
    :cond_0
    return-object p1
.end method

.method protected mapOutput([B)[B
    .locals 3
    .param p1, "output"    # [B

    .line 179
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->outputMappers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/util/function/ByteArrayMapper;

    .line 181
    .local v1, "mapper":Lorg/jpos/util/function/ByteArrayMapper;
    invoke-interface {v1, p1}, Lorg/jpos/util/function/ByteArrayMapper;->apply(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object p1, v2

    check-cast p1, [B

    .line 182
    .end local v1    # "mapper":Lorg/jpos/util/function/ByteArrayMapper;
    goto :goto_0

    .line 184
    :cond_0
    return-object p1
.end method

.method public setConfiguration(Lorg/jdom2/Element;)V
    .locals 0
    .param p1, "e"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 102
    invoke-virtual {p0, p1}, Lorg/jpos/util/MappingLogEventWriter;->configureEventMappers(Lorg/jdom2/Element;)V

    .line 103
    invoke-virtual {p0, p1}, Lorg/jpos/util/MappingLogEventWriter;->configureOutputMappers(Lorg/jdom2/Element;)V

    .line 104
    return-void
.end method

.method public setPrintStream(Ljava/io/PrintStream;)V
    .locals 1
    .param p1, "p"    # Ljava/io/PrintStream;

    .line 65
    invoke-super {p0, p1}, Lorg/jpos/util/BaseLogEventWriter;->setPrintStream(Ljava/io/PrintStream;)V

    .line 66
    if-eqz p1, :cond_0

    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    if-nez v0, :cond_0

    .line 67
    invoke-virtual {p0}, Lorg/jpos/util/MappingLogEventWriter;->configureCaptureStreams()V

    .line 69
    :cond_0
    return-void
.end method

.method public write(Lorg/jpos/util/LogEvent;)V
    .locals 2
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 83
    invoke-virtual {p0, p1}, Lorg/jpos/util/MappingLogEventWriter;->mapEvents(Lorg/jpos/util/LogEvent;)Lorg/jpos/util/LogEvent;

    move-result-object p1

    .line 84
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    .line 85
    invoke-virtual {p0, p1}, Lorg/jpos/util/MappingLogEventWriter;->writeToCaptureStream(Lorg/jpos/util/LogEvent;)V

    .line 87
    :try_start_0
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jpos/util/MappingLogEventWriter;->mapOutput([B)[B

    move-result-object v0

    .line 88
    .local v0, "output":[B
    iget-object v1, p0, Lorg/jpos/util/MappingLogEventWriter;->p:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->write([B)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "output":[B
    goto :goto_0

    .line 92
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 89
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Ljava/io/IOException;
    :try_start_1
    iget-object v1, p0, Lorg/jpos/util/MappingLogEventWriter;->p:Ljava/io/PrintStream;

    invoke-virtual {v0, v1}, Ljava/io/IOException;->printStackTrace(Ljava/io/PrintStream;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 92
    .end local v0    # "e":Ljava/io/IOException;
    :goto_0
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->p:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 93
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 94
    goto :goto_2

    .line 92
    :goto_1
    iget-object v1, p0, Lorg/jpos/util/MappingLogEventWriter;->p:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V

    .line 93
    iget-object v1, p0, Lorg/jpos/util/MappingLogEventWriter;->captureOutputStream:Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->reset()V

    .line 94
    throw v0

    .line 96
    :cond_0
    invoke-virtual {p0, p1}, Lorg/jpos/util/MappingLogEventWriter;->delegateWriteToSuper(Lorg/jpos/util/LogEvent;)V

    .line 98
    :goto_2
    return-void
.end method

.method protected writeToCaptureStream(Lorg/jpos/util/LogEvent;)V
    .locals 2
    .param p1, "ev"    # Lorg/jpos/util/LogEvent;

    .line 202
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 203
    const-string v1, ""

    invoke-virtual {p1, v0, v1}, Lorg/jpos/util/LogEvent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 204
    iget-object v0, p0, Lorg/jpos/util/MappingLogEventWriter;->capturePrintStream:Ljava/io/PrintStream;

    invoke-virtual {v0}, Ljava/io/PrintStream;->flush()V

    .line 206
    :cond_0
    return-void
.end method
