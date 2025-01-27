.class public abstract Lorg/jdom2/output/support/AbstractXMLOutputProcessor;
.super Lorg/jdom2/output/support/AbstractOutputProcessor;
.source "AbstractXMLOutputProcessor.java"

# interfaces
.implements Lorg/jdom2/output/support/XMLOutputProcessor;


# static fields
.field protected static final CDATAPOST:Ljava/lang/String; = "]]>"

.field protected static final CDATAPRE:Ljava/lang/String; = "<![CDATA["


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 167
    invoke-direct {p0}, Lorg/jdom2/output/support/AbstractOutputProcessor;-><init>()V

    .line 547
    return-void
.end method


# virtual methods
.method protected attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "value"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 395
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    if-nez v0, :cond_0

    .line 397
    invoke-virtual {p0, p1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 398
    return-void

    .line 401
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/jdom2/output/Format;->escapeAttribute(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method protected printAttribute(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "attribute"    # Lorg/jdom2/Attribute;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1007
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->isSpecified()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isSpecifiedAttributesOnly()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    return-void

    .line 1010
    :cond_0
    const-string v0, " "

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1011
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getQualifiedName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1012
    const-string v0, "="

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1014
    const-string v0, "\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1015
    invoke-virtual {p3}, Lorg/jdom2/Attribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V

    .line 1016
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 1017
    return-void
.end method

.method protected printCDATA(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 748
    invoke-virtual {p3}, Lorg/jdom2/CDATA;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textCDATA(Ljava/io/Writer;Ljava/lang/String;)V

    .line 749
    return-void
.end method

.method protected printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 710
    const-string v0, "<!--"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 711
    invoke-virtual {p3}, Lorg/jdom2/Comment;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 712
    const-string v0, "-->"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 713
    return-void
.end method

.method protected printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "walker"    # Lorg/jdom2/output/support/Walker;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 924
    :goto_0
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 925
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v0

    .line 926
    .local v0, "c":Lorg/jdom2/Content;
    if-nez v0, :cond_1

    .line 928
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v1

    .line 929
    .local v1, "t":Ljava/lang/String;
    invoke-interface {p4}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 930
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textCDATA(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_1

    .line 932
    :cond_0
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 934
    .end local v1    # "t":Ljava/lang/String;
    :goto_1
    goto :goto_2

    .line 935
    :cond_1
    sget-object v1, Lorg/jdom2/output/support/AbstractXMLOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v0}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v2

    invoke-virtual {v2}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_2

    .line 949
    :pswitch_0
    move-object v1, v0

    check-cast v1, Lorg/jdom2/EntityRef;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 950
    goto :goto_2

    .line 937
    :pswitch_1
    move-object v1, v0

    check-cast v1, Lorg/jdom2/CDATA;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printCDATA(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/CDATA;)V

    .line 938
    goto :goto_2

    .line 956
    :pswitch_2
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Text;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printText(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V

    goto :goto_2

    .line 952
    :pswitch_3
    move-object v1, v0

    check-cast v1, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 954
    goto :goto_2

    .line 946
    :pswitch_4
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 947
    goto :goto_2

    .line 943
    :pswitch_5
    move-object v1, v0

    check-cast v1, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 944
    goto :goto_2

    .line 940
    :pswitch_6
    move-object v1, v0

    check-cast v1, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 941
    nop

    .line 960
    .end local v0    # "c":Lorg/jdom2/Content;
    :goto_2
    goto :goto_0

    .line 962
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

.method protected printDeclaration(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 575
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitDeclaration()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 576
    return-void

    .line 582
    :cond_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isOmitEncoding()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 583
    const-string v0, "<?xml version=\"1.0\"?>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_0

    .line 585
    :cond_1
    const-string v0, "<?xml version=\"1.0\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 586
    const-string v0, " encoding=\""

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 587
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEncoding()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 588
    const-string v0, "\"?>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 595
    :goto_0
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 596
    return-void
.end method

.method protected printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V
    .locals 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "docType"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 613
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getPublicID()Ljava/lang/String;

    move-result-object v0

    .line 614
    .local v0, "publicID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getSystemID()Ljava/lang/String;

    move-result-object v1

    .line 615
    .local v1, "systemID":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v2

    .line 616
    .local v2, "internalSubset":Ljava/lang/String;
    const/4 v3, 0x0

    .line 621
    .local v3, "hasPublic":Z
    const-string v4, "<!DOCTYPE "

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 622
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getElementName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 623
    const-string v4, "\""

    if-eqz v0, :cond_0

    .line 624
    const-string v5, " PUBLIC \""

    invoke-virtual {p0, p1, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 625
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 626
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 627
    const/4 v3, 0x1

    .line 629
    :cond_0
    if-eqz v1, :cond_2

    .line 630
    if-nez v3, :cond_1

    .line 631
    const-string v5, " SYSTEM"

    invoke-virtual {p0, p1, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 633
    :cond_1
    const-string v5, " \""

    invoke-virtual {p0, p1, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 634
    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 635
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 637
    :cond_2
    if-eqz v2, :cond_3

    const-string v4, ""

    invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 638
    const-string v4, " ["

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 639
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 640
    invoke-virtual {p3}, Lorg/jdom2/DocType;->getInternalSubset()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 641
    const-string v4, "]"

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 643
    :cond_3
    const-string v4, ">"

    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 645
    return-void
.end method

.method protected printDocument(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V
    .locals 5
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 496
    invoke-virtual {p4}, Lorg/jdom2/Document;->hasRootElement()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContent()Ljava/util/List;

    move-result-object v0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 498
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 499
    invoke-virtual {p4}, Lorg/jdom2/Document;->getContentSize()I

    move-result v1

    .line 500
    .local v1, "sz":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v1, :cond_1

    .line 501
    invoke-virtual {p4, v2}, Lorg/jdom2/Document;->getContent(I)Lorg/jdom2/Content;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 500
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 505
    .end local v1    # "sz":I
    .end local v2    # "i":I
    :cond_1
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDeclaration(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;)V

    .line 507
    const/4 v1, 0x1

    invoke-virtual {p0, p2, v0, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 508
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 509
    :goto_2
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 511
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->next()Lorg/jdom2/Content;

    move-result-object v2

    .line 514
    .local v2, "c":Lorg/jdom2/Content;
    if-nez v2, :cond_3

    .line 516
    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->text()Ljava/lang/String;

    move-result-object v3

    .line 517
    .local v3, "padding":Ljava/lang/String;
    if-eqz v3, :cond_2

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Lorg/jdom2/output/support/Walker;->isCDATA()Z

    move-result v4

    if-nez v4, :cond_2

    .line 522
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 524
    .end local v3    # "padding":Ljava/lang/String;
    :cond_2
    goto :goto_3

    .line 525
    :cond_3
    sget-object v3, Lorg/jdom2/output/support/AbstractXMLOutputProcessor$1;->$SwitchMap$org$jdom2$Content$CType:[I

    invoke-virtual {v2}, Lorg/jdom2/Content;->getCType()Lorg/jdom2/Content$CType;

    move-result-object v4

    invoke-virtual {v4}, Lorg/jdom2/Content$CType;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_3

    .line 540
    :pswitch_0
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Text;

    invoke-virtual {v3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v3

    .line 541
    .restart local v3    # "padding":Ljava/lang/String;
    if-eqz v3, :cond_4

    invoke-static {v3}, Lorg/jdom2/Verifier;->isAllXMLWhitespace(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 545
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_3

    .line 536
    .end local v3    # "padding":Ljava/lang/String;
    :pswitch_1
    move-object v3, v2

    check-cast v3, Lorg/jdom2/ProcessingInstruction;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 538
    goto :goto_3

    .line 533
    :pswitch_2
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Element;

    invoke-virtual {p0, p1, p2, p3, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 534
    goto :goto_3

    .line 530
    :pswitch_3
    move-object v3, v2

    check-cast v3, Lorg/jdom2/DocType;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 531
    goto :goto_3

    .line 527
    :pswitch_4
    move-object v3, v2

    check-cast v3, Lorg/jdom2/Comment;

    invoke-virtual {p0, p1, p2, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 528
    nop

    .line 552
    .end local v2    # "c":Lorg/jdom2/Content;
    :cond_4
    :goto_3
    goto :goto_2

    .line 554
    :cond_5
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 555
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 559
    :cond_6
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

.method protected printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V
    .locals 7
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "nstack"    # Lorg/jdom2/util/NamespaceStack;
    .param p4, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 794
    invoke-virtual {p3, p4}, Lorg/jdom2/util/NamespaceStack;->push(Lorg/jdom2/Element;)V

    .line 796
    :try_start_0
    invoke-virtual {p4}, Lorg/jdom2/Element;->getContent()Ljava/util/List;

    move-result-object v0

    .line 800
    .local v0, "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    const-string v1, "<"

    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 802
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 805
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->addedForward()Ljava/lang/Iterable;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Namespace;

    .line 806
    .local v2, "ns":Lorg/jdom2/Namespace;
    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printNamespace(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V

    .line 807
    .end local v2    # "ns":Lorg/jdom2/Namespace;
    goto :goto_0

    .line 810
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_0
    invoke-virtual {p4}, Lorg/jdom2/Element;->hasAttributes()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 811
    invoke-virtual {p4}, Lorg/jdom2/Element;->getAttributes()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "i$":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jdom2/Attribute;

    .line 812
    .local v2, "attribute":Lorg/jdom2/Attribute;
    invoke-virtual {p0, p1, p2, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printAttribute(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Attribute;)V

    .line 813
    .end local v2    # "attribute":Lorg/jdom2/Attribute;
    goto :goto_1

    .line 816
    .end local v1    # "i$":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const-string v2, "></"

    const-string v3, " />"

    const-string v4, ">"

    if-eqz v1, :cond_3

    .line 818
    :try_start_1
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 819
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 820
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 821
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_2

    .line 824
    :cond_2
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 827
    :goto_2
    nop

    .line 885
    .end local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 827
    .restart local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    return-void

    .line 831
    :cond_3
    :try_start_2
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->push()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 835
    :try_start_3
    const-string v1, "space"

    sget-object v5, Lorg/jdom2/Namespace;->XML_NAMESPACE:Lorg/jdom2/Namespace;

    invoke-virtual {p4, v1, v5}, Lorg/jdom2/Element;->getAttributeValue(Ljava/lang/String;Lorg/jdom2/Namespace;)Ljava/lang/String;

    move-result-object v1

    .line 838
    .local v1, "space":Ljava/lang/String;
    const-string v5, "default"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 839
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getDefaultMode()Lorg/jdom2/output/Format$TextMode;

    move-result-object v5

    invoke-virtual {p2, v5}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    goto :goto_3

    .line 841
    :cond_4
    const-string v5, "preserve"

    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 842
    sget-object v5, Lorg/jdom2/output/Format$TextMode;->PRESERVE:Lorg/jdom2/output/Format$TextMode;

    invoke-virtual {p2, v5}, Lorg/jdom2/output/support/FormatStack;->setTextMode(Lorg/jdom2/output/Format$TextMode;)V

    .line 846
    :cond_5
    :goto_3
    const/4 v5, 0x1

    invoke-virtual {p0, p2, v0, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v5

    .line 848
    .local v5, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v6

    if-nez v6, :cond_7

    .line 850
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isExpandEmptyElements()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 851
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 852
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 853
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_4

    .line 856
    :cond_6
    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 859
    :goto_4
    nop

    .line 885
    .end local v1    # "space":Ljava/lang/String;
    .end local v5    # "walker":Lorg/jdom2/output/support/Walker;
    :try_start_4
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .restart local v1    # "space":Ljava/lang/String;
    move-object v2, v5

    .line 859
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 885
    .end local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .end local v1    # "space":Ljava/lang/String;
    .end local v2    # "walker":Lorg/jdom2/output/support/Walker;
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 859
    .restart local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local v1    # "space":Ljava/lang/String;
    .restart local v2    # "walker":Lorg/jdom2/output/support/Walker;
    return-void

    .line 862
    .end local v2    # "walker":Lorg/jdom2/output/support/Walker;
    .restart local v5    # "walker":Lorg/jdom2/output/support/Walker;
    :cond_7
    :try_start_5
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 863
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v2

    if-nez v2, :cond_8

    .line 865
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadBetween()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 868
    :cond_8
    invoke-virtual {p0, p1, p2, p3, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 870
    invoke-interface {v5}, Lorg/jdom2/output/support/Walker;->isAllText()Z

    move-result v2

    if-nez v2, :cond_9

    .line 872
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getPadLast()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 874
    :cond_9
    const-string v2, "</"

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 875
    invoke-virtual {p4}, Lorg/jdom2/Element;->getQualifiedName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 876
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 878
    .end local v1    # "space":Ljava/lang/String;
    .end local v5    # "walker":Lorg/jdom2/output/support/Walker;
    nop

    .line 885
    :try_start_6
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 880
    nop

    .line 881
    .end local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    nop

    .line 885
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 883
    nop

    .line 885
    return-void

    .line 879
    .restart local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    :catchall_0
    move-exception v1

    .line 885
    :try_start_7
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->pop()V

    .line 879
    nop

    .end local p1    # "out":Ljava/io/Writer;
    .end local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .end local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .end local p4    # "element":Lorg/jdom2/Element;
    throw v1
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 882
    .end local v0    # "content":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Content;>;"
    .restart local p1    # "out":Ljava/io/Writer;
    .restart local p2    # "fstack":Lorg/jdom2/output/support/FormatStack;
    .restart local p3    # "nstack":Lorg/jdom2/util/NamespaceStack;
    .restart local p4    # "element":Lorg/jdom2/Element;
    :catchall_1
    move-exception v0

    .line 885
    invoke-virtual {p3}, Lorg/jdom2/util/NamespaceStack;->pop()V

    .line 882
    throw v0
.end method

.method protected printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 730
    invoke-virtual {p3}, Lorg/jdom2/EntityRef;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textEntityRef(Ljava/io/Writer;Ljava/lang/String;)V

    .line 731
    return-void
.end method

.method protected printNamespace(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Namespace;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "ns"    # Lorg/jdom2/Namespace;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 979
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getPrefix()Ljava/lang/String;

    move-result-object v0

    .line 980
    .local v0, "prefix":Ljava/lang/String;
    invoke-virtual {p3}, Lorg/jdom2/Namespace;->getURI()Ljava/lang/String;

    move-result-object v1

    .line 982
    .local v1, "uri":Ljava/lang/String;
    const-string v2, " xmlns"

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 983
    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 984
    const-string v2, ":"

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 985
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 987
    :cond_0
    const-string v2, "=\""

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 988
    invoke-virtual {p0, p1, p2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->attributeEscapedEntitiesFilter(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Ljava/lang/String;)V

    .line 989
    const-string v2, "\""

    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 990
    return-void
.end method

.method protected printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V
    .locals 6
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 662
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getTarget()Ljava/lang/String;

    move-result-object v0

    .line 663
    .local v0, "target":Ljava/lang/String;
    const/4 v1, 0x0

    .line 665
    .local v1, "piProcessed":Z
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->isIgnoreTrAXEscapingPIs()Z

    move-result v2

    if-nez v2, :cond_1

    .line 666
    const-string v2, "javax.xml.transform.disable-output-escaping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 668
    const/4 v2, 0x0

    invoke-virtual {p2, v2}, Lorg/jdom2/output/support/FormatStack;->setEscapeOutput(Z)V

    .line 669
    const/4 v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    const-string v2, "javax.xml.transform.enable-output-escaping"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 673
    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Lorg/jdom2/output/support/FormatStack;->setEscapeOutput(Z)V

    .line 674
    const/4 v1, 0x1

    .line 677
    :cond_1
    :goto_0
    if-nez v1, :cond_3

    .line 678
    invoke-virtual {p3}, Lorg/jdom2/ProcessingInstruction;->getData()Ljava/lang/String;

    move-result-object v2

    .line 681
    .local v2, "rawData":Ljava/lang/String;
    const-string v3, ""

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    const-string v4, "?>"

    const-string v5, "<?"

    if-nez v3, :cond_2

    .line 682
    invoke-virtual {p0, p1, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 683
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 684
    const-string v3, " "

    invoke-virtual {p0, p1, v3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 685
    invoke-virtual {p0, p1, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 686
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    goto :goto_1

    .line 689
    :cond_2
    invoke-virtual {p0, p1, v5}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 690
    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 691
    invoke-virtual {p0, p1, v4}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 694
    .end local v2    # "rawData":Ljava/lang/String;
    :cond_3
    :goto_1
    return-void
.end method

.method protected printText(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Text;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "fstack"    # Lorg/jdom2/output/support/FormatStack;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 765
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeOutput()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getEscapeStrategy()Lorg/jdom2/output/EscapeStrategy;

    move-result-object v0

    invoke-virtual {p2}, Lorg/jdom2/output/support/FormatStack;->getLineSeparator()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lorg/jdom2/output/Format;->escapeText(Lorg/jdom2/output/EscapeStrategy;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 769
    return-void

    .line 771
    :cond_0
    invoke-virtual {p3}, Lorg/jdom2/Text;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 772
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Ljava/util/List;)V
    .locals 3
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/Writer;",
            "Lorg/jdom2/output/Format;",
            "Ljava/util/List<",
            "+",
            "Lorg/jdom2/Content;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 234
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<+Lorg/jdom2/Content;>;"
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 235
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {p0, v0, p3, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v1

    .line 236
    .local v1, "walker":Lorg/jdom2/output/support/Walker;
    new-instance v2, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v2}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v2, v1}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 237
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 238
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/CDATA;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "cdata"    # Lorg/jdom2/CDATA;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 250
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 251
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/CDATA;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 252
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 253
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 254
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v3, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 256
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 257
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Comment;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "comment"    # Lorg/jdom2/Comment;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 287
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printComment(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/Comment;)V

    .line 288
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 289
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/DocType;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doctype"    # Lorg/jdom2/DocType;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 204
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocType(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/DocType;)V

    .line 205
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 206
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Document;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "doc"    # Lorg/jdom2/Document;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 191
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printDocument(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Document;)V

    .line 192
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 193
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Element;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "element"    # Lorg/jdom2/Element;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 219
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    new-instance v1, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v1}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v0, v1, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printElement(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/Element;)V

    .line 221
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 222
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/EntityRef;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "entity"    # Lorg/jdom2/EntityRef;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 316
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printEntityRef(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/EntityRef;)V

    .line 317
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 318
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/ProcessingInstruction;)V
    .locals 2
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "pi"    # Lorg/jdom2/ProcessingInstruction;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 300
    new-instance v0, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v0, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 302
    .local v0, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/jdom2/output/support/FormatStack;->setIgnoreTrAXEscapingPIs(Z)V

    .line 303
    invoke-virtual {p0, p1, v0, p3}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printProcessingInstruction(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/ProcessingInstruction;)V

    .line 304
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 305
    return-void
.end method

.method public process(Ljava/io/Writer;Lorg/jdom2/output/Format;Lorg/jdom2/Text;)V
    .locals 4
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "format"    # Lorg/jdom2/output/Format;
    .param p3, "text"    # Lorg/jdom2/Text;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {p3}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 270
    .local v0, "list":Ljava/util/List;, "Ljava/util/List<Lorg/jdom2/Text;>;"
    new-instance v1, Lorg/jdom2/output/support/FormatStack;

    invoke-direct {v1, p2}, Lorg/jdom2/output/support/FormatStack;-><init>(Lorg/jdom2/output/Format;)V

    .line 271
    .local v1, "fstack":Lorg/jdom2/output/support/FormatStack;
    const/4 v2, 0x1

    invoke-virtual {p0, v1, v0, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->buildWalker(Lorg/jdom2/output/support/FormatStack;Ljava/util/List;Z)Lorg/jdom2/output/support/Walker;

    move-result-object v2

    .line 272
    .local v2, "walker":Lorg/jdom2/output/support/Walker;
    invoke-interface {v2}, Lorg/jdom2/output/support/Walker;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 273
    new-instance v3, Lorg/jdom2/util/NamespaceStack;

    invoke-direct {v3}, Lorg/jdom2/util/NamespaceStack;-><init>()V

    invoke-virtual {p0, p1, v1, v3, v2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->printContent(Ljava/io/Writer;Lorg/jdom2/output/support/FormatStack;Lorg/jdom2/util/NamespaceStack;Lorg/jdom2/output/support/Walker;)V

    .line 275
    :cond_0
    invoke-virtual {p1}, Ljava/io/Writer;->flush()V

    .line 276
    return-void
.end method

.method protected textCDATA(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "text"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 462
    const-string v0, "<![CDATA["

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 463
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 464
    const-string v0, "]]>"

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 465
    return-void
.end method

.method protected textEntityRef(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 450
    const/16 v0, 0x26

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;C)V

    .line 451
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;Ljava/lang/String;)V

    .line 452
    const/16 v0, 0x3b

    invoke-virtual {p0, p1, v0}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->textRaw(Ljava/io/Writer;C)V

    .line 453
    return-void
.end method

.method protected textRaw(Ljava/io/Writer;C)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "ch"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 436
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;C)V

    .line 437
    return-void
.end method

.method protected textRaw(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 419
    invoke-virtual {p0, p1, p2}, Lorg/jdom2/output/support/AbstractXMLOutputProcessor;->write(Ljava/io/Writer;Ljava/lang/String;)V

    .line 420
    return-void
.end method

.method protected write(Ljava/io/Writer;C)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "c"    # C
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 356
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(I)V

    .line 357
    return-void
.end method

.method protected write(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 0
    .param p1, "out"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 339
    if-nez p2, :cond_0

    .line 340
    return-void

    .line 342
    :cond_0
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 343
    return-void
.end method
