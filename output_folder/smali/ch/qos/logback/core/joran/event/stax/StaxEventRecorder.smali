.class public Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;
.super Lch/qos/logback/core/spi/ContextAwareBase;
.source "StaxEventRecorder.java"


# instance fields
.field eventList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/stax/StaxEvent;",
            ">;"
        }
    .end annotation
.end field

.field globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;


# direct methods
.method public constructor <init>(Lch/qos/logback/core/Context;)V
    .locals 1
    .param p1, "context"    # Lch/qos/logback/core/Context;

    .line 37
    invoke-direct {p0}, Lch/qos/logback/core/spi/ContextAwareBase;-><init>()V

    .line 34
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    .line 35
    new-instance v0, Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-direct {v0}, Lch/qos/logback/core/joran/spi/ElementPath;-><init>()V

    iput-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    .line 38
    invoke-virtual {p0, p1}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->setContext(Lch/qos/logback/core/Context;)V

    .line 39
    return-void
.end method

.method private addCharacters(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 5
    .param p1, "xmlEvent"    # Ljavax/xml/stream/events/XMLEvent;

    .line 83
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asCharacters()Ljavax/xml/stream/events/Characters;

    move-result-object v0

    .line 84
    .local v0, "characters":Ljavax/xml/stream/events/Characters;
    invoke-virtual {p0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->getLastEvent()Lch/qos/logback/core/joran/event/stax/StaxEvent;

    move-result-object v1

    .line 86
    .local v1, "lastEvent":Lch/qos/logback/core/joran/event/stax/StaxEvent;
    instance-of v2, v1, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    if-eqz v2, :cond_0

    .line 87
    move-object v2, v1

    check-cast v2, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    .line 88
    .local v2, "be":Lch/qos/logback/core/joran/event/stax/BodyEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lch/qos/logback/core/joran/event/stax/BodyEvent;->append(Ljava/lang/String;)V

    .line 89
    .end local v2    # "be":Lch/qos/logback/core/joran/event/stax/BodyEvent;
    goto :goto_0

    .line 91
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->isWhiteSpace()Z

    move-result v2

    if-nez v2, :cond_1

    .line 92
    new-instance v2, Lch/qos/logback/core/joran/event/stax/BodyEvent;

    invoke-interface {v0}, Ljavax/xml/stream/events/Characters;->getData()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lch/qos/logback/core/joran/event/stax/BodyEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .line 93
    .local v2, "bodyEvent":Lch/qos/logback/core/joran/event/stax/BodyEvent;
    iget-object v3, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 96
    .end local v2    # "bodyEvent":Lch/qos/logback/core/joran/event/stax/BodyEvent;
    :cond_1
    :goto_0
    return-void
.end method

.method private addEndEvent(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 4
    .param p1, "xmlEvent"    # Ljavax/xml/stream/events/XMLEvent;

    .line 99
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asEndElement()Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    .line 100
    .local v0, "ee":Ljavax/xml/stream/events/EndElement;
    invoke-interface {v0}, Ljavax/xml/stream/events/EndElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 101
    .local v1, "tagName":Ljava/lang/String;
    new-instance v2, Lch/qos/logback/core/joran/event/stax/EndEvent;

    invoke-interface {v0}, Ljavax/xml/stream/events/EndElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lch/qos/logback/core/joran/event/stax/EndEvent;-><init>(Ljava/lang/String;Ljavax/xml/stream/Location;)V

    .line 102
    .local v2, "endEvent":Lch/qos/logback/core/joran/event/stax/EndEvent;
    iget-object v3, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v3, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v3}, Lch/qos/logback/core/joran/spi/ElementPath;->pop()V

    .line 104
    return-void
.end method

.method private addStartElement(Ljavax/xml/stream/events/XMLEvent;)V
    .locals 6
    .param p1, "xmlEvent"    # Ljavax/xml/stream/events/XMLEvent;

    .line 74
    invoke-interface {p1}, Ljavax/xml/stream/events/XMLEvent;->asStartElement()Ljavax/xml/stream/events/StartElement;

    move-result-object v0

    .line 75
    .local v0, "se":Ljavax/xml/stream/events/StartElement;
    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, "tagName":Ljava/lang/String;
    iget-object v2, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v2, v1}, Lch/qos/logback/core/joran/spi/ElementPath;->push(Ljava/lang/String;)V

    .line 77
    iget-object v2, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->globalElementPath:Lch/qos/logback/core/joran/spi/ElementPath;

    invoke-virtual {v2}, Lch/qos/logback/core/joran/spi/ElementPath;->duplicate()Lch/qos/logback/core/joran/spi/ElementPath;

    move-result-object v2

    .line 78
    .local v2, "current":Lch/qos/logback/core/joran/spi/ElementPath;
    new-instance v3, Lch/qos/logback/core/joran/event/stax/StartEvent;

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getAttributes()Ljava/util/Iterator;

    move-result-object v4

    invoke-interface {v0}, Ljavax/xml/stream/events/StartElement;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v5

    invoke-direct {v3, v2, v1, v4, v5}, Lch/qos/logback/core/joran/event/stax/StartEvent;-><init>(Lch/qos/logback/core/joran/spi/ElementPath;Ljava/lang/String;Ljava/util/Iterator;Ljavax/xml/stream/Location;)V

    .line 79
    .local v3, "startEvent":Lch/qos/logback/core/joran/event/stax/StartEvent;
    iget-object v4, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 80
    return-void
.end method

.method private read(Ljavax/xml/stream/XMLEventReader;)V
    .locals 2
    .param p1, "xmlEventReader"    # Ljavax/xml/stream/XMLEventReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 55
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 56
    invoke-interface {p1}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v0

    .line 57
    .local v0, "xmlEvent":Ljavax/xml/stream/events/XMLEvent;
    invoke-interface {v0}, Ljavax/xml/stream/events/XMLEvent;->getEventType()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    :pswitch_0
    goto :goto_1

    .line 62
    :pswitch_1
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addCharacters(Ljavax/xml/stream/events/XMLEvent;)V

    .line 63
    goto :goto_1

    .line 65
    :pswitch_2
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addEndEvent(Ljavax/xml/stream/events/XMLEvent;)V

    .line 66
    goto :goto_1

    .line 59
    :pswitch_3
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->addStartElement(Ljavax/xml/stream/events/XMLEvent;)V

    .line 60
    nop

    .line 70
    .end local v0    # "xmlEvent":Ljavax/xml/stream/events/XMLEvent;
    :goto_1
    goto :goto_0

    .line 71
    :cond_0
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public getEventList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lch/qos/logback/core/joran/event/stax/StaxEvent;",
            ">;"
        }
    .end annotation

    .line 51
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    return-object v0
.end method

