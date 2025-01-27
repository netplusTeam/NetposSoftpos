.class public Lorg/jdom2/input/sax/SAXBuilderEngine;
.super Ljava/lang/Object;
.source "SAXBuilderEngine.java"

# interfaces
.implements Lorg/jdom2/input/sax/SAXEngine;


# instance fields
.field private final saxHandler:Lorg/jdom2/input/sax/SAXHandler;

.field private final saxParser:Lorg/xml/sax/XMLReader;

.field private final validating:Z


# direct methods
.method public constructor <init>(Lorg/xml/sax/XMLReader;Lorg/jdom2/input/sax/SAXHandler;Z)V
    .locals 0
    .param p1, "reader"    # Lorg/xml/sax/XMLReader;
    .param p2, "handler"    # Lorg/jdom2/input/sax/SAXHandler;
    .param p3, "validating"    # Z

    .line 121
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 122
    iput-object p1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    .line 123
    iput-object p2, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    .line 124
    iput-boolean p3, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->validating:Z

    .line 125
    return-void
.end method

.method private static fileToURL(Ljava/io/File;)Ljava/net/URL;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/net/MalformedURLException;
        }
    .end annotation

    .line 344
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->toURI()Ljava/net/URI;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/URI;->toURL()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public build(Ljava/io/File;)Lorg/jdom2/Document;
    .locals 3
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 264
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/input/sax/SAXBuilderEngine;->fileToURL(Ljava/io/File;)Ljava/net/URL;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Ljava/net/URL;)Lorg/jdom2/Document;

    move-result-object v0
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 265
    :catch_0
    move-exception v0

    .line 266
    .local v0, "e":Ljava/net/MalformedURLException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Error in building"

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public build(Ljava/io/InputStream;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 253
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/InputStream;Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 2
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 290
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    .line 291
    .local v0, "src":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 292
    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v1

    return-object v1
.end method

.method public build(Ljava/io/Reader;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "characterStream"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 303
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/io/Reader;Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 2
    .param p1, "characterStream"    # Ljava/io/Reader;
    .param p2, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    .line 317
    .local v0, "src":Lorg/xml/sax/InputSource;
    invoke-virtual {v0, p2}, Lorg/xml/sax/InputSource;->setSystemId(Ljava/lang/String;)V

    .line 318
    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v1

    return-object v1
.end method

.method public build(Ljava/lang/String;)Lorg/jdom2/Document;
    .locals 1
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 329
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Ljava/net/URL;)Lorg/jdom2/Document;
    .locals 2
    .param p1, "url"    # Ljava/net/URL;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 277
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-virtual {p1}, Ljava/net/URL;->toExternalForm()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/xml/sax/InputSource;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lorg/jdom2/input/sax/SAXBuilderEngine;->build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;

    move-result-object v0

    return-object v0
.end method

.method public build(Lorg/xml/sax/InputSource;)Lorg/jdom2/Document;
    .locals 7
    .param p1, "in"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;,
            Ljava/io/IOException;
        }
    .end annotation

    .line 217
    :try_start_0
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0, p1}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V

    .line 219
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object v0
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 242
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v1}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    return-object v0

    :catchall_0
    move-exception v0

    goto/16 :goto_0

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, "e":Lorg/xml/sax/SAXException;
    :try_start_1
    new-instance v1, Lorg/jdom2/input/JDOMParseException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Error in building: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/xml/sax/SAXException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v3}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    .end local p1    # "in":Lorg/xml/sax/InputSource;
    throw v1

    .line 220
    .end local v0    # "e":Lorg/xml/sax/SAXException;
    .restart local p1    # "in":Lorg/xml/sax/InputSource;
    :catch_1
    move-exception v0

    .line 221
    .local v0, "e":Lorg/xml/sax/SAXParseException;
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v1}, Lorg/jdom2/input/sax/SAXHandler;->getDocument()Lorg/jdom2/Document;

    move-result-object v1

    .line 222
    .local v1, "doc":Lorg/jdom2/Document;
    invoke-virtual {v1}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v2

    if-nez v2, :cond_0

    .line 223
    const/4 v1, 0x0

    .line 226
    :cond_0
    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getSystemId()Ljava/lang/String;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 227
    .local v2, "systemId":Ljava/lang/String;
    const-string v3, ": "

    const-string v4, "Error on line "

    if-eqz v2, :cond_1

    .line 228
    :try_start_2
    new-instance v5, Lorg/jdom2/input/JDOMParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v6, " of document "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v0, v1}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    .end local p1    # "in":Lorg/xml/sax/InputSource;
    throw v5

    .line 232
    .restart local p1    # "in":Lorg/xml/sax/InputSource;
    :cond_1
    new-instance v5, Lorg/jdom2/input/JDOMParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getLineNumber()I

    move-result v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/xml/sax/SAXParseException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v5, v3, v0, v1}, Lorg/jdom2/input/JDOMParseException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;Lorg/jdom2/Document;)V

    .end local p1    # "in":Lorg/xml/sax/InputSource;
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 242
    .end local v0    # "e":Lorg/xml/sax/SAXParseException;
    .end local v1    # "doc":Lorg/jdom2/Document;
    .end local v2    # "systemId":Ljava/lang/String;
    .restart local p1    # "in":Lorg/xml/sax/InputSource;
    :goto_0
    iget-object v1, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v1}, Lorg/jdom2/input/sax/SAXHandler;->reset()V

    throw v0
.end method

.method public getDTDHandler()Lorg/xml/sax/DTDHandler;
    .locals 1

    .line 174
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v0

    return-object v0
.end method

.method public getEntityResolver()Lorg/xml/sax/EntityResolver;
    .locals 1

    .line 164
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v0

    return-object v0
.end method

.method public getErrorHandler()Lorg/xml/sax/ErrorHandler;
    .locals 1

    .line 154
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxParser:Lorg/xml/sax/XMLReader;

    invoke-interface {v0}, Lorg/xml/sax/XMLReader;->getErrorHandler()Lorg/xml/sax/ErrorHandler;

    move-result-object v0

    return-object v0
.end method

.method public getExpandEntities()Z
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getExpandEntities()Z

    move-result v0

    return v0
.end method

.method public getIgnoringBoundaryWhitespace()Z
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getIgnoringBoundaryWhitespace()Z

    move-result v0

    return v0
.end method

.method public getIgnoringElementContentWhitespace()Z
    .locals 1

    .line 184
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getIgnoringElementContentWhitespace()Z

    move-result v0

    return v0
.end method

.method public getJDOMFactory()Lorg/jdom2/JDOMFactory;
    .locals 1

    .line 134
    iget-object v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->saxHandler:Lorg/jdom2/input/sax/SAXHandler;

    invoke-virtual {v0}, Lorg/jdom2/input/sax/SAXHandler;->getFactory()Lorg/jdom2/JDOMFactory;

    move-result-object v0

    return-object v0
.end method

.method public isValidating()Z
    .locals 1

    .line 144
    iget-boolean v0, p0, Lorg/jdom2/input/sax/SAXBuilderEngine;->validating:Z

    return v0
.end method
