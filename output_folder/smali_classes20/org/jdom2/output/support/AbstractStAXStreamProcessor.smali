.class public abstract Lorg/jdom2/output/support/AbstractStAXStreamProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXStreamProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXStreamProcessor;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 374
    return-void
.end method


# virtual methods
.method protected printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V
    .locals 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 801
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 802
    return-void

    .line 805
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    .line 806
    .local v0, "ns":Lorg/jdom2/Namespace;
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v0, v1, :cond_1

    .line 807
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 809
    :cond_1
    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v1, v2, v3, v4}, Ljavax/xml/stream/XMLStreamWriter;->writeAttribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 812
    :goto_0
    return-void
.end method

.method protected printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 519
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCData(Ljava/lang/String;)V

    .line 520
    return-void
.end method

.method protected printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 484
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeComment(Ljava/lang/String;)V

    .line 485
    return-void
.end method

.method protected printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .locals 4
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 721
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 722
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 724
    .local v0, "content":Lorg/jdom2/Content;
    if-nez v0, :cond_1

    .line 725
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    new-instance v1, Lorg/jdom2/CDATA;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_1

    .line 728
    :cond_0
    new-instance v1, Lorg/jdom2/Text;

    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_1

    .line 731
    :cond_1
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 755
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected Content "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 742
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 743
    goto :goto_1

    .line 733
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 734
    goto :goto_1

    .line 749
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 750
    goto :goto_1

    .line 745
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 747
    goto :goto_1

    .line 739
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 740
    goto :goto_1

    .line 752
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 753
    goto :goto_1

    .line 736
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 737
    nop

    .line 760
    .end local v0    # "content":Lorg/jdom2/Content;
    :goto_1
    goto/16 :goto_0

    .line 762
    :cond_2
    return-void

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

