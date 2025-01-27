.class public Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;
.super Ljava/lang/Object;
.source "XMPMetaParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser$SafeEmptyEntityResolver;
    }
.end annotation


# static fields
.field private static final XMP_RDF:Ljava/lang/Object;

.field private static factory:Ljavax/xml/parsers/DocumentBuilderFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    .line 72
    invoke-static {}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 78
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 80
    return-void
.end method

.method private static createDocumentBuilderFactory()Ljavax/xml/parsers/DocumentBuilderFactory;
    .locals 3

    .line 417
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 418
    .local v0, "factory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 419
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 425
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/feature/secure-processing"

    invoke-virtual {v0, v2, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setFeature(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 431
    goto :goto_0

    .line 427
    :catch_0
    move-exception v1

    .line 432
    :goto_0
    return-object v0
.end method

.method private static findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;
    .locals 6
    .param p0, "root"    # Lorg/w3c/dom/Node;
    .param p1, "xmpmetaRequired"    # Z
    .param p2, "result"    # [Ljava/lang/Object;

    .line 348
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 349
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_6

    .line 351
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object p0

    .line 352
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x7

    if-ne v3, v2, :cond_0

    move-object v2, p0

    check-cast v2, Lorg/w3c/dom/ProcessingInstruction;

    .line 353
    invoke-interface {v2}, Lorg/w3c/dom/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v4, "xpacket"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 357
    if-eqz p2, :cond_5

    .line 359
    const/4 v2, 0x2

    move-object v3, p0

    check-cast v3, Lorg/w3c/dom/ProcessingInstruction;

    invoke-interface {v3}, Lorg/w3c/dom/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v3

    aput-object v3, p2, v2

    goto :goto_1

    .line 362
    :cond_0
    const/4 v2, 0x3

    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v4

    if-eq v2, v4, :cond_5

    .line 363
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    if-eq v3, v2, :cond_5

    .line 365
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    .line 366
    .local v2, "rootNS":Ljava/lang/String;
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v3

    .line 367
    .local v3, "rootLocal":Ljava/lang/String;
    nop

    .line 369
    const-string/jumbo v4, "xmpmeta"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, 0x0

    if-nez v4, :cond_1

    .line 370
    const-string/jumbo v4, "xapmeta"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    nop

    .line 372
    const-string v4, "adobe:ns:meta/"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 376
    invoke-static {p0, v5, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    return-object v4

    .line 378
    :cond_2
    if-nez p1, :cond_4

    .line 379
    const-string v4, "RDF"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 380
    const-string v4, "http://www.w3.org/1999/02/22-rdf-syntax-ns#"

    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 382
    if-eqz p2, :cond_3

    .line 384
    aput-object p0, p2, v5

    .line 385
    sget-object v4, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    const/4 v5, 0x1

    aput-object v4, p2, v5

    .line 387
    :cond_3
    return-object p2

    .line 392
    :cond_4
    invoke-static {p0, p1, p2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    .line 393
    .local v4, "newResult":[Ljava/lang/Object;
    if-eqz v4, :cond_5

    .line 395
    return-object v4

    .line 349
    .end local v2    # "rootNS":Ljava/lang/String;
    .end local v3    # "rootLocal":Ljava/lang/String;
    .end local v4    # "newResult":[Ljava/lang/Object;
    :cond_5
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    .line 406
    .end local v1    # "i":I
    :cond_6
    const/4 v1, 0x0

    return-object v1
.end method

.method public static parse(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;
    .locals 5
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/itextpdf/kernel/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 96
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/ParameterAsserts;->assertNotNull(Ljava/lang/Object;)V

    .line 97
    if-eqz p1, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/itextpdf/kernel/xmp/options/ParseOptions;

    invoke-direct {v0}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;-><init>()V

    :goto_0
    move-object p1, v0

    .line 99
    invoke-static {p0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXml(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    .line 101
    .local v0, "document":Lorg/w3c/dom/Document;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getRequireXMPMeta()Z

    move-result v1

    .line 102
    .local v1, "xmpmetaRequired":Z
    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    .line 103
    .local v2, "result":[Ljava/lang/Object;
    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->findRootNode(Lorg/w3c/dom/Node;Z[Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    .line 105
    if-eqz v2, :cond_2

    const/4 v3, 0x1

    aget-object v3, v2, v3

    sget-object v4, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->XMP_RDF:Ljava/lang/Object;

    if-ne v3, v4, :cond_2

    .line 107
    const/4 v3, 0x0

    aget-object v3, v2, v3

    check-cast v3, Lorg/w3c/dom/Node;

    invoke-static {v3}, Lcom/itextpdf/kernel/xmp/impl/ParseRDF;->parse(Lorg/w3c/dom/Node;)Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    move-result-object v3

    .line 108
    .local v3, "xmp":Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;
    const/4 v4, 0x2

    aget-object v4, v2, v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;->setPacketHeader(Ljava/lang/String;)V

    .line 111
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getOmitNormalization()Z

    move-result v4

    if-nez v4, :cond_1

    .line 113
    invoke-static {v3, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPNormalizer;->process(Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lcom/itextpdf/kernel/xmp/XMPMeta;

    move-result-object v4

    return-object v4

    .line 117
    :cond_1
    return-object v3

    .line 123
    .end local v3    # "xmp":Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;
    :cond_2
    new-instance v3, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;

    invoke-direct {v3}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaImpl;-><init>()V

    return-object v3
.end method

.method private static parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "source"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 293
    :try_start_0
    sget-object v0, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->factory:Ljavax/xml/parsers/DocumentBuilderFactory;

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    .line 294
    .local v0, "builder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilder;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 295
    new-instance v2, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser$SafeEmptyEntityResolver;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser$1;)V

    invoke-virtual {v0, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 296
    invoke-virtual {v0, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 307
    .end local v0    # "builder":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v0

    .line 309
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const/16 v2, 0xcc

    const-string v3, "Error reading the XML-file"

    invoke-direct {v1, v3, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 302
    .end local v0    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v0

    .line 304
    .local v0, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const/4 v2, 0x0

    const-string v3, "XML Parser not correctly configured"

    invoke-direct {v1, v3, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1

    .line 298
    .end local v0    # "e":Ljavax/xml/parsers/ParserConfigurationException;
    :catch_2
    move-exception v0

    .line 300
    .local v0, "e":Lorg/xml/sax/SAXException;
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const/16 v2, 0xc9

    const-string v3, "XML parsing failure"

    invoke-direct {v1, v3, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXml(Ljava/lang/Object;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 2
    .param p0, "input"    # Ljava/lang/Object;
    .param p1, "options"    # Lcom/itextpdf/kernel/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 148
    instance-of v0, p0, Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 150
    move-object v0, p0

    check-cast v0, Ljava/io/InputStream;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromInputStream(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 152
    :cond_0
    instance-of v0, p0, [B

    if-eqz v0, :cond_1

    .line 154
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    move-object v1, p0

    check-cast v1, [B

    check-cast v1, [B

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;-><init>([B)V

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 158
    :cond_1
    move-object v0, p0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method private static parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 6
    .param p0, "buffer"    # Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;
    .param p1, "options"    # Lcom/itextpdf/kernel/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 208
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 211
    .local v0, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 213
    :catch_0
    move-exception v1

    .line 215
    .local v1, "e":Lcom/itextpdf/kernel/xmp/XMPException;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-eq v2, v3, :cond_1

    .line 216
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xcc

    if-ne v2, v3, :cond_0

    goto :goto_0

    .line 245
    :cond_0
    throw v1

    .line 218
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 220
    invoke-static {p0}, Lcom/itextpdf/kernel/xmp/impl/Latin1Converter;->convert(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;)Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    move-result-object p0

    .line 223
    :cond_2
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 227
    :try_start_1
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getEncoding()Ljava/lang/String;

    move-result-object v2

    .line 228
    .local v2, "encoding":Ljava/lang/String;
    new-instance v3, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;

    new-instance v4, Ljava/io/InputStreamReader;

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v5

    invoke-direct {v4, v5, v2}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    .line 231
    .local v3, "fixReader":Ljava/io/Reader;
    new-instance v4, Lorg/xml/sax/InputSource;

    invoke-direct {v4, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-static {v4}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v4

    .line 233
    .end local v2    # "encoding":Ljava/lang/String;
    .end local v3    # "fixReader":Ljava/io/Reader;
    :catch_1
    move-exception v2

    .line 236
    .local v2, "e1":Ljava/io/UnsupportedEncodingException;
    new-instance v3, Lcom/itextpdf/kernel/xmp/XMPException;

    const/16 v4, 0x9

    const-string v5, "Unsupported Encoding"

    invoke-direct {v3, v5, v4, v1}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v3

    .line 240
    .end local v2    # "e1":Ljava/io/UnsupportedEncodingException;
    :cond_3
    new-instance v2, Lorg/xml/sax/InputSource;

    invoke-virtual {p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;->getByteStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    move-object v0, v2

    .line 241
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method private static parseXmlFromInputStream(Ljava/io/InputStream;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "stream"    # Ljava/io/InputStream;
    .param p1, "options"    # Lcom/itextpdf/kernel/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 175
    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getAcceptLatin1()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v0

    if-nez v0, :cond_0

    .line 177
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0

    .line 184
    :cond_0
    :try_start_0
    new-instance v0, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;

    invoke-direct {v0, p0}, Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;-><init>(Ljava/io/InputStream;)V

    .line 185
    .local v0, "buffer":Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;
    invoke-static {v0, p1}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseXmlFromBytebuffer(Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 187
    .end local v0    # "buffer":Lcom/itextpdf/kernel/xmp/impl/ByteBuffer;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/kernel/xmp/XMPException;

    const/16 v2, 0xcc

    const-string v3, "Error reading the XML-file"

    invoke-direct {v1, v3, v2, v0}, Lcom/itextpdf/kernel/xmp/XMPException;-><init>(Ljava/lang/String;ILjava/lang/Throwable;)V

    throw v1
.end method

.method private static parseXmlFromString(Ljava/lang/String;Lcom/itextpdf/kernel/xmp/options/ParseOptions;)Lorg/w3c/dom/Document;
    .locals 5
    .param p0, "input"    # Ljava/lang/String;
    .param p1, "options"    # Lcom/itextpdf/kernel/xmp/options/ParseOptions;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/itextpdf/kernel/xmp/XMPException;
        }
    .end annotation

    .line 263
    new-instance v0, Lorg/xml/sax/InputSource;

    new-instance v1, Ljava/io/StringReader;

    invoke-direct {v1, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 266
    .local v0, "source":Lorg/xml/sax/InputSource;
    :try_start_0
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v1
    :try_end_0
    .catch Lcom/itextpdf/kernel/xmp/XMPException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 268
    :catch_0
    move-exception v1

    .line 270
    .local v1, "e":Lcom/itextpdf/kernel/xmp/XMPException;
    invoke-virtual {v1}, Lcom/itextpdf/kernel/xmp/XMPException;->getErrorCode()I

    move-result v2

    const/16 v3, 0xc9

    if-ne v2, v3, :cond_0

    invoke-virtual {p1}, Lcom/itextpdf/kernel/xmp/options/ParseOptions;->getFixControlChars()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 272
    new-instance v2, Lorg/xml/sax/InputSource;

    new-instance v3, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;

    new-instance v4, Ljava/io/StringReader;

    invoke-direct {v4, p0}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/xmp/impl/FixASCIIControlsReader;-><init>(Ljava/io/Reader;)V

    invoke-direct {v2, v3}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    move-object v0, v2

    .line 273
    invoke-static {v0}, Lcom/itextpdf/kernel/xmp/impl/XMPMetaParser;->parseInputSource(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2

    .line 277
    :cond_0
    throw v1
.end method
