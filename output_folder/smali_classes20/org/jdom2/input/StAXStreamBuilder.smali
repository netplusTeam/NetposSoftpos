.class public Lorg/jdom2/input/StAXStreamBuilder;
.super Ljava/lang/Object;
.source "StAXStreamBuilder.java"


# instance fields
.field private builderfactory:Lorg/jdom2/JDOMFactory;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 530
    new-instance v0, Lorg/jdom2/DefaultJDOMFactory;

    invoke-direct {v0}, Lorg/jdom2/DefaultJDOMFactory;-><init>()V

    iput-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    return-void
.end method

.method private static final process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;
    .locals 6
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 125
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    .line 127
    .local v0, "state":I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_3

    .line 132
    const/4 v1, 0x0

    invoke-interface {p0, v1}, Lorg/jdom2/JDOMFactory;->document(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    move-result-object v2

    .line 134
    .local v2, "document":Lorg/jdom2/Document;
    :goto_0
    const/16 v3, 0x8

    if-eq v0, v3, :cond_2

    .line 135
    packed-switch v0, :pswitch_data_0

    .line 186
    .local v1, "badtxt":Ljava/lang/String;
    :pswitch_0
    new-instance v3, Lorg/jdom2/JDOMException;

    goto/16 :goto_2

    .line 162
    .end local v1    # "badtxt":Ljava/lang/String;
    :pswitch_1
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v3, "Unexpected XMLStream event at Document level: CDATA"

    invoke-direct {v1, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v1

    .line 149
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, p0}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Document;->setDocType(Lorg/jdom2/DocType;)Lorg/jdom2/Document;

    .line 151
    goto/16 :goto_1

    .line 160
    :pswitch_3
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v3, "Unexpected XMLStream event at Document level: ENTITY_REFERENCE"

    invoke-direct {v1, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v1

    .line 139
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_4
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocation()Ljavax/xml/stream/Location;

    move-result-object v3

    invoke-interface {v3}, Ljavax/xml/stream/Location;->getSystemId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Document;->setBaseURI(Ljava/lang/String;)V

    .line 140
    const-string v3, "ENCODING_SCHEME"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 142
    const-string v3, "STANDALONE"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->isStandalone()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 144
    const-string v3, "ENCODING"

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEncoding()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/jdom2/Document;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V

    .line 146
    goto :goto_1

    .line 166
    :pswitch_5
    goto :goto_1

    .line 176
    .restart local v1    # "badtxt":Ljava/lang/String;
    :pswitch_6
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    .line 178
    goto :goto_1

    .line 168
    .end local v1    # "badtxt":Ljava/lang/String;
    :pswitch_7
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    .line 169
    .restart local v1    # "badtxt":Ljava/lang/String;
    invoke-static {v1}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 170
    :cond_0
    new-instance v3, Lorg/jdom2/JDOMException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected XMLStream event at Document level: CHARACTERS ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v3

    .line 181
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_8
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v3, v4}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Document;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Document;

    .line 183
    goto :goto_1

    .line 158
    .end local v1    # "badtxt":Ljava/lang/String;
    :pswitch_9
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v3, "Unexpected XMLStream event at Document level: END_ELEMENT"

    invoke-direct {v1, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v1

    .line 154
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_a
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    invoke-virtual {v2, v3}, Lorg/jdom2/Document;->setRootElement(Lorg/jdom2/Element;)Lorg/jdom2/Document;

    .line 155
    nop

    .line 189
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v3

    move v0, v3

    goto/16 :goto_0

    .line 192
    :cond_1
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v3, "Unexpected end-of-XMLStreamReader"

    invoke-direct {v1, v3}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v1

    .line 186
    .restart local v1    # "badtxt":Ljava/lang/String;
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :goto_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Unexpected XMLStream event "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v3

    .line 195
    .end local v1    # "badtxt":Ljava/lang/String;
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :cond_2
    return-object v2

    .line 128
    .end local v2    # "document":Lorg/jdom2/Document;
    :cond_3
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "JDOM requires that XMLStreamReaders are at their beginning when being processed."

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v1
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 196
    .end local v0    # "state":I
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v0

    .line 197
    .local v0, "xse":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Unable to process XMLStream. See Cause."

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;
    .locals 8
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;

    .line 505
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v1

    invoke-interface {p0, v0, v1}, Lorg/jdom2/JDOMFactory;->element(Ljava/lang/String;Lorg/jdom2/Namespace;)Lorg/jdom2/Element;

    move-result-object v0

    .line 510
    .local v0, "element":Lorg/jdom2/Element;
    const/4 v1, 0x0

    .local v1, "i":I
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeCount()I

    move-result v2

    .local v2, "len":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 511
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeType(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/jdom2/AttributeType;->getAttributeType(Ljava/lang/String;)Lorg/jdom2/AttributeType;

    move-result-object v5

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v6

    invoke-interface {p0, v3, v4, v5, v6}, Lorg/jdom2/JDOMFactory;->attribute(Ljava/lang/String;Ljava/lang/String;Lorg/jdom2/AttributeType;Lorg/jdom2/Namespace;)Lorg/jdom2/Attribute;

    move-result-object v3

    invoke-interface {p0, v0, v3}, Lorg/jdom2/JDOMFactory;->setAttribute(Lorg/jdom2/Element;Lorg/jdom2/Attribute;)V

    .line 510
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 520
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "i":I
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v2

    .restart local v2    # "len":I
    :goto_1
    if-ge v1, v2, :cond_1

    .line 521
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v3

    invoke-virtual {v0, v3}, Lorg/jdom2/Element;->addNamespaceDeclaration(Lorg/jdom2/Namespace;)Z

    .line 520
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 525
    .end local v1    # "i":I
    .end local v2    # "len":I
    :cond_1
    return-object v0
.end method

.method private static final processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;
    .locals 7
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 450
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_1

    .line 456
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v0

    .line 457
    .local v0, "fragment":Lorg/jdom2/Element;
    move-object v1, v0

    .line 458
    .local v1, "current":Lorg/jdom2/Element;
    const/4 v2, 0x1

    .local v2, "depth":I
    const/4 v3, 0x0

    .line 459
    :goto_0
    if-lez v2, :cond_0

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 460
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 494
    .local v3, "tmp":Lorg/jdom2/Element;
    :pswitch_0
    new-instance v4, Lorg/jdom2/JDOMException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Unexpected XMLStream event "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 472
    :pswitch_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 473
    goto :goto_1

    .line 485
    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 486
    goto :goto_1

    .line 481
    :pswitch_3
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 482
    goto :goto_1

    .line 477
    :pswitch_4
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 478
    goto :goto_1

    .line 489
    :pswitch_5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v4, v5}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 491
    goto :goto_1

    .line 468
    :pswitch_6
    invoke-virtual {v1}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v1

    .line 469
    add-int/lit8 v2, v2, -0x1

    .line 470
    goto :goto_1

    .line 462
    .end local v3    # "tmp":Lorg/jdom2/Element;
    :pswitch_7
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v3

    .line 463
    .restart local v3    # "tmp":Lorg/jdom2/Element;
    invoke-virtual {v1, v3}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 464
    move-object v1, v3

    .line 465
    add-int/lit8 v2, v2, 0x1

    .line 466
    nop

    .line 494
    .end local v3    # "tmp":Lorg/jdom2/Element;
    :goto_1
    goto :goto_0

    .line 499
    :cond_0
    return-object v0

    .line 451
    .end local v0    # "fragment":Lorg/jdom2/Element;
    .end local v1    # "current":Lorg/jdom2/Element;
    .end local v2    # "depth":I
    :cond_1
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v1, "JDOM requires that the XMLStreamReader is at the START_ELEMENT state when retrieving an Element Fragment."

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private static final processFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;
    .locals 10
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 392
    :try_start_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    move-object v0, v1

    .local v0, "emt":Lorg/jdom2/Element;
    move-object v2, v1

    .local v2, "comment":Lorg/jdom2/Content;
    move-object v3, v1

    .local v3, "cd":Lorg/jdom2/Content;
    move-object v4, v1

    .local v4, "pi":Lorg/jdom2/Content;
    move-object v5, v1

    .local v5, "dt":Lorg/jdom2/Content;
    move-object v6, v1

    .line 439
    .local v1, "txt":Lorg/jdom2/Content;
    .local v6, "er":Lorg/jdom2/Content;
    new-instance v7, Lorg/jdom2/JDOMException;

    goto/16 :goto_0

    .line 392
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "txt":Lorg/jdom2/Content;
    .end local v2    # "comment":Lorg/jdom2/Content;
    .end local v3    # "cd":Lorg/jdom2/Content;
    .end local v4    # "pi":Lorg/jdom2/Content;
    .end local v5    # "dt":Lorg/jdom2/Content;
    .end local v6    # "er":Lorg/jdom2/Content;
    :pswitch_1
    move-object v0, v1

    .line 412
    .restart local v0    # "emt":Lorg/jdom2/Element;
    .local v1, "dt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p0, v2}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v2

    .line 413
    .local v2, "cd":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 414
    return-object v2

    .line 392
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "dt":Lorg/jdom2/Content;
    .end local v2    # "cd":Lorg/jdom2/Content;
    :pswitch_2
    move-object v0, v1

    .line 407
    .restart local v0    # "emt":Lorg/jdom2/Element;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, p0}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v1

    .line 408
    .restart local v1    # "dt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 409
    return-object v1

    .line 392
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "dt":Lorg/jdom2/Content;
    :pswitch_3
    move-object v0, v1

    .restart local v0    # "emt":Lorg/jdom2/Element;
    move-object v2, v1

    .local v2, "comment":Lorg/jdom2/Content;
    move-object v3, v1

    .restart local v3    # "cd":Lorg/jdom2/Content;
    move-object v4, v1

    .line 428
    .local v1, "txt":Lorg/jdom2/Content;
    .local v4, "dt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p0, v5}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v5

    .line 429
    .local v5, "er":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 430
    return-object v5

    .line 397
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "txt":Lorg/jdom2/Content;
    .end local v2    # "comment":Lorg/jdom2/Content;
    .end local v3    # "cd":Lorg/jdom2/Content;
    .end local v4    # "dt":Lorg/jdom2/Content;
    .end local v5    # "er":Lorg/jdom2/Content;
    :pswitch_4
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v1, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_DOCUMENT"

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v0

    .line 395
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_5
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v1, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state START_DOCUMENT"

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v0

    .line 392
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_6
    move-object v0, v1

    .restart local v0    # "emt":Lorg/jdom2/Element;
    move-object v2, v1

    .local v2, "cd":Lorg/jdom2/Content;
    move-object v3, v1

    .line 423
    .restart local v1    # "txt":Lorg/jdom2/Content;
    .local v3, "dt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v4

    .line 424
    .local v4, "comment":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 425
    return-object v4

    .line 392
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "txt":Lorg/jdom2/Content;
    .end local v2    # "cd":Lorg/jdom2/Content;
    .end local v3    # "dt":Lorg/jdom2/Content;
    .end local v4    # "comment":Lorg/jdom2/Content;
    :pswitch_7
    move-object v0, v1

    .restart local v0    # "emt":Lorg/jdom2/Element;
    move-object v2, v1

    .line 418
    .local v1, "dt":Lorg/jdom2/Content;
    .restart local v2    # "cd":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p0, v3}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v3

    .line 419
    .local v3, "txt":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 420
    return-object v3

    .line 392
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "dt":Lorg/jdom2/Content;
    .end local v2    # "cd":Lorg/jdom2/Content;
    .end local v3    # "txt":Lorg/jdom2/Content;
    :pswitch_8
    move-object v0, v1

    .restart local v0    # "emt":Lorg/jdom2/Element;
    move-object v2, v1

    .local v2, "comment":Lorg/jdom2/Content;
    move-object v3, v1

    .local v3, "cd":Lorg/jdom2/Content;
    move-object v4, v1

    .local v4, "dt":Lorg/jdom2/Content;
    move-object v5, v1

    .line 433
    .local v1, "txt":Lorg/jdom2/Content;
    .restart local v5    # "er":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v6

    .line 435
    .local v6, "pi":Lorg/jdom2/Content;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 436
    return-object v6

    .line 399
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "txt":Lorg/jdom2/Content;
    .end local v2    # "comment":Lorg/jdom2/Content;
    .end local v3    # "cd":Lorg/jdom2/Content;
    .end local v4    # "dt":Lorg/jdom2/Content;
    .end local v5    # "er":Lorg/jdom2/Content;
    .end local v6    # "pi":Lorg/jdom2/Content;
    :pswitch_9
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v1, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_ELEMENT"

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v0

    .line 402
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :pswitch_a
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElementFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v0

    .line 403
    .restart local v0    # "emt":Lorg/jdom2/Element;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 404
    return-object v0

    .line 439
    .restart local v1    # "txt":Lorg/jdom2/Content;
    .restart local v2    # "comment":Lorg/jdom2/Content;
    .restart local v3    # "cd":Lorg/jdom2/Content;
    .local v4, "pi":Lorg/jdom2/Content;
    .local v5, "dt":Lorg/jdom2/Content;
    .local v6, "er":Lorg/jdom2/Content;
    :goto_0
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Unexpected XMLStream event "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    throw v7
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 442
    .end local v0    # "emt":Lorg/jdom2/Element;
    .end local v1    # "txt":Lorg/jdom2/Content;
    .end local v2    # "comment":Lorg/jdom2/Content;
    .end local v3    # "cd":Lorg/jdom2/Content;
    .end local v4    # "pi":Lorg/jdom2/Content;
    .end local v5    # "dt":Lorg/jdom2/Content;
    .end local v6    # "er":Lorg/jdom2/Content;
    .restart local p0    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p1    # "stream":Ljavax/xml/stream/XMLStreamReader;
    :catch_0
    move-exception v0

    .line 443
    .local v0, "xse":Ljavax/xml/stream/XMLStreamException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Unable to process XMLStream. See Cause."

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private processFragments(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;
    .locals 8
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p2, "stream"    # Ljavax/xml/stream/XMLStreamReader;
    .param p3, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/JDOMFactory;",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Lorg/jdom2/input/stax/StAXFilter;",
            ")",
            "Ljava/util/List<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 203
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    .line 205
    .local v0, "state":I
    const/4 v1, 0x7

    if-ne v1, v0, :cond_6

    .line 209
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 211
    .local v1, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const/4 v2, 0x0

    .line 212
    .local v2, "depth":I
    const/4 v3, 0x0

    .local v3, "text":Ljava/lang/String;
    const/4 v4, 0x0

    .line 215
    :goto_0
    :try_start_0
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v5

    move v0, v5

    const/16 v6, 0x8

    if-eq v5, v6, :cond_5

    .line 216
    packed-switch v0, :pswitch_data_0

    .line 283
    .local v4, "qn":Ljavax/xml/namespace/QName;
    :pswitch_0
    new-instance v5, Lorg/jdom2/JDOMException;

    goto/16 :goto_3

    .line 251
    :pswitch_1
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2, v5}, Lorg/jdom2/input/stax/StAXFilter;->includeCDATA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_4

    .line 252
    invoke-interface {p1, v3}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 245
    :pswitch_2
    invoke-interface {p3}, Lorg/jdom2/input/stax/StAXFilter;->includeDocType()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 246
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p1}, Lorg/jdom2/input/stax/DTDParser;->parse(Ljava/lang/String;Lorg/jdom2/JDOMFactory;)Lorg/jdom2/DocType;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 270
    :pswitch_3
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2, v5}, Lorg/jdom2/input/stax/StAXFilter;->includeEntityRef(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 271
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 220
    .end local v4    # "qn":Ljavax/xml/namespace/QName;
    :pswitch_4
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_DOCUMENT"

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":I
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "depth":I
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .end local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    throw v4

    .line 218
    .restart local v0    # "state":I
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v2    # "depth":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .restart local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    :pswitch_5
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state START_DOCUMENT"

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":I
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "depth":I
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .end local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    throw v4

    .line 264
    .restart local v0    # "state":I
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v2    # "depth":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local v4    # "qn":Ljavax/xml/namespace/QName;
    .restart local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .restart local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    :pswitch_6
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2, v5}, Lorg/jdom2/input/stax/StAXFilter;->includeComment(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_4

    .line 265
    invoke-interface {p1, v3}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_2

    .line 258
    :pswitch_7
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2, v5}, Lorg/jdom2/input/stax/StAXFilter;->includeText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    if-eqz v5, :cond_4

    .line 259
    invoke-interface {p1, v3}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 276
    :pswitch_8
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p3, v2, v5}, Lorg/jdom2/input/stax/StAXFilter;->includeProcessingInstruction(ILjava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 277
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v5, v6}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 222
    .end local v4    # "qn":Ljavax/xml/namespace/QName;
    :pswitch_9
    new-instance v4, Lorg/jdom2/JDOMException;

    const-string v5, "Illegal state for XMLStreamReader. Cannot get XML Fragment for state END_ELEMENT"

    invoke-direct {v4, v5}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":I
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "depth":I
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .end local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    throw v4

    .line 225
    .restart local v0    # "state":I
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v2    # "depth":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .restart local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    :pswitch_a
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v4

    .line 226
    .restart local v4    # "qn":Ljavax/xml/namespace/QName;
    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v6

    invoke-interface {p3, v2, v5, v6}, Lorg/jdom2/input/stax/StAXFilter;->includeElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 228
    invoke-static {p1, p2, v2, p3}, Lorg/jdom2/input/StAXStreamBuilder;->processPrunableElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;ILorg/jdom2/input/stax/StAXFilter;)Lorg/jdom2/Element;

    move-result-object v5

    invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 230
    :cond_0
    move v5, v2

    .line 231
    .local v5, "back":I
    add-int/lit8 v2, v2, 0x1

    .line 233
    :cond_1
    :goto_1
    if-le v2, v5, :cond_3

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_3

    .line 234
    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v6

    move v0, v6

    .line 235
    const/4 v6, 0x1

    if-ne v0, v6, :cond_2

    .line 236
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 237
    :cond_2
    const/4 v6, 0x2

    if-ne v0, v6, :cond_1

    .line 238
    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    .line 242
    .end local v5    # "back":I
    :cond_3
    nop

    .line 283
    .end local v4    # "qn":Ljavax/xml/namespace/QName;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .restart local v4    # "qn":Ljavax/xml/namespace/QName;
    :goto_3
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected XMLStream event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p2}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    .end local v0    # "state":I
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "depth":I
    .end local v3    # "text":Ljava/lang/String;
    .end local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .end local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .end local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    throw v5
    :try_end_0
    .catch Ljavax/xml/stream/XMLStreamException; {:try_start_0 .. :try_end_0} :catch_0

    .line 288
    .end local v4    # "qn":Ljavax/xml/namespace/QName;
    .restart local v0    # "state":I
    .restart local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v2    # "depth":I
    .restart local v3    # "text":Ljava/lang/String;
    .restart local p1    # "factory":Lorg/jdom2/JDOMFactory;
    .restart local p2    # "stream":Ljavax/xml/stream/XMLStreamReader;
    .restart local p3    # "filter":Lorg/jdom2/input/stax/StAXFilter;
    :cond_5
    nop

    .line 290
    return-object v1

    .line 286
    :catch_0
    move-exception v4

    .line 287
    .local v4, "e":Ljavax/xml/stream/XMLStreamException;
    new-instance v5, Lorg/jdom2/JDOMException;

    const-string v6, "Unable to process fragments from XMLStreamReader."

    invoke-direct {v5, v6, v4}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v5

    .line 206
    .end local v1    # "ret":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v2    # "depth":I
    .end local v3    # "text":Ljava/lang/String;
    .end local v4    # "e":Ljavax/xml/stream/XMLStreamException;
    :cond_6
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "JDOM requires that XMLStreamReaders are at their beginning when being processed."

    invoke-direct {v1, v2}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_7
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private static final processPrunableElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;ILorg/jdom2/input/stax/StAXFilter;)Lorg/jdom2/Element;
    .locals 10
    .param p0, "factory"    # Lorg/jdom2/JDOMFactory;
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "topdepth"    # I
    .param p3, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;,
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 298
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    if-ne v1, v0, :cond_6

    .line 304
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v0

    .line 305
    .local v0, "fragment":Lorg/jdom2/Element;
    move-object v2, v0

    .line 306
    .local v2, "current":Lorg/jdom2/Element;
    add-int/lit8 v3, p2, 0x1

    .line 307
    .local v3, "depth":I
    const/4 v4, 0x0

    .local v4, "text":Ljava/lang/String;
    const/4 v5, 0x0

    .line 308
    :goto_0
    if-le v3, p2, :cond_5

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    .line 309
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v6

    packed-switch v6, :pswitch_data_0

    :pswitch_0
    move-object v1, v5

    .line 370
    .local v1, "qn":Ljavax/xml/namespace/QName;
    new-instance v5, Lorg/jdom2/JDOMException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Unexpected XMLStream event "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 338
    .end local v1    # "qn":Ljavax/xml/namespace/QName;
    .local v5, "qn":Ljavax/xml/namespace/QName;
    :pswitch_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Lorg/jdom2/input/stax/StAXFilter;->pruneCDATA(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_4

    .line 339
    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->cdata(Ljava/lang/String;)Lorg/jdom2/CDATA;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_2

    .line 357
    :pswitch_2
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Lorg/jdom2/input/stax/StAXFilter;->pruneEntityRef(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 358
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p0, v6}, Lorg/jdom2/JDOMFactory;->entityRef(Ljava/lang/String;)Lorg/jdom2/EntityRef;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_2

    .line 351
    :pswitch_3
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Lorg/jdom2/input/stax/StAXFilter;->pruneComment(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_4

    .line 352
    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->comment(Ljava/lang/String;)Lorg/jdom2/Comment;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_2

    .line 345
    :pswitch_4
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Lorg/jdom2/input/stax/StAXFilter;->pruneText(ILjava/lang/String;)Ljava/lang/String;

    move-result-object v6

    move-object v4, v6

    if-eqz v6, :cond_4

    .line 346
    invoke-interface {p0, v4}, Lorg/jdom2/JDOMFactory;->text(Ljava/lang/String;)Lorg/jdom2/Text;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto/16 :goto_2

    .line 363
    :pswitch_5
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p3, v3, v6}, Lorg/jdom2/input/stax/StAXFilter;->pruneProcessingInstruction(ILjava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_4

    .line 364
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p0, v6, v7}, Lorg/jdom2/JDOMFactory;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/ProcessingInstruction;

    move-result-object v6

    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    goto :goto_2

    .line 334
    :pswitch_6
    invoke-virtual {v2}, Lorg/jdom2/Element;->getParentElement()Lorg/jdom2/Element;

    move-result-object v2

    .line 335
    add-int/lit8 v3, v3, -0x1

    .line 336
    goto :goto_2

    .line 311
    .end local v5    # "qn":Ljavax/xml/namespace/QName;
    :pswitch_7
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getName()Ljavax/xml/namespace/QName;

    move-result-object v5

    .line 312
    .restart local v5    # "qn":Ljavax/xml/namespace/QName;
    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lorg/jdom2/Namespace;->getNamespace(Ljava/lang/String;Ljava/lang/String;)Lorg/jdom2/Namespace;

    move-result-object v7

    invoke-interface {p3, v3, v6, v7}, Lorg/jdom2/input/stax/StAXFilter;->pruneElement(ILjava/lang/String;Lorg/jdom2/Namespace;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 315
    invoke-static {p0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processElement(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Element;

    move-result-object v6

    .line 316
    .local v6, "tmp":Lorg/jdom2/Element;
    invoke-virtual {v2, v6}, Lorg/jdom2/Element;->addContent(Lorg/jdom2/Content;)Lorg/jdom2/Element;

    .line 317
    move-object v2, v6

    .line 318
    nop

    .end local v6    # "tmp":Lorg/jdom2/Element;
    add-int/lit8 v3, v3, 0x1

    .line 319
    goto :goto_2

    .line 320
    :cond_0
    move v6, v3

    .line 321
    .local v6, "edepth":I
    add-int/lit8 v3, v3, 0x1

    .line 322
    const/4 v7, 0x0

    .line 323
    .local v7, "state":I
    :cond_1
    :goto_1
    if-le v3, v6, :cond_3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    move-result v8

    move v7, v8

    const/16 v9, 0x8

    if-eq v8, v9, :cond_3

    .line 325
    if-ne v7, v1, :cond_2

    .line 326
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 327
    :cond_2
    const/4 v8, 0x2

    if-ne v7, v8, :cond_1

    .line 328
    add-int/lit8 v3, v3, -0x1

    goto :goto_1

    .line 332
    .end local v6    # "edepth":I
    .end local v7    # "state":I
    :cond_3
    nop

    .line 370
    .end local v5    # "qn":Ljavax/xml/namespace/QName;
    :cond_4
    :goto_2
    goto/16 :goto_0

    .line 375
    :cond_5
    return-object v0

    .line 299
    .end local v0    # "fragment":Lorg/jdom2/Element;
    .end local v2    # "current":Lorg/jdom2/Element;
    .end local v3    # "depth":I
    .end local v4    # "text":Ljava/lang/String;
    :cond_6
    new-instance v0, Lorg/jdom2/JDOMException;

    const-string v1, "JDOM requires that the XMLStreamReader is at the START_ELEMENT state when retrieving an Element Fragment."

    invoke-direct {v0, v1}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public build(Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 561
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-static {v0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->process(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public buildFragments(Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;
    .locals 1
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "filter"    # Lorg/jdom2/input/stax/StAXFilter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamReader;",
            "Lorg/jdom2/input/stax/StAXFilter;",
            ")",
            "Ljava/util/List<",
            "Lorg/jdom2/Content;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 573
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-direct {p0, v0, p1, p2}, Lorg/jdom2/input/StAXStreamBuilder;->processFragments(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;Lorg/jdom2/input/stax/StAXFilter;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public fragment(Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;
    .locals 1
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    invoke-static {v0, p1}, Lorg/jdom2/input/StAXStreamBuilder;->processFragment(Lorg/jdom2/JDOMFactory;Ljavax/xml/stream/XMLStreamReader;)Lorg/jdom2/Content;

    move-result-object v0

    return-object v0
.end method

.method public getFactory()Lorg/jdom2/JDOMFactory;
    .locals 1

    .line 537
    iget-object v0, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    return-object v0
.end method

.method public setFactory(Lorg/jdom2/JDOMFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/jdom2/JDOMFactory;

    .line 547
    iput-object p1, p0, Lorg/jdom2/input/StAXStreamBuilder;->builderfactory:Lorg/jdom2/JDOMFactory;

    .line 548
    return-void
.end method
