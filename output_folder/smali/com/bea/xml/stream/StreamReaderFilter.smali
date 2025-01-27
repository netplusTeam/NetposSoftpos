.class public Lcom/bea/xml/stream/StreamReaderFilter;
.super Lcom/bea/xml/stream/ReaderDelegate;
.source "StreamReaderFilter.java"


# instance fields
.field private filter:Ljavax/xml/stream/StreamFilter;


# direct methods
.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;)V
    .locals 0
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;

    .line 38
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/ReaderDelegate;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    .line 39
    return-void
.end method

.method public constructor <init>(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)V
    .locals 0
    .param p1, "reader"    # Ljavax/xml/stream/XMLStreamReader;
    .param p2, "filter"    # Ljavax/xml/stream/StreamFilter;

    .line 43
    invoke-direct {p0, p1}, Lcom/bea/xml/stream/ReaderDelegate;-><init>(Ljavax/xml/stream/XMLStreamReader;)V

    .line 44
    invoke-virtual {p0, p2}, Lcom/bea/xml/stream/StreamReaderFilter;->setFilter(Ljavax/xml/stream/StreamFilter;)V

    .line 45
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 73
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 76
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 78
    .local v0, "factory":Ljavax/xml/stream/XMLInputFactory;
    new-instance v1, Lcom/bea/xml/stream/filters/TypeFilter;

    invoke-direct {v1}, Lcom/bea/xml/stream/filters/TypeFilter;-><init>()V

    .line 79
    .local v1, "f":Lcom/bea/xml/stream/filters/TypeFilter;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/filters/TypeFilter;->addType(I)V

    .line 80
    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Lcom/bea/xml/stream/filters/TypeFilter;->addType(I)V

    .line 81
    new-instance v2, Ljava/io/FileReader;

    const/4 v3, 0x0

    aget-object v4, p0, v3

    invoke-direct {v2, v4}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Ljavax/xml/stream/XMLInputFactory;->createFilteredReader(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v2

    .line 83
    .local v2, "reader":Ljavax/xml/stream/XMLStreamReader;
    :goto_0
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 84
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->getLocalName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 85
    invoke-interface {v2}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 86
    goto :goto_0

    .line 89
    :cond_0
    new-instance v4, Lcom/bea/xml/stream/filters/NameFilter;

    new-instance v5, Ljavax/xml/namespace/QName;

    const-string v6, "banana"

    const-string v7, "B"

    invoke-direct {v5, v6, v7}, Ljavax/xml/namespace/QName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lcom/bea/xml/stream/filters/NameFilter;-><init>(Ljavax/xml/namespace/QName;)V

    .line 90
    .local v4, "nf":Lcom/bea/xml/stream/filters/NameFilter;
    new-instance v5, Ljava/io/FileReader;

    aget-object v3, p0, v3

    invoke-direct {v5, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljavax/xml/stream/XMLInputFactory;->createXMLStreamReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    invoke-virtual {v0, v3, v4}, Ljavax/xml/stream/XMLInputFactory;->createFilteredReader(Ljavax/xml/stream/XMLStreamReader;Ljavax/xml/stream/StreamFilter;)Ljavax/xml/stream/XMLStreamReader;

    move-result-object v3

    .line 93
    .local v3, "reader2":Ljavax/xml/stream/XMLStreamReader;
    new-instance v5, Lcom/bea/xml/stream/XMLStreamRecorder;

    new-instance v6, Ljava/io/OutputStreamWriter;

    new-instance v7, Ljava/io/FileOutputStream;

    const-string/jumbo v8, "out.stream"

    invoke-direct {v7, v8}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    invoke-direct {v6, v7}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Lcom/bea/xml/stream/XMLStreamRecorder;-><init>(Ljava/io/Writer;)V

    .line 96
    .local v5, "r":Lcom/bea/xml/stream/XMLStreamRecorder;
    :goto_1
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 97
    invoke-virtual {v5, v3}, Lcom/bea/xml/stream/XMLStreamRecorder;->write(Ljavax/xml/stream/XMLStreamReader;)V

    .line 98
    invoke-interface {v3}, Ljavax/xml/stream/XMLStreamReader;->next()I

    .line 99
    goto :goto_1

    .line 100
    :cond_1
    invoke-virtual {v5}, Lcom/bea/xml/stream/XMLStreamRecorder;->flush()V

    .line 102
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 64
    :goto_0
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    iget-object v0, p0, Lcom/bea/xml/stream/StreamReaderFilter;->filter:Ljavax/xml/stream/StreamFilter;

    invoke-virtual {p0}, Lcom/bea/xml/stream/StreamReaderFilter;->getDelegate()Ljavax/xml/stream/XMLStreamReader;

    move-result-object v1

    invoke-interface {v0, v1}, Ljavax/xml/stream/StreamFilter;->accept(Ljavax/xml/stream/XMLStreamReader;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    .line 66
    :cond_0
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->next()I

    .line 67
    goto :goto_0

    .line 68
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 54
    invoke-virtual {p0}, Lcom/bea/xml/stream/StreamReaderFilter;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    invoke-super {p0}, Lcom/bea/xml/stream/ReaderDelegate;->next()I

    move-result v0

    return v0

    .line 56
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "next() may not be called  when there are no more  items to return"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setFilter(Ljavax/xml/stream/StreamFilter;)V
    .locals 0
    .param p1, "filter"    # Ljavax/xml/stream/StreamFilter;

    .line 48
    iput-object p1, p0, Lcom/bea/xml/stream/StreamReaderFilter;->filter:Ljavax/xml/stream/StreamFilter;

    .line 49
    return-void
.end method
