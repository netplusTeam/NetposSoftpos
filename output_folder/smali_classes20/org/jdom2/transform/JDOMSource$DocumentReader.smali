.class Lorg/jdom2/transform/JDOMSource$DocumentReader;
.super Lorg/jdom2/output/SAXOutputter;
.source "JDOMSource.java"

# interfaces
.implements Lorg/xml/sax/XMLReader;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jdom2/transform/JDOMSource;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DocumentReader"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 511
    invoke-direct {p0}, Lorg/jdom2/output/SAXOutputter;-><init>()V

    .line 512
    return-void
.end method


# virtual methods
.method public parse(Ljava/lang/String;)V
    .locals 2
    .param p1, "systemId"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXNotSupportedException;
        }
    .end annotation

    .line 532
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Only JDOM Documents are supported as input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public parse(Lorg/xml/sax/InputSource;)V
    .locals 3
    .param p1, "input"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 554
    instance-of v0, p1, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    if-eqz v0, :cond_1

    .line 556
    :try_start_0
    move-object v0, p1

    check-cast v0, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v0}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getDocumentSource()Lorg/jdom2/Document;

    move-result-object v0

    .line 557
    .local v0, "docsource":Lorg/jdom2/Document;
    if-eqz v0, :cond_0

    .line 558
    invoke-virtual {p0, v0}, Lorg/jdom2/transform/JDOMSource$DocumentReader;->output(Lorg/jdom2/Document;)V

    goto :goto_0

    .line 561
    :cond_0
    move-object v1, p1

    check-cast v1, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;

    invoke-virtual {v1}, Lorg/jdom2/transform/JDOMSource$JDOMInputSource;->getListSource()Ljava/util/List;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/jdom2/transform/JDOMSource$DocumentReader;->output(Ljava/util/List;)V
    :try_end_0
    .catch Lorg/jdom2/JDOMException; {:try_start_0 .. :try_end_0} :catch_0

    .line 566
    .end local v0    # "docsource":Lorg/jdom2/Document;
    :goto_0
    nop

    .line 572
    return-void

    .line 564
    :catch_0
    move-exception v0

    .line 565
    .local v0, "e":Lorg/jdom2/JDOMException;
    new-instance v1, Lorg/xml/sax/SAXException;

    invoke-virtual {v0}, Lorg/jdom2/JDOMException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v1

    .line 569
    .end local v0    # "e":Lorg/jdom2/JDOMException;
    :cond_1
    new-instance v0, Lorg/xml/sax/SAXNotSupportedException;

    const-string v1, "Only JDOM Documents are supported as input"

    invoke-direct {v0, v1}, Lorg/xml/sax/SAXNotSupportedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
