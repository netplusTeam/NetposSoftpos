.class public Lch/qos/logback/core/joran/event/SaxEventRecorder;
.super Lorg/xml/sax/helpers/DefaultHandler;
.source "SaxEventRecorder.java"

# interfaces
.implements Lch/qos/logback/core/spi/ContextAware;


# instance fields
.field final cai:Lch/qos/logback/core/spi/ContextAwareImpl;

.field globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

.field locator:Lorg/xml/sax/Locator;

.field public saxEventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 44
    invoke-direct {p0}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    .line 50
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 45
    new-instance v0, Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-direct {v0, p1, p0}, Lch/qos/logback/core/spi/ContextAwareImpl;-><init>(Lch/qos/logback/core/Context;Ljava/lang/Object;)V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    .line 46
    return-void
.end method

.method private buildSaxParser()Ljavax/xml/parsers/SAXParser;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 79
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/SAXParserFactory;->newInstance()Ljavax/xml/parsers/SAXParserFactory;

    move-result-object v0

    .line 80
    .local v0, "spf":Ljavax/xml/parsers/SAXParserFactory;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setValidating(Z)V

    .line 81
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/SAXParserFactory;->setNamespaceAware(Z)V

    .line 82
    invoke-virtual {v0}, Ljavax/xml/parsers/SAXParserFactory;->newSAXParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 83
    .end local v0    # "spf":Ljavax/xml/parsers/SAXParserFactory;
    :catch_0
    move-exception v0

    .line 84
    .local v0, "pce":Ljava/lang/Exception;
    const-string v1, "Parser configuration error occurred"

    .line 85
    .local v1, "errMsg":Ljava/lang/String;
    invoke-virtual {p0, v1, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 86
    new-instance v2, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v2, v1, v0}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
.end method

.method private handleError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "errMsg"    # Ljava/lang/String;
    .param p2, "t"    # Ljava/lang/Throwable;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 73
    invoke-virtual {p0, p1, p2}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 74
    new-instance v0, Lch/qos/logback/core/joran/spi/JoranException;

    invoke-direct {v0, p1, p2}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method


# virtual methods
.method public addError(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 165
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;)V

    .line 166
    return-void
.end method

