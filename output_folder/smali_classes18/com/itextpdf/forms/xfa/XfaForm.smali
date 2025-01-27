.class public Lcom/itextpdf/forms/xfa/XfaForm;
.super Ljava/lang/Object;
.source "XfaForm.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/forms/xfa/XfaForm$SafeEmptyEntityResolver;
    }
.end annotation


# static fields
.field private static final INIT_SERIALIZER_BUFFER_SIZE:I = 0x4000

.field public static final XFA_DATA_SCHEMA:Ljava/lang/String; = "http://www.xfa.org/schema/xfa-data/1.0/"


# instance fields
.field private acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

.field private datasetsNode:Lorg/w3c/dom/Node;

.field private datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

.field private domDocument:Lorg/w3c/dom/Document;

.field private templateNode:Lorg/w3c/dom/Node;

.field private xfaPresent:Z


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 105
    new-instance v0, Ljava/io/ByteArrayInputStream;

    sget-object v1, Ljava/nio/charset/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    const-string v2, "<?xml version=\"1.0\" encoding=\"UTF-8\"?><xdp:xdp xmlns:xdp=\"http://ns.adobe.com/xdp/\"><template xmlns=\"http://www.xfa.org/schema/xfa-template/3.3/\"></template><xfa:datasets xmlns:xfa=\"http://www.xfa.org/schema/xfa-data/1.0/\"><xfa:data></xfa:data></xfa:datasets></xdp:xdp>"

    invoke-virtual {v2, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;-><init>(Ljava/io/InputStream;)V

    .line 106
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDictionary;)V
    .locals 3
    .param p1, "acroFormDictionary"    # Lcom/itextpdf/kernel/pdf/PdfDictionary;

    .line 137
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 138
    sget-object v0, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v0}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 139
    .local v0, "xfa":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 141
    :try_start_0
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 144
    goto :goto_0

    .line 142
    :catch_0
    move-exception v1

    .line 143
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 146
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 3
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 155
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getXfaObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    .line 156
    .local v0, "xfa":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v0, :cond_0

    .line 158
    :try_start_0
    invoke-direct {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 161
    goto :goto_0

    .line 159
    :catch_0
    move-exception v1

    .line 160
    .local v1, "e":Ljava/lang/Exception;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 163
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_0
    :goto_0
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;

    .line 112
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 114
    :try_start_0
    invoke-direct {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 117
    nop

    .line 118
    return-void

    .line 115
    :catch_0
    move-exception v0

    .line 116
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v1, v0}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public constructor <init>(Lorg/w3c/dom/Document;)V
    .locals 1
    .param p1, "domDocument"    # Lorg/w3c/dom/Document;

    .line 124
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 125
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setDomDocument(Lorg/w3c/dom/Document;)V

    .line 126
    return-void
.end method

.method private createDatasetsNode(Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "n"    # Lorg/w3c/dom/Node;

    .line 667
    :goto_0
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v0

    if-nez v0, :cond_0

    .line 668
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object p1

    goto :goto_0

    .line 670
    :cond_0
    if-eqz p1, :cond_1

    .line 671
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v0

    const-string/jumbo v1, "xfa:datasets"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->createElement(Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v0

    .line 672
    .local v0, "e":Lorg/w3c/dom/Element;
    const-string/jumbo v1, "xmlns:xfa"

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    invoke-interface {v0, v1, v2}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 673
    iput-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 674
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 676
    .end local v0    # "e":Lorg/w3c/dom/Element;
    :cond_1
    return-void
.end method

.method private extractNodes()V
    .locals 4

    .line 647
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;

    move-result-object v0

    .line 649
    .local v0, "xfaNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    const-string/jumbo v1, "template"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 650
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    .line 652
    :cond_0
    const-string v1, "datasets"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 653
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/w3c/dom/Node;

    iput-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    .line 654
    invoke-direct {p0, v1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDataNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 655
    .local v1, "dataNode":Lorg/w3c/dom/Node;
    new-instance v2, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    if-eqz v1, :cond_1

    move-object v3, v1

    goto :goto_0

    :cond_1
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v3

    :goto_0
    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;-><init>(Lorg/w3c/dom/Node;)V

    iput-object v2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    .line 657
    .end local v1    # "dataNode":Lorg/w3c/dom/Node;
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    if-nez v1, :cond_3

    .line 658
    iget-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/itextpdf/forms/xfa/XfaForm;->createDatasetsNode(Lorg/w3c/dom/Node;)V

    .line 659
    :cond_3
    return-void
.end method

.method public static extractXFANodes(Lorg/w3c/dom/Document;)Ljava/util/Map;
    .locals 4
    .param p0, "domDocument"    # Lorg/w3c/dom/Document;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 245
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 246
    .local v0, "xfaNodes":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Lorg/w3c/dom/Node;>;"
    invoke-interface {p0}, Lorg/w3c/dom/Document;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 247
    .local v1, "n":Lorg/w3c/dom/Node;
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-nez v2, :cond_0

    .line 248
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_0

    .line 250
    :cond_0
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    .line 251
    :goto_1
    if-eqz v1, :cond_2

    .line 252
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_1

    .line 253
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "s":Ljava/lang/String;
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    .end local v2    # "s":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v1

    goto :goto_1

    .line 259
    :cond_2
    return-object v0
.end method

.method private findDataNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 4
    .param p1, "datasetsNode"    # Lorg/w3c/dom/Node;

    .line 691
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 692
    .local v0, "childNodes":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 693
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "xfa:data"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 694
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    return-object v2

    .line 692
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 697
    .end local v1    # "i":I
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method private getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    .locals 5
    .param p1, "src"    # Lorg/w3c/dom/Node;

    .line 679
    const/4 v0, 0x0

    .line 680
    .local v0, "result":Lorg/w3c/dom/Node;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    .line 681
    .local v1, "list":Lorg/w3c/dom/NodeList;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 682
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 683
    invoke-interface {v1, v2}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 684
    goto :goto_1

    .line 681
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 687
    .end local v2    # "i":I
    :cond_1
    :goto_1
    return-object v0
.end method

.method public static getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;
    .locals 1
    .param p0, "n"    # Lorg/w3c/dom/Node;

    .line 381
    const-string v0, ""

    if-nez p0, :cond_0

    goto :goto_0

    :cond_0
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method private static getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "n"    # Lorg/w3c/dom/Node;
    .param p1, "name"    # Ljava/lang/String;

    .line 564
    invoke-interface {p0}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 565
    .local v0, "n2":Lorg/w3c/dom/Node;
    :goto_0
    if-eqz v0, :cond_2

    .line 566
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 567
    invoke-static {v0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    .line 568
    :cond_0
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_1

    .line 569
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 571
    :cond_1
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNextSibling()Lorg/w3c/dom/Node;

    move-result-object v0

    goto :goto_0

    .line 573
    :cond_2
    return-object p1
.end method

.method private static getXfaObject(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .param p0, "acroForm"    # Lcom/itextpdf/forms/PdfAcroForm;

    .line 596
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x0

    :goto_1
    return-object v0
.end method

.method private static getXfaObject(Lcom/itextpdf/kernel/pdf/PdfDocument;)Lcom/itextpdf/kernel/pdf/PdfObject;
    .locals 2
    .param p0, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;

    .line 584
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v0

    check-cast v0, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->AcroForm:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsDictionary(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    .line 585
    .local v0, "af":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-nez v0, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v0, v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    :goto_0
    return-object v1
.end method

.method private initXfaForm(Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 5
    .param p1, "xfa"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljavax/xml/parsers/ParserConfigurationException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 616
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 617
    .local v0, "bout":Ljava/io/ByteArrayOutputStream;
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 618
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 619
    .local v1, "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v2, 0x1

    .local v2, "k":I
    :goto_0
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 620
    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    .line 621
    .local v3, "ob":Lcom/itextpdf/kernel/pdf/PdfObject;
    instance-of v4, v3, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v4, :cond_0

    .line 622
    move-object v4, v3

    check-cast v4, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v4

    .line 623
    .local v4, "b":[B
    invoke-virtual {v0, v4}, Ljava/io/ByteArrayOutputStream;->write([B)V

    .line 619
    .end local v3    # "ob":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v4    # "b":[B
    :cond_0
    add-int/lit8 v2, v2, 0x2

    goto :goto_0

    .end local v1    # "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v2    # "k":I
    :cond_1
    goto :goto_1

    .line 626
    :cond_2
    instance-of v1, p1, Lcom/itextpdf/kernel/pdf/PdfStream;

    if-eqz v1, :cond_3

    .line 627
    move-object v1, p1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfStream;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfStream;->getBytes()[B

    move-result-object v1

    .line 628
    .local v1, "b":[B
    invoke-virtual {v0, v1}, Ljava/io/ByteArrayOutputStream;->write([B)V

    goto :goto_2

    .line 626
    .end local v1    # "b":[B
    :cond_3
    :goto_1
    nop

    .line 630
    :goto_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 631
    new-instance v1, Ljava/io/ByteArrayInputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    invoke-direct {p0, v1}, Lcom/itextpdf/forms/xfa/XfaForm;->initXfaForm(Ljava/io/InputStream;)V

    .line 632
    return-void
.end method

.method private initXfaForm(Ljava/io/InputStream;)V
    .locals 5
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 635
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 636
    .local v0, "fact":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljavax/xml/parsers/DocumentBuilderFactory;->setNamespaceAware(Z)V

    .line 637
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v2

    .line 638
    .local v2, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v3, Lcom/itextpdf/forms/xfa/XfaForm$SafeEmptyEntityResolver;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lcom/itextpdf/forms/xfa/XfaForm$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/forms/xfa/XfaForm$1;)V

    invoke-virtual {v2, v3}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 639
    invoke-virtual {v2, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/itextpdf/forms/xfa/XfaForm;->setDomDocument(Lorg/w3c/dom/Document;)V

    .line 640
    iput-boolean v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    .line 641
    return-void
.end method

.method private static serializeDocument(Lorg/w3c/dom/Node;)[B
    .locals 3
    .param p0, "n"    # Lorg/w3c/dom/Node;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 607
    new-instance v0, Lcom/itextpdf/kernel/xmp/XmlDomWriter;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;-><init>(Z)V

    .line 608
    .local v0, "xw":Lcom/itextpdf/kernel/xmp/XmlDomWriter;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v2, 0x4000

    invoke-direct {v1, v2}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 609
    .local v1, "fout":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 610
    invoke-virtual {v0, p0}, Lcom/itextpdf/kernel/xmp/XmlDomWriter;->write(Lorg/w3c/dom/Node;)V

    .line 611
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    .line 612
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method

.method public static setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V
    .locals 9
    .param p0, "form"    # Lcom/itextpdf/forms/xfa/XfaForm;
    .param p1, "acroForm"    # Lcom/itextpdf/forms/PdfAcroForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 185
    if-eqz p0, :cond_7

    if-eqz p1, :cond_7

    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 188
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfDocument()Lcom/itextpdf/kernel/pdf/PdfDocument;

    move-result-object v0

    .line 189
    .local v0, "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfVersion;->PDF_2_0:Lcom/itextpdf/kernel/pdf/PdfVersion;

    const-string v2, "XFA is deprecated in PDF 2.0. The XFA form will not be written to the document"

    invoke-static {v0, v1, v2}, Lcom/itextpdf/kernel/pdf/VersionConforming;->validatePdfVersionForDeprecatedFeatureLogError(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/kernel/pdf/PdfVersion;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 190
    return-void

    .line 192
    :cond_0
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/XfaForm;->getXfaObject(Lcom/itextpdf/forms/PdfAcroForm;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    .line 193
    .local v1, "xfa":Lcom/itextpdf/kernel/pdf/PdfObject;
    if-eqz v1, :cond_5

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfObject;->isArray()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 194
    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 195
    .local v2, "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    const/4 v3, -0x1

    .line 196
    .local v3, "t":I
    const/4 v4, -0x1

    .line 197
    .local v4, "d":I
    const/4 v5, 0x0

    .local v5, "k":I
    :goto_0
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->size()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 198
    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsString(I)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v6

    .line 199
    .local v6, "s":Lcom/itextpdf/kernel/pdf/PdfString;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v7

    const-string/jumbo v8, "template"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 200
    add-int/lit8 v3, v5, 0x1

    .line 202
    :cond_1
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfString;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "datasets"

    invoke-virtual {v8, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 203
    add-int/lit8 v4, v5, 0x1

    .line 197
    .end local v6    # "s":Lcom/itextpdf/kernel/pdf/PdfString;
    :cond_2
    add-int/lit8 v5, v5, 0x2

    goto :goto_0

    .line 206
    .end local v5    # "k":I
    :cond_3
    const/4 v5, -0x1

    if-le v3, v5, :cond_5

    if-le v4, v5, :cond_5

    .line 209
    new-instance v5, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v6, p0, Lcom/itextpdf/forms/xfa/XfaForm;->templateNode:Lorg/w3c/dom/Node;

    invoke-static {v6}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object v6

    invoke-direct {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 210
    .local v5, "tStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v6

    invoke-virtual {v5, v6}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 211
    invoke-virtual {v2, v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 212
    new-instance v6, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v7, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-static {v7}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object v7

    invoke-direct {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 213
    .local v6, "dStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v7

    invoke-virtual {v6, v7}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 214
    invoke-virtual {v2, v4, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->set(ILcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 215
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->setModified()Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 216
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->flush()V

    .line 217
    sget-object v7, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    new-instance v8, Lcom/itextpdf/kernel/pdf/PdfArray;

    invoke-direct {v8, v2}, Lcom/itextpdf/kernel/pdf/PdfArray;-><init>(Lcom/itextpdf/kernel/pdf/PdfArray;)V

    invoke-virtual {p1, v7, v8}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    .line 218
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 219
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v7

    if-nez v7, :cond_4

    .line 220
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 222
    :cond_4
    return-void

    .line 226
    .end local v2    # "ar":Lcom/itextpdf/kernel/pdf/PdfArray;
    .end local v3    # "t":I
    .end local v4    # "d":I
    .end local v5    # "tStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    .end local v6    # "dStream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_5
    new-instance v2, Lcom/itextpdf/kernel/pdf/PdfStream;

    iget-object v3, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-static {v3}, Lcom/itextpdf/forms/xfa/XfaForm;->serializeDocument(Lorg/w3c/dom/Node;)[B

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;-><init>([B)V

    .line 227
    .local v2, "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getWriter()Lcom/itextpdf/kernel/pdf/PdfWriter;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfWriter;->getCompressionLevel()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfStream;->setCompressionLevel(I)V

    .line 228
    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfStream;->flush()V

    .line 229
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->XFA:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/forms/PdfAcroForm;->put(Lcom/itextpdf/kernel/pdf/PdfName;Lcom/itextpdf/kernel/pdf/PdfObject;)Lcom/itextpdf/forms/PdfAcroForm;

    .line 230
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 231
    invoke-virtual {p1}, Lcom/itextpdf/forms/PdfAcroForm;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->isIndirect()Z

    move-result v3

    if-nez v3, :cond_6

    .line 232
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getCatalog()Lcom/itextpdf/kernel/pdf/PdfCatalog;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfCatalog;->setModified()Lcom/itextpdf/kernel/pdf/PdfObjectWrapper;

    .line 234
    :cond_6
    return-void

    .line 186
    .end local v0    # "document":Lcom/itextpdf/kernel/pdf/PdfDocument;
    .end local v1    # "xfa":Lcom/itextpdf/kernel/pdf/PdfObject;
    .end local v2    # "stream":Lcom/itextpdf/kernel/pdf/PdfStream;
    :cond_7
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "XfaForm, PdfAcroForm and PdfAcroForm\'s document shall not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 1
    .param p0, "form"    # Lcom/itextpdf/forms/xfa/XfaForm;
    .param p1, "pdfDocument"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v0

    .line 174
    .local v0, "acroForm":Lcom/itextpdf/forms/PdfAcroForm;
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V

    .line 175
    return-void
.end method


# virtual methods
.method public fillXfaForm(Ljava/io/File;)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 440
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/File;Z)V

    .line 441
    return-void
.end method

.method public fillXfaForm(Ljava/io/File;Z)V
    .locals 1
    .param p1, "file"    # Ljava/io/File;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 452
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p1}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    .line 453
    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 464
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Ljava/io/InputStream;Z)V

    .line 465
    return-void
.end method

.method public fillXfaForm(Ljava/io/InputStream;Z)V
    .locals 1
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 476
    new-instance v0, Lorg/xml/sax/InputSource;

    invoke-direct {v0, p1}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    .line 477
    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;)V
    .locals 1
    .param p1, "node"    # Lorg/w3c/dom/Node;

    .line 520
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V

    .line 521
    return-void
.end method

.method public fillXfaForm(Lorg/w3c/dom/Node;Z)V
    .locals 9
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "readOnly"    # Z

    .line 530
    if-eqz p2, :cond_0

    .line 531
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    const-string v1, "field"

    invoke-interface {v0, v1}, Lorg/w3c/dom/Document;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 532
    .local v0, "nodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_0

    .line 533
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    check-cast v2, Lorg/w3c/dom/Element;

    const-string v3, "access"

    const-string/jumbo v4, "readOnly"

    invoke-interface {v2, v3, v4}, Lorg/w3c/dom/Element;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 532
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 536
    .end local v0    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v1    # "i":I
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 537
    .local v0, "allChilds":Lorg/w3c/dom/NodeList;
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    .line 538
    .local v1, "len":I
    const/4 v2, 0x0

    .line 539
    .local v2, "data":Lorg/w3c/dom/Node;
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_1
    const-string v4, "http://www.xfa.org/schema/xfa-data/1.0/"

    const/4 v5, 0x1

    if-ge v3, v1, :cond_2

    .line 540
    invoke-interface {v0, v3}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v6

    .line 541
    .local v6, "n":Lorg/w3c/dom/Node;
    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v7

    if-ne v7, v5, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getLocalName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "data"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v6}, Lorg/w3c/dom/Node;->getNamespaceURI()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 542
    move-object v2, v6

    .line 543
    goto :goto_2

    .line 539
    .end local v6    # "n":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 546
    .end local v3    # "k":I
    :cond_2
    :goto_2
    if-nez v2, :cond_3

    .line 547
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v3}, Lorg/w3c/dom/Node;->getOwnerDocument()Lorg/w3c/dom/Document;

    move-result-object v3

    const-string/jumbo v6, "xfa:data"

    invoke-interface {v3, v4, v6}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 548
    iget-object v3, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    invoke-interface {v3, v2}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 550
    :cond_3
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v3

    .line 551
    .local v3, "list":Lorg/w3c/dom/NodeList;
    invoke-interface {v3}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v4

    if-nez v4, :cond_4

    .line 552
    iget-object v4, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v4, p1, v5}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v4

    invoke-interface {v2, v4}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_3

    .line 556
    :cond_4
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/xfa/XfaForm;->getFirstElementNode(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 557
    .local v4, "firstNode":Lorg/w3c/dom/Node;
    if-eqz v4, :cond_5

    .line 558
    iget-object v6, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v6, p1, v5}, Lorg/w3c/dom/Document;->importNode(Lorg/w3c/dom/Node;Z)Lorg/w3c/dom/Node;

    move-result-object v5

    invoke-interface {v2, v5, v4}, Lorg/w3c/dom/Node;->replaceChild(Lorg/w3c/dom/Node;Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 560
    .end local v4    # "firstNode":Lorg/w3c/dom/Node;
    :cond_5
    :goto_3
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractNodes()V

    .line 561
    return-void
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;)V
    .locals 1
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 488
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/xml/sax/InputSource;Z)V

    .line 489
    return-void
.end method

.method public fillXfaForm(Lorg/xml/sax/InputSource;Z)V
    .locals 4
    .param p1, "is"    # Lorg/xml/sax/InputSource;
    .param p2, "readOnly"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 500
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v0

    .line 503
    .local v0, "dbf":Ljavax/xml/parsers/DocumentBuilderFactory;
    :try_start_0
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v1

    .line 504
    .local v1, "db":Ljavax/xml/parsers/DocumentBuilder;
    new-instance v2, Lcom/itextpdf/forms/xfa/XfaForm$SafeEmptyEntityResolver;

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfa/XfaForm$SafeEmptyEntityResolver;-><init>(Lcom/itextpdf/forms/xfa/XfaForm$1;)V

    invoke-virtual {v1, v2}, Ljavax/xml/parsers/DocumentBuilder;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 505
    invoke-virtual {v1, p1}, Ljavax/xml/parsers/DocumentBuilder;->parse(Lorg/xml/sax/InputSource;)Lorg/w3c/dom/Document;

    move-result-object v2

    .line 506
    .local v2, "newdoc":Lorg/w3c/dom/Document;
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    invoke-virtual {p0, v3, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->fillXfaForm(Lorg/w3c/dom/Node;Z)V
    :try_end_0
    .catch Ljavax/xml/parsers/ParserConfigurationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 511
    .end local v2    # "newdoc":Lorg/w3c/dom/Document;
    nop

    .line 512
    return-void

    .line 509
    .end local v1    # "db":Ljavax/xml/parsers/DocumentBuilder;
    :catch_0
    move-exception v1

    .line 510
    .local v1, "e":Lorg/xml/sax/SAXException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 507
    .end local v1    # "e":Lorg/xml/sax/SAXException;
    :catch_1
    move-exception v1

    .line 508
    .local v1, "e":Ljavax/xml/parsers/ParserConfigurationException;
    new-instance v2, Lcom/itextpdf/kernel/PdfException;

    invoke-direct {v2, v1}, Lcom/itextpdf/kernel/PdfException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public findDatasetsName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 355
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->inverseSearchGlobal(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 366
    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 367
    return-object v0

    .line 368
    :cond_0
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 369
    if-nez p1, :cond_1

    .line 370
    return-object v0

    .line 371
    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public findFieldName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 336
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    if-eqz v0, :cond_0

    .line 337
    new-instance v1, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->getName2Node()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    .line 340
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    if-eqz v0, :cond_2

    iget-boolean v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    if-eqz v1, :cond_2

    .line 341
    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    invoke-virtual {v0}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->getAcroShort2LongName()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->acroFieldsSom:Lcom/itextpdf/forms/xfa/AcroFieldsSearch;

    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->splitParts(Ljava/lang/String;)Ljava/util/Stack;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfa/AcroFieldsSearch;->inverseSearchGlobal(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    .line 344
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDatasetsNode()Lorg/w3c/dom/Node;
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsNode:Lorg/w3c/dom/Node;

    return-object v0
.end method

.method public getDomDocument()Lorg/w3c/dom/Document;
    .locals 1

    .line 409
    iget-object v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    return-object v0
.end method

.method public getXfaFieldValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 309
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 310
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 311
    if-eqz p1, :cond_0

    .line 313
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 314
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-static {v0}, Lcom/itextpdf/forms/xfa/XfaForm;->getNodeText(Lorg/w3c/dom/Node;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 317
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public isXfaPresent()Z
    .locals 1

    .line 326
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfa/XfaForm;->xfaPresent:Z

    return v0
.end method

.method public setDomDocument(Lorg/w3c/dom/Document;)V
    .locals 0
    .param p1, "domDocument"    # Lorg/w3c/dom/Document;

    .line 418
    iput-object p1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    .line 419
    invoke-direct {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->extractNodes()V

    .line 420
    return-void
.end method

.method public setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V
    .locals 4
    .param p1, "n"    # Lorg/w3c/dom/Node;
    .param p2, "text"    # Ljava/lang/String;

    .line 392
    if-nez p1, :cond_0

    .line 393
    return-void

    .line 394
    :cond_0
    const/4 v0, 0x0

    .line 395
    .local v0, "nc":Lorg/w3c/dom/Node;
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v1

    move-object v0, v1

    if-eqz v1, :cond_1

    .line 396
    invoke-interface {p1, v0}, Lorg/w3c/dom/Node;->removeChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    goto :goto_0

    .line 398
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "http://www.xfa.org/schema/xfa-data/1.0/"

    const-string v3, "dataNode"

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 399
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    invoke-interface {v1, v2, v3}, Lorg/w3c/dom/NamedNodeMap;->removeNamedItemNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Node;

    .line 400
    :cond_2
    iget-object v1, p0, Lcom/itextpdf/forms/xfa/XfaForm;->domDocument:Lorg/w3c/dom/Document;

    invoke-interface {v1, p2}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v1

    invoke-interface {p1, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 401
    return-void
.end method

.method public setXfaFieldValue(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .line 289
    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->isXfaPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 290
    invoke-virtual {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->findFieldName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 291
    if-eqz p1, :cond_1

    .line 292
    invoke-static {p1}, Lcom/itextpdf/forms/xfa/Xml2Som;->getShortName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    .local v0, "shortName":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfa/XfaForm;->findDatasetsNode(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 294
    .local v1, "xn":Lorg/w3c/dom/Node;
    if-nez v1, :cond_0

    .line 295
    iget-object v2, p0, Lcom/itextpdf/forms/xfa/XfaForm;->datasetsSom:Lcom/itextpdf/forms/xfa/Xml2SomDatasets;

    invoke-virtual {p0}, Lcom/itextpdf/forms/xfa/XfaForm;->getDatasetsNode()Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-virtual {v2, v3, v0}, Lcom/itextpdf/forms/xfa/Xml2SomDatasets;->insertNode(Lorg/w3c/dom/Node;Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 297
    :cond_0
    invoke-virtual {p0, v1, p2}, Lcom/itextpdf/forms/xfa/XfaForm;->setNodeText(Lorg/w3c/dom/Node;Ljava/lang/String;)V

    .line 300
    .end local v0    # "shortName":Ljava/lang/String;
    .end local v1    # "xn":Lorg/w3c/dom/Node;
    :cond_1
    return-void
.end method

.method public write(Lcom/itextpdf/forms/PdfAcroForm;)V
    .locals 0
    .param p1, "acroForm"    # Lcom/itextpdf/forms/PdfAcroForm;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 279
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/forms/PdfAcroForm;)V

    .line 280
    return-void
.end method

.method public write(Lcom/itextpdf/kernel/pdf/PdfDocument;)V
    .locals 0
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p0, p1}, Lcom/itextpdf/forms/xfa/XfaForm;->setXfaForm(Lcom/itextpdf/forms/xfa/XfaForm;Lcom/itextpdf/kernel/pdf/PdfDocument;)V

    .line 270
    return-void
.end method
