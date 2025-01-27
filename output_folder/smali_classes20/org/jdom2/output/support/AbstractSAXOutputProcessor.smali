.class public Lorg/jdom2/output/support/AbstractSAXOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractSAXOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/SAXOutputProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 121
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 370
    return-void
.end method

.method private createDTDParser(Lorg/jdom2/output/support/SAXTarget;)Lorg/xml/sax/XMLReader;
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 790
    const/4 v0, 0x0

    .line 794
    .local v0, "parser":Lorg/xml/sax/XMLReader;
    :try_start_0
    invoke-virtual {p0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->createParser()Lorg/xml/sax/XMLReader;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_4

    move-object v0, v1

    .line 797
    nop

    .line 800
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 801
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setDTDHandler(Lorg/xml/sax/DTDHandler;)V

    .line 803
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 804
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getEntityResolver()Lorg/xml/sax/EntityResolver;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setEntityResolver(Lorg/xml/sax/EntityResolver;)V

    .line 806
    :cond_1
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 808
    :try_start_1
    const-string v1, "http://xml.org/sax/properties/lexical-handler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Lorg/xml/sax/SAXException; {:try_start_1 .. :try_end_1} :catch_0

    .line 817
    goto :goto_0

    .line 810
    :catch_0
    move-exception v1

    .line 812
    .local v1, "ex1":Lorg/xml/sax/SAXException;
    :try_start_2
    const-string v2, "http://xml.org/sax/handlers/LexicalHandler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_2
    .catch Lorg/xml/sax/SAXException; {:try_start_2 .. :try_end_2} :catch_1

    .line 816
    goto :goto_0

    .line 814
    :catch_1
    move-exception v2

    .line 819
    .end local v1    # "ex1":Lorg/xml/sax/SAXException;
    :cond_2
    :goto_0
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 821
    :try_start_3
    const-string v1, "http://xml.org/sax/properties/declaration-handler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_3
    .catch Lorg/xml/sax/SAXException; {:try_start_3 .. :try_end_3} :catch_2

    .line 830
    goto :goto_1

    .line 823
    :catch_2
    move-exception v1

    .line 825
    .restart local v1    # "ex1":Lorg/xml/sax/SAXException;
    :try_start_4
    const-string v2, "http://xml.org/sax/handlers/DeclHandler"

    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v3

    invoke-interface {v0, v2, v3}, Lorg/xml/sax/XMLReader;->setProperty(Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_4
    .catch Lorg/xml/sax/SAXException; {:try_start_4 .. :try_end_4} :catch_3

    .line 829
    goto :goto_1

    .line 827
    :catch_3
    move-exception v2

    .line 834
    .end local v1    # "ex1":Lorg/xml/sax/SAXException;
    :cond_3
    :goto_1
    new-instance v1, Lorg/xml/sax/helpers/DefaultHandler;

    invoke-direct {v1}, Lorg/xml/sax/helpers/DefaultHandler;-><init>()V

    invoke-interface {v0, v1}, Lorg/xml/sax/XMLReader;->setErrorHandler(Lorg/xml/sax/ErrorHandler;)V

    .line 836
    return-object v0

    .line 795
    :catch_4
    move-exception v1

    .line 796
    .local v1, "ex1":Ljava/lang/Exception;
    new-instance v2, Lorg/xml/sax/SAXException;

    const-string v3, "Error in SAX parser allocation"

    invoke-direct {v2, v3, v1}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v2
.end method

.method private static getAttributeTypeName(Lorg/jdom2/AttributeType;)Ljava/lang/String;
    .locals 2
    .param p0, "type"    # Lorg/jdom2/AttributeType;

    .line 719
    sget-object v0, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$AttributeType:[I

    invoke-virtual {p0}, Lorg/jdom2/AttributeType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 723
    invoke-virtual {p0}, Lorg/jdom2/AttributeType;->name()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 721
    :pswitch_0
    const-string v0, "CDATA"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private static locate(Lorg/jdom2/output/support/SAXTarget;)V
    .locals 2
    .param p0, "out"    # Lorg/jdom2/output/support/SAXTarget;

    .line 125
    invoke-virtual {p0}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->setDocumentLocator(Lorg/xml/sax/Locator;)V

    .line 126
    return-void
.end method


# virtual methods
.method protected createParser()Lorg/xml/sax/XMLReader;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 737
    const/4 v0, 0x0

    .line 744
    .local v0, "parser":Lorg/xml/sax/XMLReader;
    :try_start_0
    const-string v1, "javax.xml.parsers.SAXParserFactory"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 748
    .local v1, "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-string v2, "newInstance"

    const/4 v3, 0x0

    new-array v4, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 749
    .local v2, "newParserInstance":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v5, v3, [Ljava/lang/Object;

    invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 752
    .local v4, "factory":Ljava/lang/Object;
    const-string v5, "newSAXParser"

    new-array v6, v3, [Ljava/lang/Class;

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 753
    .local v5, "newSAXParser":Ljava/lang/reflect/Method;
    new-array v6, v3, [Ljava/lang/Object;

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 756
    .local v6, "jaxpParser":Ljava/lang/Object;
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    .line 757
    .local v7, "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    const-string v8, "getXMLReader"

    new-array v9, v3, [Ljava/lang/Class;

    invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v8

    .line 758
    .local v8, "getXMLReader":Ljava/lang/reflect/Method;
    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v8, v6, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/xml/sax/XMLReader;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v3

    .line 767
    .end local v1    # "factoryClass":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "newParserInstance":Ljava/lang/reflect/Method;
    .end local v4    # "factory":Ljava/lang/Object;
    .end local v5    # "newSAXParser":Ljava/lang/reflect/Method;
    .end local v6    # "jaxpParser":Ljava/lang/Object;
    .end local v7    # "parserClass":Ljava/lang/Class;, "Ljava/lang/Class<+Ljava/lang/Object;>;"
    .end local v8    # "getXMLReader":Ljava/lang/reflect/Method;
    :goto_0
    goto :goto_1

    .line 765
    :catch_0
    move-exception v1

    goto :goto_1

    .line 763
    :catch_1
    move-exception v1

    goto :goto_0

    .line 761
    :catch_2
    move-exception v1

    goto :goto_0

    .line 759
    :catch_3
    move-exception v1

    goto :goto_0

    .line 771
    :goto_1
    if-nez v0, :cond_0

    .line 772
    const-string v1, "org.apache.xerces.parsers.SAXParser"

    invoke-static {v1}, Lorg/xml/sax/helpers/XMLReaderFactory;->createXMLReader(Ljava/lang/String;)Lorg/xml/sax/XMLReader;

    move-result-object v0

    .line 775
    :cond_0
    return-object v0
.end method

.method protected printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .locals 5
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 493
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    .line 494
    .local v0, "lexicalHandler":Lorg/xml/sax/ext/LexicalHandler;
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 495
    .local v1, "chars":[C
    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 496
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->startCDATA()V

    .line 497
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 498
    invoke-interface {v0}, Lorg/xml/sax/ext/LexicalHandler;->endCDATA()V

    goto :goto_0

    .line 500
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v3

    array-length v4, v1

    invoke-interface {v3, v1, v2, v4}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 502
    :goto_0
    return-void
.end method

.method protected printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 454
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 455
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 456
    .local v0, "c":[C
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLexicalHandler()Lorg/xml/sax/ext/LexicalHandler;

    move-result-object v1

    const/4 v2, 0x0

    array-length v3, v0

    invoke-interface {v1, v0, v2, v3}, Lorg/xml/sax/ext/LexicalHandler;->comment([CII)V

    .line 458
    .end local v0    # "c":[C
    :cond_0
    return-void
.end method

.method protected printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 667
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 668
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 669
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_1

    .line 671
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    .line 672
    .local v1, "text":Ljava/lang/String;
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 673
    new-instance v2, Lorg/jdom2/CDATA;

    invoke-direct {v2, v1}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_1

    .line 675
    :cond_0
    new-instance v2, Lorg/jdom2/Text;

    invoke-direct {v2, v1}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 677
    .end local v1    # "text":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 678
    :cond_1
    sget-object v1, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 699
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_2

    .line 692
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 693
    goto :goto_2

    .line 680
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printCDATA(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 681
    goto :goto_2

    .line 695
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 697
    goto :goto_2

    .line 689
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 690
    goto :goto_2

    .line 687
    :pswitch_5
    goto :goto_2

    .line 683
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 684
    nop

    .line 703
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_2
    goto :goto_0

    .line 704
    :cond_2
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .locals 6
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 397
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDTDHandler()Lorg/xml/sax/DTDHandler;

    move-result-object v0

    .line 398
    .local v0, "dtdHandler":Lorg/xml/sax/DTDHandler;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getDeclHandler()Lorg/xml/sax/ext/DeclHandler;

    move-result-object v1

    .line 399
    .local v1, "declHandler":Lorg/xml/sax/ext/DeclHandler;
    if-eqz p3, :cond_1

    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 403
    :cond_0
    new-instance v2, Lorg/jdom2/output/XMLOutputter;

    invoke-direct {v2}, Lorg/jdom2/output/XMLOutputter;-><init>()V

    invoke-virtual {v2, p3}, Lorg/jdom2/output/XMLOutputter;->outputString(Lorg/jdom2/DocType;)Ljava/lang/String;

    move-result-object v2

    .line 407
    .local v2, "dtdDoc":Ljava/lang/String;
    :try_start_0
    invoke-direct {p0, p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->createDTDParser(Lorg/jdom2/output/support/SAXTarget;)Lorg/xml/sax/XMLReader;

    move-result-object v3

    new-instance v4, Lorg/xml/sax/InputSource;

    new-instance v5, Ljava/io/StringReader;

    invoke-direct {v5, v2}, Ljava/io/StringReader;-><init>(Ljava/lang/String;)V

    invoke-direct {v4, v5}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/Reader;)V

    invoke-interface {v3, v4}, Lorg/xml/sax/XMLReader;->parse(Lorg/xml/sax/InputSource;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXParseException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 414
    :catch_0
    move-exception v3

    .line 415
    .local v3, "e":Ljava/io/IOException;
    new-instance v4, Lorg/xml/sax/SAXException;

    const-string v5, "DTD parsing error"

    invoke-direct {v4, v5, v3}, Lorg/xml/sax/SAXException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v4

    .line 412
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 419
    .end local v2    # "dtdDoc":Ljava/lang/String;
    :cond_1
    :goto_0
    return-void
.end method

.method protected printDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .locals 5
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "document"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 334
    if-nez p4, :cond_0

    .line 335
    return-void

    .line 339
    :cond_0
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 342
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->isReportDTDEvents()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    invoke-virtual {p4}, Lorg/jdom2/Document;->getDocType()Lorg/jdom2/DocType;

    move-result-object v0

    invoke-virtual {p0, p1, p2, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 349
    :cond_1
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v0

    .line 351
    .local v0, "sz":I
    if-lez v0, :cond_2

    .line 352
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 353
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 354
    .local v2, "c":Lorg/jdom2/Content;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v3

    invoke-virtual {v3, v2}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 355
    sget-object v3, Lorg/jdom2/output/support/AbstractSAXOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 367
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 369
    goto :goto_1

    .line 364
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 365
    goto :goto_1

    .line 362
    :pswitch_2
    goto :goto_1

    .line 357
    :pswitch_3
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 358
    nop

    .line 352
    .end local v2    # "c":Lorg/jdom2/Content;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 377
    .end local v1    # "i":I
    :cond_2
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    invoke-interface {v1}, Lorg/xml/sax/ContentHandler;->endDocument()V

    .line 379
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .locals 16
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 543
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v4, p4

    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v5

    .line 544
    .local v5, "ch":Lorg/xml/sax/ContentHandler;
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->getNode()Ljava/lang/Object;

    move-result-object v6

    .line 545
    .local v6, "origloc":Ljava/lang/Object;
    invoke-virtual/range {p3 .. p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 549
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v0

    invoke-virtual {v0, v4}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 551
    new-instance v0, Lorg/xml/sax/helpers/AttributesImpl;

    invoke-direct {v0}, Lorg/xml/sax/helpers/AttributesImpl;-><init>()V

    move-object v13, v0

    .line 554
    .local v13, "atts":Lorg/xml/sax/helpers/AttributesImpl;
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Namespace;

    move-object v14, v7

    .line 555
    .local v14, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v7, v8}, Lorg/xml/sax/ContentHandler;->startPrefixMapping(Ljava/lang/String;Ljava/lang/String;)V

    .line 556
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->isDeclareNamespaces()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 558
    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    move-object v15, v7

    .line 559
    .local v15, "prefix":Ljava/lang/String;
    const-string v7, ""

    invoke-virtual {v15, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 560
    const-string v8, ""

    const-string v9, ""

    const-string/jumbo v10, "xmlns"

    const-string v11, "CDATA"

    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v12

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 562
    :cond_0
    const-string v8, ""

    const-string v9, ""

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "xmlns:"

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    const-string v11, "CDATA"

    invoke-virtual {v14}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v12

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v14    # "ns":Lorg/jdom2/Namespace;
    .end local v15    # "prefix":Ljava/lang/String;
    :cond_1
    :goto_1
    goto :goto_0

    .line 569
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_2
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 570
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/jdom2/Attribute;

    move-object v14, v7

    .line 571
    .local v14, "a":Lorg/jdom2/Attribute;
    invoke-virtual {v14}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v7

    if-nez v7, :cond_3

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 572
    goto :goto_2

    .line 574
    :cond_3
    invoke-virtual {v14}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v14}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v14}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v14}, Lorg/jdom2/Attribute;->getAttributeType()Lorg/jdom2/AttributeType;

    move-result-object v7

    invoke-static {v7}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->getAttributeTypeName(Lorg/jdom2/AttributeType;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v14}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v12

    move-object v7, v13

    invoke-virtual/range {v7 .. v12}, Lorg/xml/sax/helpers/AttributesImpl;->addAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    .end local v14    # "a":Lorg/jdom2/Attribute;
    goto :goto_2

    .line 582
    .end local v0    # "i$":Ljava/util/Iterator;
    :cond_4
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v5, v0, v7, v8, v13}, Lorg/xml/sax/ContentHandler;->startElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/xml/sax/Attributes;)V

    .line 585
    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    move-object v7, v0

    .line 588
    .local v7, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v7}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    .line 589
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v0

    .line 592
    .local v0, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v8, "space"

    sget-object v9, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v4, v8, v9}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v8

    .line 595
    .local v8, "space":Ljava/lang/String;
    const-string v9, "default"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_5

    .line 596
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v9

    move-object v0, v9

    goto :goto_3

    .line 597
    :cond_5
    const-string v9, "preserve"

    invoke-virtual {v9, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_6

    .line 598
    sget-object v9, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    move-object v0, v9

    goto :goto_3

    .line 597
    :cond_6
    move-object v9, v0

    .line 601
    .end local v0    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .local v9, "textmode":Lorg/jdom2/output/Format$TextMode;
    :goto_3
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 603
    :try_start_1
    invoke-virtual {v3, v9}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 604
    const/4 v0, 0x0

    invoke-virtual {v1, v3, v7, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v0

    .line 605
    .local v0, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    .line 607
    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v10

    if-nez v10, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_7

    .line 610
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v10

    .line 611
    .local v10, "indent":Ljava/lang/String;
    new-instance v11, Lorg/jdom2/Text;

    invoke-direct {v11, v10}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v11}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    .end local v10    # "indent":Ljava/lang/String;
    :cond_7
    move-object/from16 v10, p3

    :try_start_2
    invoke-virtual {v1, v2, v3, v10, v0}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 616
    invoke-interface {v0}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v11

    if-nez v11, :cond_9

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v11

    if-eqz v11, :cond_9

    .line 619
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v11

    .line 621
    .local v11, "indent":Ljava/lang/String;
    new-instance v12, Lorg/jdom2/Text;

    invoke-direct {v12, v11}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3, v12}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_4

    .line 627
    .end local v0    # "walker":Lorg/jdom2/output/support/Walker;
    .end local v11    # "indent":Ljava/lang/String;
    :catchall_0
    move-exception v0

    goto :goto_5

    .line 605
    .restart local v0    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_8
    move-object/from16 v10, p3

    .line 627
    .end local v0    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_9
    :goto_4
    :try_start_3
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 628
    goto :goto_6

    .line 627
    :catchall_1
    move-exception v0

    move-object/from16 v10, p3

    :goto_5
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .end local v5    # "ch":Lorg/xml/sax/ContentHandler;
    .end local v6    # "origloc":Ljava/lang/Object;
    .end local p1    # "out":Lorg/jdom2/output/support/SAXTarget;
    .end local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p4    # "element":Lorg/jdom2/Element;
    throw v0

    .line 588
    .end local v8    # "space":Ljava/lang/String;
    .end local v9    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v5    # "ch":Lorg/xml/sax/ContentHandler;
    .restart local v6    # "origloc":Ljava/lang/Object;
    .restart local p1    # "out":Lorg/jdom2/output/support/SAXTarget;
    .restart local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p4    # "element":Lorg/jdom2/Element;
    :cond_a
    move-object/from16 v10, p3

    .line 632
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v8

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-virtual/range {p4 .. p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v11

    invoke-interface {v0, v8, v9, v11}, Lorg/xml/sax/ContentHandler;->endElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedReverse()Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Namespace;

    .line 638
    .local v8, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {v8}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v9

    invoke-interface {v5, v9}, Lorg/xml/sax/ContentHandler;->endPrefixMapping(Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 639
    .end local v8    # "ns":Lorg/jdom2/Namespace;
    goto :goto_7

    .line 642
    .end local v0    # "i$":Ljava/util/Iterator;
    .end local v7    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v13    # "atts":Lorg/xml/sax/helpers/AttributesImpl;
    :cond_b
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v0

    invoke-virtual {v0, v6}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    .line 644
    nop

    .line 645
    return-void

    .line 642
    :catchall_2
    move-exception v0

    goto :goto_8

    :catchall_3
    move-exception v0

    move-object/from16 v10, p3

    :goto_8
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 643
    invoke-virtual/range {p1 .. p1}, Lorg/jdom2/output/support/SAXTarget;->getLocator()Lorg/jdom2/output/support/SAXTarget$SAXLocator;

    move-result-object v7

    invoke-virtual {v7, v6}, Lorg/jdom2/output/support/SAXTarget$SAXLocator;->setNode(Ljava/lang/Object;)V

    throw v0
.end method

.method protected printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .locals 2
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 475
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/xml/sax/ContentHandler;->skippedEntity(Ljava/lang/String;)V

    .line 476
    return-void
.end method

.method protected printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 436
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lorg/xml/sax/ContentHandler;->processingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    .line 438
    return-void
.end method

.method protected printText(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 518
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v0

    .line 519
    .local v0, "chars":[C
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v1

    array-length v2, v0

    const/4 v3, 0x0

    invoke-interface {v1, v0, v3, v2}, Lorg/xml/sax/ContentHandler;->characters([CII)V

    .line 520
    return-void
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/output/support/SAXTarget;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 170
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 171
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 172
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 173
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    .end local v0    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v1    # "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 178
    return-void

    .line 174
    :catch_0
    move-exception v0

    .line 175
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the List: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 184
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 185
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 186
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 187
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 188
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v3, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 192
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    .end local v1    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v2    # "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 193
    return-void

    .line 189
    :catch_0
    move-exception v0

    .line 190
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the CDATA: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 214
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 215
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printComment(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 219
    nop

    .line 220
    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Comment: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 145
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 146
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 150
    nop

    .line 151
    return-void

    .line 147
    :catch_0
    move-exception v0

    .line 148
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the DocType: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 132
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 133
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    nop

    .line 139
    return-void

    .line 135
    :catch_0
    move-exception v0

    .line 136
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Document: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 157
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 158
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 163
    nop

    .line 164
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Element: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 239
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 240
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 245
    nop

    .line 246
    return-void

    .line 241
    :catch_0
    move-exception v0

    .line 242
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the EntityRef: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 226
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 227
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    nop

    .line 233
    return-void

    .line 228
    :catch_0
    move-exception v0

    .line 229
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the ProcessingInstruction: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public process(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 199
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 200
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 201
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 202
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 203
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v3, v2}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 207
    .end local v0    # "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    .end local v1    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v2    # "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 208
    return-void

    .line 204
    :catch_0
    move-exception v0

    .line 205
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Text: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .locals 4
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/jdom2/output/support/SAXTarget;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 252
    .local p3, "nodes":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    if-eqz p3, :cond_3

    :try_start_0
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 256
    :cond_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 258
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 260
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 263
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->isReportDTDEvents()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 264
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Content;

    .line 265
    .local v2, "c":Lorg/jdom2/Content;
    instance-of v3, v2, Lorg/jdom2/DocType;

    if-eqz v3, :cond_1

    .line 266
    move-object v3, v2

    check-cast v3, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, v0, v3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printDocType(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 269
    goto :goto_1

    .line 271
    .end local v2    # "c":Lorg/jdom2/Content;
    :cond_1
    goto :goto_0

    .line 274
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_2
    :goto_1
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 276
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printContent(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 279
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v2

    invoke-interface {v2}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 283
    .end local v0    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local v1    # "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 284
    return-void

    .line 280
    :catch_0
    move-exception v0

    .line 281
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the List: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 253
    .end local v0    # "se":Lorg/xml/sax/SAXException;
    :cond_3
    :goto_2
    return-void
.end method

.method public processAsDocument(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .locals 3
    .param p1, "out"    # Lorg/jdom2/output/support/SAXTarget;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "node"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jdom2/JDOMException;
        }
    .end annotation

    .line 290
    if-nez p3, :cond_0

    .line 291
    return-void

    .line 294
    :cond_0
    :try_start_0
    invoke-static {p1}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->locate(Lorg/jdom2/output/support/SAXTarget;)V

    .line 296
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->startDocument()V

    .line 298
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractSAXOutputProcessor;->printElement(Lorg/jdom2/output/support/SAXTarget;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 302
    invoke-virtual {p1}, Lorg/jdom2/output/support/SAXTarget;->getContentHandler()Lorg/xml/sax/ContentHandler;

    move-result-object v0

    invoke-interface {v0}, Lorg/xml/sax/ContentHandler;->endDocument()V
    :try_end_0
    .catch Lorg/xml/sax/SAXException; {:try_start_0 .. :try_end_0} :catch_0

    .line 306
    nop

    .line 307
    return-void

    .line 303
    :catch_0
    move-exception v0

    .line 304
    .local v0, "se":Lorg/xml/sax/SAXException;
    new-instance v1, Lorg/jdom2/JDOMException;

    const-string v2, "Encountered a SAX exception processing the Element: "

    invoke-direct {v1, v2, v0}, Lorg/jdom2/JDOMException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
