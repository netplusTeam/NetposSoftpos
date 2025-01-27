.class public Lcom/solab/iso8583/parse/ConfigParser;
.super Ljava/lang/Object;
.source "ConfigParser.java"


# static fields
.field private static final log:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 55
    const-class v0, Lcom/solab/iso8583/parse/ConfigParser;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 53
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lorg/slf4j/Logger;
    .locals 1

    .line 53
    sget-object v0, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    return-object v0
.end method

.method public static configureFromClasspathConfig(Lcom/solab/iso8583/MessageFactory;Ljava/lang/String;)V
    .locals 3
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 472
    .local p0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    .line 473
    .local v0, "ins":Ljava/io/InputStream;
    if-eqz v0, :cond_0

    .line 474
    :try_start_0
    sget-object v1, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v2, "ISO8583 Parsing config from classpath file {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 475
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v1}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V

    goto :goto_0

    .line 477
    :cond_0
    sget-object v1, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v2, "ISO8583 File not found in classpath: {}"

    invoke-interface {v1, v2, p1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 479
    :goto_0
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 480
    .end local v0    # "ins":Ljava/io/InputStream;
    :cond_1
    return-void

    .line 472
    .restart local v0    # "ins":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v1
.end method

.method public static configureFromDefault(Lcom/solab/iso8583/MessageFactory;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 451
    .local p0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const-string v1, "j8583.xml"

    invoke-virtual {v0, v1}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v0

    if-nez v0, :cond_0

    .line 452
    sget-object v0, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v1, "ISO8583 config file j8583.xml not found!"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_0

    .line 454
    :cond_0
    invoke-static {p0, v1}, Lcom/solab/iso8583/parse/ConfigParser;->configureFromClasspathConfig(Lcom/solab/iso8583/MessageFactory;Ljava/lang/String;)V

    .line 456
    :goto_0
    return-void
.end method

.method public static configureFromReader(Lcom/solab/iso8583/MessageFactory;Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;",
            "Ljava/io/Reader;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 485
    .local p0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {p0, v0}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V

    .line 486
    return-void
.end method

.method public static configureFromUrl(Lcom/solab/iso8583/MessageFactory;Ljava/net/URL;)V
    .locals 3
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;",
            "Ljava/net/URL;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    .local p0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-virtual {p1}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v0

    .line 463
    .local v0, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {p0, v1}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 464
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 465
    .end local v0    # "stream":Ljava/io/InputStream;
    :cond_0
    return-void

    .line 462
    .restart local v0    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v1
.end method

.method public static createDefault()Lcom/solab/iso8583/MessageFactory;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 73
    const-class v0, Lcom/solab/iso8583/MessageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0}, Lcom/solab/iso8583/parse/ConfigParser;->createDefault(Ljava/lang/ClassLoader;)Lcom/solab/iso8583/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public static createDefault(Ljava/lang/ClassLoader;)Lcom/solab/iso8583/MessageFactory;
    .locals 2
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            ")",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    const-string v0, "j8583.xml"

    invoke-virtual {p0, v0}, Ljava/lang/ClassLoader;->getResource(Ljava/lang/String;)Ljava/net/URL;

    move-result-object v1

    if-nez v1, :cond_0

    .line 62
    sget-object v0, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v1, "ISO8583 ConfigParser cannot find j8583.xml, returning empty message factory"

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 63
    new-instance v0, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v0}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    return-object v0

    .line 65
    :cond_0
    invoke-static {p0, v0}, Lcom/solab/iso8583/parse/ConfigParser;->createFromClasspathConfig(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/solab/iso8583/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public static createFromClasspathConfig(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/solab/iso8583/MessageFactory;
    .locals 4
    .param p0, "loader"    # Ljava/lang/ClassLoader;
    .param p1, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/lang/String;",
            ")",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 86
    new-instance v0, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v0}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    .line 87
    .local v0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<Lcom/solab/iso8583/IsoMessage;>;"
    invoke-virtual {p0, p1}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 88
    .local v1, "ins":Ljava/io/InputStream;
    if-eqz v1, :cond_0

    .line 89
    :try_start_0
    sget-object v2, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v3, "ISO8583 Parsing config from classpath file {}"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Object;)V

    .line 90
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V

    goto :goto_0

    .line 92
    :cond_0
    sget-object v2, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v3, "ISO8583 File not found in classpath: {}"

    invoke-interface {v2, v3, p1}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 94
    :goto_0
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 95
    .end local v1    # "ins":Ljava/io/InputStream;
    :cond_1
    return-object v0

    .line 87
    .restart local v1    # "ins":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_2
    :goto_1
    throw v2
.end method

.method public static createFromClasspathConfig(Ljava/lang/String;)Lcom/solab/iso8583/MessageFactory;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 80
    const-class v0, Lcom/solab/iso8583/MessageFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/solab/iso8583/parse/ConfigParser;->createFromClasspathConfig(Ljava/lang/ClassLoader;Ljava/lang/String;)Lcom/solab/iso8583/MessageFactory;

    move-result-object v0

    return-object v0
.end method

.method public static createFromReader(Ljava/io/Reader;)Lcom/solab/iso8583/MessageFactory;
    .locals 2
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Reader;",
            ")",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 109
    new-instance v0, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v0}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    .line 110
    .local v0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<Lcom/solab/iso8583/IsoMessage;>;"
    new-instance v1, Lorg/xml/sax/InputSource;

    invoke-direct {v1, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v0, v1}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V

    .line 111
    return-object v0
