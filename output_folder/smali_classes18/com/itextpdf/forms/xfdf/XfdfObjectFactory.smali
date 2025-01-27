.class public Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;
.super Ljava/lang/Object;
.source "XfdfObjectFactory.java"


# static fields
.field private static logger:Lorg/slf4j/Logger;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 89
    const-class v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;

    invoke-static {v0}, Lorg/slf4j/LoggerFactory;->getLogger(Ljava/lang/Class;)Lorg/slf4j/Logger;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V
    .locals 3
    .param p1, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "attributeNode"    # Lorg/w3c/dom/Node;

    .line 330
    if-eqz p2, :cond_1

    .line 331
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "attributeName":Ljava/lang/String;
    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    sparse-switch v2, :sswitch_data_0

    :cond_0
    goto/16 :goto_0

    :sswitch_0
    const-string v2, "creationdate"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x7

    goto/16 :goto_0

    :sswitch_1
    const-string/jumbo v2, "title"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x6

    goto/16 :goto_0

    :sswitch_2
    const-string/jumbo v2, "state"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xb

    goto/16 :goto_0

    :sswitch_3
    const-string v2, "flags"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x3

    goto/16 :goto_0

    :sswitch_4
    const-string v2, "color"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    goto/16 :goto_0

    :sswitch_5
    const-string/jumbo v2, "rect"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x5

    goto/16 :goto_0

    :sswitch_6
    const-string v2, "page"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x0

    goto/16 :goto_0

    :sswitch_7
    const-string v2, "open"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xf

    goto/16 :goto_0

    :sswitch_8
    const-string v2, "name"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x4

    goto :goto_0

    :sswitch_9
    const-string v2, "icon"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xa

    goto :goto_0

    :sswitch_a
    const-string v2, "date"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x2

    goto :goto_0

    :sswitch_b
    const-string/jumbo v2, "statemodel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xc

    goto :goto_0

    :sswitch_c
    const-string/jumbo v2, "replyType"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xe

    goto :goto_0

    :sswitch_d
    const-string v2, "fringe"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x11

    goto :goto_0

    :sswitch_e
    const-string v2, "opacity"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x8

    goto :goto_0

    :sswitch_f
    const-string v2, "inreplyto"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0xd

    goto :goto_0

    :sswitch_10
    const-string v2, "coords"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x10

    goto :goto_0

    :sswitch_11
    const-string/jumbo v2, "subject"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/16 v1, 0x9

    :goto_0
    packed-switch v1, :pswitch_data_0

    .line 358
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v2, "Xfdf unsupported attribute type"

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    goto :goto_1

    .line 356
    :pswitch_0
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 357
    goto :goto_1

    .line 335
    :pswitch_1
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 362
    .end local v0    # "attributeName":Ljava/lang/String;
    :cond_1
    :goto_1
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        -0x6f55aad4 -> :sswitch_11
        -0x50bfdbe2 -> :sswitch_10
        -0x4bf021e0 -> :sswitch_f
        -0x4b8807f5 -> :sswitch_e
        -0x4b79d471 -> :sswitch_d
        -0x19d96ebc -> :sswitch_c
        -0xccd96c8 -> :sswitch_b
        0x2eefae -> :sswitch_a
        0x313c79 -> :sswitch_9
        0x337a8b -> :sswitch_8
        0x34264a -> :sswitch_7
        0x34628f -> :sswitch_6
        0x3559e4 -> :sswitch_5
        0x5a72f63 -> :sswitch_4
        0x5cfee87 -> :sswitch_3
        0x68ac491 -> :sswitch_2
        0x6942258 -> :sswitch_1
        0x5e8fd70d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private static addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V
    .locals 5
    .param p0, "pdfAnnot"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annots"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;
    .param p2, "pageNumber"    # I

    .line 478
    const/4 v0, 0x0

    .line 479
    .local v0, "hasCorrecpondingAnnotObject":Z
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 480
    .local v2, "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    check-cast v3, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v3

    invoke-virtual {v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 481
    const/4 v0, 0x1

    .line 482
    invoke-static {v2, p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->updateXfdfAnnotation(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)V

    .line 484
    .end local v2    # "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    :cond_0
    goto :goto_0

    .line 485
    :cond_1
    if-nez v0, :cond_2

    .line 486
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 488
    :cond_2
    return-void
.end method

.method private static addAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 9
    .param p0, "pdfDoc"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p1, "resultXfdf"    # Lcom/itextpdf/forms/xfdf/XfdfObject;

    .line 491
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;-><init>()V

    .line 492
    .local v0, "annots":Lcom/itextpdf/forms/xfdf/AnnotsObject;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getNumberOfPages()I

    move-result v1

    .line 493
    .local v1, "pageNumber":I
    const/4 v2, 0x1

    .local v2, "i":I
    :goto_0
    if-gt v2, v1, :cond_2

    .line 494
    invoke-virtual {p0, v2}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getPage(I)Lcom/itextpdf/kernel/pdf/PdfPage;

    move-result-object v3

    .line 495
    .local v3, "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfPage;->getAnnotations()Ljava/util/List;

    move-result-object v4

    .line 496
    .local v4, "pdfAnnots":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 497
    .local v6, "pdfAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v7

    sget-object v8, Lcom/itextpdf/kernel/pdf/PdfName;->Popup:Lcom/itextpdf/kernel/pdf/PdfName;

    if-ne v7, v8, :cond_0

    .line 498
    invoke-static {v6, v0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addPopup(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V

    goto :goto_2

    .line 500
    :cond_0
    invoke-static {v6, v0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V

    .line 502
    .end local v6    # "pdfAnnot":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    :goto_2
    goto :goto_1

    .line 493
    .end local v3    # "page":Lcom/itextpdf/kernel/pdf/PdfPage;
    .end local v4    # "pdfAnnots":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;>;"
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 504
    .end local v2    # "i":I
    :cond_2
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAnnots(Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    .line 505
    return-void
.end method

.method private static addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V
    .locals 1
    .param p0, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p1, "width"    # Lcom/itextpdf/kernel/pdf/PdfNumber;
    .param p2, "dashes"    # Lcom/itextpdf/kernel/pdf/PdfString;
    .param p3, "style"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 537
    const-string/jumbo v0, "width"

    invoke-virtual {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 538
    const-string v0, "dashes"

    invoke-virtual {p0, v0, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 539
    const-string/jumbo v0, "style"

    invoke-virtual {p0, v0, p3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 540
    return-void
.end method

.method private static addCommonAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V
    .locals 3
    .param p0, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p1, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 512
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getSubtype()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 514
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getColorObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 515
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getColorObject()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "color"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 517
    :cond_0
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    const-string v1, "date"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 518
    invoke-static {p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFlagsToString(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Ljava/lang/String;

    move-result-object v0

    .line 519
    .local v0, "flagsString":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 520
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    const-string v2, "flags"

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 523
    :cond_1
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string v2, "name"

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 525
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getRectangle()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toRectangle()Lcom/itextpdf/kernel/geom/Rectangle;

    move-result-object v1

    const-string/jumbo v2, "rect"

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/geom/Rectangle;)V

    .line 526
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getTitle()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string/jumbo v2, "title"

    invoke-virtual {p0, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 527
    return-void
.end method

.method private static addMarkupAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;)V
    .locals 2
    .param p0, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p1, "pdfMarkupAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    .line 530
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getCreationDate()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    const-string v1, "creationdate"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 531
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getOpacity()Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v0

    const-string v1, "opacity"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 532
    invoke-virtual {p1}, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;->getSubject()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v0

    const-string/jumbo v1, "subject"

    invoke-virtual {p0, v1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 533
    return-void
.end method

.method private static addPopup(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotsObject;I)V
    .locals 7
    .param p0, "pdfAnnot"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annots"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;
    .param p2, "pageNumber"    # I

    .line 453
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getParentObject()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 454
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getParent()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v0

    .line 455
    .local v0, "parentAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    .line 456
    .local v1, "parentRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    const/4 v2, 0x0

    .line 457
    .local v2, "hasParentAnnot":Z
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->getAnnotsList()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 458
    .local v4, "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-virtual {v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/itextpdf/kernel/pdf/PdfIndirectReference;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 459
    const/4 v2, 0x1

    .line 460
    invoke-virtual {v4, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 461
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 463
    .end local v4    # "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    :cond_0
    goto :goto_0

    .line 464
    :cond_1
    if-nez v2, :cond_2

    .line 465
    new-instance v3, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 466
    .local v3, "parentAnnot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-virtual {v3, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 467
    invoke-virtual {v3, p2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 468
    invoke-virtual {v3, v5}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 469
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 470
    invoke-virtual {p1, v3}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 472
    .end local v0    # "parentAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .end local v1    # "parentRef":Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .end local v2    # "hasParentAnnot":Z
    .end local v3    # "parentAnnot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    :cond_2
    goto :goto_1

    .line 473
    :cond_3
    invoke-static {p0, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 475
    :goto_1
    return-void
.end method

.method private static convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 3
    .param p0, "pdfPopupAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;
    .param p1, "pageNumber"    # I

    .line 906
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 907
    .local v0, "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 908
    const-string v1, "popup"

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 909
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 911
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;->getOpen()Z

    move-result v1

    const-string v2, "open"

    invoke-virtual {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Z)V

    .line 912
    return-object v0
.end method

.method private static createCircleAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 5
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 579
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    .line 581
    .local v0, "pdfCircleAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 582
    .local v1, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 583
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 584
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 583
    invoke-static {p1, v2, v3, v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 587
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 590
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    const-string/jumbo v3, "style"

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 594
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v2

    if-eqz v2, :cond_2

    .line 595
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interior-color"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 598
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 599
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fringe"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 602
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 603
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 604
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 606
    :cond_4
    return-void
.end method

.method private static createDestElement(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 7
    .param p0, "dest"    # Lcom/itextpdf/kernel/pdf/PdfArray;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 774
    new-instance v0, Lcom/itextpdf/forms/xfdf/DestObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/DestObject;-><init>()V

    .line 775
    .local v0, "destObject":Lcom/itextpdf/forms/xfdf/DestObject;
    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsName(I)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    .line 776
    .local v1, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->XYZ:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x4

    const/4 v4, 0x3

    const/4 v5, 0x2

    const/4 v6, 0x0

    if-eqz v2, :cond_0

    .line 777
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 778
    .local v2, "xyz":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v5

    .line 779
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    invoke-virtual {v5, v4}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    move-result-object v4

    .line 780
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v4, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setZoom(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 781
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setXyz(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 782
    .end local v2    # "xyz":Lcom/itextpdf/forms/xfdf/FitObject;
    goto/16 :goto_1

    :cond_0
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->Fit:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 783
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 784
    .local v2, "fit":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFit(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 785
    .end local v2    # "fit":Lcom/itextpdf/forms/xfdf/FitObject;
    goto/16 :goto_1

    :cond_1
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitB:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 786
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 787
    .local v2, "fitB":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitB(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 788
    .end local v2    # "fitB":Lcom/itextpdf/forms/xfdf/FitObject;
    goto/16 :goto_1

    :cond_2
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitR:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 789
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v6

    invoke-direct {v2, v6}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 790
    .local v2, "fitR":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v5

    invoke-virtual {v2, v5}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 791
    invoke-virtual {p0, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v4

    invoke-virtual {v4}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v4

    invoke-virtual {v2, v4}, Lcom/itextpdf/forms/xfdf/FitObject;->setBottom(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 792
    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setRight(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 793
    const/4 v3, 0x5

    invoke-virtual {p0, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 794
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitR(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 795
    .end local v2    # "fitR":Lcom/itextpdf/forms/xfdf/FitObject;
    goto/16 :goto_1

    :cond_3
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 796
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 797
    .local v2, "fitH":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 798
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitH(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 799
    .end local v2    # "fitH":Lcom/itextpdf/forms/xfdf/FitObject;
    goto :goto_1

    :cond_4
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitBH:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 800
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 801
    .local v2, "fitBH":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setTop(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 802
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitBH(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .line 803
    .end local v2    # "fitBH":Lcom/itextpdf/forms/xfdf/FitObject;
    goto :goto_1

    :cond_5
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitBV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 804
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 805
    .local v2, "fitBV":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 806
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitBV(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    .end local v2    # "fitBV":Lcom/itextpdf/forms/xfdf/FitObject;
    goto :goto_0

    .line 807
    :cond_6
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->FitV:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v1}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 808
    new-instance v2, Lcom/itextpdf/forms/xfdf/FitObject;

    invoke-virtual {p0, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 809
    .local v2, "fitV":Lcom/itextpdf/forms/xfdf/FitObject;
    invoke-virtual {p0, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v3

    invoke-virtual {v2, v3}, Lcom/itextpdf/forms/xfdf/FitObject;->setLeft(F)Lcom/itextpdf/forms/xfdf/FitObject;

    .line 810
    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/DestObject;->setFitV(Lcom/itextpdf/forms/xfdf/FitObject;)Lcom/itextpdf/forms/xfdf/DestObject;

    goto :goto_1

    .line 807
    .end local v2    # "fitV":Lcom/itextpdf/forms/xfdf/FitObject;
    :cond_7
    :goto_0
    nop

    .line 812
    :goto_1
    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDestination(Lcom/itextpdf/forms/xfdf/DestObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 813
    return-void
.end method

.method private static createFreeTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 5
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 660
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    .line 662
    .local v0, "pdfFreeTextAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 663
    .local v1, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 664
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 665
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 664
    invoke-static {p1, v2, v3, v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 670
    :cond_0
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getJustification()I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "justification"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 671
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 672
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 675
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 676
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 679
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 680
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultAppearance()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 682
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultStyleString()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 683
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;->getDefaultStyleString()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setDefaultStyle(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 685
    :cond_4
    return-void
.end method

.method private static createLineAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 7
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 688
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    .line 690
    .local v0, "pdfLineAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLine()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v1

    .line 691
    .local v1, "line":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v1, :cond_0

    .line 692
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 693
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertLineStartToString([F)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "start"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 694
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 695
    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertLineEndToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "end"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 694
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 697
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    .line 698
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 699
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 700
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "head"

    invoke-direct {v2, v6, v5}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 702
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 703
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 704
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    const-string/jumbo v6, "tail"

    invoke-direct {v2, v6, v5}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 708
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 709
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString(Lcom/itextpdf/kernel/colors/Color;)Ljava/lang/String;

    move-result-object v5

    const-string v6, "interior-color"

    invoke-direct {v2, v6, v5}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 711
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineExtension()F

    move-result v2

    const-string v5, "leaderExtended"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 712
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineLength()F

    move-result v2

    const-string v5, "leaderLength"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 713
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getContentsAsCaption()Z

    move-result v2

    const-string v5, "caption"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Z)V

    .line 714
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    const-string v5, "intent"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 715
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getLeaderLineOffset()F

    move-result v2

    const-string v5, "leader-offset"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;F)V

    .line 716
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionPosition()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    const-string v5, "caption-style"

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 717
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    const-string v5, "caption-offset-v"

    const-string v6, "caption-offset-h"

    if-eqz v2, :cond_4

    .line 718
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v6, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 719
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getCaptionOffset()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    invoke-virtual {p1, v5, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    goto :goto_0

    .line 721
    :cond_4
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    const-string v3, "0"

    invoke-direct {v2, v6, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 722
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 725
    :goto_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    .line 726
    .local v2, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v2, :cond_5

    .line 727
    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 728
    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    sget-object v5, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v5}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    .line 727
    invoke-static {p1, v3, v4, v5}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 731
    :cond_5
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 732
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v3

    if-eqz v3, :cond_6

    .line 733
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v3

    invoke-static {v3, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v3

    invoke-virtual {p1, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 735
    :cond_6
    return-void
.end method

.method private static createLinkAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 8
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 738
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    .line 740
    .local v0, "pdfLinkAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 741
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 746
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 747
    .local v1, "action":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getAction()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 748
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->S:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsName(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    .line 749
    .local v2, "type":Lcom/itextpdf/kernel/pdf/PdfName;
    new-instance v3, Lcom/itextpdf/forms/xfdf/ActionObject;

    invoke-direct {v3, v2}, Lcom/itextpdf/forms/xfdf/ActionObject;-><init>(Lcom/itextpdf/kernel/pdf/PdfName;)V

    .line 751
    .local v3, "actionObject":Lcom/itextpdf/forms/xfdf/ActionObject;
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v4, v2}, Lcom/itextpdf/kernel/pdf/PdfName;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 752
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->URI:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/forms/xfdf/ActionObject;->setUri(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 753
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->IsMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 754
    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->IsMap:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsBool(Lcom/itextpdf/kernel/pdf/PdfName;)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Lcom/itextpdf/forms/xfdf/ActionObject;->setMap(Z)Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 758
    :cond_1
    invoke-virtual {p1, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAction(Lcom/itextpdf/forms/xfdf/ActionObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 760
    .end local v2    # "type":Lcom/itextpdf/kernel/pdf/PdfName;
    .end local v3    # "actionObject":Lcom/itextpdf/forms/xfdf/ActionObject;
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getDestinationObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfArray;

    .line 761
    .local v2, "dest":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v2, :cond_3

    .line 762
    invoke-static {v2, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createDestElement(Lcom/itextpdf/kernel/pdf/PdfArray;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 765
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;->getBorder()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    .line 766
    .local v3, "border":Lcom/itextpdf/kernel/pdf/PdfArray;
    if-eqz v3, :cond_4

    .line 767
    new-instance v4, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v5

    const/4 v6, 0x1

    .line 768
    invoke-virtual {v3, v6}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v6

    invoke-virtual {v6}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v6

    const/4 v7, 0x2

    invoke-virtual {v3, v7}, Lcom/itextpdf/kernel/pdf/PdfArray;->getAsNumber(I)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v7

    invoke-virtual {v7}, Lcom/itextpdf/kernel/pdf/PdfNumber;->floatValue()F

    move-result v7

    invoke-direct {v4, v5, v6, v7}, Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;-><init>(FFF)V

    .line 769
    .local v4, "borderStyleAltObject":Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    invoke-virtual {p1, v4}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 771
    .end local v4    # "borderStyleAltObject":Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    :cond_4
    return-void
.end method

.method private static createPolyGeomAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 6
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 816
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    .line 818
    .local v0, "pdfPolyGeomAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 819
    .local v1, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 820
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 821
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 820
    invoke-static {p1, v2, v3, v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 824
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 827
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    const-string/jumbo v3, "style"

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 830
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 831
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString(Lcom/itextpdf/kernel/colors/Color;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interior-color"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 833
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 834
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getIntent()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v3

    const-string v4, "intent"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 838
    :cond_3
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 839
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    const/4 v4, 0x1

    if-eqz v2, :cond_4

    .line 840
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 841
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string v5, "head"

    invoke-direct {v2, v5, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 840
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 843
    :cond_4
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 844
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 845
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getLineEndingStyles()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfArray;->get(I)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "tail"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 844
    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 851
    :cond_5
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getVertices()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertVerticesToString([F)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 853
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 854
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    if-eqz v2, :cond_6

    .line 855
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 857
    :cond_6
    return-void
.end method

.method private static createSquareAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 5
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 609
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    .line 611
    .local v0, "pdfSquareAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderStyle()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    .line 612
    .local v1, "bs":Lcom/itextpdf/kernel/pdf/PdfDictionary;
    if-eqz v1, :cond_0

    .line 613
    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->W:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsNumber(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Dashed:Lcom/itextpdf/kernel/pdf/PdfName;

    .line 614
    invoke-virtual {v1, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v3

    sget-object v4, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v4}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v4

    .line 613
    invoke-static {p1, v2, v3, v4}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addBorderStyleAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/PdfNumber;Lcom/itextpdf/kernel/pdf/PdfString;Lcom/itextpdf/kernel/pdf/PdfString;)V

    .line 617
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 620
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getBorderEffect()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v2

    sget-object v3, Lcom/itextpdf/kernel/pdf/PdfName;->Style:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v2, v3}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getAsString(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    const-string/jumbo v3, "style"

    invoke-virtual {p1, v3, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 623
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v2

    if-eqz v2, :cond_2

    .line 624
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getInteriorColor()Lcom/itextpdf/kernel/colors/Color;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/colors/Color;->getColorValue()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertColorToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "interior-color"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 626
    :cond_2
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 627
    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getRectangleDifferences()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v3

    invoke-virtual {v3}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertFringeToString([F)Ljava/lang/String;

    move-result-object v3

    const-string v4, "fringe"

    invoke-direct {v2, v4, v3}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 630
    :cond_3
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 631
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 632
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v2

    invoke-static {v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 634
    :cond_4
    return-void
.end method

.method private static createStampAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 3
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 637
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    .line 639
    .local v0, "pdfStampAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getIconName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 642
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 643
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 645
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 646
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 648
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 649
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 650
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->N:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    goto :goto_0

    .line 651
    :cond_2
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 652
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->R:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    goto :goto_0

    .line 653
    :cond_3
    sget-object v1, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {p0, v1}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getAppearanceObject(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    if-eqz v1, :cond_4

    .line 654
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;->getAppearanceDictionary()Lcom/itextpdf/kernel/pdf/PdfDictionary;

    move-result-object v1

    sget-object v2, Lcom/itextpdf/kernel/pdf/PdfName;->D:Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1, v2}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->get(Lcom/itextpdf/kernel/pdf/PdfName;)Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 657
    :cond_4
    :goto_0
    return-void
.end method

.method private static createTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 4
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 558
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    .line 560
    .local v0, "pdfTextAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getIconName()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    const-string v2, "icon"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 561
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getState()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string/jumbo v2, "state"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 562
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getStateModel()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    const-string/jumbo v2, "statemodel"

    invoke-virtual {p1, v2, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V

    .line 564
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 566
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getInReplyTo()Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getName()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string v3, "inreplyto"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 567
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getReplyType()Lcom/itextpdf/kernel/pdf/PdfName;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "replyType"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 570
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 571
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 573
    :cond_1
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 574
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 576
    :cond_2
    return-void
.end method

.method private static createTextMarkupAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V
    .locals 4
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "annot"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "pageNumber"    # I

    .line 543
    move-object v0, p0

    check-cast v0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    .line 545
    .local v0, "pdfTextMarkupAnnotation":Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;
    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 546
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getQuadPoints()Lcom/itextpdf/kernel/pdf/PdfArray;

    move-result-object v2

    invoke-virtual {v2}, Lcom/itextpdf/kernel/pdf/PdfArray;->toFloatArray()[F

    move-result-object v2

    invoke-static {v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertQuadPointsToCoordsString([F)Ljava/lang/String;

    move-result-object v2

    const-string v3, "coords"

    invoke-direct {v1, v3, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 549
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 550
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getContents()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 552
    :cond_0
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 553
    invoke-virtual {v0}, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;->getPopup()Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 555
    :cond_1
    return-void
.end method

.method private static createXfdfAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 2
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p1, "pageNumber"    # I

    .line 860
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 861
    .local v0, "annot":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-virtual {p0}, Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;->getPdfObject()Lcom/itextpdf/kernel/pdf/PdfObject;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfDictionary;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfDictionary;->getIndirectReference()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 862
    invoke-virtual {v0, p1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addFdfAttributes(I)V

    .line 864
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    if-eqz v1, :cond_0

    .line 865
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createTextMarkupAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 867
    :cond_0
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    if-eqz v1, :cond_1

    .line 868
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 870
    :cond_1
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-eqz v1, :cond_2

    .line 871
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    invoke-static {v1, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->convertPdfPopupToAnnotObject(Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;I)Lcom/itextpdf/forms/xfdf/AnnotObject;

    move-result-object v0

    .line 873
    :cond_2
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    if-eqz v1, :cond_3

    .line 874
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createCircleAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 876
    :cond_3
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    if-eqz v1, :cond_4

    .line 877
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createSquareAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 879
    :cond_4
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    if-eqz v1, :cond_5

    .line 880
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createStampAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 882
    :cond_5
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    if-eqz v1, :cond_6

    .line 883
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createFreeTextAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 885
    :cond_6
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    if-eqz v1, :cond_7

    .line 886
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createLineAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 888
    :cond_7
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    if-eqz v1, :cond_8

    .line 889
    invoke-static {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createPolyGeomAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;I)V

    .line 891
    :cond_8
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-eqz v1, :cond_9

    .line 892
    invoke-static {p0, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->createLinkAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 895
    :cond_9
    invoke-static {p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isSupportedAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 896
    invoke-static {v0, p0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addCommonAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)V

    .line 897
    instance-of v1, p0, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    if-eqz v1, :cond_a

    .line 898
    move-object v1, p0

    check-cast v1, Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;

    invoke-static {v0, v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addMarkupAnnotationAttributes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfMarkupAnnotation;)V

    .line 902
    :cond_a
    return-object v0
.end method

.method private static isAnnotSupported(Ljava/lang/String;)Z
    .locals 1
    .param p0, "nodeName"    # Ljava/lang/String;

    .line 225
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 226
    const-string v0, "highlight"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 227
    const-string/jumbo v0, "underline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 228
    const-string/jumbo v0, "strikeout"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 229
    const-string/jumbo v0, "squiggly"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 230
    const-string v0, "circle"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 231
    const-string/jumbo v0, "square"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 232
    const-string v0, "polyline"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 233
    const-string v0, "polygon"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 234
    const-string v0, "line"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 225
    :goto_1
    return v0
.end method

.method private isAnnotationSubtype(Ljava/lang/String;)Z
    .locals 1
    .param p1, "tag"    # Ljava/lang/String;

    .line 365
    const-string/jumbo v0, "text"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 366
    const-string v0, "highlight"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 367
    const-string/jumbo v0, "underline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 368
    const-string/jumbo v0, "strikeout"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 369
    const-string/jumbo v0, "squiggly"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 370
    const-string v0, "line"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 371
    const-string v0, "circle"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 372
    const-string/jumbo v0, "square"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 373
    const-string v0, "caret"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 374
    const-string v0, "polygon"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 375
    const-string v0, "polyline"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 376
    const-string/jumbo v0, "stamp"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 377
    const-string v0, "ink"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 378
    const-string v0, "freetext"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 379
    const-string v0, "fileattachment"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 380
    const-string/jumbo v0, "sound"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 381
    const-string v0, "link"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 382
    const-string/jumbo v0, "redact"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 383
    const-string v0, "projection"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 365
    :goto_1
    return v0
.end method

.method private static isSupportedAnnotation(Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;)Z
    .locals 1
    .param p0, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;

    .line 916
    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextMarkupAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfTextAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfCircleAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfSquareAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfStampAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfFreeTextAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLineAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPolyGeomAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfLinkAnnotation;

    if-nez v0, :cond_1

    instance-of v0, p0, Lcom/itextpdf/kernel/pdf/annot/PdfPopupAnnotation;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method private readAnnotsList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "annotsObject"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 238
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 240
    .local v0, "annotsNodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 241
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 242
    .local v2, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    .line 243
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-direct {p0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isAnnotationSubtype(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 244
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->isAnnotSupported(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 245
    invoke-direct {p0, v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitAnnotationNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    .line 240
    .end local v2    # "currentNode":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 248
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method

.method private readFieldList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 5
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "fieldsObject"    # Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 388
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 390
    .local v0, "fieldNodeList":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 391
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 392
    .local v2, "currentNode":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "field"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    new-instance v3, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v3}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 394
    .local v3, "fieldObject":Lcom/itextpdf/forms/xfdf/FieldObject;
    invoke-direct {p0, v3, v2, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 390
    .end local v2    # "currentNode":Lorg/w3c/dom/Node;
    .end local v3    # "fieldObject":Lcom/itextpdf/forms/xfdf/FieldObject;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 397
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method

.method private readXfdfRootAttributes(Lorg/w3c/dom/Element;)Ljava/util/List;
    .locals 8
    .param p1, "root"    # Lorg/w3c/dom/Element;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/w3c/dom/Element;",
            ")",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation

    .line 442
    invoke-interface {p1}, Lorg/w3c/dom/Element;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    .line 443
    .local v0, "attributes":Lorg/w3c/dom/NamedNodeMap;
    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v1

    .line 444
    .local v1, "length":I
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 445
    .local v2, "attributeObjects":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/forms/xfdf/AttributeObject;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 446
    invoke-interface {v0, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v4

    .line 447
    .local v4, "attributeNode":Lorg/w3c/dom/Node;
    new-instance v5, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 445
    .end local v4    # "attributeNode":Lorg/w3c/dom/Node;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 449
    .end local v3    # "i":I
    :cond_0
    return-object v2
.end method

.method private static updateXfdfAnnotation(Lcom/itextpdf/forms/xfdf/AnnotObject;Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;I)V
    .locals 0
    .param p0, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p1, "pdfAnnotation"    # Lcom/itextpdf/kernel/pdf/annot/PdfAnnotation;
    .param p2, "pageNumber"    # I

    .line 509
    return-void
.end method

.method private visitAnnotationInnerNodes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V
    .locals 5
    .param p1, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;
    .param p2, "annotNode"    # Lorg/w3c/dom/Node;

    .line 264
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 266
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_4

    .line 267
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 268
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3

    .line 269
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contents"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 270
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitContentsSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 272
    :cond_0
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "contents-richtext"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 273
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitContentsRichTextSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 275
    :cond_1
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "popup"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 276
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitPopupSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 278
    :cond_2
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v4, "vertices"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 279
    invoke-direct {p0, v2, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitVerticesSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V

    .line 266
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 283
    .end local v1    # "temp":I
    :cond_4
    return-void
.end method

.method private visitAnnotationNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V
    .locals 4
    .param p1, "currentNode"    # Lorg/w3c/dom/Node;
    .param p2, "annotsObject"    # Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 251
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 252
    .local v0, "annotObject":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 253
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 254
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 255
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 256
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    .line 255
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 258
    .end local v2    # "i":I
    :cond_0
    invoke-direct {p0, v0, p1}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitAnnotationInnerNodes(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    .line 259
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;->addAnnot(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotsObject;

    .line 261
    .end local v1    # "attributes":Lorg/w3c/dom/NamedNodeMap;
    :cond_1
    return-void
.end method

.method private visitChildNodes(Lorg/w3c/dom/NodeList;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 4
    .param p1, "nList"    # Lorg/w3c/dom/NodeList;
    .param p2, "xfdfObject"    # Lcom/itextpdf/forms/xfdf/XfdfObject;

    .line 216
    const/4 v0, 0x0

    .local v0, "temp":I
    :goto_0
    invoke-interface {p1}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 217
    invoke-interface {p1, v0}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 218
    .local v1, "node":Lorg/w3c/dom/Node;
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    .line 219
    invoke-direct {p0, v1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 216
    .end local v1    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 222
    .end local v0    # "temp":I
    :cond_1
    return-void
.end method

.method private visitContentsRichTextSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 5
    .param p1, "parentNode"    # Lorg/w3c/dom/Node;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 309
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 310
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 311
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 312
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 313
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContentsRichText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 310
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 316
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method

.method private visitContentsSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 5
    .param p1, "parentNode"    # Lorg/w3c/dom/Node;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 298
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 299
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 300
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 301
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 302
    new-instance v3, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/itextpdf/kernel/pdf/PdfString;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 299
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 305
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method

.method private visitElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 2
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "xfdfObject"    # Lcom/itextpdf/forms/xfdf/XfdfObject;

    .line 197
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "fields"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 198
    new-instance v0, Lcom/itextpdf/forms/xfdf/FieldsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/FieldsObject;-><init>()V

    .line 199
    .local v0, "fieldsObject":Lcom/itextpdf/forms/xfdf/FieldsObject;
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readFieldList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 200
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setFields(Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 202
    .end local v0    # "fieldsObject":Lcom/itextpdf/forms/xfdf/FieldsObject;
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "f"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 203
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitFNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 205
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ids"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 206
    invoke-direct {p0, p1, p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitIdsNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 208
    :cond_2
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "annots"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 209
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotsObject;-><init>()V

    .line 210
    .local v0, "annotsObject":Lcom/itextpdf/forms/xfdf/AnnotsObject;
    invoke-direct {p0, p1, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readAnnotsList(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    .line 211
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAnnots(Lcom/itextpdf/forms/xfdf/AnnotsObject;)V

    .line 213
    .end local v0    # "annotsObject":Lcom/itextpdf/forms/xfdf/AnnotsObject;
    :cond_3
    return-void
.end method

.method private visitFNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 3
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "xfdfObject"    # Lcom/itextpdf/forms/xfdf/XfdfObject;

    .line 169
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 170
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const-string v1, "href"

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v0

    .line 171
    .local v0, "href":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 172
    new-instance v1, Lcom/itextpdf/forms/xfdf/FObject;

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/forms/xfdf/FObject;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setF(Lcom/itextpdf/forms/xfdf/FObject;)V

    goto :goto_0

    .line 174
    :cond_0
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v2, "Empty f element, no href attribute found."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 177
    .end local v0    # "href":Lorg/w3c/dom/Node;
    :cond_1
    :goto_0
    return-void
.end method

.method private visitFieldElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldObject;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "parentField"    # Lcom/itextpdf/forms/xfdf/FieldObject;
    .param p3, "fieldsObject"    # Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 400
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "value"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 401
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getFirstChild()Lorg/w3c/dom/Node;

    move-result-object v0

    .line 402
    .local v0, "valueTextNode":Lorg/w3c/dom/Node;
    if-eqz v0, :cond_0

    .line 403
    invoke-interface {v0}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcom/itextpdf/forms/xfdf/FieldObject;->setValue(Ljava/lang/String;)V

    goto :goto_0

    .line 405
    :cond_0
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v2, "Field has no value."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 407
    :goto_0
    return-void

    .line 409
    .end local v0    # "valueTextNode":Lorg/w3c/dom/Node;
    :cond_1
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getNodeName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "field"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 410
    new-instance v0, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 411
    .local v0, "childField":Lcom/itextpdf/forms/xfdf/FieldObject;
    invoke-virtual {v0, p2}, Lcom/itextpdf/forms/xfdf/FieldObject;->setParent(Lcom/itextpdf/forms/xfdf/FieldObject;)V

    .line 412
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    .line 413
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 414
    invoke-direct {p0, v0, p1, p3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 416
    :cond_2
    invoke-virtual {p3, v0}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 418
    .end local v0    # "childField":Lcom/itextpdf/forms/xfdf/FieldObject;
    :cond_3
    return-void
.end method

.method private visitIdsNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/XfdfObject;)V
    .locals 4
    .param p1, "node"    # Lorg/w3c/dom/Node;
    .param p2, "xfdfObject"    # Lcom/itextpdf/forms/xfdf/XfdfObject;

    .line 180
    new-instance v0, Lcom/itextpdf/forms/xfdf/IdsObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/IdsObject;-><init>()V

    .line 181
    .local v0, "idsObject":Lcom/itextpdf/forms/xfdf/IdsObject;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    if-eqz v1, :cond_2

    .line 182
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    const-string v2, "original"

    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v1

    .line 183
    .local v1, "original":Lorg/w3c/dom/Node;
    if-eqz v1, :cond_0

    .line 184
    invoke-interface {v1}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/itextpdf/forms/xfdf/IdsObject;->setOriginal(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 186
    :cond_0
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v2

    const-string v3, "modified"

    invoke-interface {v2, v3}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 187
    .local v2, "modified":Lorg/w3c/dom/Node;
    if-eqz v2, :cond_1

    .line 188
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/itextpdf/forms/xfdf/IdsObject;->setModified(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    .line 190
    :cond_1
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setIds(Lcom/itextpdf/forms/xfdf/IdsObject;)V

    .line 191
    .end local v1    # "original":Lorg/w3c/dom/Node;
    .end local v2    # "modified":Lorg/w3c/dom/Node;
    goto :goto_0

    .line 192
    :cond_2
    sget-object v1, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v2, "Empty ids element, original and/or modified id attributes not found."

    invoke-interface {v1, v2}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 194
    :goto_0
    return-void
.end method

.method private visitInnerFields(Lcom/itextpdf/forms/xfdf/FieldObject;Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldsObject;)V
    .locals 5
    .param p1, "parentField"    # Lcom/itextpdf/forms/xfdf/FieldObject;
    .param p2, "parentNode"    # Lorg/w3c/dom/Node;
    .param p3, "fieldsObject"    # Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 421
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v0

    if-eqz v0, :cond_0

    .line 422
    invoke-virtual {p1}, Lcom/itextpdf/forms/xfdf/FieldObject;->getName()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    .line 423
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v0

    invoke-interface {v0}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 426
    :cond_0
    sget-object v0, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->logger:Lorg/slf4j/Logger;

    const-string v1, "Field has no name attribute."

    invoke-interface {v0, v1}, Lorg/slf4j/Logger;->info(Ljava/lang/String;)V

    .line 429
    :cond_1
    :goto_0
    invoke-interface {p2}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 431
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_1
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 432
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 433
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    .line 434
    invoke-direct {p0, v2, p1, p3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitFieldElementNode(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/FieldObject;Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 431
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 437
    .end local v1    # "temp":I
    :cond_3
    invoke-virtual {p3, p1}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 438
    return-void
.end method

.method private visitPopupSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 4
    .param p1, "popupNode"    # Lorg/w3c/dom/Node;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 288
    new-instance v0, Lcom/itextpdf/forms/xfdf/AnnotObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;-><init>()V

    .line 289
    .local v0, "popupAnnotObject":Lcom/itextpdf/forms/xfdf/AnnotObject;
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v1

    .line 290
    .local v1, "attributes":Lorg/w3c/dom/NamedNodeMap;
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-interface {v1}, Lorg/w3c/dom/NamedNodeMap;->getLength()I

    move-result v3

    if-ge v2, v3, :cond_0

    .line 291
    invoke-interface {v1, v2}, Lorg/w3c/dom/NamedNodeMap;->item(I)Lorg/w3c/dom/Node;

    move-result-object v3

    invoke-direct {p0, v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotObjectAttribute(Lcom/itextpdf/forms/xfdf/AnnotObject;Lorg/w3c/dom/Node;)V

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 293
    .end local v2    # "i":I
    :cond_0
    invoke-virtual {p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 294
    return-void
.end method

.method private visitVerticesSubelement(Lorg/w3c/dom/Node;Lcom/itextpdf/forms/xfdf/AnnotObject;)V
    .locals 5
    .param p1, "parentNode"    # Lorg/w3c/dom/Node;
    .param p2, "annotObject"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 320
    invoke-interface {p1}, Lorg/w3c/dom/Node;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v0

    .line 321
    .local v0, "children":Lorg/w3c/dom/NodeList;
    const/4 v1, 0x0

    .local v1, "temp":I
    :goto_0
    invoke-interface {v0}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v2

    if-ge v1, v2, :cond_1

    .line 322
    invoke-interface {v0, v1}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v2

    .line 323
    .local v2, "node":Lorg/w3c/dom/Node;
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeType()S

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_0

    .line 324
    invoke-interface {v2}, Lorg/w3c/dom/Node;->getNodeValue()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Lcom/itextpdf/forms/xfdf/AnnotObject;->setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 321
    .end local v2    # "node":Lorg/w3c/dom/Node;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 327
    .end local v1    # "temp":I
    :cond_1
    return-void
.end method


# virtual methods
.method public createXfdfObject(Lcom/itextpdf/kernel/pdf/PdfDocument;Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/XfdfObject;
    .locals 15
    .param p1, "document"    # Lcom/itextpdf/kernel/pdf/PdfDocument;
    .param p2, "filename"    # Ljava/lang/String;

    .line 99
    move-object/from16 v0, p1

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/itextpdf/forms/PdfAcroForm;->getAcroForm(Lcom/itextpdf/kernel/pdf/PdfDocument;Z)Lcom/itextpdf/forms/PdfAcroForm;

    move-result-object v2

    .line 101
    .local v2, "form":Lcom/itextpdf/forms/PdfAcroForm;
    new-instance v3, Lcom/itextpdf/forms/xfdf/XfdfObject;

    invoke-direct {v3}, Lcom/itextpdf/forms/xfdf/XfdfObject;-><init>()V

    .line 102
    .local v3, "resultXfdf":Lcom/itextpdf/forms/xfdf/XfdfObject;
    new-instance v4, Lcom/itextpdf/forms/xfdf/FieldsObject;

    invoke-direct {v4}, Lcom/itextpdf/forms/xfdf/FieldsObject;-><init>()V

    .line 104
    .local v4, "xfdfFields":Lcom/itextpdf/forms/xfdf/FieldsObject;
    if-eqz v2, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v5

    if-eqz v5, :cond_2

    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->isEmpty()Z

    move-result v5

    if-nez v5, :cond_2

    .line 105
    invoke-virtual {v2}, Lcom/itextpdf/forms/PdfAcroForm;->getFormFields()Ljava/util/Map;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 106
    .local v6, "fieldName":Ljava/lang/String;
    const-string v7, "."

    .line 107
    .local v7, "delims":Ljava/lang/String;
    new-instance v8, Ljava/util/StringTokenizer;

    invoke-direct {v8, v6, v7}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 108
    .local v8, "st":Ljava/util/StringTokenizer;
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 109
    .local v9, "nameParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :goto_1
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 110
    invoke-virtual {v8}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v10

    invoke-interface {v9, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 112
    :cond_0
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    sub-int/2addr v10, v11

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .line 113
    .local v10, "name":Ljava/lang/String;
    invoke-virtual {v2, v6}, Lcom/itextpdf/forms/PdfAcroForm;->getField(Ljava/lang/String;)Lcom/itextpdf/forms/fields/PdfFormField;

    move-result-object v12

    invoke-virtual {v12}, Lcom/itextpdf/forms/fields/PdfFormField;->getValueAsString()Ljava/lang/String;

    move-result-object v12

    .line 114
    .local v12, "value":Ljava/lang/String;
    new-instance v13, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v13, v10, v12, v1}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 115
    .local v13, "childField":Lcom/itextpdf/forms/xfdf/FieldObject;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    if-le v14, v11, :cond_1

    .line 116
    new-instance v11, Lcom/itextpdf/forms/xfdf/FieldObject;

    invoke-direct {v11}, Lcom/itextpdf/forms/xfdf/FieldObject;-><init>()V

    .line 117
    .local v11, "parentField":Lcom/itextpdf/forms/xfdf/FieldObject;
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    add-int/lit8 v14, v14, -0x2

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/String;

    invoke-virtual {v11, v14}, Lcom/itextpdf/forms/xfdf/FieldObject;->setName(Ljava/lang/String;)V

    .line 118
    invoke-virtual {v13, v11}, Lcom/itextpdf/forms/xfdf/FieldObject;->setParent(Lcom/itextpdf/forms/xfdf/FieldObject;)V

    .line 120
    .end local v11    # "parentField":Lcom/itextpdf/forms/xfdf/FieldObject;
    :cond_1
    invoke-virtual {v4, v13}, Lcom/itextpdf/forms/xfdf/FieldsObject;->addField(Lcom/itextpdf/forms/xfdf/FieldObject;)Lcom/itextpdf/forms/xfdf/FieldsObject;

    .line 121
    .end local v6    # "fieldName":Ljava/lang/String;
    .end local v7    # "delims":Ljava/lang/String;
    .end local v8    # "st":Ljava/util/StringTokenizer;
    .end local v9    # "nameParts":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v10    # "name":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    .end local v13    # "childField":Lcom/itextpdf/forms/xfdf/FieldObject;
    goto :goto_0

    .line 123
    :cond_2
    invoke-virtual {v3, v4}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setFields(Lcom/itextpdf/forms/xfdf/FieldsObject;)V

    .line 125
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getOriginalDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v1

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertIdToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 126
    .local v1, "original":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Lcom/itextpdf/kernel/pdf/PdfDocument;->getModifiedDocumentId()Lcom/itextpdf/kernel/pdf/PdfString;

    move-result-object v5

    invoke-virtual {v5}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertIdToHexString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 129
    .local v5, "modified":Ljava/lang/String;
    new-instance v6, Lcom/itextpdf/forms/xfdf/IdsObject;

    invoke-direct {v6}, Lcom/itextpdf/forms/xfdf/IdsObject;-><init>()V

    .line 130
    invoke-virtual {v6, v1}, Lcom/itextpdf/forms/xfdf/IdsObject;->setOriginal(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object v6

    .line 131
    invoke-virtual {v6, v5}, Lcom/itextpdf/forms/xfdf/IdsObject;->setModified(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/IdsObject;

    move-result-object v6

    .line 132
    .local v6, "ids":Lcom/itextpdf/forms/xfdf/IdsObject;
    invoke-virtual {v3, v6}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setIds(Lcom/itextpdf/forms/xfdf/IdsObject;)V

    .line 134
    new-instance v7, Lcom/itextpdf/forms/xfdf/FObject;

    move-object/from16 v8, p2

    invoke-direct {v7, v8}, Lcom/itextpdf/forms/xfdf/FObject;-><init>(Ljava/lang/String;)V

    .line 135
    .local v7, "f":Lcom/itextpdf/forms/xfdf/FObject;
    invoke-virtual {v3, v7}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setF(Lcom/itextpdf/forms/xfdf/FObject;)V

    .line 137
    invoke-static {v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->addAnnotations(Lcom/itextpdf/kernel/pdf/PdfDocument;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 139
    return-object v3
.end method

.method public createXfdfObject(Ljava/io/InputStream;)Lcom/itextpdf/forms/xfdf/XfdfObject;
    .locals 5
    .param p1, "xfdfInputStream"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljavax/xml/parsers/ParserConfigurationException;,
            Ljava/io/IOException;,
            Lorg/xml/sax/SAXException;
        }
    .end annotation

    .line 153
    new-instance v0, Lcom/itextpdf/forms/xfdf/XfdfObject;

    invoke-direct {v0}, Lcom/itextpdf/forms/xfdf/XfdfObject;-><init>()V

    .line 155
    .local v0, "xfdfObject":Lcom/itextpdf/forms/xfdf/XfdfObject;
    invoke-static {p1}, Lcom/itextpdf/forms/xfdf/XfdfFileUtils;->createXfdfDocumentFromStream(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v1

    .line 157
    .local v1, "document":Lorg/w3c/dom/Document;
    invoke-interface {v1}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v2

    .line 158
    .local v2, "root":Lorg/w3c/dom/Element;
    invoke-direct {p0, v2}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->readXfdfRootAttributes(Lorg/w3c/dom/Element;)Ljava/util/List;

    move-result-object v3

    .line 159
    .local v3, "xfdfRootAttributes":Ljava/util/List;, "Ljava/util/List<Lcom/itextpdf/forms/xfdf/AttributeObject;>;"
    invoke-virtual {v0, v3}, Lcom/itextpdf/forms/xfdf/XfdfObject;->setAttributes(Ljava/util/List;)V

    .line 161
    invoke-interface {v2}, Lorg/w3c/dom/Element;->getChildNodes()Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 163
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    invoke-direct {p0, v4, v0}, Lcom/itextpdf/forms/xfdf/XfdfObjectFactory;->visitChildNodes(Lorg/w3c/dom/NodeList;Lcom/itextpdf/forms/xfdf/XfdfObject;)V

    .line 165
    return-object v0
.end method
