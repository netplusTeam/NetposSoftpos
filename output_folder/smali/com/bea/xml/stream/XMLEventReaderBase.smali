.class public Lcom/bea/xml/stream/XMLEventReaderBase;
.super Ljava/lang/Object;
.source "XMLEventReaderBase.java"

# interfaces
.implements Ljavax/xml/stream/XMLEventReader;
.implements Ljavax/xml/stream/util/XMLEventConsumer;


# instance fields
.field protected allocator:Ljavax/xml/stream/util/XMLEventAllocator;

.field private configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

.field private elementQ:Lcom/bea/xml/stream/util/CircularQueue;

.field private open:Z

.field private reachedEOF:Z

.field protected reader:Ljavax/xml/stream/XMLStreamReader;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 1
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 48
    new-instance v0, Lcom/bea/xml/stream/XMLEventAllocatorBase;

    invoke-direct {v0}, Lcom/bea/xml/stream/XMLEventAllocatorBase;-><init>()V

    invoke-direct {p0, p1, v0}, Lcom/bea/xml/stream/XMLEventReaderBase;-><init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "alloc"    # Ljavax/xml/stream/util/XMLEventAllocator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    new-instance v0, Lcom/bea/xml/stream/util/CircularQueue;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/CircularQueue;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    .line 38
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 41
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 55
    if-eqz p1, :cond_2

    .line 57
    if-eqz p2, :cond_1

    .line 60
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    .line 61
    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 63
    iput-object p2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 68
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 69
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    invoke-interface {v0, p1}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 70
    .local v0, "e":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 71
    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLEventReaderBase;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 73
    .end local v0    # "e":Ljavax/xml/stream/events/XMLEvent;
    :cond_0
    return-void

    .line 58
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLEventAllocator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 56
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLStreamReader may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 220
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 222
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 225
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 226
    .local v0, "factory":Ljavax/xml/stream/XMLInputFactory;
    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v1

    .line 228
    .local v1, "xmlr":Ljavax/xml/stream/XMLEventReader;
    :goto_0
    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 229
    invoke-interface {v1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v2

    .line 230
    .local v2, "e":Ljavax/xml/stream/events/XMLEvent;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v4, Ljava/lang/StringBuffer;

    invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V

    const-string v5, "["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-interface {v2}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v5

    invoke-static {v5}, Lcom/bea/xml/stream/util/ElementTypeNames;->getEventTypeString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 234
    .end local v2    # "e":Ljavax/xml/stream/events/XMLEvent;
    goto :goto_0

    .line 235
    :cond_0
    return-void
.end method


# virtual methods
.method public add(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 1
    .param p1, "event"    # Ljavax/xml/stream/events/XMLEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 160
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/CircularQueue;->add(Ljava/lang/Object;)Z

    .line 161
    return-void
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 184
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->internal_close()V

    .line 185
    return-void
.end method

.method protected get()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 84
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 85
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 86
    .local v1, "e":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 88
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 89
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->peek()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v1

    .line 90
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v2

    if-nez v2, :cond_2

    .line 92
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 93
    move-object v2, v1

    check-cast v2, Ljavax/xml/stream/events/Characters;

    invoke-interface {v2}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 94
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 95
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 96
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    .line 97
    goto :goto_0

    .line 91
    :cond_2
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "Unexpected Element start"

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 98
    :cond_3
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    const-string v3, "Unexpected end of Document"

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 87
    :cond_4
    new-instance v2, Ljavax/xml/stream/XMLStreamException;

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Precondition for readText is nextEvent().getTypeEventType() == START_ELEMENT (got "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-interface {v1}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 213
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/ConfigurationContextBase;->getProperty(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public hasNext()Z
    .locals 3

    .line 134
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 135
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 137
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_2

    return v2

    .line 140
    :cond_2
    nop

    .line 141
    iput-boolean v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->open:Z

    .line 142
    return v1

    .line 138
    :catch_0
    move-exception v0

    .line 139
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    return v1
.end method

.method protected internal_close()V
    .locals 1

    .line 178
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 179
    return-void
.end method

.method protected isOpen()Z
    .locals 1

    .line 174
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method protected needsMore()Z
    .locals 1

    .line 164
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 115
    :try_start_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 116
    :catch_0
    move-exception v0

    .line 117
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    const/4 v1, 0x0

    return-object v1
.end method

.method public nextEvent()Ljavax/xml/stream/events/XMLEvent;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 125
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Attempt to call nextEvent() on a stream with no more elements"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 129
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->get()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    return-object v0
.end method

.method public nextTag()Ljavax/xml/stream/events/XMLEvent;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 103
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 104
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 105
    .local v0, "e":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    check-cast v1, Ljavax/xml/stream/events/Characters;

    invoke-interface {v1}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 106
    :cond_0
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected text"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 107
    :cond_1
    :goto_1
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_3

    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_2

    goto :goto_2

    .line 109
    .end local v0    # "e":Ljavax/xml/stream/events/XMLEvent;
    :cond_2
    goto :goto_0

    .line 108
    .restart local v0    # "e":Ljavax/xml/stream/events/XMLEvent;
    :cond_3
    :goto_2
    return-object v0

    .line 110
    .end local v0    # "e":Ljavax/xml/stream/events/XMLEvent;
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected parseSome()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 193
    iget-boolean v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    if-eqz v0, :cond_0

    .line 194
    const/4 v0, 0x0

    return v0

    .line 198
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 199
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 200
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 201
    :cond_1
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/16 v1, 0x8

    const/4 v2, 0x1

    if-ne v0, v1, :cond_2

    .line 202
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    iget-object v1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reader:Ljavax/xml/stream/XMLStreamReader;

    invoke-interface {v0, v1, p0}, Ljavax/xml/stream/util/XMLEventAllocator;->allocate(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/util/XMLEventConsumer;)V

    .line 203
    iput-boolean v2, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->reachedEOF:Z

    .line 205
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->needsMore()Z

    move-result v0

    xor-int/2addr v0, v2

    return v0
.end method

.method public peek()Ljavax/xml/stream/events/XMLEvent;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 148
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 149
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0

    .line 150
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLEventReaderBase;->parseSome()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 151
    iget-object v0, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->elementQ:Lcom/bea/xml/stream/util/CircularQueue;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/CircularQueue;->peek()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/XMLEvent;

    return-object v0

    .line 154
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public remove()V
    .locals 1

    .line 216
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public setAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V
    .locals 2
    .param p1, "allocator"    # Ljavax/xml/stream/util/XMLEventAllocator;

    .line 77
    if-eqz p1, :cond_0

    .line 80
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->allocator:Ljavax/xml/stream/util/XMLEventAllocator;

    .line 81
    return-void

    .line 78
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XMLEvent Allocator may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setConfigurationContext(Lcom/bea/xml/stream/ConfigurationContextBase;)V
    .locals 0
    .param p1, "base"    # Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 209
    iput-object p1, p0, Lcom/bea/xml/stream/XMLEventReaderBase;->configurationContext:Lcom/bea/xml/stream/ConfigurationContextBase;

    .line 210
    return-void
.end method
