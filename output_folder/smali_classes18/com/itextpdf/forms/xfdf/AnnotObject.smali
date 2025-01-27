.class public Lcom/itextpdf/forms/xfdf/AnnotObject;
.super Ljava/lang/Object;
.source "AnnotObject.java"


# instance fields
.field private action:Lcom/itextpdf/forms/xfdf/ActionObject;

.field private appearance:Ljava/lang/String;

.field private attributes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation
.end field

.field private borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

.field private contents:Lcom/itextpdf/kernel/pdf/PdfString;

.field private contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

.field private defaultAppearance:Ljava/lang/String;

.field private defaultStyle:Ljava/lang/String;

.field private destination:Lcom/itextpdf/forms/xfdf/DestObject;

.field private hasPopup:Z

.field private name:Ljava/lang/String;

.field private popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

.field private ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

.field private vertices:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 161
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 162
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    .line 163
    return-void
.end method


# virtual methods
.method public addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V
    .locals 1
    .param p1, "attr"    # Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 347
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 348
    return-void
.end method

.method addAttribute(Ljava/lang/String;F)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .line 359
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-static {p2}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 360
    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/geom/Rectangle;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Lcom/itextpdf/kernel/geom/Rectangle;

    .line 363
    invoke-static {p2}, Lcom/itextpdf/forms/xfdf/XfdfObjectUtils;->convertRectToString(Lcom/itextpdf/kernel/geom/Rectangle;)Ljava/lang/String;

    move-result-object v0

    .line 364
    .local v0, "stringValue":Ljava/lang/String;
    iget-object v1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v2, p1, v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 365
    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;

    .line 395
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Z)V

    .line 396
    return-void
.end method

