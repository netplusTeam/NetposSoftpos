.class public Lcom/bea/xml/stream/samples/NoAllocEventParser;
.super Ljava/lang/Object;
.source "NoAllocEventParser.java"


# static fields
.field private static filename:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 15
    const/4 v0, 0x0

    sput-object v0, Lcom/bea/xml/stream/samples/NoAllocEventParser;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 7
    .param p0, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 23
    const/4 v0, 0x0

    :try_start_0
    aget-object v1, p0, v0

    sput-object v1, Lcom/bea/xml/stream/samples/NoAllocEventParser;->filename:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    goto :goto_0

    .line 24
    :catch_0
    move-exception v1

    .line 25
    .local v1, "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    invoke-static {}, Lcom/bea/xml/stream/samples/NoAllocEventParser;->printUsage()V

    .line 26
    invoke-static {v0}, Ljava/lang/System;->exit(I)V

    .line 28
    .end local v1    # "aioobe":Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_0
    const-string v0, "javax.xml.stream.XMLInputFactory"

    const-string v1, "com.bea.xml.stream.MXParserFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 30
    const-string v0, "javax.xml.stream.XMLEventFactory"

    const-string v1, "com.bea.xml.stream.EventFactory"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 33
    invoke-static {}, Ljavax/xml/stream/XMLInputFactory;->newInstance()Ljavax/xml/stream/XMLInputFactory;

    move-result-object v0

    .line 34
    .local v0, "factory":Ljavax/xml/stream/XMLInputFactory;
    new-instance v1, Lcom/bea/xml/stream/StaticAllocator;

    invoke-direct {v1}, Lcom/bea/xml/stream/StaticAllocator;-><init>()V

    .line 35
    .local v1, "allocator":Ljavax/xml/stream/util/XMLEventAllocator;
    invoke-virtual {v0, v1}, Ljavax/xml/stream/XMLInputFactory;->setEventAllocator(Ljavax/xml/stream/util/XMLEventAllocator;)V

    .line 36
    new-instance v2, Ljava/io/FileReader;

    sget-object v3, Lcom/bea/xml/stream/samples/NoAllocEventParser;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileReader;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljavax/xml/stream/XMLInputFactory;->createXMLEventReader(Ljava/io/Reader;)Ljavax/xml/stream/XMLEventReader;

    move-result-object v2

    .line 38
    .local v2, "r":Ljavax/xml/stream/XMLEventReader;
    :goto_1
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 39
    invoke-interface {v2}, Ljavax/xml/stream/XMLEventReader;->nextEvent()Ljavax/xml/stream/events/XMLEvent;

    move-result-object v3

    .line 40
    .local v3, "e":Ljavax/xml/stream/events/XMLEvent;
    sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;

    new-instance v5, Ljava/lang/StringBuffer;

    invoke-direct {v5}, Ljava/lang/StringBuffer;-><init>()V

    const-string v6, "ID:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v5

    const-string v6, "]"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 41
    .end local v3    # "e":Ljavax/xml/stream/events/XMLEvent;
    goto :goto_1

    .line 42
    :cond_0
    return-void
.end method

.method private static printUsage()V
    .locals 2

    .line 18
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    const-string/jumbo v1, "usage: java com.bea.xml.stream.samples.EventParse <xmlfile>"

    invoke-virtual {v0, v1}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 19
    return-void
.end method
