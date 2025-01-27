.class public abstract Lorg/jdom2/output/support/AbstractDOMOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractDOMOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/DOMOutputProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 297
    return-void
.end method

.method private static getXmlnsTagFor(Lorg/jdom2/Namespace;)Ljava/lang/String;
    .locals 3
    .param p0, "ns"    # Lorg/jdom2/Namespace;

    .line 134
    const-string/jumbo v0, "xmlns"

    .line 135
    .local v0, "attrName":Ljava/lang/String;
    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 136
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 137
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 139
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;
    .locals 3
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "content"    # Lorg/jdom2/Content;

    .line 573
    sget-object v0, Lorg/jdom2/output/support/AbstractDOMOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {p4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v1

    invoke-virtual {v1}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 590
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected Content "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p4}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 586
    :pswitch_0
    move-object v0, p4

    check-cast v0, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0

    .line 581
    :pswitch_1
    move-object v0, p4

    check-cast v0, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0

    .line 575
    :pswitch_2
    move-object v0, p4

    check-cast v0, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    return-object v0

    .line 583
    :pswitch_3
    move-object v0, p4

    check-cast v0, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0

    .line 579
    :pswitch_4
    move-object v0, p4

    check-cast v0, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0

    .line 588
    :pswitch_5
    const/4 v0, 0x0

    return-object v0

    .line 577
    :pswitch_6
    move-object v0, p4

    check-cast v0, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0

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

.method protected printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .locals 2
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;

    .line 411
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 412
    const/4 v0, 0x0

    return-object v0

    .line 414
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getNamespaceURI()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createAttributeNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Attr;

    move-result-object v0

    .line 416
    .local v0, "attr":Lorg/w3c/dom/Attr;
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/w3c/dom/Attr;->setValue(Ljava/lang/String;)V

    .line 417
    return-object v0
.end method

.method protected printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .locals 1
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;

    .line 379
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createCDATASection(Ljava/lang/String;)Lorg/w3c/dom/CDATASection;

    move-result-object v0

    return-object v0
.end method

.method protected printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .locals 1
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "comment"    # Lorg/jdom2/Comment;

    .line 345
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createComment(Ljava/lang/String;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method protected printContent(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/jdom2/output/support/Walker;)V
    .locals 4
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "target"    # Lorg/w3c/dom/Node;
    .param p5, "walker"    # Lorg/jdom2/output/support/Walker;

    .line 533
    :goto_0
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 534
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 535
    .local v0, "c":Lorg/jdom2/Content;
    const/4 v1, 0x0

    .line 536
    .local v1, "n":Lorg/w3c/dom/Node;
    if-nez v0, :cond_1

    .line 538
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    .line 539
    .local v2, "text":Ljava/lang/String;
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 540
    new-instance v3, Lorg/jdom2/CDATA;

    invoke-direct {v3, v2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v1

    goto :goto_1

    .line 542
    :cond_0
    new-instance v3, Lorg/jdom2/Text;

    invoke-direct {v3, v2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v1

    .line 544
    .end local v2    # "text":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 545
    :cond_1
    invoke-virtual {p0, p1, p2, p3, v0}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 548
    :goto_2
    if-eqz v1, :cond_2

    .line 549
    invoke-interface {p4, v1}, Lorg/w3c/dom/Node;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 551
    .end local v0    # "c":Lorg/jdom2/Content;
    .end local v1    # "n":Lorg/w3c/dom/Node;
    :cond_2
    goto :goto_0

    .line 553
    :cond_3
    return-void
.end method

.method protected printDocument(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;
    .locals 6
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "doc"    # Lorg/jdom2/Document;

    .line 271
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    if-nez v0, :cond_0

    .line 272
    const-string v0, "1.0"

    invoke-interface {p3, v0}, Lorg/w3c/dom/Document;->setXmlVersion(Ljava/lang/String;)V

    .line 275
    :cond_0
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v0

    .line 277
    .local v0, "sz":I
    if-lez v0, :cond_2

    .line 278
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 279
    invoke-virtual {p4, v1}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v2

    .line 280
    .local v2, "c":Lorg/jdom2/Content;
    const/4 v3, 0x0

    .line 281
    .local v3, "n":Lorg/w3c/dom/Node;
    sget-object v4, Lorg/jdom2/output/support/AbstractDOMOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    goto :goto_1

    .line 294
    :pswitch_0
    move-object v4, v2

    check-cast v4, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p3, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v3

    .line 296
    goto :goto_1

    .line 291
    :pswitch_1
    move-object v4, v2

    check-cast v4, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v3

    .line 292
    goto :goto_1

    .line 289
    :pswitch_2
    goto :goto_1

    .line 283
    :pswitch_3
    move-object v4, v2

    check-cast v4, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p3, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v3

    .line 284
    nop

    .line 300
    :goto_1
    if-eqz v3, :cond_1

    .line 301
    invoke-interface {p3, v3}, Lorg/w3c/dom/Document;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 278
    .end local v2    # "c":Lorg/jdom2/Content;
    .end local v3    # "n":Lorg/w3c/dom/Node;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 306
    .end local v1    # "i":I
    :cond_2
    return-object p3

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .locals 10
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p3, "basedoc"    # Lorg/w3c/dom/Document;
    .param p4, "element"    # Lorg/jdom2/Element;

    .line 444
    invoke-virtual {p2, p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 447
    :try_start_0
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v0

    .line 450
    .local v0, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v1, "space"

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p4, v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 453
    .local v1, "space":Ljava/lang/String;
    const-string v2, "default"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 454
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 455
    :cond_0
    const-string v2, "preserve"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 456
    sget-object v2, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    move-object v0, v2

    .line 459
    :cond_1
    :goto_0
    invoke-virtual {p4}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v2, v3}, Lorg/w3c/dom/Document;->createElementNS(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/Element;

    move-result-object v2

    .line 462
    .local v2, "ret":Lorg/w3c/dom/Element;
    invoke-virtual {p2}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Namespace;

    .line 463
    .local v4, "ns":Lorg/jdom2/Namespace;
    sget-object v5, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v4, v5, :cond_2

    .line 464
    goto :goto_1

    .line 466
    :cond_2
    const-string v5, "http://www.w3.org/2000/xmlns/"

    invoke-static {v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->getXmlnsTagFor(Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v2, v5, v6, v7}, Lorg/w3c/dom/Element;->setAttributeNS(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 467
    .end local v4    # "ns":Lorg/jdom2/Namespace;
    goto :goto_1

    .line 469
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_3
    invoke-virtual {p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 470
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .restart local v3    # "i$":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Attribute;

    .line 471
    .local v4, "att":Lorg/jdom2/Attribute;
    invoke-virtual {p0, p1, p3, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v5

    .line 472
    .local v5, "a":Lorg/w3c/dom/Attr;
    if-eqz v5, :cond_4

    .line 473
    invoke-interface {v2, v5}, Lorg/w3c/dom/Element;->setAttributeNodeNS(Lorg/w3c/dom/Attr;)Lorg/w3c/dom/Attr;

    .line 475
    .end local v4    # "att":Lorg/jdom2/Attribute;
    .end local v5    # "a":Lorg/w3c/dom/Attr;
    :cond_4
    goto :goto_2

    .line 478
    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_5
    invoke-virtual {p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v3

    move-object v9, v3

    .line 480
    .local v9, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v9}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_8

    .line 481
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 483
    :try_start_1
    invoke-virtual {p1, v0}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 484
    const/4 v3, 0x0

    invoke-virtual {p0, p1, v9, v3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v8

    .line 486
    .local v8, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v8}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v3

    if-nez v3, :cond_6

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 488
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    .line 490
    .local v3, "n":Lorg/w3c/dom/Text;
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;

    .line 493
    .end local v3    # "n":Lorg/w3c/dom/Text;
    :cond_6
    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, v2

    invoke-virtual/range {v3 .. v8}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printContent(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/w3c/dom/Node;Lorg/jdom2/output/support/Walker;)V

    .line 495
    invoke-interface {v8}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v3

    if-nez v3, :cond_7

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 497
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v3

    invoke-interface {p3, v3}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v3

    .line 499
    .restart local v3    # "n":Lorg/w3c/dom/Text;
    invoke-interface {v2, v3}, Lorg/w3c/dom/Element;->appendChild(Lorg/w3c/dom/Node;)Lorg/w3c/dom/Node;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 503
    .end local v3    # "n":Lorg/w3c/dom/Text;
    .end local v8    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_7
    :try_start_2
    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 504
    goto :goto_3

    .line 503
    :catchall_0
    move-exception v3

    invoke-virtual {p1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .end local p1    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p2    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p3    # "basedoc":Lorg/w3c/dom/Document;
    .end local p4    # "element":Lorg/jdom2/Element;
    throw v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 507
    .restart local p1    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p2    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p3    # "basedoc":Lorg/w3c/dom/Document;
    .restart local p4    # "element":Lorg/jdom2/Element;
    :cond_8
    :goto_3
    nop

    .line 510
    invoke-virtual {p2}, Lorg/jdom2/util/NamespaceStack;->pop()V

    return-object v2

    .end local v0    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v1    # "space":Ljava/lang/String;
    .end local v2    # "ret":Lorg/w3c/dom/Element;
    .end local v9    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :catchall_1
    move-exception v0

    invoke-virtual {p2}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v0
.end method

.method protected printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;

    .line 362
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createEntityReference(Ljava/lang/String;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method protected printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 3
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .line 324
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 325
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    .line 326
    .local v1, "rawData":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 327
    :cond_0
    const-string v1, ""

    .line 329
    :cond_1
    invoke-interface {p2, v0, v1}, Lorg/w3c/dom/Document;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v2

    return-object v2
.end method

.method protected printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .locals 1
    .param p1, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p2, "basedoc"    # Lorg/w3c/dom/Document;
    .param p3, "text"    # Lorg/jdom2/Text;

    .line 395
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/w3c/dom/Document;->createTextNode(Ljava/lang/String;)Lorg/w3c/dom/Text;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Document;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)",
            "Ljava/util/List<",
            "Lorg/w3c/dom/Node;",
            ">;"
        }
    .end annotation

    .line 164
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 166
    .local v0, "ret":Ljava/util/List;, "Ljava/util/List<Lorg/w3c/dom/Node;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 167
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    .line 168
    .local v2, "nstack":Lorg/jdom2/util/NamespaceStack;
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/jdom2/Content;

    .line 169
    .local v4, "c":Lorg/jdom2/Content;
    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->push()V

    .line 171
    :try_start_0
    invoke-virtual {p0, v1, v2, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->helperContentDispatcher(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Content;)Lorg/w3c/dom/Node;

    move-result-object v5

    .line 173
    .local v5, "node":Lorg/w3c/dom/Node;
    if-eqz v5, :cond_0

    .line 174
    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 177
    .end local v5    # "node":Lorg/w3c/dom/Node;
    :cond_0
    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 178
    nop

    .line 179
    .end local v4    # "c":Lorg/jdom2/Content;
    goto :goto_0

    .line 177
    .restart local v4    # "c":Lorg/jdom2/Content;
    :catchall_0
    move-exception v5

    invoke-virtual {v1}, Lorg/jdom2/output/support/FormatStack;->pop()V

    throw v5

    .line 180
    .end local v3    # "i$":Ljava/util/Iterator;
    .end local v4    # "c":Lorg/jdom2/Content;
    :cond_1
    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;
    .locals 1
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;

    .line 243
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printAttribute(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Attribute;)Lorg/w3c/dom/Attr;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;
    .locals 6
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;

    .line 186
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 187
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 188
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 189
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 190
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 191
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 192
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v4

    return-object v4

    .line 194
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 195
    move-object v4, v3

    check-cast v4, Lorg/jdom2/CDATA;

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printCDATA(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/CDATA;)Lorg/w3c/dom/CDATASection;

    move-result-object v4

    return-object v4

    .line 199
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;
    .locals 1
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;

    .line 224
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printComment(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Comment;)Lorg/w3c/dom/Comment;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;
    .locals 2
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;

    .line 150
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printDocument(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Document;)Lorg/w3c/dom/Document;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;
    .locals 2
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;

    .line 157
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, v0, v1, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printElement(Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/w3c/dom/Document;Lorg/jdom2/Element;)Lorg/w3c/dom/Element;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;
    .locals 1
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;

    .line 237
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printEntityRef(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/EntityRef;)Lorg/w3c/dom/EntityReference;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;
    .locals 1
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;

    .line 231
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, v0, p1, p3}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printProcessingInstruction(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/ProcessingInstruction;)Lorg/w3c/dom/ProcessingInstruction;

    move-result-object v0

    return-object v0
.end method

.method public process(Lorg/w3c/dom/Document;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;
    .locals 6
    .param p1, "basedoc"    # Lorg/w3c/dom/Document;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;

    .line 205
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 206
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 207
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 208
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 209
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 210
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 211
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v4

    return-object v4

    .line 213
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 214
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Text;

    invoke-virtual {p0, v1, p1, v4}, Lorg/jdom2/output/support/AbstractDOMOutputProcessor;->printText(Lorg/jdom2/output/support/FormatStack;Lorg/w3c/dom/Document;Lorg/jdom2/Text;)Lorg/w3c/dom/Text;

    move-result-object v4

    return-object v4

    .line 218
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method
