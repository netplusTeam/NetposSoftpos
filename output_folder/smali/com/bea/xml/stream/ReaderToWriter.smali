.class public Lcom/bea/xml/stream/ReaderToWriter;
.super Ljava/lang/Object;
.source "ReaderToWriter.java"


# instance fields
.field private writer:Ljavax/xml/stream/XMLStreamWriter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .param p1, "xmlw"    # Ljavax/xml/stream/XMLStreamWriter;

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 36
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 6
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 121
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 122
    .local v0, "xmlif":Ljavax/xml/stream/XMLInputFactory;
    invoke-static {}, Ljavax/xml/stream/XMLOutputFactory;->newInstance()Ljavax/xml/stream/XMLOutputFactory;

    move-result-object v1

    .line 123
    .local v1, "xmlof":Ljavax/xml/stream/XMLOutputFactory;
    new-instance v2, Ljava/io/FileReader;

    const/4 v3, 0x0

    aget-object v3, p0, v3

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    .line 124
    .local v2, "xmlr":Ljavax/xml/stream/XMLStreamReader;
    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-virtual {v1, v3}, Ljavax/xml/stream/XMLOutputFactory;->createXMLStreamWriter(Ljava/io/OutputStream;)Ljavax/xml/stream/XMLStreamWriter;

    move-result-object v3

    .line 126
    .local v3, "xmlw":Ljavax/xml/stream/XMLStreamWriter;
    new-instance v4, Lcom/bea/xml/stream/ReaderToWriter;

    invoke-direct {v4, v3}, Lcom/bea/xml/stream/ReaderToWriter;-><init>(Ljavax/xml/stream/XMLStreamWriter;)V

    .line 127
    .local v4, "rtow":Lcom/bea/xml/stream/ReaderToWriter;
    :goto_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 128
    invoke-virtual {v4, v2}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 129
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 130
    goto :goto_0

    .line 131
    :cond_0
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 132
    return-void
.end method


# virtual methods
.method public setStreamWriter(Ljavax/xml/stream/XMLStreamWriter;)V
    .locals 0
    .param p1, "xmlw"    # Ljavax/xml/stream/XMLStreamWriter;

    .line 39
    iput-object p1, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    .line 40
    return-void
.end method

.method public write(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 6
    .param p1, "xmlr"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 44
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "wrote event"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 45
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getEventType()I

    move-result v0

    const/4 v1, 0x0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_2

    :pswitch_1
    move-object v0, v1

    .line 80
    .local v0, "prefix":Ljava/lang/String;
    .local v1, "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 81
    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_2
    move-object v0, v1

    .restart local v0    # "prefix":Ljava/lang/String;
    move-object v2, v1

    .local v2, "encoding":Ljava/lang/String;
    move-object v3, v1

    .line 103
    .local v1, "version":Ljava/lang/String;
    .local v3, "namespaceURI":Ljava/lang/String;
    iget-object v4, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "namespaceURI":Ljava/lang/String;
    :pswitch_3
    move-object v0, v1

    .line 87
    .restart local v0    # "prefix":Ljava/lang/String;
    .local v1, "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 88
    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_4
    move-object v0, v1

    .restart local v0    # "prefix":Ljava/lang/String;
    move-object v2, v1

    .restart local v2    # "encoding":Ljava/lang/String;
    move-object v3, v1

    .line 100
    .local v1, "version":Ljava/lang/String;
    .restart local v3    # "namespaceURI":Ljava/lang/String;
    iget-object v4, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v4}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 101
    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "version":Ljava/lang/String;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "namespaceURI":Ljava/lang/String;
    :pswitch_5
    move-object v0, v1

    .line 90
    .restart local v0    # "prefix":Ljava/lang/String;
    .local v1, "namespaceURI":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getCharacterEncodingScheme()Ljava/lang/String;

    move-result-object v2

    .line 91
    .restart local v2    # "encoding":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v3

    .line 93
    .local v3, "version":Ljava/lang/String;
    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 94
    iget-object v4, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v4, v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 96
    :cond_0
    if-eqz v3, :cond_4

    .line 97
    iget-object v4, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getVersion()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "version":Ljava/lang/String;
    :pswitch_6
    move-object v0, v1

    .line 84
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getText()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 85
    goto/16 :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_7
    move-object v0, v1

    .line 71
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextCharacters()[C

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextStart()I

    move-result v4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getTextLength()I

    move-result v5

    invoke-interface {v2, v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters([CII)V

    .line 74
    goto :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_8
    move-object v0, v1

    .line 76
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPITarget()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPIData()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 78
    goto :goto_2

    .line 45
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_9
    move-object v0, v1

    .line 67
    .restart local v0    # "prefix":Ljava/lang/String;
    .restart local v1    # "namespaceURI":Ljava/lang/String;
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    .line 68
    goto :goto_2

    .line 47
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :pswitch_a
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 48
    .restart local v0    # "prefix":Ljava/lang/String;
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    .line 49
    .restart local v1    # "namespaceURI":Ljava/lang/String;
    if-eqz v1, :cond_2

    .line 50
    if-eqz v0, :cond_1

    .line 51
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getPrefix()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v2, v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 55
    :cond_1
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;)V

    .line 57
    goto :goto_0

    .line 58
    :cond_2
    iget-object v2, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;)V

    .line 61
    :goto_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceCount()I

    move-result v3

    if-ge v2, v3, :cond_3

    .line 62
    iget-object v3, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespacePrefix(I)Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamReader;->getNamespaceURI(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v3, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 61
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 65
    .end local v2    # "i":I
    :cond_3
    nop

    .line 107
    .end local v0    # "prefix":Ljava/lang/String;
    .end local v1    # "namespaceURI":Ljava/lang/String;
    :cond_4
    :goto_2
    return-void

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

.method public writeAll(Ljavax/xml/stream/XMLStreamReader;)Ljavax/xml/stream/XMLStreamWriter;
    .locals 1
    .param p1, "xmlr"    # Ljavax/xml/stream/XMLStreamReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 112
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    invoke-virtual {p0, p1}, Lcom/bea/xml/stream/ReaderToWriter;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 114
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 115
    goto :goto_0

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    invoke-interface {v0}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 117
    iget-object v0, p0, Lcom/bea/xml/stream/ReaderToWriter;->writer:Ljavax/xml/stream/XMLStreamWriter;

    return-object v0
.end method