.method protected printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .locals 7
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 405
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 406
    .local v0, "publicID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "systemID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    .line 408
    .local v2, "internalSubset":Ljava/lang/String;
    const/4 v3, 0x0

    .line 413
    .local v3, "hasPublic":Z
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 415
    .local v4, "sw":Ljava/io/StringWriter;
    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 416
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 417
    const-string v5, "\""

    if-eqz v0, :cond_0

    .line 418
    const-string v6, " PUBLIC \""

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 419
    invoke-virtual {v4, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 420
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 421
    const/4 v3, 0x1

    .line 423
    :cond_0
    if-eqz v1, :cond_2

    .line 424
    if-nez v3, :cond_1

    .line 425
    const-string v6, " SYSTEM"

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 427
    :cond_1
    const-string v6, " \""

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 428
    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 429
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 431
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 432
    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 433
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 434
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 435
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 437
    :cond_3
    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 443
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljavax/xml/stream/XMLStreamWriter;->writeDTD(Ljava/lang/String;)V

    .line 444
    return-void
.end method

.method protected printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .locals 5
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 303
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 305
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument()V

    .line 306
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 307
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 309
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v0

    const-string v1, "1.0"

    if-eqz v0, :cond_1

    .line 310
    invoke-interface {p1, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;)V

    .line 311
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 312
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :cond_1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeStartDocument(Ljava/lang/String;Ljava/lang/String;)V

    .line 316
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 317
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 326
    :cond_2
    :goto_0
    invoke-virtual {p4}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 328
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 329
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    .line 330
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 331
    invoke-virtual {p4, v2}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 330
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 334
    .end local v1    # "sz":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 335
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 336
    :goto_3
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 338
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v2

    .line 341
    .local v2, "c":Lorg/jdom2/Content;
    if-nez v2, :cond_6

    .line 343
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v3

    .line 344
    .local v3, "padding":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v4

    if-nez v4, :cond_5

    .line 349
    invoke-interface {p1, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 351
    .end local v3    # "padding":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 352
    :cond_6
    sget-object v3, Lorg/jdom2/output/support/AbstractStAXStreamProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 367
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Text;

    invoke-virtual {v3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 368
    .restart local v3    # "padding":Ljava/lang/String;
    if-eqz v3, :cond_7

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 372
    invoke-interface {p1, v3}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    goto :goto_4

    .line 363
    .end local v3    # "padding":Ljava/lang/String;
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 365
    goto :goto_4

    .line 360
    :pswitch_2
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 361
    goto :goto_4

    .line 357
    :pswitch_3
    move-object v3, v2

    check-cast v3, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 358
    goto :goto_4

    .line 354
    :pswitch_4
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 355
    nop

    .line 379
    .end local v2    # "c":Lorg/jdom2/Content;
    :cond_7
    :goto_4
    goto :goto_3

    .line 381
    :cond_8
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 382
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 386
    :cond_9
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndDocument()V

    .line 388
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .locals 10
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 556
    const-string v0, ""

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 557
    .local v1, "restore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p3, p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 559
    :try_start_0
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jdom2/Namespace;

    .line 560
    .local v3, "nsa":Lorg/jdom2/Namespace;
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 562
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v4

    invoke-interface {p1, v4}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_1

    .line 564
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v4, v5}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    .end local v3    # "nsa":Lorg/jdom2/Namespace;
    :goto_1
    goto :goto_0

    .line 568
    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-virtual {p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v2

    .line 570
    .local v2, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v3

    .line 580
    .local v3, "textmode":Lorg/jdom2/output/Format$TextMode;
    const/4 v4, 0x0

    .line 582
    .local v4, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v5

    const/4 v6, 0x0

    if-nez v5, :cond_5

    .line 585
    const-string v5, "space"

    sget-object v7, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p4, v5, v7}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v5

    .line 588
    .local v5, "space":Ljava/lang/String;
    const-string v7, "default"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 589
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v7

    move-object v3, v7

    goto :goto_2

    .line 591
    :cond_2
    const-string v7, "preserve"

    invoke-virtual {v7, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 592
    sget-object v7, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    move-object v3, v7

    .line 595
    :cond_3
    :goto_2
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 597
    :try_start_1
    invoke-virtual {p2, v3}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 598
    invoke-virtual {p0, p2, v2, v6}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v7

    move-object v4, v7

    .line 599
    invoke-interface {v4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v7, :cond_4

    .line 601
    const/4 v4, 0x0

    .line 603
    :cond_4
    nop

    .line 700
    :try_start_2
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 605
    goto :goto_3

    .line 604
    :catchall_0
    move-exception v6

    .line 700
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 604
    nop

    .end local v1    # "restore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1    # "out":Ljavax/xml/stream/XMLStreamWriter;
    .end local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p4    # "element":Lorg/jdom2/Element;
    throw v6

    .line 612
    .end local v5    # "space":Ljava/lang/String;
    .restart local v1    # "restore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "out":Ljavax/xml/stream/XMLStreamWriter;
    .restart local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p4    # "element":Lorg/jdom2/Element;
    :cond_5
    :goto_3
    if-nez v4, :cond_6

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v5

    if-eqz v5, :cond_7

    :cond_6
    const/4 v6, 0x1

    :cond_7
    move v5, v6

    .line 614
    .local v5, "expandit":Z
    invoke-virtual {p4}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v6

    .line 615
    .local v6, "ns":Lorg/jdom2/Namespace;
    if-eqz v5, :cond_d

    .line 616
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v9}, Ljavax/xml/stream/XMLStreamWriter;->writeStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 619
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_8

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Namespace;

    .line 620
    .local v8, "nsd":Lorg/jdom2/Namespace;
    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    .line 621
    .end local v8    # "nsd":Lorg/jdom2/Namespace;
    goto :goto_4

    .line 624
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_8
    invoke-virtual {p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v7

    if-eqz v7, :cond_9

    .line 625
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_9

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Attribute;

    .line 626
    .local v8, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    .line 627
    .end local v8    # "attribute":Lorg/jdom2/Attribute;
    goto :goto_5

    .line 633
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_9
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 636
    if-eqz v4, :cond_c

    .line 638
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 640
    :try_start_3
    invoke-virtual {p2, v3}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 641
    invoke-interface {v4}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v7

    if-nez v7, :cond_a

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_a

    .line 643
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v7

    .line 644
    .local v7, "indent":Ljava/lang/String;
    new-instance v8, Lorg/jdom2/Text;

    invoke-direct {v8, v7}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 647
    .end local v7    # "indent":Ljava/lang/String;
    :cond_a
    invoke-virtual {p0, p1, p2, p3, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 649
    invoke-interface {v4}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v7

    if-nez v7, :cond_b

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 651
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v7

    .line 652
    .restart local v7    # "indent":Ljava/lang/String;
    new-instance v8, Lorg/jdom2/Text;

    invoke-direct {v8, v7}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 654
    .end local v7    # "indent":Ljava/lang/String;
    :cond_b
    nop

    .line 700
    :try_start_4
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 656
    goto :goto_6

    .line 655
    :catchall_1
    move-exception v7

    .line 700
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 655
    nop

    .end local v1    # "restore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local p1    # "out":Ljavax/xml/stream/XMLStreamWriter;
    .end local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p4    # "element":Lorg/jdom2/Element;
    throw v7

    .line 659
    .restart local v1    # "restore":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local p1    # "out":Ljavax/xml/stream/XMLStreamWriter;
    .restart local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p4    # "element":Lorg/jdom2/Element;
    :cond_c
    :goto_6
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->writeEndElement()V

    goto :goto_9

    .line 669
    :cond_d
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p4}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v9

    invoke-interface {p1, v7, v8, v9}, Ljavax/xml/stream/XMLStreamWriter;->writeEmptyElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 672
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, "i$":Ljava/util/Iterator;
    :goto_7
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Namespace;

    .line 673
    .local v8, "nsd":Lorg/jdom2/Namespace;
    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    .line 674
    .end local v8    # "nsd":Lorg/jdom2/Namespace;
    goto :goto_7

    .line 677
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_e
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v7

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7    # "i$":Ljava/util/Iterator;
    :goto_8
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/jdom2/Attribute;

    .line 678
    .local v8, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, p1, p2, v8}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printAttribute(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    .line 679
    .end local v8    # "attribute":Lorg/jdom2/Attribute;
    goto :goto_8

    .line 681
    .end local v7    # "i$":Ljava/util/Iterator;
    :cond_f
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 684
    .end local v2    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v3    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v4    # "walker":Lorg/jdom2/output/support/Walker;
    .end local v5    # "expandit":Z
    .end local v6    # "ns":Lorg/jdom2/Namespace;
    :goto_9
    nop

    .line 700
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 686
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i$":Ljava/util/Iterator;
    :goto_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 687
    .local v3, "pfx":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "i$":Ljava/util/Iterator;
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_12

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/jdom2/Namespace;

    .line 688
    .local v5, "nsa":Lorg/jdom2/Namespace;
    invoke-virtual {v5}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_11

    .line 689
    invoke-virtual {v5}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_10

    .line 690
    invoke-virtual {v5}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v6

    invoke-interface {p1, v6}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_c

    .line 692
    :cond_10
    invoke-virtual {v5}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v6, v7}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    goto :goto_c

    .line 696
    .end local v5    # "nsa":Lorg/jdom2/Namespace;
    :cond_11
    goto :goto_b

    .line 697
    .end local v3    # "pfx":Ljava/lang/String;
    .end local v4    # "i$":Ljava/util/Iterator;
    :cond_12
    :goto_c
    goto :goto_a

    .end local v2    # "i$":Ljava/util/Iterator;
    :cond_13
    nop

    .line 699
    nop

    .line 700
    return-void

    .line 685
    :catchall_2
    move-exception v2

    .line 697
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 686
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "i$":Ljava/util/Iterator;
    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 687
    .local v4, "pfx":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, "i$":Ljava/util/Iterator;
    :goto_e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_16

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/jdom2/Namespace;

    .line 688
    .local v6, "nsa":Lorg/jdom2/Namespace;
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_15

    .line 689
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_14

    .line 690
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v7

    invoke-interface {p1, v7}, Ljavax/xml/stream/XMLStreamWriter;->setDefaultNamespace(Ljava/lang/String;)V

    goto :goto_f

    .line 692
    :cond_14
    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v8

    invoke-interface {p1, v7, v8}, Ljavax/xml/stream/XMLStreamWriter;->setPrefix(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    goto :goto_f

    .line 696
    .end local v6    # "nsa":Lorg/jdom2/Namespace;
    :cond_15
    goto :goto_e

    .line 697
    .end local v4    # "pfx":Ljava/lang/String;
    .end local v5    # "i$":Ljava/util/Iterator;
    :cond_16
    :goto_f
    goto :goto_d

    .end local v3    # "i$":Ljava/util/Iterator;
    :cond_17
    nop

    .line 685
    throw v2
.end method

.method protected printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 501
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeEntityRef(Ljava/lang/String;)V

    .line 502
    return-void
.end method

.method protected printNamespace(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "ns"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 780
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 781
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 783
    .local v1, "uri":Ljava/lang/String;
    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeNamespace(Ljava/lang/String;Ljava/lang/String;)V

    .line 784
    return-void
.end method

.method protected printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .locals 3
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 461
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 462
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    .line 463
    .local v1, "rawData":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 464
    invoke-interface {p1, v0, v1}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 466
    :cond_0
    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeProcessingInstruction(Ljava/lang/String;)V

    .line 468
    :goto_0
    return-void
.end method

.method protected printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 536
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/XMLStreamWriter;->writeCharacters(Ljava/lang/String;)V

    .line 537
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .locals 3
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/XMLStreamWriter;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 184
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 185
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p3, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 186
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printContent(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 187
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 188
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 199
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 200
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 201
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 202
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 203
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 204
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 205
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 206
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 207
    move-object v4, v3

    check-cast v4, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printCDATA(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 210
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 211
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 245
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printComment(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 246
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 247
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 154
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocType(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 155
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 156
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 141
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printDocument(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V

    .line 142
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 143
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 169
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printElement(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 171
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 172
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 274
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printEntityRef(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 275
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 276
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 258
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 260
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 261
    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printProcessingInstruction(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 262
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 263
    return-void
.end method

.method public process(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/XMLStreamWriter;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 222
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 223
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 224
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 225
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 226
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 227
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 228
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 229
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 230
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, v1, v4}, Lorg/jdom2/output/support/AbstractStAXStreamProcessor;->printText(Ljavax/xml/stream/XMLStreamWriter;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    .line 233
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    :goto_0
    invoke-interface {p1}, Ljavax/xml/stream/XMLStreamWriter;->flush()V

    .line 234
    return-void
.end method