.method public addError(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 169
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareImpl;->addError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 170
    return-void
.end method

.method public addInfo(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addInfo(Ljava/lang/String;)V

    .line 174
    return-void
.end method

.method public addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 177
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareImpl;->addInfo(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 178
    return-void
.end method

.method public addStatus(Lch/qos/logback/core/status/Status;)V
    .locals 1
    .param p1, "status"    # Lch/qos/logback/core/status/Status;

    .line 181
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addStatus(Lch/qos/logback/core/status/Status;)V

    .line 182
    return-void
.end method

.method public addWarn(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .line 185
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->addWarn(Ljava/lang/String;)V

    .line 186
    return-void
.end method

.method public addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Throwable;

    .line 189
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1, p2}, Lch/qos/logback/core/spi/ContextAwareImpl;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 190
    return-void
.end method

.method public characters([CII)V
    .locals 5
    .param p1, "ch"    # [C
    .param p2, "start"    # I
    .param p3, "length"    # I

    .line 110
    new-instance v0, Ljava/lang/String;

    invoke-direct {v0, p1, p2, p3}, Ljava/lang/String;-><init>([CII)V

    .line 111
    .local v0, "bodyStr":Ljava/lang/String;
    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getLastEvent()Lch/qos/logback/core/joran/event/SaxEvent;

    move-result-object v1

    .line 112
    .local v1, "lastEvent":Lch/qos/logback/core/joran/event/SaxEvent;
    instance-of v2, v1, Lch/qos/logback/core/joran/event/BodyEvent;

    if-eqz v2, :cond_0

    .line 113
    move-object v2, v1

    check-cast v2, Lch/qos/logback/core/joran/event/BodyEvent;

    .line 114
    .local v2, "be":Lch/qos/logback/core/joran/event/BodyEvent;
    invoke-virtual {v2, v0}, Lch/qos/logback/core/joran/event/BodyEvent;->append(Ljava/lang/String;)V

    .line 115
    .end local v2    # "be":Lch/qos/logback/core/joran/event/BodyEvent;
    goto :goto_0

    .line 117
    :cond_0
    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->isSpaceOnly(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 118
    iget-object v2, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    new-instance v3, Lch/qos/logback/core/joran/event/BodyEvent;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lch/qos/logback/core/joran/event/BodyEvent;-><init>(Ljava/lang/String;Lorg/xml/sax/Locator;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    :cond_1
    :goto_0
    return-void
.end method

.method public endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;

    .line 137
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    new-instance v1, Lch/qos/logback/core/joran/event/EndEvent;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v2

    invoke-direct {v1, p1, p2, p3, v2}, Lch/qos/logback/core/joran/event/EndEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Locator;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 138
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v0}, Lch/qos/logback/core/joran/spi/ElementPath;->pop()V

    .line 139
    return-void
.end method

.method public error(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "spe"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 150
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML_PARSING - Parsing error on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;)V

    .line 151
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;)V

    .line 153
    return-void
.end method

.method public fatalError(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "spe"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 156
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML_PARSING - Parsing fatal error on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;)V

    .line 157
    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addError(Ljava/lang/String;)V

    .line 158
    return-void
.end method

.method public getContext()Lch/qos/logback/core/Context;
    .locals 1

    .line 193
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0}, Lch/qos/logback/core/spi/ContextAwareImpl;->getContext()Lch/qos/logback/core/Context;

    move-result-object v0

    return-object v0
.end method

.method getLastEvent()Lch/qos/logback/core/joran/event/SaxEvent;
    .locals 3

    .line 129
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 130
    const/4 v0, 0x0

    return-object v0

    .line 132
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 133
    .local v0, "size":I
    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/SaxEvent;

    return-object v1
.end method

.method public getLocator()Lorg/xml/sax/Locator;
    .locals 1

    .line 94
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->locator:Lorg/xml/sax/Locator;

    return-object v0
.end method

.method public getSaxEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .line 201
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    return-object v0
.end method

.method getTagName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "localName"    # Ljava/lang/String;
    .param p2, "qName"    # Ljava/lang/String;

    .line 142
    move-object v0, p1

    .line 143
    .local v0, "tagName":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_1

    .line 144
    :cond_0
    move-object v0, p2

    .line 146
    :cond_1
    return-object v0
.end method

.method isSpaceOnly(Ljava/lang/String;)Z
    .locals 2
    .param p1, "bodyStr"    # Ljava/lang/String;

    .line 124
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "bodyTrimmed":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public recordEvents(Lorg/xml/sax/InputSource;)Ljava/util/List;
    .locals 4
    .param p1, "inputSource"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/xml/sax/InputSource;",
            ")",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/SaxEvent;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 57
    invoke-direct {p0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->buildSaxParser()Ljavax/xml/parsers/SAXParser;

    move-result-object v0

    .line 59
    .local v0, "saxParser":Ljavax/xml/parsers/SAXParser;
    :try_start_0
    invoke-virtual {v0, p1, p0}, Ljavax/xml/parsers/SAXParser;->parse(Lorg/xml/sax/InputSource;Lorg/xml/sax/helpers/DefaultHandler;)V

    .line 60
    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 66
    :catch_0
    move-exception v1

    .line 67
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Unexpected exception while parsing XML document."

    invoke-direct {p0, v2, v1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 63
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 65
    .local v1, "se":Lorg/xml/sax/SAXException;
    new-instance v2, Lch/qos/logback/core/joran/spi/JoranException;

    const-string v3, "Problem parsing XML document. See previously reported errors."

    invoke-direct {v2, v3, v1}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2

    .line 61
    .end local v1    # "se":Lorg/xml/sax/SAXException;
    :catch_2
    move-exception v1

    .line 62
    .local v1, "ie":Ljava/io/IOException;
    const-string v2, "I/O error occurred while parsing xml file"

    invoke-direct {p0, v2, v1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->handleError(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 68
    .end local v1    # "ie":Ljava/io/IOException;
    nop

    .line 69
    :goto_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "This point can never be reached"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final recordEvents(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 53
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->recordEvents(Lorg/xml/sax/InputSource;)Ljava/util/List;

    .line 54
    return-void
.end method

.method public setContext(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 197
    iget-object v0, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->cai:Lch/qos/logback/core/spi/ContextAwareImpl;

    invoke-virtual {v0, p1}, Lch/qos/logback/core/spi/ContextAwareImpl;->setContext(Lch/qos/logback/core/Context;)V

    .line 198
    return-void
.end method

.method public setDocumentLocator(Lorg/xml/sax/Locator;)V
    .locals 0
    .param p1, "l"    # Lorg/xml/sax/Locator;

    .line 98
    iput-object p1, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->locator:Lorg/xml/sax/Locator;

    .line 99
    return-void
.end method

.method public startDocument()V
    .locals 0

    .line 91
    return-void
.end method

.method public startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V
    .locals 11
    .param p1, "namespaceURI"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;
    .param p3, "qName"    # Ljava/lang/String;
    .param p4, "atts"    # Lorg/xml/sax/Attributes;

    .line 103
    invoke-virtual {p0, p2, p3}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getTagName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 104
    .local v0, "tagName":Ljava/lang/String;
    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v1, v0}, Lch/qos/logback/core/joran/spi/ElementPath;->push(Ljava/lang/String;)V

    .line 105
    iget-object v1, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v1}, Lch/qos/logback/core/joran/spi/ElementPath;->duplicate()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v1

    .line 106
    .local v1, "current":Lch/qos/logback/core/joran/spi/ElementPath;
    iget-object v9, p0, Lch/qos/logback/core/joran/event/SaxEventRecorder;->saxEventList:Ljava/util/List;

    new-instance v10, Lch/qos/logback/core/joran/event/StartEvent;

    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->getLocator()Lorg/xml/sax/Locator;

    move-result-object v8

    move-object v2, v10

    move-object v3, v1

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v2 .. v8}, Lch/qos/logback/core/joran/event/StartEvent;-><init>(Lch/qos/logback/core/joran/spi/ElementPath;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;Lorg/xml/sax/Locator;)V

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 107
    return-void
.end method

.method public warning(Lorg/xml/sax/SAXParseException;)V
    .locals 2
    .param p1, "spe"    # Lorg/xml/sax/SAXParseException;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 161
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "XML_PARSING - Parsing warning on line "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " and column "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lorg/xml/sax/SAXParseException;->getColumnNumber()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lch/qos/logback/core/joran/event/SaxEventRecorder;->addWarn(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 162
    return-void
.end method
