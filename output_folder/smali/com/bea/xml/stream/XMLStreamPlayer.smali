.class public Lcom/bea/xml/stream/XMLStreamPlayer;
.super Ljava/lang/Object;
.source "XMLStreamPlayer.java"

# interfaces
.implements Ljavax/xml/stream/XMLStreamReader;


# instance fields
.field context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

.field scanner:Lcom/bea/xml/stream/EventScanner;

.field state:Lcom/bea/xml/stream/EventState;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 43
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "stream"    # Ljava/io/InputStream;

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 47
    :try_start_0
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    new-instance v1, Ljava/io/InputStreamReader;

    invoke-direct {v1, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    .line 48
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    .line 49
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v0

    .line 51
    .local v0, "encoding":Ljava/lang/String;
    new-instance v1, Lcom/bea/xml/stream/EventScanner;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-direct {v2, p1, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v1, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 56
    .end local v0    # "encoding":Ljava/lang/String;
    :cond_0
    nop

    .line 57
    return-void

    .line 54
    :catch_0
    move-exception v0

    .line 55
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Unable to instantiate the XMLStreamPlayer"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public constructor <init>(Ljava/io/Reader;)V
    .locals 2
    .param p1, "reader"    # Ljava/io/Reader;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    new-instance v0, Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-direct {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;-><init>()V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    .line 60
    :try_start_0
    new-instance v0, Lcom/bea/xml/stream/EventScanner;

    invoke-direct {v0, p1}, Lcom/bea/xml/stream/EventScanner;-><init>(Ljava/io/Reader;)V

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    .line 61
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    goto :goto_0

    .line 62
    :catch_0
    move-exception v0

    .line 63
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 65
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method private getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;
    .locals 1
    .param p1, "index"    # I

    .line 149
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method private getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;
    .locals 1
    .param p1, "index"    # I

    .line 153
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/xml/stream/events/Attribute;

    return-object v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 5
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 350
    new-instance v0, Lcom/bea/xml/stream/XMLStreamPlayer;

    new-instance v1, Ljava/io/FileReader;

    const/4 v2, 0x0

    aget-object v2, p0, v2

    invoke-direct {v1, v2}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lcom/bea/xml/stream/XMLStreamPlayer;-><init>(Ljava/io/Reader;)V

    .line 352
    .local v0, "reader":Ljavax/xml/stream/XMLStreamReader;
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    .line 353
    .local v1, "xmlof":Ljavax/xml/stream/XMLOutputFactory;
    sget-object v2, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v2}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v2

    .line 354
    .local v2, "xmlw":Ljavax/xml/stream/XMLStreamWriter;
    new-instance v3, Lcom/bea/xml/stream/ReaderToWriter;

    invoke-direct {v3, v2}, Lcom/bea/xml/stream/ReaderToWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 355
    .local v3, "rtow":Lcom/bea/xml/stream/ReaderToWriter;
    :goto_0
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 356
    invoke-virtual {v3, v0}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 357
    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 358
    goto :goto_0

    .line 359
    :cond_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 360
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 142
    return-void
.end method

.method public endDocumentIsPresent()Z
    .locals 1

    .line 346
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->endDocumentIsPresent()Z

    move-result v0

    return v0
.end method

.method public getAttributeCount()I
    .locals 1

    .line 189
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 192
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getAttributeLocalName(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 209
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 210
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 211
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeName(I)Ljavax/xml/namespace/QName;
    .locals 4
    .param p1, "index"    # I

    .line 196
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeNamespace(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeLocalName(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributePrefix(I)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getAttributeNamespace(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 203
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 204
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 205
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 215
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 216
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 217
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getPrefix()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeType(I)Ljava/lang/String;
    .locals 1
    .param p1, "index"    # I

    .line 221
    const-string v0, "CDATA"

    return-object v0
.end method

.method public getAttributeValue(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 224
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 225
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 226
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "namespaceUri"    # Ljava/lang/String;
    .param p2, "localName"    # Ljava/lang/String;

    .line 175
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 176
    invoke-direct {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getAttributeInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v1

    .line 177
    .local v1, "a":Ljavax/xml/stream/events/Attribute;
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 178
    if-nez p1, :cond_0

    .line 179
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 181
    :cond_0
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v2

    invoke-virtual {v2}, Ljavax/xml/namespace/QName;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 182
    invoke-interface {v1}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 175
    .end local v1    # "a":Ljavax/xml/stream/events/Attribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 185
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCharacterEncodingScheme()Ljava/lang/String;
    .locals 1

    .line 337
    const/4 v0, 0x0

    return-object v0
.end method

.method public getElementText()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 107
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 108
    .local v0, "buf":Ljava/lang/StringBuffer;
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_4

    .line 112
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    move-result v1

    const/16 v2, 0x8

    if-eq v1, v2, :cond_3

    .line 114
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v1

    if-nez v1, :cond_2

    .line 116
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isCharacters()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 117
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 118
    :cond_1
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 119
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 115
    :cond_2
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected Element start"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 113
    :cond_3
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Unexpected end of Document"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 109
    :cond_4
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    const-string v2, "Precondition for readText is getEventType() == START_ELEMENT"

    invoke-direct {v1, v2}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public getEncoding()Ljava/lang/String;
    .locals 1

    .line 294
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventType()I
    .locals 1

    .line 265
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    if-nez v0, :cond_0

    const/16 v0, 0x8

    return v0

    .line 266
    :cond_0
    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I

    move-result v0

    return v0
.end method

.method public getLocalName()Ljava/lang/String;
    .locals 1

    .line 314
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getLocalName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLocation()Ljavax/xml/stream/Location;
    .locals 1

    .line 306
    const/4 v0, 0x0

    return-object v0
.end method

.method public getName()Ljavax/xml/namespace/QName;
    .locals 4

    .line 309
    new-instance v0, Ljavax/xml/namespace/QName;

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getLocalName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public getNamespaceContext()Ljavax/xml/namespace/NamespaceContext;
    .locals 1

    .line 255
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    return-object v0
.end method

.method public getNamespaceCount()I
    .locals 1

    .line 235
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaces()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0

    .line 238
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNamespacePrefix(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 243
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 244
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 245
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getName()Ljavax/xml/namespace/QName;

    move-result-object v1

    invoke-virtual {v1}, Ljavax/xml/namespace/QName;->getLocalPart()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamespaceURI()Ljava/lang/String;
    .locals 1

    .line 322
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNamespaceURI(I)Ljava/lang/String;
    .locals 2
    .param p1, "index"    # I

    .line 249
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceInternal(I)Ljavax/xml/stream/events/Attribute;

    move-result-object v0

    .line 250
    .local v0, "a":Ljavax/xml/stream/events/Attribute;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    return-object v1

    .line 251
    :cond_0
    invoke-interface {v0}, Ljavax/xml/stream/events/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "prefix"    # Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0, p1}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getNamespaceURI(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPIData()Ljava/lang/String;
    .locals 1

    .line 343
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getExtraData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPITarget()Ljava/lang/String;
    .locals 1

    .line 340
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPrefix()Ljava/lang/String;
    .locals 1

    .line 325
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getPrefix()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getProperty(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 70
    const/4 v0, 0x0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .line 270
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTextCharacters(I[CII)I
    .locals 1
    .param p1, "src"    # I
    .param p2, "target"    # [C
    .param p3, "targetStart"    # I
    .param p4, "length"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 283
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getTextCharacters()[C
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    return-object v0
.end method

.method public getTextLength()I
    .locals 1

    .line 291
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getData()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    return v0
.end method

.method public getTextStart()I
    .locals 1

    .line 288
    const/4 v0, 0x0

    return v0
.end method

.method public getTextStream()Ljava/io/Reader;
    .locals 1

    .line 274
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getVersion()Ljava/lang/String;
    .locals 1

    .line 328
    const-string v0, "1.0"

    return-object v0
.end method

.method public hasName()Z
    .locals 1

    .line 317
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0xb

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 136
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 137
    :catch_0
    move-exception v0

    .line 138
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-direct {v1, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public hasText()Z
    .locals 1

    .line 298
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0xf

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isAttributeSpecified(I)Z
    .locals 1
    .param p1, "index"    # I

    .line 229
    const/4 v0, 0x0

    return v0
.end method

.method public isCharacters()Z
    .locals 1

    .line 165
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isEndElement()Z
    .locals 1

    .line 161
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isStandalone()Z
    .locals 1

    .line 331
    const/4 v0, 0x1

    return v0
.end method

.method public isStartElement()Z
    .locals 2

    .line 157
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public isWhiteSpace()Z
    .locals 1

    .line 169
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 76
    :try_start_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->hasNext()Z

    move-result v0

    if-nez v0, :cond_0

    .line 77
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    .line 78
    const/4 v0, -0x1

    return v0

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->scanner:Lcom/bea/xml/stream/EventScanner;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventScanner;->readElement()Lcom/bea/xml/stream/EventState;

    move-result-object v0

    iput-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    .line 81
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 82
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->openScope()V

    .line 83
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 84
    iget-object v1, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->bindNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .end local v0    # "i":I
    :cond_1
    goto :goto_1

    .line 87
    :cond_2
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 88
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->getDepth()I

    move-result v0

    if-lez v0, :cond_4

    .line 89
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->context:Lcom/bea/xml/stream/util/NamespaceContextImpl;

    invoke-virtual {v0}, Lcom/bea/xml/stream/util/NamespaceContextImpl;->closeScope()V

    goto :goto_2

    .line 87
    :cond_3
    :goto_1
    nop

    .line 91
    :cond_4
    :goto_2
    iget-object v0, p0, Lcom/bea/xml/stream/XMLStreamPlayer;->state:Lcom/bea/xml/stream/EventState;

    invoke-virtual {v0}, Lcom/bea/xml/stream/EventState;->getType()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 92
    :catch_0
    move-exception v0

    .line 93
    .local v0, "e":Ljava/lang/Exception;
    sget-object v1, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 95
    new-instance v1, Ljavax/xml/stream/XMLStreamException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public nextTag()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 124
    :cond_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->next()I

    move-result v0

    const/16 v1, 0x8

    if-eq v0, v1, :cond_4

    .line 126
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isCharacters()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isWhiteSpace()Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 127
    :cond_1
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected text"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 128
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isStartElement()Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->isEndElement()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 129
    :cond_3
    invoke-virtual {p0}, Lcom/bea/xml/stream/XMLStreamPlayer;->getEventType()I

    move-result v0

    return v0

    .line 125
    :cond_4
    new-instance v0, Ljavax/xml/stream/XMLStreamException;

    const-string v1, "Unexpected end of Document"

    invoke-direct {v0, v1}, Ljavax/xml/stream/XMLStreamException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public require(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "namespaceURI"    # Ljava/lang/String;
    .param p3, "localName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 102
    return-void
.end method

.method public standaloneSet()Z
    .locals 1

    .line 334
    const/4 v0, 0x0

    return v0
.end method

.method public subReader()Ljavax/xml/stream/XMLStreamReader;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 261
    const/4 v0, 0x0

    return-object v0
.end method