.end method

.method public static createFromUrl(Ljava/net/URL;)Lcom/solab/iso8583/MessageFactory;
    .locals 4
    .param p0, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            ")",
            "Lcom/solab/iso8583/MessageFactory<",
            "Lcom/solab/iso8583/IsoMessage;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 100
    new-instance v0, Lcom/solab/iso8583/MessageFactory;

    invoke-direct {v0}, Lcom/solab/iso8583/MessageFactory;-><init>()V

    .line 101
    .local v0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<Lcom/solab/iso8583/IsoMessage;>;"
    invoke-virtual {p0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;

    move-result-object v1

    .line 102
    .local v1, "stream":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-direct {v2, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0, v2}, Lcom/solab/iso8583/parse/ConfigParser;->parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 103
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 104
    .end local v1    # "stream":Ljava/io/InputStream;
    :cond_0
    return-object v0

    .line 101
    .restart local v1    # "stream":Ljava/io/InputStream;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_1
    :goto_0
    throw v2
.end method

.method private static getDirectChildrenByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .param p0, "elem"    # Lorg/w3c/dom/Element;
    .param p1, "tagName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Element;",
            ">;"
        }
    .end annotation

    .line 396
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 397
    .local v0, "childElementsByTagName":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 398
    .local v1, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 399
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 400
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    check-cast v3, Lorg/w3c/dom/Element;

    .line 401
    .local v3, "childElem":Lorg/w3c/dom/Element;
    invoke-interface {v3}, Lorg/w3c/dom/Element;->getTagName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 402
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 398
    .end local v3    # "childElem":Lorg/w3c/dom/Element;
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 406
    .end local v2    # "i":I
    :cond_1
    return-object v0
.end method