.method addAttribute(Ljava/lang/String;Lcom/itextpdf/kernel/pdf/PdfObject;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "valueObject"    # Lcom/itextpdf/kernel/pdf/PdfObject;
    .param p3, "required"    # Z

    .line 374
    if-nez p2, :cond_1

    .line 375
    if-nez p3, :cond_0

    .line 378
    return-void

    .line 376
    :cond_0
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeNotFoundException;

    invoke-direct {v0, p1}, Lcom/itextpdf/forms/xfdf/AttributeNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 380
    :cond_1
    const/4 v0, 0x0

    .line 381
    .local v0, "valueString":Ljava/lang/String;
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 382
    move-object v1, p2

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfBoolean;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfBoolean;->getValue()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string/jumbo v1, "yes"

    goto :goto_0

    :cond_2
    const-string v1, "no"

    :goto_0
    move-object v0, v1

    goto :goto_1

    .line 383
    :cond_3
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/4 v2, 0x6

    if-ne v1, v2, :cond_4

    .line 384
    move-object v1, p2

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfName;

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfName;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfName;->getValue()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 385
    :cond_4
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v2, 0x8

    if-ne v1, v2, :cond_5

    .line 386
    move-object v1, p2

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfNumber;

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfNumber;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfNumber;->getValue()D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 387
    :cond_5
    invoke-virtual {p2}, Lcom/itextpdf/kernel/pdf/PdfObject;->getType()B

    move-result v1

    const/16 v2, 0xa

    if-ne v1, v2, :cond_6

    .line 388
    move-object v1, p2

    check-cast v1, Lcom/itextpdf/kernel/pdf/PdfString;

    move-object v2, v1

    check-cast v2, Lcom/itextpdf/kernel/pdf/PdfString;

    invoke-virtual {v1}, Lcom/itextpdf/kernel/pdf/PdfString;->getValue()Ljava/lang/String;

    move-result-object v0

    .line 391
    :cond_6
    :goto_1
    iget-object v1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v2, p1, v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 392
    return-void
.end method

.method addAttribute(Ljava/lang/String;Z)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .line 354
    if-eqz p2, :cond_0

    const-string/jumbo v0, "yes"

    goto :goto_0

    :cond_0
    const-string v0, "no"

    .line 355
    .local v0, "valueString":Ljava/lang/String;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    new-instance v2, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-direct {v2, p1, v0}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 356
    return-void
.end method

.method addFdfAttributes(I)V
    .locals 3
    .param p1, "pageNumber"    # I

    .line 402
    new-instance v0, Lcom/itextpdf/forms/xfdf/AttributeObject;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "page"

    invoke-direct {v0, v2, v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/itextpdf/forms/xfdf/AnnotObject;->addAttribute(Lcom/itextpdf/forms/xfdf/AttributeObject;)V

    .line 403
    return-void
.end method

.method public getAction()Lcom/itextpdf/forms/xfdf/ActionObject;
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->action:Lcom/itextpdf/forms/xfdf/ActionObject;

    return-object v0
.end method

.method public getAppearance()Ljava/lang/String;
    .locals 1

    .line 436
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->appearance:Ljava/lang/String;

    return-object v0
.end method

.method public getAttribute(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AttributeObject;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 208
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 209
    .local v1, "attr":Lcom/itextpdf/forms/xfdf/AttributeObject;
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 210
    return-object v1

    .line 212
    .end local v1    # "attr":Lcom/itextpdf/forms/xfdf/AttributeObject;
    :cond_0
    goto :goto_0

    .line 213
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/itextpdf/forms/xfdf/AttributeObject;

    .line 223
    .local v1, "attr":Lcom/itextpdf/forms/xfdf/AttributeObject;
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 224
    invoke-virtual {v1}, Lcom/itextpdf/forms/xfdf/AttributeObject;->getValue()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 226
    .end local v1    # "attr":Lcom/itextpdf/forms/xfdf/AttributeObject;
    :cond_0
    goto :goto_0

    .line 227
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public getAttributes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/itextpdf/forms/xfdf/AttributeObject;",
            ">;"
        }
    .end annotation

    .line 199
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->attributes:Ljava/util/List;

    return-object v0
.end method

.method public getBorderStyleAlt()Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;
    .locals 1

    .line 510
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    return-object v0
.end method

.method public getContents()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 281
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contents:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getContentsRichText()Lcom/itextpdf/kernel/pdf/PdfString;
    .locals 1

    .line 306
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

    return-object v0
.end method

.method public getDefaultAppearance()Ljava/lang/String;
    .locals 1

    .line 461
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultAppearance:Ljava/lang/String;

    return-object v0
.end method

.method public getDefaultStyle()Ljava/lang/String;
    .locals 1

    .line 486
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultStyle:Ljava/lang/String;

    return-object v0
.end method

.method public getDestination()Lcom/itextpdf/forms/xfdf/DestObject;
    .locals 1

    .line 412
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 175
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getPopup()Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 1

    .line 236
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

    return-object v0
.end method

.method public getRef()Lcom/itextpdf/kernel/pdf/PdfIndirectReference;
    .locals 1

    .line 553
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    return-object v0
.end method

.method public getVertices()Ljava/lang/String;
    .locals 1

    .line 533
    iget-object v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->vertices:Ljava/lang/String;

    return-object v0
.end method

.method public isHasPopup()Z
    .locals 1

    .line 256
    iget-boolean v0, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->hasPopup:Z

    return v0
.end method

.method public setAction(Lcom/itextpdf/forms/xfdf/ActionObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "action"    # Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 338
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->action:Lcom/itextpdf/forms/xfdf/ActionObject;

    .line 339
    return-object p0
.end method

.method public setAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "appearance"    # Ljava/lang/String;

    .line 448
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->appearance:Ljava/lang/String;

    .line 449
    return-object p0
.end method

.method public setBorderStyleAlt(Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "borderStyleAlt"    # Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    .line 521
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->borderStyleAlt:Lcom/itextpdf/forms/xfdf/BorderStyleAltObject;

    .line 522
    return-object p0
.end method

.method public setContents(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "contents"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 291
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contents:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 292
    return-object p0
.end method

.method public setContentsRichText(Lcom/itextpdf/kernel/pdf/PdfString;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "contentsRichRext"    # Lcom/itextpdf/kernel/pdf/PdfString;

    .line 316
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->contentsRichText:Lcom/itextpdf/kernel/pdf/PdfString;

    .line 317
    return-object p0
.end method

.method public setDefaultAppearance(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "defaultAppearance"    # Ljava/lang/String;

    .line 473
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultAppearance:Ljava/lang/String;

    .line 474
    return-object p0
.end method

.method public setDefaultStyle(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "defaultStyle"    # Ljava/lang/String;

    .line 498
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->defaultStyle:Ljava/lang/String;

    .line 499
    return-object p0
.end method

.method public setDestination(Lcom/itextpdf/forms/xfdf/DestObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "destination"    # Lcom/itextpdf/forms/xfdf/DestObject;

    .line 423
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->destination:Lcom/itextpdf/forms/xfdf/DestObject;

    .line 424
    return-object p0
.end method

.method public setHasPopup(Z)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "hasPopup"    # Z

    .line 266
    iput-boolean p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->hasPopup:Z

    .line 267
    return-object p0
.end method

.method public setName(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "name"    # Ljava/lang/String;

    .line 189
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->name:Ljava/lang/String;

    .line 190
    return-object p0
.end method

.method public setPopup(Lcom/itextpdf/forms/xfdf/AnnotObject;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "popup"    # Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 246
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->popup:Lcom/itextpdf/forms/xfdf/AnnotObject;

    .line 247
    return-object p0
.end method

.method public setRef(Lcom/itextpdf/kernel/pdf/PdfIndirectReference;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "ref"    # Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 562
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->ref:Lcom/itextpdf/kernel/pdf/PdfIndirectReference;

    .line 563
    return-object p0
.end method

.method public setVertices(Ljava/lang/String;)Lcom/itextpdf/forms/xfdf/AnnotObject;
    .locals 0
    .param p1, "vertices"    # Ljava/lang/String;

    .line 544
    iput-object p1, p0, Lcom/itextpdf/forms/xfdf/AnnotObject;->vertices:Ljava/lang/String;

    .line 545
    return-object p0
.end method
