.class public abstract Lorg/jdom2/output/support/AbstractStAXEventProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractStAXEventProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/StAXEventProcessor;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;,
        Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 123
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 154
    return-void
.end method


# virtual methods
.method protected printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 591
    invoke-virtual {p4}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createCData(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 592
    return-void
.end method

.method protected printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 552
    invoke-virtual {p4}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createComment(Ljava/lang/String;)Ljavax/xml/stream/events/Comment;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 553
    return-void
.end method

.method protected printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V
    .locals 8
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 734
    :goto_0
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 736
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 738
    .local v0, "content":Lorg/jdom2/Content;
    if-nez v0, :cond_1

    .line 739
    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    new-instance v1, Lorg/jdom2/CDATA;

    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    goto/16 :goto_1

    .line 742
    :cond_0
    new-instance v1, Lorg/jdom2/Text;

    invoke-interface {p5}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    goto :goto_1

    .line 745
    :cond_1
    sget-object v1, Lorg/jdom2/output/support/AbstractStAXEventProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 769
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

    .line 763
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    .line 764
    goto :goto_1

    .line 756
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V

    .line 757
    goto :goto_1

    .line 747
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    .line 748
    goto :goto_1

    .line 759
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    .line 761
    goto :goto_1

    .line 753
    :pswitch_4
    move-object v7, v0

    check-cast v7, Lorg/jdom2/Element;

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    invoke-virtual/range {v2 .. v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    .line 754
    goto :goto_1

    .line 766
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    .line 767
    goto :goto_1

    .line 750
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    .line 751
    nop

    .line 774
    .end local v0    # "content":Lorg/jdom2/Content;
    :goto_1
    goto/16 :goto_0

    .line 775
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

.method protected printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V
    .locals 7
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 469
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 470
    .local v0, "publicID":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 471
    .local v1, "systemID":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    .line 472
    .local v2, "internalSubset":Ljava/lang/String;
    const/4 v3, 0x0

    .line 477
    .local v3, "hasPublic":Z
    new-instance v4, Ljava/io/StringWriter;

    invoke-direct {v4}, Ljava/io/StringWriter;-><init>()V

    .line 479
    .local v4, "sw":Ljava/io/StringWriter;
    const-string v5, "<!DOCTYPE "

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 480
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 481
    const-string v5, "\""

    if-eqz v0, :cond_0

    .line 482
    const-string v6, " PUBLIC \""

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 483
    invoke-virtual {v4, v0}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 484
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 485
    const/4 v3, 0x1

    .line 487
    :cond_0
    if-eqz v1, :cond_2

    .line 488
    if-nez v3, :cond_1

    .line 489
    const-string v6, " SYSTEM"

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 491
    :cond_1
    const-string v6, " \""

    invoke-virtual {v4, v6}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 492
    invoke-virtual {v4, v1}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 493
    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 495
    :cond_2
    if-eqz v2, :cond_3

    const-string v5, ""

    invoke-virtual {v2, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 496
    const-string v5, " ["

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 497
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 498
    invoke-virtual {p4}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 499
    const-string v5, "]"

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 501
    :cond_3
    const-string v5, ">"

    invoke-virtual {v4, v5}, Ljava/io/StringWriter;->write(Ljava/lang/String;)V

    .line 507
    invoke-virtual {v4}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p3, v5}, Ljavax/xml/stream/XMLEventFactory;->createDTD(Ljava/lang/String;)Ljavax/xml/stream/events/DTD;

    move-result-object v5

    invoke-interface {p1, v5}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 508
    return-void
.end method

.method protected printDocument(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V
    .locals 10
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 375
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 377
    invoke-virtual {p4, v1, v1}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    .line 378
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v0

    const-string v2, "1.0"

    if-eqz v0, :cond_1

    .line 379
    invoke-virtual {p4, v1, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 380
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 381
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    .line 384
    :cond_1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0, v2}, Ljavax/xml/stream/XMLEventFactory;->createStartDocument(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/StartDocument;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 385
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 386
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p4, v0}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 393
    :cond_2
    :goto_0
    invoke-virtual {p5}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p5}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    goto :goto_1

    :cond_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p5}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 395
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 396
    invoke-virtual {p5}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    .line 397
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v1, :cond_4

    .line 398
    invoke-virtual {p5, v2}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 397
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 402
    .end local v1    # "sz":I
    .end local v2    # "i":I
    :cond_4
    const/4 v1, 0x0

    invoke-virtual {p0, p2, v0, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 403
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 404
    :goto_3
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 406
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v2

    .line 410
    .local v2, "c":Lorg/jdom2/Content;
    if-nez v2, :cond_6

    .line 412
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v3

    .line 413
    .local v3, "padding":Ljava/lang/String;
    if-eqz v3, :cond_5

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v4

    if-nez v4, :cond_5

    .line 418
    invoke-virtual {p4, v3}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v4

    invoke-interface {p1, v4}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 420
    .end local v3    # "padding":Ljava/lang/String;
    :cond_5
    goto :goto_4

    .line 421
    :cond_6
    sget-object v3, Lorg/jdom2/output/support/AbstractStAXEventProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_4

    .line 433
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    .line 435
    goto :goto_4

    .line 429
    :pswitch_1
    move-object v9, v2

    check-cast v9, Lorg/jdom2/Element;

    move-object v4, p0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    invoke-virtual/range {v4 .. v9}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    .line 431
    goto :goto_4

    .line 426
    :pswitch_2
    move-object v3, v2

    check-cast v3, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    .line 427
    goto :goto_4

    .line 423
    :pswitch_3
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, p4, v3}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    .line 424
    nop

    .line 441
    .end local v2    # "c":Lorg/jdom2/Content;
    :goto_4
    goto :goto_3

    .line 443
    :cond_7
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_8

    .line 444
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p4, v2}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 448
    :cond_8
    invoke-virtual {p4}, Ljavax/xml/stream/XMLEventFactory;->createEndDocument()Ljavax/xml/stream/events/EndDocument;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 450
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method protected printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V
    .locals 18
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p5, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 637
    move-object/from16 v7, p0

    move-object/from16 v8, p1

    move-object/from16 v9, p2

    move-object/from16 v10, p4

    move-object/from16 v11, p5

    move-object/from16 v12, p3

    invoke-virtual {v12, v11}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 640
    :try_start_0
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespace()Lorg/jdom2/Namespace;

    move-result-object v0

    move-object v13, v0

    .line 641
    .local v13, "ns":Lorg/jdom2/Namespace;
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 644
    .local v0, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    :goto_0
    sget-object v1, Lorg/jdom2/Namespace;->NO_NAMESPACE:Lorg/jdom2/Namespace;

    if-ne v13, v1, :cond_1

    .line 645
    const-string v2, ""

    const-string v3, ""

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v1

    invoke-direct {v5, v0, v10, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v6, v1, v10}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v8, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_1

    .line 648
    :cond_1
    const-string v1, ""

    invoke-virtual {v13}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 649
    const-string v2, ""

    invoke-virtual {v13}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v1

    invoke-direct {v5, v0, v10, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v6, v1, v10}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v8, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_1

    .line 653
    :cond_2
    invoke-virtual {v13}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v13}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v3

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v1

    invoke-direct {v5, v0, v10, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$AttIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;Z)V

    new-instance v6, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-direct {v6, v1, v10}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    move-object/from16 v1, p4

    invoke-virtual/range {v1 .. v6}, Ljavax/xml/stream/XMLEventFactory;->createStartElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;Ljava/util/Iterator;)Ljavax/xml/stream/events/StartElement;

    move-result-object v1

    invoke-interface {v8, v1}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 657
    :goto_1
    const/4 v14, 0x0

    .line 659
    .end local v0    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    .local v14, "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    move-object v15, v0

    .line 661
    .local v15, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-interface {v15}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 662
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getTextMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v0

    .line 665
    .local v0, "textmode":Lorg/jdom2/output/Format$TextMode;
    const-string v1, "space"

    sget-object v2, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {v11, v1, v2}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v1

    move-object v5, v1

    .line 668
    .local v5, "space":Ljava/lang/String;
    const-string v1, "default"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 669
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v1

    move-object v0, v1

    move-object v4, v0

    goto :goto_2

    .line 671
    :cond_3
    const-string v1, "preserve"

    invoke-virtual {v1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 672
    sget-object v1, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    move-object v0, v1

    move-object v4, v0

    goto :goto_2

    .line 671
    :cond_4
    move-object v4, v0

    .line 675
    .end local v0    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .local v4, "textmode":Lorg/jdom2/output/Format$TextMode;
    :goto_2
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 678
    :try_start_1
    invoke-virtual {v9, v4}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 680
    const/4 v0, 0x0

    invoke-virtual {v7, v9, v15, v0}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v6

    .line 681
    .local v6, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v6}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 682
    invoke-interface {v6}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    if-nez v0, :cond_5

    :try_start_2
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 684
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v0

    .line 685
    .local v0, "indent":Ljava/lang/String;
    new-instance v1, Lorg/jdom2/Text;

    invoke-direct {v1, v0}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v10, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_3

    .line 697
    .end local v0    # "indent":Ljava/lang/String;
    .end local v6    # "walker":Lorg/jdom2/output/support/Walker;
    :catchall_0
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    goto :goto_5

    .line 688
    .restart local v6    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_5
    :goto_3
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v16, v4

    .end local v4    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .local v16, "textmode":Lorg/jdom2/output/Format$TextMode;
    move-object/from16 v4, p3

    move-object/from16 v17, v5

    .end local v5    # "space":Ljava/lang/String;
    .local v17, "space":Ljava/lang/String;
    move-object/from16 v5, p4

    :try_start_3
    invoke-virtual/range {v1 .. v6}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V

    .line 690
    invoke-interface {v6}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 692
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v0

    .line 693
    .restart local v0    # "indent":Ljava/lang/String;
    new-instance v1, Lorg/jdom2/Text;

    invoke-direct {v1, v0}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8, v9, v10, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    .line 697
    .end local v0    # "indent":Ljava/lang/String;
    .end local v6    # "walker":Lorg/jdom2/output/support/Walker;
    :catchall_1
    move-exception v0

    goto :goto_5

    .line 681
    .end local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v17    # "space":Ljava/lang/String;
    .restart local v4    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v5    # "space":Ljava/lang/String;
    .restart local v6    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_6
    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .line 697
    .end local v4    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v5    # "space":Ljava/lang/String;
    .end local v6    # "walker":Lorg/jdom2/output/support/Walker;
    .restart local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v17    # "space":Ljava/lang/String;
    :cond_7
    :goto_4
    :try_start_4
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 698
    goto :goto_6

    .line 697
    .end local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v17    # "space":Ljava/lang/String;
    .restart local v4    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v5    # "space":Ljava/lang/String;
    :catchall_2
    move-exception v0

    move-object/from16 v16, v4

    move-object/from16 v17, v5

    .end local v4    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v5    # "space":Ljava/lang/String;
    .restart local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .restart local v17    # "space":Ljava/lang/String;
    :goto_5
    invoke-virtual/range {p2 .. p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .end local p1    # "out":Ljavax/xml/stream/util/XMLEventConsumer;
    .end local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p4    # "eventfactory":Ljavax/xml/stream/XMLEventFactory;
    .end local p5    # "element":Lorg/jdom2/Element;
    throw v0

    .line 702
    .end local v16    # "textmode":Lorg/jdom2/output/Format$TextMode;
    .end local v17    # "space":Ljava/lang/String;
    .restart local p1    # "out":Ljavax/xml/stream/util/XMLEventConsumer;
    .restart local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p4    # "eventfactory":Ljavax/xml/stream/XMLEventFactory;
    .restart local p5    # "element":Lorg/jdom2/Element;
    :cond_8
    :goto_6
    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespacePrefix()Ljava/lang/String;

    move-result-object v0

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getNamespaceURI()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p5 .. p5}, Lorg/jdom2/Element;->getName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->addedReverse()Ljava/lang/Iterable;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    invoke-direct {v3, v4, v10}, Lorg/jdom2/output/support/AbstractStAXEventProcessor$NSIterator;-><init>(Ljava/util/Iterator;Ljavax/xml/stream/XMLEventFactory;)V

    invoke-virtual {v10, v0, v1, v2, v3}, Ljavax/xml/stream/XMLEventFactory;->createEndElement(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Iterator;)Ljavax/xml/stream/events/EndElement;

    move-result-object v0

    invoke-interface {v8, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 708
    .end local v13    # "ns":Lorg/jdom2/Namespace;
    .end local v14    # "ait":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/jdom2/Attribute;>;"
    .end local v15    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 709
    nop

    .line 710
    return-void

    .line 708
    :catchall_3
    move-exception v0

    invoke-virtual/range {p3 .. p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    throw v0
.end method

.method protected printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 571
    invoke-virtual {p4}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p3, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createEntityReference(Ljava/lang/String;Ljavax/xml/stream/events/EntityDeclaration;)Ljavax/xml/stream/events/EntityReference;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 572
    return-void
.end method

.method protected printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V
    .locals 3
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 527
    invoke-virtual {p4}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 528
    .local v0, "target":Ljava/lang/String;
    invoke-virtual {p4}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v1

    .line 529
    .local v1, "rawData":Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 530
    invoke-virtual {p3, v0, v1}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    goto :goto_0

    .line 532
    :cond_0
    const-string v2, ""

    invoke-virtual {p3, v0, v2}, Ljavax/xml/stream/XMLEventFactory;->createProcessingInstruction(Ljava/lang/String;Ljava/lang/String;)Ljavax/xml/stream/events/ProcessingInstruction;

    move-result-object v2

    invoke-interface {p1, v2}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 534
    :goto_0
    return-void
.end method

.method protected printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 610
    invoke-virtual {p4}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljavax/xml/stream/XMLEventFactory;->createCharacters(Ljava/lang/String;)Ljavax/xml/stream/events/Characters;

    move-result-object v0

    invoke-interface {p1, v0}, Ljavax/xml/stream/util/XMLEventConsumer;->add(Ljavax/xml/stream/events/XMLEvent;)V

    .line 611
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Ljava/util/List;)V
    .locals 8
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/xml/stream/util/XMLEventConsumer;",
            "Lorg/jdom2/output/Format;",
            "Ljavax/xml/stream/XMLEventFactory;",
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

    .line 260
    .local p4, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 261
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x0

    invoke-virtual {p0, v0, p4, v1}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 262
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v4, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v4, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v5, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v5}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v2, p0

    move-object v3, p1

    move-object v6, p3

    move-object v7, v1

    invoke-virtual/range {v2 .. v7}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printContent(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/output/support/Walker;)V

    .line 263
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 274
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 275
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 276
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 277
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 278
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 279
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 280
    new-instance v4, Lorg/jdom2/CDATA;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/CDATA;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->CDATA:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 282
    move-object v4, v3

    check-cast v4, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printCDATA(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/CDATA;)V

    .line 285
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    :goto_0
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 318
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printComment(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Comment;)V

    .line 319
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 232
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocType(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/DocType;)V

    .line 233
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 220
    new-instance v2, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v2, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printDocument(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Document;)V

    .line 221
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 246
    new-instance v2, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v2, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v5}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printElement(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Element;)V

    .line 248
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 345
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printEntityRef(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/EntityRef;)V

    .line 346
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V
    .locals 2
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 330
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 332
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 333
    invoke-virtual {p0, p1, v0, p3, p4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printProcessingInstruction(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/ProcessingInstruction;)V

    .line 334
    return-void
.end method

.method public process(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/Format;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V
    .locals 6
    .param p1, "out"    # Ljavax/xml/stream/util/XMLEventConsumer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "eventfactory"    # Ljavax/xml/stream/XMLEventFactory;
    .param p4, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/stream/XMLStreamException;
        }
    .end annotation

    .line 296
    invoke-static {p4}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 297
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 298
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 299
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 300
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v3

    .line 301
    .local v3, "c":Lorg/jdom2/Content;
    if-nez v3, :cond_0

    .line 302
    new-instance v4, Lorg/jdom2/Text;

    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lorg/jdom2/Text;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    goto :goto_0

    .line 303
    :cond_0
    invoke-virtual {v3}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    sget-object v5, Lorg/jdom2/Content$CType;->Text:Lorg/jdom2/Content$CType;

    if-ne v4, v5, :cond_1

    .line 304
    move-object v4, v3

    check-cast v4, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, v1, p3, v4}, Lorg/jdom2/output/support/AbstractStAXEventProcessor;->printText(Ljavax/xml/stream/util/XMLEventConsumer;Lorg/jdom2/output/support/FormatStack;Ljavax/xml/stream/XMLEventFactory;Lorg/jdom2/Text;)V

    .line 307
    .end local v3    # "c":Lorg/jdom2/Content;
    :cond_1
    :goto_0
    return-void
.end method