.method protected static getParser(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;)Lcom/solab/iso8583/parse/FieldParseInfo;
    .locals 8
    .param p0, "f"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lorg/w3c/dom/Element;",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;)",
            "Lcom/solab/iso8583/parse/FieldParseInfo;"
        }
    .end annotation

    .line 309
    .local p1, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    const-string v0, "type"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/solab/iso8583/IsoType;->valueOf(Ljava/lang/String;)Lcom/solab/iso8583/IsoType;

    move-result-object v0

    .line 310
    .local v0, "itype":Lcom/solab/iso8583/IsoType;
    const/4 v1, 0x0

    .line 311
    .local v1, "length":I
    const-string v2, "length"

    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 312
    invoke-interface {p0, v2}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 314
    :cond_0
    invoke-virtual {p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/solab/iso8583/parse/FieldParseInfo;->getInstance(Lcom/solab/iso8583/IsoType;ILjava/lang/String;)Lcom/solab/iso8583/parse/FieldParseInfo;

    move-result-object v2

    .line 315
    .local v2, "fpi":Lcom/solab/iso8583/parse/FieldParseInfo;
    const-string v3, "field"

    invoke-interface {p0, v3}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 316
    .local v3, "subs":Lorg/w3c/dom/NodeList;
    if-eqz v3, :cond_3

    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-lez v4, :cond_3

    .line 317
    new-instance v4, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-direct {v4}, Lcom/solab/iso8583/codecs/CompositeField;-><init>()V

    .line 318
    .local v4, "combo":Lcom/solab/iso8583/codecs/CompositeField;
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_0
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 319
    invoke-interface {v3, v5}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    check-cast v6, Lorg/w3c/dom/Element;

    .line 320
    .local v6, "sf":Lorg/w3c/dom/Element;
    invoke-interface {v6}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v7

    if-ne v7, p0, :cond_1

    .line 321
    invoke-static {v6, p1}, Lcom/solab/iso8583/parse/ConfigParser;->getParser(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;)Lcom/solab/iso8583/parse/FieldParseInfo;

    move-result-object v7

    invoke-virtual {v4, v7}, Lcom/solab/iso8583/codecs/CompositeField;->addParser(Lcom/solab/iso8583/parse/FieldParseInfo;)Lcom/solab/iso8583/codecs/CompositeField;

    .line 318
    .end local v6    # "sf":Lorg/w3c/dom/Element;
    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 324
    .end local v5    # "i":I
    :cond_2
    invoke-virtual {v2, v4}, Lcom/solab/iso8583/parse/FieldParseInfo;->setDecoder(Lcom/solab/iso8583/CustomField;)V

    .line 326
    .end local v4    # "combo":Lcom/solab/iso8583/codecs/CompositeField;
    :cond_3
    const-string v4, "tz"

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_4

    instance-of v5, v2, Lcom/solab/iso8583/parse/DateTimeParseInfo;

    if-eqz v5, :cond_4

    .line 327
    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v4

    .line 328
    .local v4, "tz":Ljava/util/TimeZone;
    move-object v5, v2

    check-cast v5, Lcom/solab/iso8583/parse/DateTimeParseInfo;

    invoke-virtual {v5, v4}, Lcom/solab/iso8583/parse/DateTimeParseInfo;->setTimeZone(Ljava/util/TimeZone;)V

    .line 330
    .end local v4    # "tz":Ljava/util/TimeZone;
    :cond_4
    return-object v2
.end method

.method protected static getTemplateField(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;Z)Lcom/solab/iso8583/IsoValue;
    .locals 12
    .param p0, "f"    # Lorg/w3c/dom/Element;
    .param p2, "toplevel"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lorg/w3c/dom/Element;",
            "Lcom/solab/iso8583/MessageFactory<",
            "TM;>;Z)",
            "Lcom/solab/iso8583/IsoValue<",
            "*>;"
        }
    .end annotation

    .line 254
    .local p1, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TM;>;"
    const-string v0, "num"

    invoke-interface {p0, v0}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    .line 255
    .local v0, "num":I
    const-string v1, "type"

    invoke-interface {p0, v1}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 256
    .local v1, "typedef":Ljava/lang/String;
    const-string v2, "exclude"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 257
    return-object v3

    .line 259
    :cond_0
    const/4 v2, 0x0

    .line 260
    .local v2, "length":I
    const-string v4, "length"

    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-lez v5, :cond_1

    .line 261
    invoke-interface {p0, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 263
    :cond_1
    invoke-static {v1}, Lcom/solab/iso8583/IsoType;->valueOf(Ljava/lang/String;)Lcom/solab/iso8583/IsoType;

    move-result-object v4

    .line 264
    .local v4, "itype":Lcom/solab/iso8583/IsoType;
    const-string v5, "field"

    invoke-interface {p0, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 265
    .local v5, "subs":Lorg/w3c/dom/NodeList;
    const/4 v6, 0x0

    const-string v7, "tz"

    if-eqz v5, :cond_6

    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-lez v8, :cond_6

    .line 267
    new-instance v3, Lcom/solab/iso8583/codecs/CompositeField;

    invoke-direct {v3}, Lcom/solab/iso8583/codecs/CompositeField;-><init>()V

    .line 268
    .local v3, "cf":Lcom/solab/iso8583/codecs/CompositeField;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_0
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 269
    invoke-interface {v5, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 270
    .local v9, "sub":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v10

    if-ne v10, p0, :cond_2

    .line 271
    invoke-static {v9, p1, v6}, Lcom/solab/iso8583/parse/ConfigParser;->getTemplateField(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v10

    .line 272
    .local v10, "sv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v10, :cond_2

    .line 273
    invoke-virtual {p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 274
    invoke-virtual {v3, v10}, Lcom/solab/iso8583/codecs/CompositeField;->addValue(Lcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/codecs/CompositeField;

    .line 268
    .end local v9    # "sub":Lorg/w3c/dom/Element;
    .end local v10    # "sv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 278
    .end local v8    # "j":I
    :cond_3
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v6

    if-eqz v6, :cond_4

    new-instance v6, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v6, v4, v3, v2, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_1

    .line 279
    :cond_4
    new-instance v6, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v6, v4, v3, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    :goto_1
    nop

    .line 280
    .local v6, "rv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 281
    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 282
    .local v7, "tz":Ljava/util/TimeZone;
    invoke-virtual {v6, v7}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    .line 284
    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_5
    return-object v6

    .line 287
    .end local v3    # "cf":Lcom/solab/iso8583/codecs/CompositeField;
    .end local v6    # "rv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_6
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-nez v8, :cond_7

    .line 288
    const-string v6, ""

    .local v6, "v":Ljava/lang/String;
    goto :goto_2

    .line 290
    .end local v6    # "v":Ljava/lang/String;
    :cond_7
    invoke-interface {p0}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v8

    invoke-interface {v8, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 292
    .restart local v6    # "v":Ljava/lang/String;
    :goto_2
    if-eqz p2, :cond_8

    invoke-virtual {p1, v0}, Lcom/solab/iso8583/MessageFactory;->getCustomField(I)Lcom/solab/iso8583/CustomField;

    move-result-object v3

    .line 294
    .local v3, "cf":Lcom/solab/iso8583/CustomField;, "Lcom/solab/iso8583/CustomField<Ljava/lang/Object;>;"
    :cond_8
    if-nez v3, :cond_a

    .line 295
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v8

    if-eqz v8, :cond_9

    new-instance v8, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v8, v4, v6, v2}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;I)V

    goto :goto_3

    :cond_9
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    invoke-direct {v8, v4, v6}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;)V

    .local v8, "rv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :goto_3
    goto :goto_5

    .line 297
    .end local v8    # "rv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_a
    invoke-virtual {v4}, Lcom/solab/iso8583/IsoType;->needsLength()Z

    move-result v8

    if-eqz v8, :cond_b

    new-instance v8, Lcom/solab/iso8583/IsoValue;

    invoke-interface {v3, v6}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v8, v4, v9, v2, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;ILcom/solab/iso8583/CustomFieldEncoder;)V

    goto :goto_4

    .line 298
    :cond_b
    new-instance v8, Lcom/solab/iso8583/IsoValue;

    invoke-interface {v3, v6}, Lcom/solab/iso8583/CustomField;->decodeField(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    invoke-direct {v8, v4, v9, v3}, Lcom/solab/iso8583/IsoValue;-><init>(Lcom/solab/iso8583/IsoType;Ljava/lang/Object;Lcom/solab/iso8583/CustomFieldEncoder;)V

    :goto_4
    nop

    .line 300
    .restart local v8    # "rv":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :goto_5
    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->hasAttribute(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 301
    invoke-interface {p0, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v7

    .line 302
    .restart local v7    # "tz":Ljava/util/TimeZone;
    invoke-virtual {v8, v7}, Lcom/solab/iso8583/IsoValue;->setTimeZone(Ljava/util/TimeZone;)V

    .line 304
    .end local v7    # "tz":Ljava/util/TimeZone;
    :cond_c
    return-object v8
.end method

.method protected static parse(Lcom/solab/iso8583/MessageFactory;Lorg/xml/sax/InputSource;)V
    .locals 6
    .param p1, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;",
            "Lorg/xml/sax/InputSource;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 414
    .local p0, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 415
    .local v0, "docfact":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 416
    .local v1, "docb":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v2, 0x0

    .line 418
    .local v2, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object v1, v3

    .line 419
    new-instance v3, Lcom/solab/iso8583/parse/ConfigParser$1;

    invoke-direct {v3}, Lcom/solab/iso8583/parse/ConfigParser$1;-><init>()V

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 434
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v3

    .line 438
    nop

    .line 439
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 441
    .local v3, "root":Lorg/w3c/dom/Element;
    const-string v4, "header"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/solab/iso8583/parse/ConfigParser;->parseHeaders(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V

    .line 442
    const-string v4, "template"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/solab/iso8583/parse/ConfigParser;->parseTemplates(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V

    .line 444
    const-string v4, "parse"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    invoke-static {v4, p0}, Lcom/solab/iso8583/parse/ConfigParser;->parseGuides(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V

    .line 445
    return-void

    .line 435
    .end local v3    # "root":Lorg/w3c/dom/Element;
    :catch_0
    move-exception v3

    goto :goto_0

    :catch_1
    move-exception v3

    .line 436
    .local v3, "ex":Ljava/lang/Exception;
    :goto_0
    sget-object v4, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    const-string v5, "ISO8583 Cannot parse XML configuration"

    invoke-interface {v4, v5, v3}, Lorg/slf4j/Logger;->error(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 437
    return-void
.end method

.method protected static parseGuides(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V
    .locals 21
    .param p0, "nodes"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lorg/w3c/dom/NodeList;",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 335
    .local p1, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 336
    .local v1, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 337
    .local v2, "guides":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    const-string v5, "num"

    const-string v6, "field"

    const/4 v7, -0x1

    const-string v8, "extends"

    const-string v9, "type"

    if-ge v3, v4, :cond_5

    .line 338
    move-object/from16 v4, p0

    invoke-interface {v4, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 339
    .local v10, "elem":Lorg/w3c/dom/Element;
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v11

    .line 340
    .local v11, "type":I
    if-eq v11, v7, :cond_4

    .line 343
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_1

    .line 344
    if-nez v1, :cond_0

    .line 345
    new-instance v5, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    sub-int/2addr v6, v3

    invoke-direct {v5, v6}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v5

    .line 347
    :cond_0
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 348
    goto :goto_2

    .line 350
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 351
    .local v7, "parseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    invoke-interface {v10, v6}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 352
    .local v6, "fields":Lorg/w3c/dom/NodeList;
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_1
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v8, v9, :cond_3

    .line 353
    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 354
    .local v9, "f":Lorg/w3c/dom/Element;
    invoke-interface {v9}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    if-ne v12, v10, :cond_2

    .line 355
    invoke-interface {v9, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 356
    .local v12, "num":I
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-static {v9, v0}, Lcom/solab/iso8583/parse/ConfigParser;->getParser(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;)Lcom/solab/iso8583/parse/FieldParseInfo;

    move-result-object v14

    invoke-virtual {v7, v13, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 352
    .end local v9    # "f":Lorg/w3c/dom/Element;
    .end local v12    # "num":I
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 359
    .end local v8    # "j":I
    :cond_3
    invoke-virtual {v0, v11, v7}, Lcom/solab/iso8583/MessageFactory;->setParseMap(ILjava/util/Map;)V

    .line 360
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 337
    .end local v6    # "fields":Lorg/w3c/dom/NodeList;
    .end local v7    # "parseMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    .line 341
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    .restart local v11    # "type":I
    :cond_4
    new-instance v5, Ljava/io/IOException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Invalid ISO8583 type for parse guide: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 337
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    :cond_5
    move-object/from16 v4, p0

    .line 362
    .end local v3    # "i":I
    if-eqz v1, :cond_b

    .line 363
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 364
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v11

    .line 365
    .restart local v11    # "type":I
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v12

    .line 366
    .local v12, "ref":I
    if-eq v12, v7, :cond_9

    .line 371
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-virtual {v2, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/HashMap;

    .line 372
    .local v13, "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    if-eqz v13, :cond_8

    .line 377
    new-instance v14, Ljava/util/HashMap;

    invoke-direct {v14}, Ljava/util/HashMap;-><init>()V

    .line 378
    .local v14, "child":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    invoke-virtual {v14, v13}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 379
    invoke-static {v10, v6}, Lcom/solab/iso8583/parse/ConfigParser;->getDirectChildrenByTagName(Lorg/w3c/dom/Element;Ljava/lang/String;)Ljava/util/List;

    move-result-object v15

    .line 380
    .local v15, "fields":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_4
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v17

    if-eqz v17, :cond_7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v17

    move-object/from16 v7, v17

    check-cast v7, Lorg/w3c/dom/Element;

    .line 381
    .local v7, "f":Lorg/w3c/dom/Element;
    invoke-interface {v7, v5}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v17

    .line 382
    .local v17, "num":I
    move-object/from16 v18, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .local v18, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-interface {v7, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    .local v1, "typedef":Ljava/lang/String;
    move-object/from16 v19, v3

    const-string v3, "exclude"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 384
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v14, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_5

    .line 386
    :cond_6
    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    move-object/from16 v20, v1

    .end local v1    # "typedef":Ljava/lang/String;
    .local v20, "typedef":Ljava/lang/String;
    invoke-static {v7, v0}, Lcom/solab/iso8583/parse/ConfigParser;->getParser(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;)Lcom/solab/iso8583/parse/FieldParseInfo;

    move-result-object v1

    invoke-virtual {v14, v3, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 388
    .end local v7    # "f":Lorg/w3c/dom/Element;
    .end local v17    # "num":I
    .end local v20    # "typedef":Ljava/lang/String;
    :goto_5
    move-object/from16 v1, v18

    move-object/from16 v3, v19

    const/4 v7, -0x1

    goto :goto_4

    .line 389
    .end local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .local v1, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_7
    move-object/from16 v18, v1

    move-object/from16 v19, v3

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v0, v11, v14}, Lcom/solab/iso8583/MessageFactory;->setParseMap(ILjava/util/Map;)V

    .line 390
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v2, v1, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    .end local v12    # "ref":I
    .end local v13    # "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    .end local v14    # "child":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    .end local v15    # "fields":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Element;>;"
    move-object/from16 v1, v18

    const/4 v7, -0x1

    goto/16 :goto_3

    .line 373
    .end local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    .restart local v11    # "type":I
    .restart local v12    # "ref":I
    .restart local v13    # "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    :cond_8
    move-object/from16 v18, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Parsing guide "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 374
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " extends nonexistent guide "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 375
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 367
    .end local v13    # "parent":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/Integer;Lcom/solab/iso8583/parse/FieldParseInfo;>;"
    .end local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_9
    move-object/from16 v18, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Message template "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 368
    invoke-interface {v10, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " extends invalid template "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 369
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 363
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    .end local v12    # "ref":I
    .end local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_a
    move-object/from16 v18, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    goto :goto_6

    .line 362
    .end local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_b
    move-object/from16 v18, v1

    .line 393
    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v18    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :goto_6
    return-void
.end method

.method protected static parseHeaders(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V
    .locals 18
    .param p0, "nodes"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lorg/w3c/dom/NodeList;",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 116
    .local p1, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 117
    .local v1, "refs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const/4 v4, 0x2

    const/4 v5, 0x3

    const-string v6, "Invalid type for ISO8583 header: "

    const/4 v7, 0x1

    const/4 v8, 0x0

    const/4 v9, -0x1

    const-string v10, "type"

    const-string v11, "ref"

    if-ge v2, v3, :cond_8

    .line 118
    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 119
    .local v12, "elem":Lorg/w3c/dom/Element;
    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v13

    .line 120
    .local v13, "type":I
    if-eq v13, v9, :cond_7

    .line 123
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    if-eqz v6, :cond_4

    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_2

    .line 132
    :cond_0
    invoke-interface {v12}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v6

    invoke-interface {v6, v8}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v6

    .line 133
    .local v6, "header":Ljava/lang/String;
    const-string v9, "binary"

    invoke-interface {v12, v9}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    const-string v11, "true"

    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    .line 134
    .local v9, "binHeader":Z
    sget-object v11, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v11}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v14

    if-eqz v14, :cond_2

    .line 135
    new-array v5, v5, [Ljava/lang/Object;

    .line 136
    if-eqz v9, :cond_1

    const-string v14, "binary "

    goto :goto_1

    :cond_1
    const-string v14, ""

    :goto_1
    aput-object v14, v5, v8

    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    aput-object v8, v5, v7

    aput-object v6, v5, v4

    .line 135
    const-string v4, "Adding {}ISO8583 header for type {}: {}"

    invoke-interface {v11, v4, v5}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 138
    :cond_2
    if-eqz v9, :cond_3

    .line 139
    invoke-static {v6}, Lcom/solab/iso8583/util/HexCodec;->hexDecode(Ljava/lang/String;)[B

    move-result-object v4

    invoke-virtual {v0, v13, v4}, Lcom/solab/iso8583/MessageFactory;->setBinaryIsoHeader(I[B)V

    goto :goto_3

    .line 141
    :cond_3
    invoke-virtual {v0, v13, v6}, Lcom/solab/iso8583/MessageFactory;->setIsoHeader(ILjava/lang/String;)V

    goto :goto_3

    .line 124
    .end local v6    # "header":Ljava/lang/String;
    .end local v9    # "binHeader":Z
    :cond_4
    :goto_2
    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_6

    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 125
    if-nez v1, :cond_5

    .line 126
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 128
    :cond_5
    invoke-virtual {v1, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 117
    .end local v12    # "elem":Lorg/w3c/dom/Element;
    .end local v13    # "type":I
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 130
    .restart local v12    # "elem":Lorg/w3c/dom/Element;
    .restart local v13    # "type":I
    :cond_6
    new-instance v4, Ljava/io/IOException;

    const-string v5, "Invalid ISO8583 header element"

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 121
    :cond_7
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 117
    .end local v12    # "elem":Lorg/w3c/dom/Element;
    .end local v13    # "type":I
    :cond_8
    move-object/from16 v3, p0

    .line 145
    .end local v2    # "i":I
    if-eqz v1, :cond_e

    .line 146
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/w3c/dom/Element;

    .line 147
    .restart local v12    # "elem":Lorg/w3c/dom/Element;
    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v13

    .line 148
    .restart local v13    # "type":I
    if-eq v13, v9, :cond_d

    .line 152
    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    if-eqz v14, :cond_c

    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/String;->isEmpty()Z

    move-result v14

    if-nez v14, :cond_c

    .line 153
    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    invoke-static {v14}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v14

    .line 154
    .local v14, "t2":I
    if-eq v14, v9, :cond_b

    .line 158
    invoke-virtual {v0, v14}, Lcom/solab/iso8583/MessageFactory;->getIsoHeader(I)Ljava/lang/String;

    move-result-object v15

    .line 159
    .local v15, "h":Ljava/lang/String;
    if-eqz v15, :cond_a

    .line 163
    sget-object v9, Lcom/solab/iso8583/parse/ConfigParser;->log:Lorg/slf4j/Logger;

    invoke-interface {v9}, Lorg/slf4j/Logger;->isTraceEnabled()Z

    move-result v16

    if-eqz v16, :cond_9

    .line 164
    new-array v4, v5, [Ljava/lang/Object;

    .line 165
    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    aput-object v17, v4, v8

    aput-object v15, v4, v7

    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    const/16 v16, 0x2

    aput-object v17, v4, v16

    .line 164
    const-string v5, "Adding ISO8583 header for type {}: {} (copied from {})"

    invoke-interface {v9, v5, v4}, Lorg/slf4j/Logger;->trace(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_5

    .line 163
    :cond_9
    move/from16 v16, v4

    .line 167
    :goto_5
    invoke-virtual {v0, v13, v15}, Lcom/solab/iso8583/MessageFactory;->setIsoHeader(ILjava/lang/String;)V

    goto :goto_6

    .line 160
    :cond_a
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Header def "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " refers to nonexistent header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 155
    .end local v15    # "h":Ljava/lang/String;
    :cond_b
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid type reference "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 156
    invoke-interface {v12, v11}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " for ISO8583 header "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 152
    .end local v14    # "t2":I
    :cond_c
    move/from16 v16, v4

    .line 169
    .end local v12    # "elem":Lorg/w3c/dom/Element;
    .end local v13    # "type":I
    :goto_6
    move/from16 v4, v16

    const/4 v5, 0x3

    const/4 v9, -0x1

    goto/16 :goto_4

    .line 149
    .restart local v12    # "elem":Lorg/w3c/dom/Element;
    .restart local v13    # "type":I
    :cond_d
    new-instance v2, Ljava/io/IOException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 150
    invoke-interface {v12, v10}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 171
    .end local v12    # "elem":Lorg/w3c/dom/Element;
    .end local v13    # "type":I
    :cond_e
    return-void
.end method

.method protected static parseTemplates(Lorg/w3c/dom/NodeList;Lcom/solab/iso8583/MessageFactory;)V
    .locals 18
    .param p0, "nodes"    # Lorg/w3c/dom/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lcom/solab/iso8583/IsoMessage;",
            ">(",
            "Lorg/w3c/dom/NodeList;",
            "Lcom/solab/iso8583/MessageFactory<",
            "TT;>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 175
    .local p1, "mfact":Lcom/solab/iso8583/MessageFactory;, "Lcom/solab/iso8583/MessageFactory<TT;>;"
    move-object/from16 v0, p1

    const/4 v1, 0x0

    .line 176
    .local v1, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    const-string v4, "num"

    const-string v5, "field"

    const/4 v6, -0x1

    const-string v7, "extends"

    const-string v8, "type"

    const/4 v9, 0x1

    if-ge v2, v3, :cond_6

    .line 177
    move-object/from16 v3, p0

    invoke-interface {v3, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 178
    .local v10, "elem":Lorg/w3c/dom/Element;
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v11

    .line 179
    .local v11, "type":I
    if-eq v11, v6, :cond_5

    .line 182
    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_1

    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_1

    .line 183
    if-nez v1, :cond_0

    .line 184
    new-instance v4, Ljava/util/ArrayList;

    invoke-interface/range {p0 .. p0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v5

    sub-int/2addr v5, v2

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v4

    .line 186
    :cond_0
    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    goto :goto_2

    .line 190
    :cond_1
    new-instance v6, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v6}, Lcom/solab/iso8583/IsoMessage;-><init>()V

    .line 191
    .local v6, "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    invoke-virtual {v6, v11}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 192
    invoke-virtual/range {p1 .. p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 193
    invoke-interface {v10, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v5

    .line 194
    .local v5, "fields":Lorg/w3c/dom/NodeList;
    const/4 v7, 0x0

    .local v7, "j":I
    :goto_1
    invoke-interface {v5}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v8

    if-ge v7, v8, :cond_4

    .line 195
    invoke-interface {v5, v7}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    check-cast v8, Lorg/w3c/dom/Element;

    .line 196
    .local v8, "f":Lorg/w3c/dom/Element;
    invoke-interface {v8}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v12

    if-ne v12, v10, :cond_3

    .line 197
    invoke-interface {v8, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v12

    .line 198
    .local v12, "num":I
    invoke-static {v8, v0, v9}, Lcom/solab/iso8583/parse/ConfigParser;->getTemplateField(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v13

    .line 199
    .local v13, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v13, :cond_2

    .line 200
    invoke-virtual/range {p1 .. p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v14

    invoke-virtual {v13, v14}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 202
    :cond_2
    invoke-virtual {v6, v12, v13}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 194
    .end local v8    # "f":Lorg/w3c/dom/Element;
    .end local v12    # "num":I
    .end local v13    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 205
    .end local v7    # "j":I
    :cond_4
    invoke-virtual {v0, v6}, Lcom/solab/iso8583/MessageFactory;->addMessageTemplate(Lcom/solab/iso8583/IsoMessage;)V

    .line 176
    .end local v5    # "fields":Lorg/w3c/dom/NodeList;
    .end local v6    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 180
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    .restart local v11    # "type":I
    :cond_5
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid ISO8583 type for template: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 176
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    :cond_6
    move-object/from16 v3, p0

    .line 207
    .end local v2    # "i":I
    if-eqz v1, :cond_f

    .line 208
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_e

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/w3c/dom/Element;

    .line 209
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    invoke-static {v11}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v11

    .line 210
    .restart local v11    # "type":I
    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    invoke-static {v12}, Lcom/solab/iso8583/parse/ConfigParser;->parseType(Ljava/lang/String;)I

    move-result v12

    .line 211
    .local v12, "ref":I
    const-string v13, "Message template "

    if-eq v12, v6, :cond_d

    .line 216
    invoke-virtual {v0, v12}, Lcom/solab/iso8583/MessageFactory;->getMessageTemplate(I)Lcom/solab/iso8583/IsoMessage;

    move-result-object v14

    .line 217
    .local v14, "tref":Lcom/solab/iso8583/IsoMessage;
    if-eqz v14, :cond_c

    .line 223
    new-instance v13, Lcom/solab/iso8583/IsoMessage;

    invoke-direct {v13}, Lcom/solab/iso8583/IsoMessage;-><init>()V

    .line 224
    .local v13, "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    invoke-virtual {v13, v11}, Lcom/solab/iso8583/IsoMessage;->setType(I)V

    .line 225
    invoke-virtual/range {p1 .. p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v13, v15}, Lcom/solab/iso8583/IsoMessage;->setCharacterEncoding(Ljava/lang/String;)V

    .line 226
    const/4 v15, 0x2

    .local v15, "i":I
    :goto_4
    const/16 v6, 0x80

    if-gt v15, v6, :cond_8

    .line 227
    invoke-virtual {v14, v15}, Lcom/solab/iso8583/IsoMessage;->hasField(I)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 228
    invoke-virtual {v14, v15}, Lcom/solab/iso8583/IsoMessage;->getField(I)Lcom/solab/iso8583/IsoValue;

    move-result-object v6

    invoke-virtual {v6}, Lcom/solab/iso8583/IsoValue;->clone()Lcom/solab/iso8583/IsoValue;

    move-result-object v6

    invoke-virtual {v13, v15, v6}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 226
    :cond_7
    add-int/lit8 v15, v15, 0x1

    const/4 v6, -0x1

    goto :goto_4

    .line 231
    .end local v15    # "i":I
    :cond_8
    invoke-interface {v10, v5}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v6

    .line 232
    .local v6, "fields":Lorg/w3c/dom/NodeList;
    const/4 v15, 0x0

    .local v15, "j":I
    :goto_5
    invoke-interface {v6}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v9

    if-ge v15, v9, :cond_b

    .line 233
    invoke-interface {v6, v15}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v9

    check-cast v9, Lorg/w3c/dom/Element;

    .line 234
    .local v9, "f":Lorg/w3c/dom/Element;
    invoke-interface {v9, v4}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    move-object/from16 v17, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .local v17, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    .line 235
    .local v1, "num":I
    move-object/from16 v16, v2

    invoke-interface {v9}, Lorg/w3c/dom/Element;->getParentNode()Lorg/w3c/dom/Node;

    move-result-object v2

    if-ne v2, v10, :cond_a

    .line 236
    const/4 v2, 0x1

    invoke-static {v9, v0, v2}, Lcom/solab/iso8583/parse/ConfigParser;->getTemplateField(Lorg/w3c/dom/Element;Lcom/solab/iso8583/MessageFactory;Z)Lcom/solab/iso8583/IsoValue;

    move-result-object v3

    .line 237
    .local v3, "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    if-eqz v3, :cond_9

    .line 238
    invoke-virtual/range {p1 .. p1}, Lcom/solab/iso8583/MessageFactory;->getCharacterEncoding()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Lcom/solab/iso8583/IsoValue;->setCharacterEncoding(Ljava/lang/String;)V

    .line 240
    :cond_9
    invoke-virtual {v13, v1, v3}, Lcom/solab/iso8583/IsoMessage;->setField(ILcom/solab/iso8583/IsoValue;)Lcom/solab/iso8583/IsoMessage;

    .line 232
    .end local v1    # "num":I
    .end local v3    # "v":Lcom/solab/iso8583/IsoValue;, "Lcom/solab/iso8583/IsoValue<*>;"
    .end local v9    # "f":Lorg/w3c/dom/Element;
    :cond_a
    add-int/lit8 v15, v15, 0x1

    const/4 v9, 0x1

    move-object/from16 v3, p0

    move-object/from16 v2, v16

    move-object/from16 v1, v17

    goto :goto_5

    .end local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .local v1, "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_b
    move-object/from16 v17, v1

    move-object/from16 v16, v2

    .line 243
    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .end local v15    # "j":I
    .restart local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    invoke-virtual {v0, v13}, Lcom/solab/iso8583/MessageFactory;->addMessageTemplate(Lcom/solab/iso8583/IsoMessage;)V

    .line 244
    .end local v6    # "fields":Lorg/w3c/dom/NodeList;
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    .end local v12    # "ref":I
    .end local v13    # "m":Lcom/solab/iso8583/IsoMessage;, "TT;"
    .end local v14    # "tref":Lcom/solab/iso8583/IsoMessage;
    const/4 v6, -0x1

    const/4 v9, 0x1

    move-object/from16 v3, p0

    goto/16 :goto_3

    .line 218
    .end local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v10    # "elem":Lorg/w3c/dom/Element;
    .restart local v11    # "type":I
    .restart local v12    # "ref":I
    .restart local v14    # "tref":Lcom/solab/iso8583/IsoMessage;
    :cond_c
    move-object/from16 v17, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 219
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extends nonexistent template "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 220
    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    .end local v14    # "tref":Lcom/solab/iso8583/IsoMessage;
    .end local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_d
    move-object/from16 v17, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 213
    invoke-interface {v10, v8}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " extends invalid template "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 214
    invoke-interface {v10, v7}, Lorg/w3c/dom/Element;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 208
    .end local v10    # "elem":Lorg/w3c/dom/Element;
    .end local v11    # "type":I
    .end local v12    # "ref":I
    .end local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_e
    move-object/from16 v17, v1

    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    goto :goto_6

    .line 207
    .end local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :cond_f
    move-object/from16 v17, v1

    .line 246
    .end local v1    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    .restart local v17    # "subs":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/w3c/dom/Element;>;"
    :goto_6
    return-void
.end method

.method private static parseType(Ljava/lang/String;)I
    .locals 4
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 491
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x2

    rem-int/2addr v0, v1

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 492
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 494
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v3, 0x4

    if-eq v0, v3, :cond_1

    .line 495
    const/4 v0, -0x1

    return v0

    .line 497
    :cond_1
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    add-int/lit8 v0, v0, -0x30

    shl-int/lit8 v0, v0, 0xc

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    add-int/lit8 v2, v2, -0x30

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v0, v2

    .line 498
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    shl-int/2addr v1, v3

    or-int/2addr v0, v1

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    add-int/lit8 v1, v1, -0x30

    or-int/2addr v0, v1

    .line 497
    return v0
.end method
