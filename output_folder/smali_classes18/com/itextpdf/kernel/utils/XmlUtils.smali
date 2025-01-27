.class final Lcom/itextpdf/kernel/utils/XmlUtils;
.super Ljava/lang/Object;
.source "XmlUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/kernel/utils/XmlUtils$SafeEmptyEntityResolver;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static compareXmls(Ljava/io/InputStream;Ljava/io/InputStream;)Z
    .locals 5
    .param p0, "xml1"    # Ljava/io/InputStream;
    .param p1, "xml2"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 81
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 82
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 83
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setCoalescing(Z)V

    .line 84
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringElementContentWhitespace(Z)V

    .line 85
    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setIgnoringComments(Z)V

    .line 86
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 87
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lcom/itextpdf/kernel/utils/XmlUtils$SafeEmptyEntityResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/utils/XmlUtils$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/kernel/utils/XmlUtils$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 89
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 90
    .local v2, "doc1":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 92
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    .line 93
    .local v3, "doc2":Lorg/w3c/dom/Document;
    invoke-interface {v3}, Lorg/w3c/dom/Document;->normalizeDocument()V

    .line 95
    invoke-interface {v3, v2}, Lorg/w3c/dom/Document;->isEqualNode(Lorg/w3c/dom/Node;)Z

    move-result v4

    return v4
.end method

.method public static initNewXmlDocument()Lorg/w3c/dom/Document;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 99
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public static writeXmlDocToStream(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "xmlReport"    # Lorg/w3c/dom/Document;
    .param p1, "stream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 67
    const-string v0, ""

    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v1

    .line 69
    .local v1, "tFactory":Ljavax/xml/transform/TransformerFactory;
    :try_start_0
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 70
    const-string v2, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-virtual {v1, v2, v0}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 71
    :catch_0
    move-exception v0

    :goto_0
    nop

    .line 72
    invoke-virtual {v1}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v0

    .line 73
    .local v0, "transformer":Ljavax/xml/transform/Transformer;
    const-string v2, "indent"

    const-string/jumbo v3, "yes"

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 74
    const-string/jumbo v2, "{http://xml.apache.org/xslt}indent-amount"

    const-string v3, "0"

    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->setOutputProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 75
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 76
    .local v2, "source":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 77
    .local v3, "result":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v0, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 78
    return-void
.end method