.method getLastEvent()Lch/qos/logback/core/joran/event/stax/StaxEvent;
    .locals 3

    .line 107
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 108
    return-object v1

    .line 110
    :cond_0
    iget-object v0, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 111
    .local v0, "size":I
    if-nez v0, :cond_1

    .line 112
    return-object v1

    .line 113
    :cond_1
    iget-object v1, p0, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->eventList:Ljava/util/List;

    add-int/lit8 v2, v0, -0x1

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lch/qos/logback/core/joran/event/stax/StaxEvent;

    return-object v1
.end method

.method public recordEvents(Ljava/io/InputStream;)V
    .locals 3
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lch/qos/logback/core/joran/spi/JoranException;
        }
    .end annotation

    .line 43
    :try_start_0
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/InputStream;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v0

    .line 44
    .local v0, "xmlEventReader":Ljavax/xml/stream/XMLEventReader;
    invoke-direct {p0, v0}, Lch/qos/logback/core/joran/event/stax/StaxEventRecorder;->read(Ljavax/xml/stream/XMLEventReader;)V
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 47
    .end local v0    # "xmlEventReader":Ljavax/xml/stream/XMLEventReader;
    nop

    .line 48
    return-void

    .line 45
    :catch_0
    move-exception v0

    .line 46
    .local v0, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lch/qos/logback/core/joran/spi/JoranException;

    const-string v2, "Problem parsing XML document. See previously reported errors."

    invoke-direct {v1, v2, v0}, Lch/qos/logback/core/joran/spi/JoranException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
