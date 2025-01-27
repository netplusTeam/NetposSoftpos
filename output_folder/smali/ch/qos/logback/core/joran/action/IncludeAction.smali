.class public Lch/qos/logback/core/joran/action/IncludeAction;
.super Lch/qos/logback/core/joran/action/Action;
.source "IncludeAction.java"


# static fields
.field private static final FILE_ATTR:Ljava/lang/String; = "file"

.field private static final INCLUDED_TAG:Ljava/lang/String; = "included"

.field private static final OPTIONAL_ATTR:Ljava/lang/String; = "optional"

.field private static final RESOURCE_ATTR:Ljava/lang/String; = "resource"

.field private static final URL_ATTR:Ljava/lang/String; = "url"


# instance fields
.field private attributeInUse:Ljava/lang/String;

.field private optional:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Lch/qos/logback/core/joran/action/Action;-><init>()V

    return-void
.end method

.method private checkAttributes(Lorg/xml/sax/Attributes;)Z
    .locals 7
    .param p1, "attributes"    # Lorg/xml/sax/Attributes;

    .line 87
    const-string v0, "file"

    invoke-interface {p1, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, "fileAttribute":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-interface {p1, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 89
    .local v1, "urlAttribute":Ljava/lang/String;
    const-string/jumbo v2, "resource"

    invoke-interface {p1, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 91
    .local v2, "resourceAttribute":Ljava/lang/String;
    const/4 v3, 0x0

    .line 93
    .local v3, "count":I
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 94
    add-int/lit8 v3, v3, 0x1

    .line 96
    :cond_0
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 97
    add-int/lit8 v3, v3, 0x1

    .line 99
    :cond_1
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 100
    add-int/lit8 v3, v3, 0x1

    .line 103
    :cond_2
    const/4 v4, 0x0

    if-nez v3, :cond_3

    .line 104
    const-string v5, "One of \"path\", \"resource\" or \"url\" attributes must be set."

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/IncludeAction;->addError(Ljava/lang/String;)V

    .line 105
    return v4

    .line 106
    :cond_3
    const/4 v5, 0x1

    if-le v3, v5, :cond_4

    .line 107
    const-string v5, "Only one of \"file\", \"url\" or \"resource\" attributes should be set."

    invoke-virtual {p0, v5}, Lch/qos/logback/core/joran/action/IncludeAction;->addError(Ljava/lang/String;)V

    .line 108
    return v4

    .line 109
    :cond_4
    if-ne v3, v5, :cond_5

    .line 110
    return v5

    .line 112
    :cond_5
    new-instance v4, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Count value ["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "] is not expected"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4
.end method

.method private optionalWarning(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 144
    iget-boolean v0, p0, Lch/qos/logback/core/joran/action/IncludeAction;->optional:Z

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/action/IncludeAction;->addWarn(Ljava/lang/String;)V

    .line 147
    :cond_0
    return-void
.end method

.method private parseAndRecord(Ljava/io/InputStream;Lch/qos/logback/core/joran/event/SaxEventRecorder;)V
    .locals 1
    .param p1, "inputSource"    # Ljava/io/InputStream;
    .param p2, "recorder"    # Lch/qos/logback/core/joran/event/SaxEventRecorder;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 215
    iget-object v0, p0, Lch/qos/logback/core/joran/action/IncludeAction;->context:Lch/qos/logback/core/Context;

    invoke-virtual {p2, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->setContext(Lch/qos/logback/core/Context;)V

    .line 216
    invoke-virtual {p2, p1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->recordEvents(Ljava/io/InputStream;)V

    .line 217
    return-void
.end method

.method private trimHeadAndTail(Lch/qos/logback/core/joran/event/SaxEventRecorder;)V
    .locals 5
    .param p1, "recorder"    # Lch/qos/logback/core/joran/event/SaxEventRecorder;

    .line 197
    iget-object v0, p1, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    .line 199
    .local v0, "saxEventList":Ljava/util/List;, "Ljava/util/List<Lch/qos/logback/core/joran/event/SaxEvent;>;"
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_0

    .line 200
    return-void

    .line 203
    :cond_0
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lch/qos/logback/core/joran/event/SaxEvent;

    .line 204
    .local v2, "first":Lch/qos/logback/core/joran/event/SaxEvent;
    const-string v3, "included"

    if-eqz v2, :cond_1

    iget-object v4, v2, Lch/qos/logback/core/joran/event/SaxEvent;->qName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 205
    invoke-interface {v0, v1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 208
    :cond_1
    iget-object v1, p1, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/SaxEvent;

    .line 209
    .local v1, "last":Lch/qos/logback/core/joran/event/SaxEvent;
    if-eqz v1, :cond_2

    iget-object v4, v1, Lch/qos/logback/core/joran/event/SaxEvent;->qName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 210
    iget-object v3, p1, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v0, v3}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 212
    :cond_2
    return-void
.end method


# virtual methods
.method attributeToURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "urlAttribute"    # Ljava/lang/String;

    .line 117
    :try_start_0
    new-instance v0, Ljava/net/URL;

    invoke-direct {v0, p1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 118
    :catch_0
    move-exception v0

    .line 119
    .local v0, "mue":Ljava/net/MalformedURLException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "URL ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] is not well formed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 120
    .local v1, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/action/IncludeAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 121
    const/4 v2, 0x0

    return-object v2
.end method

.method public begin(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .param p3, "attributes"    # Lorg/xml/sax/Attributes;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 49
    new-instance v0, Lch/qos/logback/core/joran/event/SaxEventRecorder;

    iget-object v1, p0, Lch/qos/logback/core/joran/action/IncludeAction;->context:Lch/qos/logback/core/Context;

    invoke-direct {v0, v1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;-><init>(Lch/qos/logback/core/Context;)V

    .line 51
    .local v0, "recorder":Lch/qos/logback/core/joran/event/SaxEventRecorder;
    const/4 v1, 0x0

    iput-object v1, p0, Lch/qos/logback/core/joran/action/IncludeAction;->attributeInUse:Ljava/lang/String;

    .line 52
    const-string/jumbo v1, "optional"

    invoke-interface {p3, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lch/qos/logback/core/util/OptionHelper;->toBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lch/qos/logback/core/joran/action/IncludeAction;->optional:Z

    .line 54
    invoke-direct {p0, p3}, Lch/qos/logback/core/joran/action/IncludeAction;->checkAttributes(Lorg/xml/sax/Attributes;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 55
    return-void

    .line 58
    :cond_0
    invoke-virtual {p0, p1, p3}, Lch/qos/logback/core/joran/action/IncludeAction;->getInputStream(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/io/InputStream;

    move-result-object v1

    .line 61
    .local v1, "in":Ljava/io/InputStream;
    if-eqz v1, :cond_1

    .line 62
    :try_start_0
    invoke-direct {p0, v1, v0}, Lch/qos/logback/core/joran/action/IncludeAction;->parseAndRecord(Ljava/io/InputStream;Lch/qos/logback/core/joran/event/SaxEventRecorder;)V

    .line 64
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/action/IncludeAction;->trimHeadAndTail(Lch/qos/logback/core/joran/event/SaxEventRecorder;)V

    .line 67
    invoke-virtual {p1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->getJoranInterpreter()Lch/qos/logback/core/joran/spi/Interpreter;

    move-result-object v2

    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/Interpreter;->getEventPlayer()Lch/qos/logback/core/joran/spi/EventPlayer;

    move-result-object v2

    iget-object v3, v0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    const/4 v4, 0x2

    invoke-virtual {v2, v3, v4}, Lch/qos/logback/core/joran/spi/EventPlayer;->addEventsDynamically(Ljava/util/List;I)V
    :try_end_0
    .catch Lch/qos/logback/core/joran/spi/JoranException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 72
    :catchall_0
    move-exception v2

    goto :goto_0

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Lch/qos/logback/core/joran/spi/JoranException;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error while parsing  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lch/qos/logback/core/joran/action/IncludeAction;->attributeInUse:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lch/qos/logback/core/joran/action/IncludeAction;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .end local v2    # "e":Lch/qos/logback/core/joran/spi/JoranException;
    goto :goto_1

    .line 72
    :goto_0
    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/IncludeAction;->close(Ljava/io/InputStream;)V

    throw v2

    :cond_1
    :goto_1
    invoke-virtual {p0, v1}, Lch/qos/logback/core/joran/action/IncludeAction;->close(Ljava/io/InputStream;)V

    .line 73
    nop

    .line 75
    return-void
.end method

.method close(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 78
    if-eqz p1, :cond_0

    .line 80
    :try_start_0
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    goto :goto_0

    .line 81
    :catch_0
    move-exception v0

    .line 84
    :cond_0
    :goto_0
    return-void
.end method

.method public end(Lch/qos/logback/core/joran/spi/InterpretationContext;Ljava/lang/String;)V
    .locals 0
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/ActionException;
        }
    .end annotation

    .line 222
    return-void
.end method

.method filePathAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "path"    # Ljava/lang/String;

    .line 150
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    .line 152
    .local v0, "uri":Ljava/net/URI;
    :try_start_0
    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v1
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 153
    :catch_0
    move-exception v1

    .line 155
    .local v1, "e":Ljava/net/MalformedURLException;
    invoke-virtual {v1}, Ljava/net/MalformedURLException;->printStackTrace()V

    .line 156
    const/4 v2, 0x0

    return-object v2
.end method

.method getInputStream(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/io/InputStream;
    .locals 2
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 185
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/action/IncludeAction;->getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;

    move-result-object v0

    .line 186
    .local v0, "inputURL":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 187
    const/4 v1, 0x0

    return-object v1

    .line 189
    :cond_0
    iget-object v1, p0, Lch/qos/logback/core/joran/action/IncludeAction;->context:Lch/qos/logback/core/Context;

    invoke-static {v1, v0}, Lch/qos/logback/core/joran/util/ConfigurationWatchListUtil;->addToWatchList(Lch/qos/logback/core/Context;Ljava/net/URL;)V

    .line 190
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/action/IncludeAction;->openURL(Ljava/net/URL;)Ljava/io/InputStream;

    move-result-object v1

    return-object v1
.end method

.method getInputURL(Lch/qos/logback/core/joran/spi/InterpretationContext;Lorg/xml/sax/Attributes;)Ljava/net/URL;
    .locals 5
    .param p1, "ec"    # Lch/qos/logback/core/joran/spi/InterpretationContext;
    .param p2, "attributes"    # Lorg/xml/sax/Attributes;

    .line 161
    const-string v0, "file"

    invoke-interface {p2, v0}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 162
    .local v0, "fileAttribute":Ljava/lang/String;
    const-string/jumbo v1, "url"

    invoke-interface {p2, v1}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 163
    .local v1, "urlAttribute":Ljava/lang/String;
    const-string/jumbo v2, "resource"

    invoke-interface {p2, v2}, Lorg/xml/sax/Attributes;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 165
    .local v2, "resourceAttribute":Ljava/lang/String;
    invoke-static {v0}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 166
    invoke-virtual {p1, v0}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/joran/action/IncludeAction;->attributeInUse:Ljava/lang/String;

    .line 167
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/IncludeAction;->filePathAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    return-object v3

    .line 170
    :cond_0
    invoke-static {v1}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 171
    invoke-virtual {p1, v1}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/joran/action/IncludeAction;->attributeInUse:Ljava/lang/String;

    .line 172
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/IncludeAction;->attributeToURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    return-object v3

    .line 175
    :cond_1
    invoke-static {v2}, Lch/qos/logback/core/util/OptionHelper;->isEmpty(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 176
    invoke-virtual {p1, v2}, Lch/qos/logback/core/joran/spi/InterpretationContext;->subst(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lch/qos/logback/core/joran/action/IncludeAction;->attributeInUse:Ljava/lang/String;

    .line 177
    invoke-virtual {p0, v3}, Lch/qos/logback/core/joran/action/IncludeAction;->resourceAsURL(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v3

    return-object v3

    .line 180
    :cond_2
    new-instance v3, Ljava/lang/IllegalStateException;

    const-string v4, "A URL stream should have been returned"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method openURL(Ljava/net/URL;)Ljava/io/InputStream;
    .locals 3
    .param p1, "url"    # Ljava/net/URL;

    .line 127
    :try_start_0
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 128
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to open ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/net/URL;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/core/joran/action/IncludeAction;->optionalWarning(Ljava/lang/String;)V

    .line 130
    const/4 v1, 0x0

    return-object v1
.end method

.method resourceAsURL(Ljava/lang/String;)Ljava/net/URL;
    .locals 3
    .param p1, "resourceAttribute"    # Ljava/lang/String;

    .line 135
    invoke-static {p1}, Lch/qos/logback/core/util/Loader;->getResourceBySelfClassLoader(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    .line 136
    .local v0, "url":Ljava/net/URL;
    if-nez v0, :cond_0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find resource corresponding to ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lch/qos/logback/core/joran/action/IncludeAction;->optionalWarning(Ljava/lang/String;)V

    .line 138
    const/4 v1, 0x0

    return-object v1

    .line 140
    :cond_0
    return-object v0
.end method
