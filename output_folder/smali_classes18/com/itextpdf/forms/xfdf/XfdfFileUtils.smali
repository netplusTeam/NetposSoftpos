.class final Lcom/itextpdf/forms/xfdf/XfdfFileUtils;
.super Ljava/lang/Object;
.source "XfdfFileUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/forms/xfdf/XfdfFileUtils$SafeEmptyEntityResolver;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    return-void
.end method

.method static createNewXfdfDocument()Lorg/w3c/dom/Document;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;
        }
    .end annotation

    .line 74
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 75
    .local v0, "documentFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 76
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lcom/itextpdf/forms/xfdf/XfdfFileUtils$SafeEmptyEntityResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/forms/xfdf/XfdfFileUtils$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 77
    invoke-virtual {v1}, Ljavax/xml/parsers/DocumentBuilder;->newDocument()Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method static createXfdfDocumentFromStream(Ljava/io/InputStream;)Lorg/w3c/dom/Document;
    .locals 4
    .param p0, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 85
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 86
    .local v0, "documentFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 87
    .local v1, "documentBuilder":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lcom/itextpdf/forms/xfdf/XfdfFileUtils$SafeEmptyEntityResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/forms/xfdf/XfdfFileUtils$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 88
    invoke-virtual {v1, p0}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v2

    return-object v2
.end method

.method static saveXfdfDocumentToFile(Lorg/w3c/dom/Document;Ljava/io/OutputStream;)V
    .locals 4
    .param p0, "document"    # Lorg/w3c/dom/Document;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/transform/TransformerException;
        }
    .end annotation

    .line 97
    invoke-static {}, Ljavax/xml/transform/TransformerFactory;->newInstance()Ljavax/xml/transform/TransformerFactory;

    move-result-object v0

    .line 98
    .local v0, "transformerFactory":Ljavax/xml/transform/TransformerFactory;
    const-string v1, "http://javax.xml.XMLConstants/feature/secure-processing"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setFeature(Ljava/lang/String;Z)V

    .line 99
    const-string v1, "http://javax.xml.XMLConstants/property/accessExternalDTD"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 100
    const-string v1, "http://javax.xml.XMLConstants/property/accessExternalStylesheet"

    invoke-virtual {v0, v1, v2}, Ljavax/xml/transform/TransformerFactory;->setAttribute(Ljava/lang/String;Ljava/lang/Object;)V

    .line 101
    invoke-virtual {v0}, Ljavax/xml/transform/TransformerFactory;->newTransformer()Ljavax/xml/transform/Transformer;

    move-result-object v1

    .line 102
    .local v1, "transformer":Ljavax/xml/transform/Transformer;
    new-instance v2, Ljavax/xml/transform/dom/DOMSource;

    invoke-direct {v2, p0}, Ljavax/xml/transform/dom/DOMSource;-><init>(Lorg/w3c/dom/Node;)V

    .line 103
    .local v2, "domSource":Ljavax/xml/transform/dom/DOMSource;
    new-instance v3, Ljavax/xml/transform/stream/StreamResult;

    invoke-direct {v3, p1}, Ljavax/xml/transform/stream/StreamResult;-><init>(Ljava/io/OutputStream;)V

    .line 104
    .local v3, "streamResult":Ljavax/xml/transform/stream/StreamResult;
    invoke-virtual {v1, v2, v3}, Ljavax/xml/transform/Transformer;->transform(Ljavax/xml/transform/Source;Ljavax/xml/transform/Result;)V

    .line 105
    return-void
.end method
